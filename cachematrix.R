## Put comments here that give an overall description of what your
## functions do
## the main goal of this assignment is to learn about scoping rules
## 


## comment describing this function:
## This function creates a special object that stores the inverse matrix 
## similiarly to the example from the assignment, this function will:
##      set the value of the matrix
##      get the value of the matrix
##      set the value of the inverse matrix
##      get the value of the inverse matrix

## <<- is used to assign a object in an environment different 
##     from current environment
makeCacheMatrix <- function(x = matrix()) {
        inv_m <- NULL
        set <- function(y){
                x<<- y
                inv_m<<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) inv_m <<- inverse
        getinverse <- function() inv_m
        list(set=set, 
             get=get, 
             setinverse = setinverse, 
             getinverse= getinverse)
}


## Write a short comment describing this function:
## This function takes the makeCacheMatrix output 
## calculate the inverse 
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv_s <- x$getinverse()
        m <- x$get()
        inv_s <- solve(m, ...)
        x$setinverse(inv_s)
        return(inv_s)
}

## Put comments here that give an overall description of what your
## functions do
 # makeCacheMatrix function used to:
 #set the value of the matrix.
 #get the result value of the matrix.
 #set the value of inverse of the matrix.
 #get the value of inverse of the matrix.

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

  inv <- NULL
  set <- function(y) {
  x <<- y
  inv <<- NULL

  }
  get <- function() x
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
  }



## Write a short comment describing this function
 #The function below returns the inverse of the matrix. 
 #First, it checks whether the inverse has been computed. 
 #If it is, it shows the result and skips the computation.
 #If it is not, it will compute the inverse and set the value via setinverse function.
 #The function is assuming the matrix is always invertible. 
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

   inv <- x$getinverse()
   if(!is.null(inv)) {
        message("getting cached data.")
        return(inv)
       }
       data <- x$get()
       inv <- solve(data)
       x$setinverse(inv)
       inv
      }


## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  ##  makeCacheMatrix function creates a special "matrix" object that can cache its invers.
  inv <- NULL ## intiliazing inv to null
  set <- function(y){    ## set function to assign new
    
      x <<- y  ## intializing x which is from different environment
      inv <<- NULL  ## intilazing inv to NULL which is also from different env
  }
  
  get < function(x) ## returns value of matrix argument
    
  setinverse <- function(inverse) inv <<- inverse ## assign value of inv 
  getinverse <- function() inv   ## getting value of inv
  
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
  

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  inv <- x$getinverse()
  if(!is.null(inv)){
      message("Getting cache data")
    return(inv)
    
  }
  
  data <- x$get()
  inv <- solve(data, ...)
  x$setinverse(inv)
  inv
}

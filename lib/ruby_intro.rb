# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum = arr.inject(0, :+)
  return sum
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.size == 0
    return 0
  elsif arr.size == 1
    return arr[0]
  else  
  temarray = arr.sort
  a = temarray.size-1
  b = a-1
  sum = temarray[a] + temarray[b]
  return sum
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  arr.combination(2).any? {|a, b| a+b==n}
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  /^[b-df-hj-np-tv-z]/i.match(s) != nil
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return s=="0" || (/^[10]*00$/.match(s)) != nil
end

# Part 3

class BookInStock
# YOUR CODE HERE
attr_accessor :isbn, :price
def initialize(isbn, price)
  if isbn.length ==0 || price <= 0
    raise ArgumentError
  end 
  @isbn, @price = isbn, price
  
end

def price_as_string
  "$%0.2f" % @price
end
  
end

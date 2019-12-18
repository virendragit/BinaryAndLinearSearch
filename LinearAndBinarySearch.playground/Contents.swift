import UIKit

let numbers = [1,2,4,8,9,11,13,19,22]

var sequentialNumber = [Int]()
for i in 1...100{
    sequentialNumber.append(i)
}

//Linear Search
func LinerSearch(searchValue: Int, array:[Int]) -> (valuePresent: Bool, value:Int ){
    
    for num in array {
        
        if num == searchValue{
        return (true , num)
        }
        
    }
    
    return (false, -1)
}

print(LinerSearch(searchValue: 22, array: numbers))

//Binary Search
func BinarySearch(searchValue:Int, array:[Int]) -> Bool{
    
    var leftIndex = 0
    var rightIndex = array.count - 1
    
    while leftIndex <= rightIndex {
        
        let midIndex = (leftIndex + rightIndex) / 2
        let midValue = array[midIndex]
        
        print("MidValue:\(midValue), leftIndex: \(leftIndex), rightndex: \(rightIndex), [\(array[leftIndex]), \(array[rightIndex])] ")
        
        if midValue == searchValue{
            return true
        }
        
        if searchValue < midValue{
            rightIndex = midIndex - 1
        }
        
        if searchValue > midValue {
            leftIndex = midIndex + 1
        }
    }
    
    return false
    
}

//print(BinarySearch(searchValue: 4, array: numbers))
print(BinarySearch(searchValue: 23, array: sequentialNumber))

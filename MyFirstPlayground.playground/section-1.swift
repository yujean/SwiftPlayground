// Playground - noun: a place where people can play

import Cocoa

func printTopic(theTopicName: NSString?) {
	if theTopicName != nil {
		println("\n\n")
		println("-------------------------")
		println(theTopicName)
		println("-------------------------")
	}
}

class LivingOrganism {
	var species:String
	var age:UInt8
	var isAlive:Bool
	init() {
		species = "Unknown"
		age = 0
		isAlive = true
	}
	func kill() {
		println("You're trying to kill a \(species)")
		if !isAlive {
			println("You're beating a dead \(species)")
		} else {
			isAlive = false
			println("This thing is dead.")
		}
	}
	func resurrect() {
		if isAlive {
			println("This thing feels EXTRA alive!")
		} else {
			isAlive = true
			println("This thing is now alive!")
		}
	}
}

class Human: LivingOrganism {
	var fullName:String
	init(name:String) {			// Note the order
		// new stuff
		fullName = name			// New var. Initialize it.
		// Super class
		super.init()			// Now super init
		// old stuff
		species = "homosapien"	// Then do old stuff.
		println("\(fullName) was created!!!")
	}
	override func kill() {
		print("You're trying to kill \(fullName). ")
		if !isAlive {
			println("Dude, \(fullName) is already dead. You are an extra terrible person.")
		} else {
			isAlive = false
			println("\(fullName) is now dead. You are a terrible person.")
		}
	}
}

class Fish : LivingOrganism {
	
}

// New stuff
printTopic("New stuff")

// -------------------------

//var eugene = Human()
var eugene = Human(name:"Eugene")
eugene.kill()
println("YOLO")

// -------------------------

printTopic("String stuff")
var coolSentence = "Check this story, bro."
var isDouchebag = coolSentence.hasSuffix("bro.")
var blah = coolSentence.hasPrefix("Check this")
var numberOfCharacters = countElements(coolSentence)
var obnoxiousSentence = coolSentence.uppercaseString
var insecureSentence = coolSentence.lowercaseString
//var someRepeatedCharacterString = String(count:10, repeatedValue:"a")
var whyIsThisSoDifficult = "abcdefghi"
whyIsThisSoDifficult.rangeOfString("c").startIndex


// Code Units
let dogString:String = "Dog!🐶"
var currentCharacter:Character?
println("dogString's 8-bit code units")
for codeUnit in dogString.utf8 {
	print("\(codeUnit) ")
}
println("\n\ndogString's 16-bit code units")
for codeUnit in dogString.utf16 {
	print("\(codeUnit) ")
}

printTopic("Identity Operator >>>> RETEST WITH OBJECTS LATER")
var identityOperatorVariable1 = 3-2
var identityOperatorVariable2 = 2-1
if identityOperatorVariable1 == identityOperatorVariable2 {
	println("This happened 1")
}

if identityOperatorVariable1 === identityOperatorVariable2 {
	println("This happened 2")
}

printTopic("Increment / Decrement")
// If the operator is written before the variable, it increments the variable before returning its value.
// If the operator is written after the variable, it increments the variable after returning its value.

var a = 0
let b = ++a	// Both are 1


printTopic("Remainder")
var remainder1 = 10 % 4.1
var remainder2 = -10 % 4
var remainder3 = 10 % -4	// second thing's sign is ignored

printTopic("????? Confusion")
var nani:String?!
println("you're fucked \(nani)")

printTopic("Clarity of optional binding vs. returned values from '=' operator")
//var aThing1:Int = 123
//var aThing2 = aThing1
//if aThing2 = aThing1 {			// Not to be confused with optional binding.
//	assert(false, "This should never happen")
//}

var aThing1:Int? = 123
if let aThing2 = aThing1 {
	println("This is optional binding")
}

printTopic("Assertions")
let aSmallNumber = 3
assert(aSmallNumber > 1, "Needs to be greater than 1")
assert(aSmallNumber > 1)	// No comment required

printTopic("Forced Unwrapping")
var forcedUnwrappingString:NSString! = "Puppies"
//var forcedUnwrappingString:NSString? = nil
println("forcedUnwrappingString definitely has a value, it is: \(forcedUnwrappingString)")
//println(forcedUnwrappingString)
//println(forcedUnwrappingString!)

printTopic("Tuples")
//var eugeneTuple = ("Eugene", "Yee", 30)
//eugeneTuple.0
//eugeneTuple.1
//eugeneTuple.2
//
//var (firstName, lastName, age) = eugeneTuple
//firstName
//lastName
//age

printTopic("Returning tuples")
//func returnsEugeneTuple() -> (String, String, UInt8) {
//	return ("Eugene", "Yee", 30)
//}
//
//var (firstName, lastName, age) = returnsEugeneTuple()
//firstName
//lastName
//age

printTopic("Returning tuple with names")
func returnsEugeneTuple() -> (firstName:String, lastName:String, age:UInt8) {
	return ("Eugene", "Yee", 30)
}

var eugeneTuple = returnsEugeneTuple()
eugeneTuple.firstName
eugeneTuple.lastName
eugeneTuple.age

printTopic("Note about if-statements")
//let someNonBoolNumber: UInt8 = 13	// You must use bool with if-statements
//if someNonBoolNumber {
//	println("This happened!")
//}

printTopic("Type-aliasing")
typealias EugeneMode = UInt8
var currentStatus: EugeneMode = 0

printTopic("Converting number types")
var myDoubleNumber: Double = 3.14
var myIntegerNumber: Int = Int(myDoubleNumber)
var aStringToConvert:NSString? = "1"
var messedUpConversion = aStringToConvert?.integerValue
aStringToConvert = " 1 "
messedUpConversion = aStringToConvert?.integerValue
aStringToConvert = "22 10"
messedUpConversion = aStringToConvert?.integerValue
aStringToConvert = "22 letters"
messedUpConversion = aStringToConvert?.integerValue
aStringToConvert = "letters only"
messedUpConversion = aStringToConvert?.integerValue


printTopic("Exponents and stuff")
var exponentialValue = 9e5		// 9 x 10^5
var exponentialHexValue = 0xfp1	// 0xf (15) p1 (2^1)

printTopic("Max/Min values of types")
let maxNumber: UInt64 = UInt64.max;
println("maxNumber: \(maxNumber)")


printTopic("Constants vs. Variables!")
// str cannot change ... it's constant, son.
let str = "Test 1."
var str2 = "Test 1!"
str2 = "Test 2!"

var str3: NSString


printTopic("Arrays!");

var arrayOne: NSString[]? = ["a", "bee", "see"];
println(arrayOne)

var arrayTwo: NSString[]? = arrayOne;
println(arrayTwo)

var arrayThree = arrayOne
println(arrayThree)


printTopic("For Loops!");

// Print 1-100
var incrementalNumber = 0
for i in 1...100 {
	println("incrementalNumber is: \(incrementalNumber)")
	incrementalNumber++;
}

for aCharacter in "ASDF" {
	println(aCharacter)
}


printTopic("Optional variables")

var optionalString: String?
println("optionalString is \(optionalString)")
optionalString = "Now I have a value!"
println("optionalString is \(optionalString)")


printTopic("Switch statements")

// Looks like you can't use switch statements without established constants or variables

var x = "No"
var result: NSString?
switch x {
	case "Person 0":
		result = "This happened 1"
	case "Person 1":
		result = "This happened 2"
	case "Hello":
		result = "This happened 3"
	default:
		result = "Default happened!"
}

println("result is: \(result)")

// Switch statement

var vegetable: String = "red pepper"
switch vegetable {
case "celery":
	let vegetableComment = "Add some raisins and make ants on a log."
case "cucumber", "watercress":
	let vegetableComment = "That would make a good tea sandwich."
case let x where x.hasSuffix("pepper"):
	let vegetableComment = "Is it a spicy \(x)?"
default:
	let vegetableComment = "Everything tastes good in soup."
}


//var optionalString: String? = "Hello"

var optionalName: String? = "John Appleseed"
var greeting = "Hello!"
if let name = optionalName {
	greeting = "Hello, \(name)"
}





















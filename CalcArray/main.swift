//
//  main.swift
//  CalcArray
//
//  Created by iGuest on 10/12/17.
//  Copyright © 2017 MacroHard. All rights reserved.
//

import Foundation

func add(x: Int, y: Int) -> Int {
    return x + y
}

func sub(x: Int, y: Int) -> Int {
    return x - y
}

func mult(x: Int, y: Int) -> Int {
    return x * y
}

func div(x: Int, y: Int) -> Int {
    return x / y
}
func mathOp(d1: Int, d2: Int, op: (Int, Int) -> Int) -> Int {
    return op(d1, d2)
}

// Array fun

func add(_ nums: [Int]) -> Int {
    var res: Int = 0
    for d in nums {
        res = res + d
    }
    return res
}

func avg(_ nums: [Int]) -> Int {
    return add(nums) / nums.count
}

func mult(_ nums: [Int]) -> Int {
    var res: Int = 1
    for d in nums {
        res = res * d
    }
    return res
}

func count(_ nums: [Int]) -> Int {
    return nums.count
}
func mathOp(op: ([Int]) -> Int, nums: Int...) -> Int {
    return op(nums)
}

//Points

func addPoint(_ p1: (Double, Double), _ p2: (Double, Double)) -> (Double, Double) {
    return (p1.0 + p2.0, p1.1 + p2.1)
}

func subPoint(_ p1: (Double, Double), _ p2: (Double, Double)) -> (Double, Double) {
    return (p1.0 - p2.0, p1.1 - p2.1)
}

func addPoint(_ p1I: [String: Double], _ p2I: [String: Double]) -> [String: Double] {
    var p1: [String: Double] = fixXY(p1I)
    var p2: [String: Double] = fixXY(p2I)
    return [
        "x": p1["x"]! + p2["x"]!,
        "y": p1["y"]! + p2["y"]!
    ]
}

func subPoint(_ p1I: [String: Double], _ p2I: [String: Double]) -> [String: Double] {
    var p1: [String: Double] = fixXY(p1I)
    var p2: [String: Double] = fixXY(p2I)
    return [
        "x": p1["x"]! - p2["x"]!,
        "y": p1["y"]! - p2["y"]!
    ]
}

func fixXY (_ p1I: [String: Double]) -> [String: Double] {
    var p1: [String: Double] = p1I
    if p1["x"] == nil{
        p1["x"] = 0.0
    }
    if p1["y"] == nil{
        p1["y"] = 0.0
    }
    return p1
}

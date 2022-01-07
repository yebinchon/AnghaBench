; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_stmpe-keypad.c_stmpe_keypad_fill_used_pins.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_stmpe-keypad.c_stmpe_keypad_fill_used_pins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmpe_keypad = type { i64*, i32, i32 }

@STMPE_KEYPAD_ROW_SHIFT = common dso_local global i32 0, align 4
@KEY_RESERVED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stmpe_keypad*, i32, i32)* @stmpe_keypad_fill_used_pins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stmpe_keypad_fill_used_pins(%struct.stmpe_keypad* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.stmpe_keypad*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.stmpe_keypad* %0, %struct.stmpe_keypad** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %51, %3
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %54

14:                                               ; preds = %10
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %47, %14
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %50

19:                                               ; preds = %15
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @STMPE_KEYPAD_ROW_SHIFT, align 4
  %23 = call i32 @MATRIX_SCAN_CODE(i32 %20, i32 %21, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.stmpe_keypad*, %struct.stmpe_keypad** %4, align 8
  %25 = getelementptr inbounds %struct.stmpe_keypad, %struct.stmpe_keypad* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @KEY_RESERVED, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %19
  %34 = load i32, i32* %7, align 4
  %35 = shl i32 1, %34
  %36 = load %struct.stmpe_keypad*, %struct.stmpe_keypad** %4, align 8
  %37 = getelementptr inbounds %struct.stmpe_keypad, %struct.stmpe_keypad* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  %40 = load i32, i32* %8, align 4
  %41 = shl i32 1, %40
  %42 = load %struct.stmpe_keypad*, %struct.stmpe_keypad** %4, align 8
  %43 = getelementptr inbounds %struct.stmpe_keypad, %struct.stmpe_keypad* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %33, %19
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  br label %15

50:                                               ; preds = %15
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %10

54:                                               ; preds = %10
  ret void
}

declare dso_local i32 @MATRIX_SCAN_CODE(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

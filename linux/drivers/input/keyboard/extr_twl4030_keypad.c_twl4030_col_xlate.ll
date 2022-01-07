; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_twl4030_keypad.c_twl4030_col_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_twl4030_keypad.c_twl4030_col_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twl4030_keypad = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.twl4030_keypad*, i32)* @twl4030_col_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl4030_col_xlate(%struct.twl4030_keypad* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.twl4030_keypad*, align 8
  %5 = alloca i32, align 4
  store %struct.twl4030_keypad* %0, %struct.twl4030_keypad** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 255
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load %struct.twl4030_keypad*, %struct.twl4030_keypad** %4, align 8
  %10 = getelementptr inbounds %struct.twl4030_keypad, %struct.twl4030_keypad* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = shl i32 1, %11
  store i32 %12, i32* %3, align 4
  br label %21

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.twl4030_keypad*, %struct.twl4030_keypad** %4, align 8
  %16 = getelementptr inbounds %struct.twl4030_keypad, %struct.twl4030_keypad* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = shl i32 1, %17
  %19 = sub nsw i32 %18, 1
  %20 = and i32 %14, %19
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %13, %8
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

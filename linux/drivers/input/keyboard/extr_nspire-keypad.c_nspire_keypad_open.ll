; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_nspire-keypad.c_nspire_keypad_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_nspire-keypad.c_nspire_keypad_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.nspire_keypad = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*)* @nspire_keypad_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nspire_keypad_open(%struct.input_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca %struct.nspire_keypad*, align 8
  %5 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %3, align 8
  %6 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %7 = call %struct.nspire_keypad* @input_get_drvdata(%struct.input_dev* %6)
  store %struct.nspire_keypad* %7, %struct.nspire_keypad** %4, align 8
  %8 = load %struct.nspire_keypad*, %struct.nspire_keypad** %4, align 8
  %9 = getelementptr inbounds %struct.nspire_keypad, %struct.nspire_keypad* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @clk_prepare_enable(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %28

16:                                               ; preds = %1
  %17 = load %struct.nspire_keypad*, %struct.nspire_keypad** %4, align 8
  %18 = call i32 @nspire_keypad_chip_init(%struct.nspire_keypad* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load %struct.nspire_keypad*, %struct.nspire_keypad** %4, align 8
  %23 = getelementptr inbounds %struct.nspire_keypad, %struct.nspire_keypad* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @clk_disable_unprepare(i32 %24)
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %2, align 4
  br label %28

27:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %27, %21, %14
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local %struct.nspire_keypad* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @nspire_keypad_chip_init(%struct.nspire_keypad*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_tca6416-keypad.c_tca6416_keys_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_tca6416-keypad.c_tca6416_keys_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.tca6416_keypad_chip = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_dev*)* @tca6416_keys_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tca6416_keys_close(%struct.input_dev* %0) #0 {
  %2 = alloca %struct.input_dev*, align 8
  %3 = alloca %struct.tca6416_keypad_chip*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %2, align 8
  %4 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %5 = call %struct.tca6416_keypad_chip* @input_get_drvdata(%struct.input_dev* %4)
  store %struct.tca6416_keypad_chip* %5, %struct.tca6416_keypad_chip** %3, align 8
  %6 = load %struct.tca6416_keypad_chip*, %struct.tca6416_keypad_chip** %3, align 8
  %7 = getelementptr inbounds %struct.tca6416_keypad_chip, %struct.tca6416_keypad_chip* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.tca6416_keypad_chip*, %struct.tca6416_keypad_chip** %3, align 8
  %12 = getelementptr inbounds %struct.tca6416_keypad_chip, %struct.tca6416_keypad_chip* %11, i32 0, i32 1
  %13 = call i32 @cancel_delayed_work_sync(i32* %12)
  br label %19

14:                                               ; preds = %1
  %15 = load %struct.tca6416_keypad_chip*, %struct.tca6416_keypad_chip** %3, align 8
  %16 = getelementptr inbounds %struct.tca6416_keypad_chip, %struct.tca6416_keypad_chip* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @disable_irq(i32 %17)
  br label %19

19:                                               ; preds = %14, %10
  ret void
}

declare dso_local %struct.tca6416_keypad_chip* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @disable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/extr_joydev.c_joydev_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/extr_joydev.c_joydev_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_handler = type { i32 }
%struct.input_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_handler*, %struct.input_dev*)* @joydev_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @joydev_match(%struct.input_handler* %0, %struct.input_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.input_handler*, align 8
  %5 = alloca %struct.input_dev*, align 8
  store %struct.input_handler* %0, %struct.input_handler** %4, align 8
  store %struct.input_dev* %1, %struct.input_dev** %5, align 8
  %6 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %7 = call i64 @joydev_dev_is_blacklisted(%struct.input_dev* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %16

10:                                               ; preds = %2
  %11 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %12 = call i64 @joydev_dev_is_absolute_mouse(%struct.input_dev* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %16

15:                                               ; preds = %10
  store i32 1, i32* %3, align 4
  br label %16

16:                                               ; preds = %15, %14, %9
  %17 = load i32, i32* %3, align 4
  ret i32 %17
}

declare dso_local i64 @joydev_dev_is_blacklisted(%struct.input_dev*) #1

declare dso_local i64 @joydev_dev_is_absolute_mouse(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

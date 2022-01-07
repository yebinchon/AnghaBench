; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-regulator.c_regulator_led_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-regulator.c_regulator_led_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_led = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Failed to disable vcc: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.regulator_led*)* @regulator_led_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @regulator_led_disable(%struct.regulator_led* %0) #0 {
  %2 = alloca %struct.regulator_led*, align 8
  %3 = alloca i32, align 4
  store %struct.regulator_led* %0, %struct.regulator_led** %2, align 8
  %4 = load %struct.regulator_led*, %struct.regulator_led** %2, align 8
  %5 = getelementptr inbounds %struct.regulator_led, %struct.regulator_led* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %26

9:                                                ; preds = %1
  %10 = load %struct.regulator_led*, %struct.regulator_led** %2, align 8
  %11 = getelementptr inbounds %struct.regulator_led, %struct.regulator_led* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @regulator_disable(i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %9
  %17 = load %struct.regulator_led*, %struct.regulator_led** %2, align 8
  %18 = getelementptr inbounds %struct.regulator_led, %struct.regulator_led* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @dev_err(i32 %20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %26

23:                                               ; preds = %9
  %24 = load %struct.regulator_led*, %struct.regulator_led** %2, align 8
  %25 = getelementptr inbounds %struct.regulator_led, %struct.regulator_led* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  br label %26

26:                                               ; preds = %23, %16, %8
  ret void
}

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

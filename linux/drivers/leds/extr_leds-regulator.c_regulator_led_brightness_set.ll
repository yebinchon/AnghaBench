; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-regulator.c_regulator_led_brightness_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-regulator.c_regulator_led_brightness_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { i32 }
%struct.regulator_led = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@LED_OFF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"brightness: %d voltage: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to set voltage %d: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.led_classdev*, i32)* @regulator_led_brightness_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regulator_led_brightness_set(%struct.led_classdev* %0, i32 %1) #0 {
  %3 = alloca %struct.led_classdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.regulator_led*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.led_classdev* %0, %struct.led_classdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %9 = call %struct.regulator_led* @to_regulator_led(%struct.led_classdev* %8)
  store %struct.regulator_led* %9, %struct.regulator_led** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.regulator_led*, %struct.regulator_led** %5, align 8
  %11 = getelementptr inbounds %struct.regulator_led, %struct.regulator_led* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @LED_OFF, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.regulator_led*, %struct.regulator_led** %5, align 8
  %18 = call i32 @regulator_led_disable(%struct.regulator_led* %17)
  br label %58

19:                                               ; preds = %2
  %20 = load %struct.regulator_led*, %struct.regulator_led** %5, align 8
  %21 = getelementptr inbounds %struct.regulator_led, %struct.regulator_led* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp sgt i32 %23, 1
  br i1 %24, label %25, label %55

25:                                               ; preds = %19
  %26 = load %struct.regulator_led*, %struct.regulator_led** %5, align 8
  %27 = getelementptr inbounds %struct.regulator_led, %struct.regulator_led* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @led_regulator_get_voltage(i32 %28, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load %struct.regulator_led*, %struct.regulator_led** %5, align 8
  %32 = getelementptr inbounds %struct.regulator_led, %struct.regulator_led* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @dev_dbg(i32 %34, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36)
  %38 = load %struct.regulator_led*, %struct.regulator_led** %5, align 8
  %39 = getelementptr inbounds %struct.regulator_led, %struct.regulator_led* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @regulator_set_voltage(i32 %40, i32 %41, i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %25
  %47 = load %struct.regulator_led*, %struct.regulator_led** %5, align 8
  %48 = getelementptr inbounds %struct.regulator_led, %struct.regulator_led* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @dev_err(i32 %50, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %46, %25
  br label %55

55:                                               ; preds = %54, %19
  %56 = load %struct.regulator_led*, %struct.regulator_led** %5, align 8
  %57 = call i32 @regulator_led_enable(%struct.regulator_led* %56)
  br label %58

58:                                               ; preds = %55, %16
  %59 = load %struct.regulator_led*, %struct.regulator_led** %5, align 8
  %60 = getelementptr inbounds %struct.regulator_led, %struct.regulator_led* %59, i32 0, i32 0
  %61 = call i32 @mutex_unlock(i32* %60)
  %62 = load i32, i32* %7, align 4
  ret i32 %62
}

declare dso_local %struct.regulator_led* @to_regulator_led(%struct.led_classdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @regulator_led_disable(%struct.regulator_led*) #1

declare dso_local i32 @led_regulator_get_voltage(i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @regulator_set_voltage(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @regulator_led_enable(%struct.regulator_led*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/trigger/extr_ledtrig-gpio.c_gpio_trig_brightness_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/trigger/extr_ledtrig-gpio.c_gpio_trig_brightness_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.gpio_trig_data = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"invalid value\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @gpio_trig_brightness_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @gpio_trig_brightness_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.gpio_trig_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.gpio_trig_data* @led_trigger_get_drvdata(%struct.device* %13)
  store %struct.gpio_trig_data* %14, %struct.gpio_trig_data** %10, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @sscanf(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %11)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp slt i32 %17, 1
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* %11, align 4
  %21 = icmp ugt i32 %20, 255
  br i1 %21, label %22, label %27

22:                                               ; preds = %19, %4
  %23 = load %struct.device*, %struct.device** %6, align 8
  %24 = call i32 @dev_err(%struct.device* %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i64, i64* @EINVAL, align 8
  %26 = sub i64 0, %25
  store i64 %26, i64* %5, align 8
  br label %32

27:                                               ; preds = %19
  %28 = load i32, i32* %11, align 4
  %29 = load %struct.gpio_trig_data*, %struct.gpio_trig_data** %10, align 8
  %30 = getelementptr inbounds %struct.gpio_trig_data, %struct.gpio_trig_data* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load i64, i64* %9, align 8
  store i64 %31, i64* %5, align 8
  br label %32

32:                                               ; preds = %27, %22
  %33 = load i64, i64* %5, align 8
  ret i64 %33
}

declare dso_local %struct.gpio_trig_data* @led_trigger_get_drvdata(%struct.device*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

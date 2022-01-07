; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lm3533.c_store_risefalltime.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lm3533.c_store_risefalltime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.led_classdev = type { i32 }
%struct.lm3533_led = type { i32 }

@LM3533_RISEFALLTIME_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64, i64)* @store_risefalltime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_risefalltime(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.device_attribute*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.led_classdev*, align 8
  %13 = alloca %struct.lm3533_led*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %7, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load %struct.device*, %struct.device** %7, align 8
  %18 = call %struct.led_classdev* @dev_get_drvdata(%struct.device* %17)
  store %struct.led_classdev* %18, %struct.led_classdev** %12, align 8
  %19 = load %struct.led_classdev*, %struct.led_classdev** %12, align 8
  %20 = call %struct.lm3533_led* @to_lm3533_led(%struct.led_classdev* %19)
  store %struct.lm3533_led* %20, %struct.lm3533_led** %13, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = call i64 @kstrtou8(i8* %21, i32 0, i64* %14)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %5
  %25 = load i64, i64* %14, align 8
  %26 = load i64, i64* @LM3533_RISEFALLTIME_MAX, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24, %5
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %48

31:                                               ; preds = %24
  %32 = load %struct.lm3533_led*, %struct.lm3533_led** %13, align 8
  %33 = load i64, i64* %11, align 8
  %34 = call i64 @lm3533_led_get_pattern_reg(%struct.lm3533_led* %32, i64 %33)
  store i64 %34, i64* %15, align 8
  %35 = load %struct.lm3533_led*, %struct.lm3533_led** %13, align 8
  %36 = getelementptr inbounds %struct.lm3533_led, %struct.lm3533_led* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i64, i64* %15, align 8
  %39 = load i64, i64* %14, align 8
  %40 = call i32 @lm3533_write(i32 %37, i64 %38, i64 %39)
  store i32 %40, i32* %16, align 4
  %41 = load i32, i32* %16, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %31
  %44 = load i32, i32* %16, align 4
  store i32 %44, i32* %6, align 4
  br label %48

45:                                               ; preds = %31
  %46 = load i64, i64* %10, align 8
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %45, %43, %28
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local %struct.led_classdev* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.lm3533_led* @to_lm3533_led(%struct.led_classdev*) #1

declare dso_local i64 @kstrtou8(i8*, i32, i64*) #1

declare dso_local i64 @lm3533_led_get_pattern_reg(%struct.lm3533_led*, i64) #1

declare dso_local i32 @lm3533_write(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

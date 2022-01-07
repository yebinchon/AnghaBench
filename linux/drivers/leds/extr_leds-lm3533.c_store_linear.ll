; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lm3533.c_store_linear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lm3533.c_store_linear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.led_classdev = type { i32 }
%struct.lm3533_led = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@LM3533_REG_CTRLBANK_BCONF_BASE = common dso_local global i32 0, align 4
@LM3533_REG_CTRLBANK_BCONF_MAPPING_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_linear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_linear(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.led_classdev*, align 8
  %11 = alloca %struct.lm3533_led*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call %struct.led_classdev* @dev_get_drvdata(%struct.device* %17)
  store %struct.led_classdev* %18, %struct.led_classdev** %10, align 8
  %19 = load %struct.led_classdev*, %struct.led_classdev** %10, align 8
  %20 = call %struct.lm3533_led* @to_lm3533_led(%struct.led_classdev* %19)
  store %struct.lm3533_led* %20, %struct.lm3533_led** %11, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = call i64 @kstrtoul(i8* %21, i32 0, i64* %12)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %52

27:                                               ; preds = %4
  %28 = load %struct.lm3533_led*, %struct.lm3533_led** %11, align 8
  %29 = load i32, i32* @LM3533_REG_CTRLBANK_BCONF_BASE, align 4
  %30 = call i64 @lm3533_led_get_lv_reg(%struct.lm3533_led* %28, i32 %29)
  store i64 %30, i64* %13, align 8
  %31 = load i64, i64* @LM3533_REG_CTRLBANK_BCONF_MAPPING_MASK, align 8
  store i64 %31, i64* %14, align 8
  %32 = load i64, i64* %12, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i64, i64* %14, align 8
  store i64 %35, i64* %15, align 8
  br label %37

36:                                               ; preds = %27
  store i64 0, i64* %15, align 8
  br label %37

37:                                               ; preds = %36, %34
  %38 = load %struct.lm3533_led*, %struct.lm3533_led** %11, align 8
  %39 = getelementptr inbounds %struct.lm3533_led, %struct.lm3533_led* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i64, i64* %13, align 8
  %42 = load i64, i64* %15, align 8
  %43 = load i64, i64* %14, align 8
  %44 = call i32 @lm3533_update(i32 %40, i64 %41, i64 %42, i64 %43)
  store i32 %44, i32* %16, align 4
  %45 = load i32, i32* %16, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %37
  %48 = load i32, i32* %16, align 4
  store i32 %48, i32* %5, align 4
  br label %52

49:                                               ; preds = %37
  %50 = load i64, i64* %9, align 8
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %49, %47, %24
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local %struct.led_classdev* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.lm3533_led* @to_lm3533_led(%struct.led_classdev*) #1

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i64 @lm3533_led_get_lv_reg(%struct.lm3533_led*, i32) #1

declare dso_local i32 @lm3533_update(i32, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

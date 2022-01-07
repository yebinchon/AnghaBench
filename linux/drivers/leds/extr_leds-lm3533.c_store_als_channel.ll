; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lm3533.c_store_als_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lm3533.c_store_als_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.led_classdev = type { i32 }
%struct.lm3533_led = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@LM3533_ALS_CHANNEL_LV_MIN = common dso_local global i32 0, align 4
@LM3533_ALS_CHANNEL_LV_MAX = common dso_local global i32 0, align 4
@LM3533_REG_CTRLBANK_BCONF_BASE = common dso_local global i32 0, align 4
@LM3533_REG_CTRLBANK_BCONF_ALS_CHANNEL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_als_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_als_channel(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.led_classdev*, align 8
  %11 = alloca %struct.lm3533_led*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
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
  %22 = call i64 @kstrtouint(i8* %21, i32 0, i32* %12)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %59

27:                                               ; preds = %4
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* @LM3533_ALS_CHANNEL_LV_MIN, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* @LM3533_ALS_CHANNEL_LV_MAX, align 4
  %34 = icmp ugt i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31, %27
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %59

38:                                               ; preds = %31
  %39 = load %struct.lm3533_led*, %struct.lm3533_led** %11, align 8
  %40 = load i32, i32* @LM3533_REG_CTRLBANK_BCONF_BASE, align 4
  %41 = call i32 @lm3533_led_get_lv_reg(%struct.lm3533_led* %39, i32 %40)
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* @LM3533_REG_CTRLBANK_BCONF_ALS_CHANNEL_MASK, align 4
  store i32 %42, i32* %15, align 4
  %43 = load i32, i32* %12, align 4
  %44 = sub i32 %43, 1
  store i32 %44, i32* %14, align 4
  %45 = load %struct.lm3533_led*, %struct.lm3533_led** %11, align 8
  %46 = getelementptr inbounds %struct.lm3533_led, %struct.lm3533_led* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* %15, align 4
  %51 = call i32 @lm3533_update(i32 %47, i32 %48, i32 %49, i32 %50)
  store i32 %51, i32* %16, align 4
  %52 = load i32, i32* %16, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %38
  %55 = load i32, i32* %16, align 4
  store i32 %55, i32* %5, align 4
  br label %59

56:                                               ; preds = %38
  %57 = load i64, i64* %9, align 8
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %56, %54, %35, %24
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local %struct.led_classdev* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.lm3533_led* @to_lm3533_led(%struct.led_classdev*) #1

declare dso_local i64 @kstrtouint(i8*, i32, i32*) #1

declare dso_local i32 @lm3533_led_get_lv_reg(%struct.lm3533_led*, i32) #1

declare dso_local i32 @lm3533_update(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

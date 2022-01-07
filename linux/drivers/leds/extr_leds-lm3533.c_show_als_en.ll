; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lm3533.c_show_als_en.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lm3533.c_show_als_en.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.led_classdev = type { i32 }
%struct.lm3533_led = type { i32 }

@LM3533_REG_CTRLBANK_BCONF_BASE = common dso_local global i32 0, align 4
@LM3533_REG_CTRLBANK_BCONF_ALS_EN_MASK = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_als_en to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_als_en(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.led_classdev*, align 8
  %9 = alloca %struct.lm3533_led*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call %struct.led_classdev* @dev_get_drvdata(%struct.device* %14)
  store %struct.led_classdev* %15, %struct.led_classdev** %8, align 8
  %16 = load %struct.led_classdev*, %struct.led_classdev** %8, align 8
  %17 = call %struct.lm3533_led* @to_lm3533_led(%struct.led_classdev* %16)
  store %struct.lm3533_led* %17, %struct.lm3533_led** %9, align 8
  %18 = load %struct.lm3533_led*, %struct.lm3533_led** %9, align 8
  %19 = load i32, i32* @LM3533_REG_CTRLBANK_BCONF_BASE, align 4
  %20 = call i32 @lm3533_led_get_lv_reg(%struct.lm3533_led* %18, i32 %19)
  store i32 %20, i32* %11, align 4
  %21 = load %struct.lm3533_led*, %struct.lm3533_led** %9, align 8
  %22 = getelementptr inbounds %struct.lm3533_led, %struct.lm3533_led* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @lm3533_read(i32 %23, i32 %24, i32* %12)
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* %13, align 4
  store i32 %29, i32* %4, align 4
  br label %38

30:                                               ; preds = %3
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @LM3533_REG_CTRLBANK_BCONF_ALS_EN_MASK, align 4
  %33 = and i32 %31, %32
  store i32 %33, i32* %10, align 4
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* @PAGE_SIZE, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @scnprintf(i8* %34, i32 %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %36)
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %30, %28
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local %struct.led_classdev* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.lm3533_led* @to_lm3533_led(%struct.led_classdev*) #1

declare dso_local i32 @lm3533_led_get_lv_reg(%struct.lm3533_led*, i32) #1

declare dso_local i32 @lm3533_read(i32, i32, i32*) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

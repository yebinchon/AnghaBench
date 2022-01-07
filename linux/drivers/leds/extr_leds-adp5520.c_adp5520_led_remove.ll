; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-adp5520.c_adp5520_led_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-adp5520.c_adp5520_led_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.adp5520_leds_platform_data = type { i32 }
%struct.adp5520_led = type { i32, i32 }

@ADP5520_LED_CONTROL = common dso_local global i32 0, align 4
@ADP5520_LED1_EN = common dso_local global i32 0, align 4
@ADP5520_LED2_EN = common dso_local global i32 0, align 4
@ADP5520_LED3_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @adp5520_led_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adp5520_led_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.adp5520_leds_platform_data*, align 8
  %4 = alloca %struct.adp5520_led*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = call %struct.adp5520_leds_platform_data* @dev_get_platdata(i32* %7)
  store %struct.adp5520_leds_platform_data* %8, %struct.adp5520_leds_platform_data** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %10 = call %struct.adp5520_led* @platform_get_drvdata(%struct.platform_device* %9)
  store %struct.adp5520_led* %10, %struct.adp5520_led** %4, align 8
  %11 = load %struct.adp5520_led*, %struct.adp5520_led** %4, align 8
  %12 = getelementptr inbounds %struct.adp5520_led, %struct.adp5520_led* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @ADP5520_LED_CONTROL, align 4
  %15 = load i32, i32* @ADP5520_LED1_EN, align 4
  %16 = load i32, i32* @ADP5520_LED2_EN, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @ADP5520_LED3_EN, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @adp5520_clr_bits(i32 %13, i32 %14, i32 %19)
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %34, %1
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.adp5520_leds_platform_data*, %struct.adp5520_leds_platform_data** %3, align 8
  %24 = getelementptr inbounds %struct.adp5520_leds_platform_data, %struct.adp5520_leds_platform_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %21
  %28 = load %struct.adp5520_led*, %struct.adp5520_led** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.adp5520_led, %struct.adp5520_led* %28, i64 %30
  %32 = getelementptr inbounds %struct.adp5520_led, %struct.adp5520_led* %31, i32 0, i32 0
  %33 = call i32 @led_classdev_unregister(i32* %32)
  br label %34

34:                                               ; preds = %27
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %21

37:                                               ; preds = %21
  ret i32 0
}

declare dso_local %struct.adp5520_leds_platform_data* @dev_get_platdata(i32*) #1

declare dso_local %struct.adp5520_led* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @adp5520_clr_bits(i32, i32, i32) #1

declare dso_local i32 @led_classdev_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

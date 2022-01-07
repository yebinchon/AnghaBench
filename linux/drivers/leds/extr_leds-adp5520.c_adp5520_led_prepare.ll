; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-adp5520.c_adp5520_led_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-adp5520.c_adp5520_led_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.adp5520_leds_platform_data = type { i32, i32, i32 }

@ADP5520_LED1_CURRENT = common dso_local global i32 0, align 4
@ADP5520_LED2_CURRENT = common dso_local global i32 0, align 4
@ADP5520_LED3_CURRENT = common dso_local global i32 0, align 4
@ADP5520_LED_TIME = common dso_local global i32 0, align 4
@ADP5520_LED_FADE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @adp5520_led_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adp5520_led_prepare(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.adp5520_leds_platform_data*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = call %struct.adp5520_leds_platform_data* @dev_get_platdata(%struct.TYPE_2__* %7)
  store %struct.adp5520_leds_platform_data* %8, %struct.adp5520_leds_platform_data** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %4, align 8
  store i32 0, i32* %5, align 4
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = load i32, i32* @ADP5520_LED1_CURRENT, align 4
  %15 = call i32 @adp5520_write(%struct.device* %13, i32 %14, i32 0)
  %16 = load i32, i32* %5, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %5, align 4
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = load i32, i32* @ADP5520_LED2_CURRENT, align 4
  %20 = call i32 @adp5520_write(%struct.device* %18, i32 %19, i32 0)
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %5, align 4
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = load i32, i32* @ADP5520_LED3_CURRENT, align 4
  %25 = call i32 @adp5520_write(%struct.device* %23, i32 %24, i32 0)
  %26 = load i32, i32* %5, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = load i32, i32* @ADP5520_LED_TIME, align 4
  %30 = load %struct.adp5520_leds_platform_data*, %struct.adp5520_leds_platform_data** %3, align 8
  %31 = getelementptr inbounds %struct.adp5520_leds_platform_data, %struct.adp5520_leds_platform_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %32, 6
  %34 = call i32 @adp5520_write(%struct.device* %28, i32 %29, i32 %33)
  %35 = load i32, i32* %5, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %5, align 4
  %37 = load %struct.device*, %struct.device** %4, align 8
  %38 = load i32, i32* @ADP5520_LED_FADE, align 4
  %39 = load %struct.adp5520_leds_platform_data*, %struct.adp5520_leds_platform_data** %3, align 8
  %40 = getelementptr inbounds %struct.adp5520_leds_platform_data, %struct.adp5520_leds_platform_data* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.adp5520_leds_platform_data*, %struct.adp5520_leds_platform_data** %3, align 8
  %43 = getelementptr inbounds %struct.adp5520_leds_platform_data, %struct.adp5520_leds_platform_data* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @FADE_VAL(i32 %41, i32 %44)
  %46 = call i32 @adp5520_write(%struct.device* %37, i32 %38, i32 %45)
  %47 = load i32, i32* %5, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local %struct.adp5520_leds_platform_data* @dev_get_platdata(%struct.TYPE_2__*) #1

declare dso_local i32 @adp5520_write(%struct.device*, i32, i32) #1

declare dso_local i32 @FADE_VAL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

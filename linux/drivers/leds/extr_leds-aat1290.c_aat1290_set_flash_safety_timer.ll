; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-aat1290.c_aat1290_set_flash_safety_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-aat1290.c_aat1290_set_flash_safety_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aat1290_led = type { %struct.led_classdev_flash }
%struct.led_classdev_flash = type { %struct.led_flash_setting }
%struct.led_flash_setting = type { i32 }

@AAT1290_FLASH_TM_NUM_LEVELS = common dso_local global i32 0, align 4
@AAT1290_FLASH_SAFETY_TIMER_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aat1290_led*, i32)* @aat1290_set_flash_safety_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aat1290_set_flash_safety_timer(%struct.aat1290_led* %0, i32 %1) #0 {
  %3 = alloca %struct.aat1290_led*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.led_classdev_flash*, align 8
  %6 = alloca %struct.led_flash_setting*, align 8
  %7 = alloca i32, align 4
  store %struct.aat1290_led* %0, %struct.aat1290_led** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.aat1290_led*, %struct.aat1290_led** %3, align 8
  %9 = getelementptr inbounds %struct.aat1290_led, %struct.aat1290_led* %8, i32 0, i32 0
  store %struct.led_classdev_flash* %9, %struct.led_classdev_flash** %5, align 8
  %10 = load %struct.led_classdev_flash*, %struct.led_classdev_flash** %5, align 8
  %11 = getelementptr inbounds %struct.led_classdev_flash, %struct.led_classdev_flash* %10, i32 0, i32 0
  store %struct.led_flash_setting* %11, %struct.led_flash_setting** %6, align 8
  %12 = load i32, i32* @AAT1290_FLASH_TM_NUM_LEVELS, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.led_flash_setting*, %struct.led_flash_setting** %6, align 8
  %15 = getelementptr inbounds %struct.led_flash_setting, %struct.led_flash_setting* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = udiv i32 %13, %16
  %18 = sub i32 %12, %17
  %19 = add i32 %18, 1
  store i32 %19, i32* %7, align 4
  %20 = load %struct.aat1290_led*, %struct.aat1290_led** %3, align 8
  %21 = load i32, i32* @AAT1290_FLASH_SAFETY_TIMER_ADDR, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @aat1290_as2cwire_write(%struct.aat1290_led* %20, i32 %21, i32 %22)
  ret void
}

declare dso_local i32 @aat1290_as2cwire_write(%struct.aat1290_led*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

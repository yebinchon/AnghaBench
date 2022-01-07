; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-aat1290.c_aat1290_init_flash_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-aat1290.c_aat1290_init_flash_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aat1290_led = type { %struct.led_classdev_flash }
%struct.led_classdev_flash = type { %struct.led_flash_setting }
%struct.led_flash_setting = type { i32, i32, i32, i32 }
%struct.aat1290_led_config_data = type { i32 }

@AAT1290_FLASH_TM_NUM_LEVELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aat1290_led*, %struct.aat1290_led_config_data*)* @aat1290_init_flash_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aat1290_init_flash_timeout(%struct.aat1290_led* %0, %struct.aat1290_led_config_data* %1) #0 {
  %3 = alloca %struct.aat1290_led*, align 8
  %4 = alloca %struct.aat1290_led_config_data*, align 8
  %5 = alloca %struct.led_classdev_flash*, align 8
  %6 = alloca %struct.led_flash_setting*, align 8
  store %struct.aat1290_led* %0, %struct.aat1290_led** %3, align 8
  store %struct.aat1290_led_config_data* %1, %struct.aat1290_led_config_data** %4, align 8
  %7 = load %struct.aat1290_led*, %struct.aat1290_led** %3, align 8
  %8 = getelementptr inbounds %struct.aat1290_led, %struct.aat1290_led* %7, i32 0, i32 0
  store %struct.led_classdev_flash* %8, %struct.led_classdev_flash** %5, align 8
  %9 = load %struct.led_classdev_flash*, %struct.led_classdev_flash** %5, align 8
  %10 = getelementptr inbounds %struct.led_classdev_flash, %struct.led_classdev_flash* %9, i32 0, i32 0
  store %struct.led_flash_setting* %10, %struct.led_flash_setting** %6, align 8
  %11 = load %struct.aat1290_led_config_data*, %struct.aat1290_led_config_data** %4, align 8
  %12 = getelementptr inbounds %struct.aat1290_led_config_data, %struct.aat1290_led_config_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @AAT1290_FLASH_TM_NUM_LEVELS, align 4
  %15 = sdiv i32 %13, %14
  %16 = load %struct.led_flash_setting*, %struct.led_flash_setting** %6, align 8
  %17 = getelementptr inbounds %struct.led_flash_setting, %struct.led_flash_setting* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.aat1290_led_config_data*, %struct.aat1290_led_config_data** %4, align 8
  %19 = getelementptr inbounds %struct.aat1290_led_config_data, %struct.aat1290_led_config_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.led_flash_setting*, %struct.led_flash_setting** %6, align 8
  %22 = getelementptr inbounds %struct.led_flash_setting, %struct.led_flash_setting* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.led_flash_setting*, %struct.led_flash_setting** %6, align 8
  %24 = getelementptr inbounds %struct.led_flash_setting, %struct.led_flash_setting* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.led_flash_setting*, %struct.led_flash_setting** %6, align 8
  %27 = getelementptr inbounds %struct.led_flash_setting, %struct.led_flash_setting* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load %struct.led_flash_setting*, %struct.led_flash_setting** %6, align 8
  %29 = getelementptr inbounds %struct.led_flash_setting, %struct.led_flash_setting* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.led_flash_setting*, %struct.led_flash_setting** %6, align 8
  %32 = getelementptr inbounds %struct.led_flash_setting, %struct.led_flash_setting* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

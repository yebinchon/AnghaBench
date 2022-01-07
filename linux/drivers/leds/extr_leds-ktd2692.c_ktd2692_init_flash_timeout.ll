; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-ktd2692.c_ktd2692_init_flash_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-ktd2692.c_ktd2692_init_flash_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev_flash = type { %struct.led_flash_setting }
%struct.led_flash_setting = type { i32, i32, i32, i32 }
%struct.ktd2692_led_config_data = type { i32 }

@KTD2692_FLASH_MODE_TIMEOUT_DISABLE = common dso_local global i32 0, align 4
@KTD2692_FLASH_MODE_TIMEOUT_LEVELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.led_classdev_flash*, %struct.ktd2692_led_config_data*)* @ktd2692_init_flash_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ktd2692_init_flash_timeout(%struct.led_classdev_flash* %0, %struct.ktd2692_led_config_data* %1) #0 {
  %3 = alloca %struct.led_classdev_flash*, align 8
  %4 = alloca %struct.ktd2692_led_config_data*, align 8
  %5 = alloca %struct.led_flash_setting*, align 8
  store %struct.led_classdev_flash* %0, %struct.led_classdev_flash** %3, align 8
  store %struct.ktd2692_led_config_data* %1, %struct.ktd2692_led_config_data** %4, align 8
  %6 = load %struct.led_classdev_flash*, %struct.led_classdev_flash** %3, align 8
  %7 = getelementptr inbounds %struct.led_classdev_flash, %struct.led_classdev_flash* %6, i32 0, i32 0
  store %struct.led_flash_setting* %7, %struct.led_flash_setting** %5, align 8
  %8 = load i32, i32* @KTD2692_FLASH_MODE_TIMEOUT_DISABLE, align 4
  %9 = load %struct.led_flash_setting*, %struct.led_flash_setting** %5, align 8
  %10 = getelementptr inbounds %struct.led_flash_setting, %struct.led_flash_setting* %9, i32 0, i32 3
  store i32 %8, i32* %10, align 4
  %11 = load %struct.ktd2692_led_config_data*, %struct.ktd2692_led_config_data** %4, align 8
  %12 = getelementptr inbounds %struct.ktd2692_led_config_data, %struct.ktd2692_led_config_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.led_flash_setting*, %struct.led_flash_setting** %5, align 8
  %15 = getelementptr inbounds %struct.led_flash_setting, %struct.led_flash_setting* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.ktd2692_led_config_data*, %struct.ktd2692_led_config_data** %4, align 8
  %17 = getelementptr inbounds %struct.ktd2692_led_config_data, %struct.ktd2692_led_config_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @KTD2692_FLASH_MODE_TIMEOUT_LEVELS, align 4
  %20 = sub nsw i32 %19, 1
  %21 = sdiv i32 %18, %20
  %22 = load %struct.led_flash_setting*, %struct.led_flash_setting** %5, align 8
  %23 = getelementptr inbounds %struct.led_flash_setting, %struct.led_flash_setting* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.ktd2692_led_config_data*, %struct.ktd2692_led_config_data** %4, align 8
  %25 = getelementptr inbounds %struct.ktd2692_led_config_data, %struct.ktd2692_led_config_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.led_flash_setting*, %struct.led_flash_setting** %5, align 8
  %28 = getelementptr inbounds %struct.led_flash_setting, %struct.led_flash_setting* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

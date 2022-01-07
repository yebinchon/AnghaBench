; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-max77693.c_max77693_init_flash_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-max77693.c_max77693_init_flash_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max77693_sub_led = type { i32, %struct.led_classdev_flash }
%struct.led_classdev_flash = type { %struct.led_flash_setting, %struct.led_flash_setting }
%struct.led_flash_setting = type { i64, i64, i32, i32 }
%struct.max77693_led_config_data = type { i64*, i64* }
%struct.max77693_led_device = type { i64 }

@FLASH_IOUT_MIN = common dso_local global i32 0, align 4
@FLED1 = common dso_local global i64 0, align 8
@FLED2 = common dso_local global i64 0, align 8
@FLASH_IOUT_STEP = common dso_local global i32 0, align 4
@FLASH_TIMEOUT_MIN = common dso_local global i32 0, align 4
@FLASH_TIMEOUT_STEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.max77693_sub_led*, %struct.max77693_led_config_data*)* @max77693_init_flash_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max77693_init_flash_settings(%struct.max77693_sub_led* %0, %struct.max77693_led_config_data* %1) #0 {
  %3 = alloca %struct.max77693_sub_led*, align 8
  %4 = alloca %struct.max77693_led_config_data*, align 8
  %5 = alloca %struct.led_classdev_flash*, align 8
  %6 = alloca %struct.max77693_led_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.led_flash_setting*, align 8
  store %struct.max77693_sub_led* %0, %struct.max77693_sub_led** %3, align 8
  store %struct.max77693_led_config_data* %1, %struct.max77693_led_config_data** %4, align 8
  %9 = load %struct.max77693_sub_led*, %struct.max77693_sub_led** %3, align 8
  %10 = getelementptr inbounds %struct.max77693_sub_led, %struct.max77693_sub_led* %9, i32 0, i32 1
  store %struct.led_classdev_flash* %10, %struct.led_classdev_flash** %5, align 8
  %11 = load %struct.max77693_sub_led*, %struct.max77693_sub_led** %3, align 8
  %12 = call %struct.max77693_led_device* @sub_led_to_led(%struct.max77693_sub_led* %11)
  store %struct.max77693_led_device* %12, %struct.max77693_led_device** %6, align 8
  %13 = load %struct.max77693_sub_led*, %struct.max77693_sub_led** %3, align 8
  %14 = getelementptr inbounds %struct.max77693_sub_led, %struct.max77693_sub_led* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %7, align 4
  %16 = load %struct.led_classdev_flash*, %struct.led_classdev_flash** %5, align 8
  %17 = getelementptr inbounds %struct.led_classdev_flash, %struct.led_classdev_flash* %16, i32 0, i32 1
  store %struct.led_flash_setting* %17, %struct.led_flash_setting** %8, align 8
  %18 = load i32, i32* @FLASH_IOUT_MIN, align 4
  %19 = load %struct.led_flash_setting*, %struct.led_flash_setting** %8, align 8
  %20 = getelementptr inbounds %struct.led_flash_setting, %struct.led_flash_setting* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 4
  %21 = load %struct.max77693_led_device*, %struct.max77693_led_device** %6, align 8
  %22 = getelementptr inbounds %struct.max77693_led_device, %struct.max77693_led_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %2
  %26 = load %struct.max77693_led_config_data*, %struct.max77693_led_config_data** %4, align 8
  %27 = getelementptr inbounds %struct.max77693_led_config_data, %struct.max77693_led_config_data* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = load i64, i64* @FLED1, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.max77693_led_config_data*, %struct.max77693_led_config_data** %4, align 8
  %33 = getelementptr inbounds %struct.max77693_led_config_data, %struct.max77693_led_config_data* %32, i32 0, i32 1
  %34 = load i64*, i64** %33, align 8
  %35 = load i64, i64* @FLED2, align 8
  %36 = getelementptr inbounds i64, i64* %34, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %31, %37
  br label %47

39:                                               ; preds = %2
  %40 = load %struct.max77693_led_config_data*, %struct.max77693_led_config_data** %4, align 8
  %41 = getelementptr inbounds %struct.max77693_led_config_data, %struct.max77693_led_config_data* %40, i32 0, i32 1
  %42 = load i64*, i64** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  br label %47

47:                                               ; preds = %39, %25
  %48 = phi i64 [ %38, %25 ], [ %46, %39 ]
  %49 = load %struct.led_flash_setting*, %struct.led_flash_setting** %8, align 8
  %50 = getelementptr inbounds %struct.led_flash_setting, %struct.led_flash_setting* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load i32, i32* @FLASH_IOUT_STEP, align 4
  %52 = load %struct.led_flash_setting*, %struct.led_flash_setting** %8, align 8
  %53 = getelementptr inbounds %struct.led_flash_setting, %struct.led_flash_setting* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load %struct.led_flash_setting*, %struct.led_flash_setting** %8, align 8
  %55 = getelementptr inbounds %struct.led_flash_setting, %struct.led_flash_setting* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.led_flash_setting*, %struct.led_flash_setting** %8, align 8
  %58 = getelementptr inbounds %struct.led_flash_setting, %struct.led_flash_setting* %57, i32 0, i32 1
  store i64 %56, i64* %58, align 8
  %59 = load %struct.led_classdev_flash*, %struct.led_classdev_flash** %5, align 8
  %60 = getelementptr inbounds %struct.led_classdev_flash, %struct.led_classdev_flash* %59, i32 0, i32 0
  store %struct.led_flash_setting* %60, %struct.led_flash_setting** %8, align 8
  %61 = load i32, i32* @FLASH_TIMEOUT_MIN, align 4
  %62 = load %struct.led_flash_setting*, %struct.led_flash_setting** %8, align 8
  %63 = getelementptr inbounds %struct.led_flash_setting, %struct.led_flash_setting* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  %64 = load %struct.max77693_led_config_data*, %struct.max77693_led_config_data** %4, align 8
  %65 = getelementptr inbounds %struct.max77693_led_config_data, %struct.max77693_led_config_data* %64, i32 0, i32 0
  %66 = load i64*, i64** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.led_flash_setting*, %struct.led_flash_setting** %8, align 8
  %72 = getelementptr inbounds %struct.led_flash_setting, %struct.led_flash_setting* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  %73 = load i32, i32* @FLASH_TIMEOUT_STEP, align 4
  %74 = load %struct.led_flash_setting*, %struct.led_flash_setting** %8, align 8
  %75 = getelementptr inbounds %struct.led_flash_setting, %struct.led_flash_setting* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  %76 = load %struct.led_flash_setting*, %struct.led_flash_setting** %8, align 8
  %77 = getelementptr inbounds %struct.led_flash_setting, %struct.led_flash_setting* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.led_flash_setting*, %struct.led_flash_setting** %8, align 8
  %80 = getelementptr inbounds %struct.led_flash_setting, %struct.led_flash_setting* %79, i32 0, i32 1
  store i64 %78, i64* %80, align 8
  ret void
}

declare dso_local %struct.max77693_led_device* @sub_led_to_led(%struct.max77693_sub_led*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

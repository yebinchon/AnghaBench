; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-max77693.c_max77693_init_fled_cdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-max77693.c_max77693_init_fled_cdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max77693_sub_led = type { i32, i32, %struct.led_classdev_flash }
%struct.led_classdev_flash = type { %struct.TYPE_2__, %struct.led_classdev, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.led_classdev = type { i32, i32, i32, i32 }
%struct.max77693_led_config_data = type { i32*, i32* }
%struct.max77693_led_device = type { i64 }

@flash_ops = common dso_local global i32 0, align 4
@max77693_led_brightness_set = common dso_local global i32 0, align 4
@FLED1 = common dso_local global i64 0, align 8
@FLED2 = common dso_local global i64 0, align 8
@TORCH_IOUT_STEP = common dso_local global i32 0, align 4
@LED_DEV_CAP_FLASH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.max77693_sub_led*, %struct.max77693_led_config_data*)* @max77693_init_fled_cdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max77693_init_fled_cdev(%struct.max77693_sub_led* %0, %struct.max77693_led_config_data* %1) #0 {
  %3 = alloca %struct.max77693_sub_led*, align 8
  %4 = alloca %struct.max77693_led_config_data*, align 8
  %5 = alloca %struct.max77693_led_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.led_classdev_flash*, align 8
  %8 = alloca %struct.led_classdev*, align 8
  store %struct.max77693_sub_led* %0, %struct.max77693_sub_led** %3, align 8
  store %struct.max77693_led_config_data* %1, %struct.max77693_led_config_data** %4, align 8
  %9 = load %struct.max77693_sub_led*, %struct.max77693_sub_led** %3, align 8
  %10 = call %struct.max77693_led_device* @sub_led_to_led(%struct.max77693_sub_led* %9)
  store %struct.max77693_led_device* %10, %struct.max77693_led_device** %5, align 8
  %11 = load %struct.max77693_sub_led*, %struct.max77693_sub_led** %3, align 8
  %12 = getelementptr inbounds %struct.max77693_sub_led, %struct.max77693_sub_led* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %6, align 4
  %14 = load %struct.max77693_sub_led*, %struct.max77693_sub_led** %3, align 8
  %15 = getelementptr inbounds %struct.max77693_sub_led, %struct.max77693_sub_led* %14, i32 0, i32 2
  store %struct.led_classdev_flash* %15, %struct.led_classdev_flash** %7, align 8
  %16 = load %struct.led_classdev_flash*, %struct.led_classdev_flash** %7, align 8
  %17 = getelementptr inbounds %struct.led_classdev_flash, %struct.led_classdev_flash* %16, i32 0, i32 2
  store i32* @flash_ops, i32** %17, align 8
  %18 = load %struct.led_classdev_flash*, %struct.led_classdev_flash** %7, align 8
  %19 = getelementptr inbounds %struct.led_classdev_flash, %struct.led_classdev_flash* %18, i32 0, i32 1
  store %struct.led_classdev* %19, %struct.led_classdev** %8, align 8
  %20 = load %struct.max77693_led_config_data*, %struct.max77693_led_config_data** %4, align 8
  %21 = getelementptr inbounds %struct.max77693_led_config_data, %struct.max77693_led_config_data* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.led_classdev*, %struct.led_classdev** %8, align 8
  %28 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @max77693_led_brightness_set, align 4
  %30 = load %struct.led_classdev*, %struct.led_classdev** %8, align 8
  %31 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load %struct.max77693_led_device*, %struct.max77693_led_device** %5, align 8
  %33 = getelementptr inbounds %struct.max77693_led_device, %struct.max77693_led_device* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %2
  %37 = load %struct.max77693_led_config_data*, %struct.max77693_led_config_data** %4, align 8
  %38 = getelementptr inbounds %struct.max77693_led_config_data, %struct.max77693_led_config_data* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* @FLED1, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.max77693_led_config_data*, %struct.max77693_led_config_data** %4, align 8
  %44 = getelementptr inbounds %struct.max77693_led_config_data, %struct.max77693_led_config_data* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* @FLED2, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %42, %48
  br label %58

50:                                               ; preds = %2
  %51 = load %struct.max77693_led_config_data*, %struct.max77693_led_config_data** %4, align 8
  %52 = getelementptr inbounds %struct.max77693_led_config_data, %struct.max77693_led_config_data* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  br label %58

58:                                               ; preds = %50, %36
  %59 = phi i32 [ %49, %36 ], [ %57, %50 ]
  %60 = load i32, i32* @TORCH_IOUT_STEP, align 4
  %61 = sdiv i32 %59, %60
  %62 = load %struct.led_classdev*, %struct.led_classdev** %8, align 8
  %63 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @LED_DEV_CAP_FLASH, align 4
  %65 = load %struct.led_classdev*, %struct.led_classdev** %8, align 8
  %66 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  %69 = load %struct.max77693_sub_led*, %struct.max77693_sub_led** %3, align 8
  %70 = load %struct.max77693_led_config_data*, %struct.max77693_led_config_data** %4, align 8
  %71 = call i32 @max77693_init_flash_settings(%struct.max77693_sub_led* %69, %struct.max77693_led_config_data* %70)
  %72 = load %struct.led_classdev_flash*, %struct.led_classdev_flash** %7, align 8
  %73 = getelementptr inbounds %struct.led_classdev_flash, %struct.led_classdev_flash* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.max77693_sub_led*, %struct.max77693_sub_led** %3, align 8
  %77 = getelementptr inbounds %struct.max77693_sub_led, %struct.max77693_sub_led* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  ret void
}

declare dso_local %struct.max77693_led_device* @sub_led_to_led(%struct.max77693_sub_led*) #1

declare dso_local i32 @max77693_init_flash_settings(%struct.max77693_sub_led*, %struct.max77693_led_config_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

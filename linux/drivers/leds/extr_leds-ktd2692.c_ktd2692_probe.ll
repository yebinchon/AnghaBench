; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-ktd2692.c_ktd2692_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-ktd2692.c_ktd2692_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.ktd2692_context = type { i32, %struct.led_classdev_flash }
%struct.led_classdev_flash = type { i32*, %struct.led_classdev }
%struct.led_classdev = type { i32, i32, i32, i32 }
%struct.ktd2692_led_config_data = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@flash_ops = common dso_local global i32 0, align 4
@ktd2692_led_brightness_set = common dso_local global i32 0, align 4
@LED_CORE_SUSPENDRESUME = common dso_local global i32 0, align 4
@LED_DEV_CAP_FLASH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"can't register LED %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ktd2692_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ktd2692_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.ktd2692_context*, align 8
  %5 = alloca %struct.led_classdev*, align 8
  %6 = alloca %struct.led_classdev_flash*, align 8
  %7 = alloca %struct.ktd2692_led_config_data, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.ktd2692_context* @devm_kzalloc(i32* %10, i32 32, i32 %11)
  store %struct.ktd2692_context* %12, %struct.ktd2692_context** %4, align 8
  %13 = load %struct.ktd2692_context*, %struct.ktd2692_context** %4, align 8
  %14 = icmp ne %struct.ktd2692_context* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %77

18:                                               ; preds = %1
  %19 = load %struct.ktd2692_context*, %struct.ktd2692_context** %4, align 8
  %20 = getelementptr inbounds %struct.ktd2692_context, %struct.ktd2692_context* %19, i32 0, i32 1
  store %struct.led_classdev_flash* %20, %struct.led_classdev_flash** %6, align 8
  %21 = load %struct.led_classdev_flash*, %struct.led_classdev_flash** %6, align 8
  %22 = getelementptr inbounds %struct.led_classdev_flash, %struct.led_classdev_flash* %21, i32 0, i32 1
  store %struct.led_classdev* %22, %struct.led_classdev** %5, align 8
  %23 = load %struct.ktd2692_context*, %struct.ktd2692_context** %4, align 8
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = call i32 @ktd2692_parse_dt(%struct.ktd2692_context* %23, i32* %25, %struct.ktd2692_led_config_data* %7)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %18
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %2, align 4
  br label %77

31:                                               ; preds = %18
  %32 = load %struct.led_classdev_flash*, %struct.led_classdev_flash** %6, align 8
  %33 = call i32 @ktd2692_init_flash_timeout(%struct.led_classdev_flash* %32, %struct.ktd2692_led_config_data* %7)
  %34 = call i32 @ktd2692_init_movie_current_max(%struct.ktd2692_led_config_data* %7)
  %35 = load %struct.led_classdev_flash*, %struct.led_classdev_flash** %6, align 8
  %36 = getelementptr inbounds %struct.led_classdev_flash, %struct.led_classdev_flash* %35, i32 0, i32 0
  store i32* @flash_ops, i32** %36, align 8
  %37 = getelementptr inbounds %struct.ktd2692_led_config_data, %struct.ktd2692_led_config_data* %7, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.led_classdev*, %struct.led_classdev** %5, align 8
  %40 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @ktd2692_led_brightness_set, align 4
  %42 = load %struct.led_classdev*, %struct.led_classdev** %5, align 8
  %43 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @LED_CORE_SUSPENDRESUME, align 4
  %45 = load i32, i32* @LED_DEV_CAP_FLASH, align 4
  %46 = or i32 %44, %45
  %47 = load %struct.led_classdev*, %struct.led_classdev** %5, align 8
  %48 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load %struct.ktd2692_context*, %struct.ktd2692_context** %4, align 8
  %52 = getelementptr inbounds %struct.ktd2692_context, %struct.ktd2692_context* %51, i32 0, i32 0
  %53 = call i32 @mutex_init(i32* %52)
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = load %struct.ktd2692_context*, %struct.ktd2692_context** %4, align 8
  %56 = call i32 @platform_set_drvdata(%struct.platform_device* %54, %struct.ktd2692_context* %55)
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = load %struct.led_classdev_flash*, %struct.led_classdev_flash** %6, align 8
  %60 = call i32 @led_classdev_flash_register(i32* %58, %struct.led_classdev_flash* %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %31
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 0
  %66 = load %struct.led_classdev*, %struct.led_classdev** %5, align 8
  %67 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @dev_err(i32* %65, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %68)
  %70 = load %struct.ktd2692_context*, %struct.ktd2692_context** %4, align 8
  %71 = getelementptr inbounds %struct.ktd2692_context, %struct.ktd2692_context* %70, i32 0, i32 0
  %72 = call i32 @mutex_destroy(i32* %71)
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %2, align 4
  br label %77

74:                                               ; preds = %31
  %75 = load %struct.ktd2692_context*, %struct.ktd2692_context** %4, align 8
  %76 = call i32 @ktd2692_setup(%struct.ktd2692_context* %75)
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %74, %63, %29, %15
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local %struct.ktd2692_context* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @ktd2692_parse_dt(%struct.ktd2692_context*, i32*, %struct.ktd2692_led_config_data*) #1

declare dso_local i32 @ktd2692_init_flash_timeout(%struct.led_classdev_flash*, %struct.ktd2692_led_config_data*) #1

declare dso_local i32 @ktd2692_init_movie_current_max(%struct.ktd2692_led_config_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ktd2692_context*) #1

declare dso_local i32 @led_classdev_flash_register(i32*, %struct.led_classdev_flash*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @ktd2692_setup(%struct.ktd2692_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-aat1290.c_aat1290_led_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-aat1290.c_aat1290_led_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.device_node = type { i32 }
%struct.aat1290_led = type { i32, i32, %struct.led_classdev_flash, %struct.platform_device* }
%struct.led_classdev_flash = type { %struct.led_classdev, i32* }
%struct.led_classdev = type { i32, i32, i32 }
%struct.led_init_data = type { i32, i32 }
%struct.aat1290_led_config_data = type { i32 }
%struct.v4l2_flash_config = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@flash_ops = common dso_local global i32 0, align 4
@aat1290_led_brightness_set = common dso_local global i32 0, align 4
@LED_DEV_CAP_FLASH = common dso_local global i32 0, align 4
@AAT1290_NAME = common dso_local global i32 0, align 4
@v4l2_flash_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @aat1290_led_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aat1290_led_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.aat1290_led*, align 8
  %7 = alloca %struct.led_classdev*, align 8
  %8 = alloca %struct.led_classdev_flash*, align 8
  %9 = alloca %struct.led_init_data, align 4
  %10 = alloca %struct.aat1290_led_config_data, align 4
  %11 = alloca %struct.v4l2_flash_config, align 4
  %12 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %4, align 8
  store %struct.device_node* null, %struct.device_node** %5, align 8
  %15 = bitcast %struct.led_init_data* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 8, i1 false)
  %16 = bitcast %struct.aat1290_led_config_data* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 4, i1 false)
  %17 = bitcast %struct.v4l2_flash_config* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 4, i1 false)
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.aat1290_led* @devm_kzalloc(%struct.device* %18, i32 40, i32 %19)
  store %struct.aat1290_led* %20, %struct.aat1290_led** %6, align 8
  %21 = load %struct.aat1290_led*, %struct.aat1290_led** %6, align 8
  %22 = icmp ne %struct.aat1290_led* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %104

26:                                               ; preds = %1
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = load %struct.aat1290_led*, %struct.aat1290_led** %6, align 8
  %29 = getelementptr inbounds %struct.aat1290_led, %struct.aat1290_led* %28, i32 0, i32 3
  store %struct.platform_device* %27, %struct.platform_device** %29, align 8
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = load %struct.aat1290_led*, %struct.aat1290_led** %6, align 8
  %32 = call i32 @platform_set_drvdata(%struct.platform_device* %30, %struct.aat1290_led* %31)
  %33 = load %struct.aat1290_led*, %struct.aat1290_led** %6, align 8
  %34 = getelementptr inbounds %struct.aat1290_led, %struct.aat1290_led* %33, i32 0, i32 2
  store %struct.led_classdev_flash* %34, %struct.led_classdev_flash** %8, align 8
  %35 = load %struct.led_classdev_flash*, %struct.led_classdev_flash** %8, align 8
  %36 = getelementptr inbounds %struct.led_classdev_flash, %struct.led_classdev_flash* %35, i32 0, i32 1
  store i32* @flash_ops, i32** %36, align 8
  %37 = load %struct.led_classdev_flash*, %struct.led_classdev_flash** %8, align 8
  %38 = getelementptr inbounds %struct.led_classdev_flash, %struct.led_classdev_flash* %37, i32 0, i32 0
  store %struct.led_classdev* %38, %struct.led_classdev** %7, align 8
  %39 = load %struct.aat1290_led*, %struct.aat1290_led** %6, align 8
  %40 = call i32 @aat1290_led_get_configuration(%struct.aat1290_led* %39, %struct.aat1290_led_config_data* %10, %struct.device_node** %5)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %26
  %44 = load i32, i32* %12, align 4
  store i32 %44, i32* %2, align 4
  br label %104

45:                                               ; preds = %26
  %46 = load %struct.aat1290_led*, %struct.aat1290_led** %6, align 8
  %47 = getelementptr inbounds %struct.aat1290_led, %struct.aat1290_led* %46, i32 0, i32 0
  %48 = call i32 @mutex_init(i32* %47)
  %49 = load i32, i32* @aat1290_led_brightness_set, align 4
  %50 = load %struct.led_classdev*, %struct.led_classdev** %7, align 8
  %51 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = getelementptr inbounds %struct.aat1290_led_config_data, %struct.aat1290_led_config_data* %10, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.led_classdev*, %struct.led_classdev** %7, align 8
  %55 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @LED_DEV_CAP_FLASH, align 4
  %57 = load %struct.led_classdev*, %struct.led_classdev** %7, align 8
  %58 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  %61 = load %struct.aat1290_led*, %struct.aat1290_led** %6, align 8
  %62 = call i32 @aat1290_init_flash_timeout(%struct.aat1290_led* %61, %struct.aat1290_led_config_data* %10)
  %63 = load %struct.device_node*, %struct.device_node** %5, align 8
  %64 = call i32 @of_fwnode_handle(%struct.device_node* %63)
  %65 = getelementptr inbounds %struct.led_init_data, %struct.led_init_data* %9, i32 0, i32 1
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* @AAT1290_NAME, align 4
  %67 = getelementptr inbounds %struct.led_init_data, %struct.led_init_data* %9, i32 0, i32 0
  store i32 %66, i32* %67, align 4
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 0
  %70 = load %struct.led_classdev_flash*, %struct.led_classdev_flash** %8, align 8
  %71 = call i32 @led_classdev_flash_register_ext(%struct.device* %69, %struct.led_classdev_flash* %70, %struct.led_init_data* %9)
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %12, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %45
  br label %99

75:                                               ; preds = %45
  %76 = load %struct.aat1290_led*, %struct.aat1290_led** %6, align 8
  %77 = call i32 @aat1290_init_v4l2_flash_config(%struct.aat1290_led* %76, %struct.aat1290_led_config_data* %10, %struct.v4l2_flash_config* %11)
  %78 = load %struct.device*, %struct.device** %4, align 8
  %79 = load %struct.device_node*, %struct.device_node** %5, align 8
  %80 = call i32 @of_fwnode_handle(%struct.device_node* %79)
  %81 = load %struct.led_classdev_flash*, %struct.led_classdev_flash** %8, align 8
  %82 = call i32 @v4l2_flash_init(%struct.device* %78, i32 %80, %struct.led_classdev_flash* %81, i32* @v4l2_flash_ops, %struct.v4l2_flash_config* %11)
  %83 = load %struct.aat1290_led*, %struct.aat1290_led** %6, align 8
  %84 = getelementptr inbounds %struct.aat1290_led, %struct.aat1290_led* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load %struct.aat1290_led*, %struct.aat1290_led** %6, align 8
  %86 = getelementptr inbounds %struct.aat1290_led, %struct.aat1290_led* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @IS_ERR(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %75
  %91 = load %struct.aat1290_led*, %struct.aat1290_led** %6, align 8
  %92 = getelementptr inbounds %struct.aat1290_led, %struct.aat1290_led* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @PTR_ERR(i32 %93)
  store i32 %94, i32* %12, align 4
  br label %96

95:                                               ; preds = %75
  store i32 0, i32* %2, align 4
  br label %104

96:                                               ; preds = %90
  %97 = load %struct.led_classdev_flash*, %struct.led_classdev_flash** %8, align 8
  %98 = call i32 @led_classdev_flash_unregister(%struct.led_classdev_flash* %97)
  br label %99

99:                                               ; preds = %96, %74
  %100 = load %struct.aat1290_led*, %struct.aat1290_led** %6, align 8
  %101 = getelementptr inbounds %struct.aat1290_led, %struct.aat1290_led* %100, i32 0, i32 0
  %102 = call i32 @mutex_destroy(i32* %101)
  %103 = load i32, i32* %12, align 4
  store i32 %103, i32* %2, align 4
  br label %104

104:                                              ; preds = %99, %95, %43, %23
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.aat1290_led* @devm_kzalloc(%struct.device*, i32, i32) #2

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.aat1290_led*) #2

declare dso_local i32 @aat1290_led_get_configuration(%struct.aat1290_led*, %struct.aat1290_led_config_data*, %struct.device_node**) #2

declare dso_local i32 @mutex_init(i32*) #2

declare dso_local i32 @aat1290_init_flash_timeout(%struct.aat1290_led*, %struct.aat1290_led_config_data*) #2

declare dso_local i32 @of_fwnode_handle(%struct.device_node*) #2

declare dso_local i32 @led_classdev_flash_register_ext(%struct.device*, %struct.led_classdev_flash*, %struct.led_init_data*) #2

declare dso_local i32 @aat1290_init_v4l2_flash_config(%struct.aat1290_led*, %struct.aat1290_led_config_data*, %struct.v4l2_flash_config*) #2

declare dso_local i32 @v4l2_flash_init(%struct.device*, i32, %struct.led_classdev_flash*, i32*, %struct.v4l2_flash_config*) #2

declare dso_local i64 @IS_ERR(i32) #2

declare dso_local i32 @PTR_ERR(i32) #2

declare dso_local i32 @led_classdev_flash_unregister(%struct.led_classdev_flash*) #2

declare dso_local i32 @mutex_destroy(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

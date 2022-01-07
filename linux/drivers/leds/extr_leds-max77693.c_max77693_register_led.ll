; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-max77693.c_max77693_register_led.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-max77693.c_max77693_register_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max77693_sub_led = type { i32, %struct.led_classdev_flash }
%struct.led_classdev_flash = type { i32 }
%struct.max77693_led_config_data = type { i32 }
%struct.device_node = type { i32 }
%struct.max77693_led_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.v4l2_flash_config = type { i32 }

@v4l2_flash_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max77693_sub_led*, %struct.max77693_led_config_data*, %struct.device_node*)* @max77693_register_led to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77693_register_led(%struct.max77693_sub_led* %0, %struct.max77693_led_config_data* %1, %struct.device_node* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.max77693_sub_led*, align 8
  %6 = alloca %struct.max77693_led_config_data*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.max77693_led_device*, align 8
  %9 = alloca %struct.led_classdev_flash*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca %struct.v4l2_flash_config, align 4
  %12 = alloca i32, align 4
  store %struct.max77693_sub_led* %0, %struct.max77693_sub_led** %5, align 8
  store %struct.max77693_led_config_data* %1, %struct.max77693_led_config_data** %6, align 8
  store %struct.device_node* %2, %struct.device_node** %7, align 8
  %13 = load %struct.max77693_sub_led*, %struct.max77693_sub_led** %5, align 8
  %14 = call %struct.max77693_led_device* @sub_led_to_led(%struct.max77693_sub_led* %13)
  store %struct.max77693_led_device* %14, %struct.max77693_led_device** %8, align 8
  %15 = load %struct.max77693_sub_led*, %struct.max77693_sub_led** %5, align 8
  %16 = getelementptr inbounds %struct.max77693_sub_led, %struct.max77693_sub_led* %15, i32 0, i32 1
  store %struct.led_classdev_flash* %16, %struct.led_classdev_flash** %9, align 8
  %17 = load %struct.max77693_led_device*, %struct.max77693_led_device** %8, align 8
  %18 = getelementptr inbounds %struct.max77693_led_device, %struct.max77693_led_device* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store %struct.device* %20, %struct.device** %10, align 8
  %21 = bitcast %struct.v4l2_flash_config* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %21, i8 0, i64 4, i1 false)
  %22 = load %struct.device*, %struct.device** %10, align 8
  %23 = load %struct.led_classdev_flash*, %struct.led_classdev_flash** %9, align 8
  %24 = call i32 @led_classdev_flash_register(%struct.device* %22, %struct.led_classdev_flash* %23)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* %12, align 4
  store i32 %28, i32* %4, align 4
  br label %55

29:                                               ; preds = %3
  %30 = load %struct.max77693_sub_led*, %struct.max77693_sub_led** %5, align 8
  %31 = load %struct.max77693_led_config_data*, %struct.max77693_led_config_data** %6, align 8
  %32 = call i32 @max77693_init_v4l2_flash_config(%struct.max77693_sub_led* %30, %struct.max77693_led_config_data* %31, %struct.v4l2_flash_config* %11)
  %33 = load %struct.device*, %struct.device** %10, align 8
  %34 = load %struct.device_node*, %struct.device_node** %7, align 8
  %35 = call i32 @of_fwnode_handle(%struct.device_node* %34)
  %36 = load %struct.led_classdev_flash*, %struct.led_classdev_flash** %9, align 8
  %37 = call i32 @v4l2_flash_init(%struct.device* %33, i32 %35, %struct.led_classdev_flash* %36, i32* @v4l2_flash_ops, %struct.v4l2_flash_config* %11)
  %38 = load %struct.max77693_sub_led*, %struct.max77693_sub_led** %5, align 8
  %39 = getelementptr inbounds %struct.max77693_sub_led, %struct.max77693_sub_led* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.max77693_sub_led*, %struct.max77693_sub_led** %5, align 8
  %41 = getelementptr inbounds %struct.max77693_sub_led, %struct.max77693_sub_led* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @IS_ERR(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %29
  %46 = load %struct.max77693_sub_led*, %struct.max77693_sub_led** %5, align 8
  %47 = getelementptr inbounds %struct.max77693_sub_led, %struct.max77693_sub_led* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @PTR_ERR(i32 %48)
  store i32 %49, i32* %12, align 4
  br label %51

50:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %55

51:                                               ; preds = %45
  %52 = load %struct.led_classdev_flash*, %struct.led_classdev_flash** %9, align 8
  %53 = call i32 @led_classdev_flash_unregister(%struct.led_classdev_flash* %52)
  %54 = load i32, i32* %12, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %51, %50, %27
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local %struct.max77693_led_device* @sub_led_to_led(%struct.max77693_sub_led*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @led_classdev_flash_register(%struct.device*, %struct.led_classdev_flash*) #1

declare dso_local i32 @max77693_init_v4l2_flash_config(%struct.max77693_sub_led*, %struct.max77693_led_config_data*, %struct.v4l2_flash_config*) #1

declare dso_local i32 @v4l2_flash_init(%struct.device*, i32, %struct.led_classdev_flash*, i32*, %struct.v4l2_flash_config*) #1

declare dso_local i32 @of_fwnode_handle(%struct.device_node*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @led_classdev_flash_unregister(%struct.led_classdev_flash*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/orientation/extr_hid-sensor-rotation.c_hid_dev_rot_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/orientation/extr_hid-sensor-rotation.c_hid_dev_rot_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.hid_sensor_hub_device* }
%struct.hid_sensor_hub_device = type { i32 }
%struct.iio_dev = type { i32 }
%struct.dev_rot_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @hid_dev_rot_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hid_dev_rot_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.hid_sensor_hub_device*, align 8
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca %struct.dev_rot_state*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %8, align 8
  store %struct.hid_sensor_hub_device* %9, %struct.hid_sensor_hub_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %11 = call %struct.iio_dev* @platform_get_drvdata(%struct.platform_device* %10)
  store %struct.iio_dev* %11, %struct.iio_dev** %4, align 8
  %12 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %13 = call %struct.dev_rot_state* @iio_priv(%struct.iio_dev* %12)
  store %struct.dev_rot_state* %13, %struct.dev_rot_state** %5, align 8
  %14 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %3, align 8
  %15 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %3, align 8
  %16 = getelementptr inbounds %struct.hid_sensor_hub_device, %struct.hid_sensor_hub_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @sensor_hub_remove_callback(%struct.hid_sensor_hub_device* %14, i32 %17)
  %19 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %20 = call i32 @iio_device_unregister(%struct.iio_dev* %19)
  %21 = load %struct.dev_rot_state*, %struct.dev_rot_state** %5, align 8
  %22 = getelementptr inbounds %struct.dev_rot_state, %struct.dev_rot_state* %21, i32 0, i32 0
  %23 = call i32 @hid_sensor_remove_trigger(i32* %22)
  %24 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %25 = call i32 @iio_triggered_buffer_cleanup(%struct.iio_dev* %24)
  ret i32 0
}

declare dso_local %struct.iio_dev* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.dev_rot_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @sensor_hub_remove_callback(%struct.hid_sensor_hub_device*, i32) #1

declare dso_local i32 @iio_device_unregister(%struct.iio_dev*) #1

declare dso_local i32 @hid_sensor_remove_trigger(i32*) #1

declare dso_local i32 @iio_triggered_buffer_cleanup(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

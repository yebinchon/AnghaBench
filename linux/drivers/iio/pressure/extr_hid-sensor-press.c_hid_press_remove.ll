; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_hid-sensor-press.c_hid_press_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_hid-sensor-press.c_hid_press_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.hid_sensor_hub_device* }
%struct.hid_sensor_hub_device = type { i32 }
%struct.iio_dev = type { i32 }
%struct.press_state = type { i32 }

@HID_USAGE_SENSOR_PRESSURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @hid_press_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hid_press_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.hid_sensor_hub_device*, align 8
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca %struct.press_state*, align 8
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
  %13 = call %struct.press_state* @iio_priv(%struct.iio_dev* %12)
  store %struct.press_state* %13, %struct.press_state** %5, align 8
  %14 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %3, align 8
  %15 = load i32, i32* @HID_USAGE_SENSOR_PRESSURE, align 4
  %16 = call i32 @sensor_hub_remove_callback(%struct.hid_sensor_hub_device* %14, i32 %15)
  %17 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %18 = call i32 @iio_device_unregister(%struct.iio_dev* %17)
  %19 = load %struct.press_state*, %struct.press_state** %5, align 8
  %20 = getelementptr inbounds %struct.press_state, %struct.press_state* %19, i32 0, i32 0
  %21 = call i32 @hid_sensor_remove_trigger(i32* %20)
  %22 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %23 = call i32 @iio_triggered_buffer_cleanup(%struct.iio_dev* %22)
  %24 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %25 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @kfree(i32 %26)
  ret i32 0
}

declare dso_local %struct.iio_dev* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.press_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @sensor_hub_remove_callback(%struct.hid_sensor_hub_device*, i32) #1

declare dso_local i32 @iio_device_unregister(%struct.iio_dev*) #1

declare dso_local i32 @hid_sensor_remove_trigger(i32*) #1

declare dso_local i32 @iio_triggered_buffer_cleanup(%struct.iio_dev*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

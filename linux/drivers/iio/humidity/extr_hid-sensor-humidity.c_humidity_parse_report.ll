; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/humidity/extr_hid-sensor-humidity.c_humidity_parse_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/humidity/extr_hid-sensor-humidity.c_humidity_parse_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.hid_sensor_hub_device = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.hid_humidity_state = type { %struct.TYPE_4__, i32, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32 }

@HID_INPUT_REPORT = common dso_local global i32 0, align 4
@HID_USAGE_SENSOR_ATMOSPHERIC_HUMIDITY = common dso_local global i32 0, align 4
@HID_USAGE_SENSOR_HUMIDITY = common dso_local global i32 0, align 4
@HID_FEATURE_REPORT = common dso_local global i32 0, align 4
@HID_USAGE_SENSOR_DATA_MOD_CHANGE_SENSITIVITY_ABS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.hid_sensor_hub_device*, %struct.iio_chan_spec*, i32, %struct.hid_humidity_state*)* @humidity_parse_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @humidity_parse_report(%struct.platform_device* %0, %struct.hid_sensor_hub_device* %1, %struct.iio_chan_spec* %2, i32 %3, %struct.hid_humidity_state* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.platform_device*, align 8
  %8 = alloca %struct.hid_sensor_hub_device*, align 8
  %9 = alloca %struct.iio_chan_spec*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.hid_humidity_state*, align 8
  %12 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %7, align 8
  store %struct.hid_sensor_hub_device* %1, %struct.hid_sensor_hub_device** %8, align 8
  store %struct.iio_chan_spec* %2, %struct.iio_chan_spec** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.hid_humidity_state* %4, %struct.hid_humidity_state** %11, align 8
  %13 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %8, align 8
  %14 = load i32, i32* @HID_INPUT_REPORT, align 4
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* @HID_USAGE_SENSOR_ATMOSPHERIC_HUMIDITY, align 4
  %17 = load %struct.hid_humidity_state*, %struct.hid_humidity_state** %11, align 8
  %18 = getelementptr inbounds %struct.hid_humidity_state, %struct.hid_humidity_state* %17, i32 0, i32 3
  %19 = call i32 @sensor_hub_input_get_attribute_info(%struct.hid_sensor_hub_device* %13, i32 %14, i32 %15, i32 %16, %struct.TYPE_5__* %18)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32, i32* %12, align 4
  store i32 %23, i32* %6, align 4
  br label %60

24:                                               ; preds = %5
  %25 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %9, align 8
  %26 = load %struct.hid_humidity_state*, %struct.hid_humidity_state** %11, align 8
  %27 = getelementptr inbounds %struct.hid_humidity_state, %struct.hid_humidity_state* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @humidity_adjust_channel_bit_mask(%struct.iio_chan_spec* %25, i32 0, i32 %29)
  %31 = load i32, i32* @HID_USAGE_SENSOR_HUMIDITY, align 4
  %32 = load %struct.hid_humidity_state*, %struct.hid_humidity_state** %11, align 8
  %33 = getelementptr inbounds %struct.hid_humidity_state, %struct.hid_humidity_state* %32, i32 0, i32 3
  %34 = load %struct.hid_humidity_state*, %struct.hid_humidity_state** %11, align 8
  %35 = getelementptr inbounds %struct.hid_humidity_state, %struct.hid_humidity_state* %34, i32 0, i32 2
  %36 = load %struct.hid_humidity_state*, %struct.hid_humidity_state** %11, align 8
  %37 = getelementptr inbounds %struct.hid_humidity_state, %struct.hid_humidity_state* %36, i32 0, i32 1
  %38 = call i32 @hid_sensor_format_scale(i32 %31, %struct.TYPE_5__* %33, i32* %35, i32* %37)
  %39 = load %struct.hid_humidity_state*, %struct.hid_humidity_state** %11, align 8
  %40 = getelementptr inbounds %struct.hid_humidity_state, %struct.hid_humidity_state* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 8
  %41 = load %struct.hid_humidity_state*, %struct.hid_humidity_state** %11, align 8
  %42 = getelementptr inbounds %struct.hid_humidity_state, %struct.hid_humidity_state* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %24
  %48 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %8, align 8
  %49 = load i32, i32* @HID_FEATURE_REPORT, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @HID_USAGE_SENSOR_DATA_MOD_CHANGE_SENSITIVITY_ABS, align 4
  %52 = load i32, i32* @HID_USAGE_SENSOR_ATMOSPHERIC_HUMIDITY, align 4
  %53 = or i32 %51, %52
  %54 = load %struct.hid_humidity_state*, %struct.hid_humidity_state** %11, align 8
  %55 = getelementptr inbounds %struct.hid_humidity_state, %struct.hid_humidity_state* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = call i32 @sensor_hub_input_get_attribute_info(%struct.hid_sensor_hub_device* %48, i32 %49, i32 %50, i32 %53, %struct.TYPE_5__* %56)
  br label %58

58:                                               ; preds = %47, %24
  %59 = load i32, i32* %12, align 4
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %58, %22
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local i32 @sensor_hub_input_get_attribute_info(%struct.hid_sensor_hub_device*, i32, i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @humidity_adjust_channel_bit_mask(%struct.iio_chan_spec*, i32, i32) #1

declare dso_local i32 @hid_sensor_format_scale(i32, %struct.TYPE_5__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

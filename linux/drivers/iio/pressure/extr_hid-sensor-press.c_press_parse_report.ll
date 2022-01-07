; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_hid-sensor-press.c_press_parse_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_hid-sensor-press.c_press_parse_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.hid_sensor_hub_device = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.press_state = type { %struct.TYPE_4__, i32, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32, i32 }

@HID_INPUT_REPORT = common dso_local global i32 0, align 4
@HID_USAGE_SENSOR_ATMOSPHERIC_PRESSURE = common dso_local global i32 0, align 4
@CHANNEL_SCAN_INDEX_PRESSURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"press %x:%x\0A\00", align 1
@HID_USAGE_SENSOR_PRESSURE = common dso_local global i32 0, align 4
@HID_FEATURE_REPORT = common dso_local global i32 0, align 4
@HID_USAGE_SENSOR_DATA_MOD_CHANGE_SENSITIVITY_ABS = common dso_local global i32 0, align 4
@HID_USAGE_SENSOR_DATA_ATMOSPHERIC_PRESSURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Sensitivity index:report %d:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.hid_sensor_hub_device*, %struct.iio_chan_spec*, i32, %struct.press_state*)* @press_parse_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @press_parse_report(%struct.platform_device* %0, %struct.hid_sensor_hub_device* %1, %struct.iio_chan_spec* %2, i32 %3, %struct.press_state* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.platform_device*, align 8
  %8 = alloca %struct.hid_sensor_hub_device*, align 8
  %9 = alloca %struct.iio_chan_spec*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.press_state*, align 8
  %12 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %7, align 8
  store %struct.hid_sensor_hub_device* %1, %struct.hid_sensor_hub_device** %8, align 8
  store %struct.iio_chan_spec* %2, %struct.iio_chan_spec** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.press_state* %4, %struct.press_state** %11, align 8
  %13 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %8, align 8
  %14 = load i32, i32* @HID_INPUT_REPORT, align 4
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* @HID_USAGE_SENSOR_ATMOSPHERIC_PRESSURE, align 4
  %17 = load %struct.press_state*, %struct.press_state** %11, align 8
  %18 = getelementptr inbounds %struct.press_state, %struct.press_state* %17, i32 0, i32 3
  %19 = call i32 @sensor_hub_input_get_attribute_info(%struct.hid_sensor_hub_device* %13, i32 %14, i32 %15, i32 %16, %struct.TYPE_5__* %18)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32, i32* %12, align 4
  store i32 %23, i32* %6, align 4
  br label %85

24:                                               ; preds = %5
  %25 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %9, align 8
  %26 = load i32, i32* @CHANNEL_SCAN_INDEX_PRESSURE, align 4
  %27 = load %struct.press_state*, %struct.press_state** %11, align 8
  %28 = getelementptr inbounds %struct.press_state, %struct.press_state* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @press_adjust_channel_bit_mask(%struct.iio_chan_spec* %25, i32 %26, i32 %30)
  %32 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = load %struct.press_state*, %struct.press_state** %11, align 8
  %35 = getelementptr inbounds %struct.press_state, %struct.press_state* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.press_state*, %struct.press_state** %11, align 8
  %39 = getelementptr inbounds %struct.press_state, %struct.press_state* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @dev_dbg(i32* %33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %37, i32 %41)
  %43 = load i32, i32* @HID_USAGE_SENSOR_PRESSURE, align 4
  %44 = load %struct.press_state*, %struct.press_state** %11, align 8
  %45 = getelementptr inbounds %struct.press_state, %struct.press_state* %44, i32 0, i32 3
  %46 = load %struct.press_state*, %struct.press_state** %11, align 8
  %47 = getelementptr inbounds %struct.press_state, %struct.press_state* %46, i32 0, i32 2
  %48 = load %struct.press_state*, %struct.press_state** %11, align 8
  %49 = getelementptr inbounds %struct.press_state, %struct.press_state* %48, i32 0, i32 1
  %50 = call i32 @hid_sensor_format_scale(i32 %43, %struct.TYPE_5__* %45, i32* %47, i32* %49)
  %51 = load %struct.press_state*, %struct.press_state** %11, align 8
  %52 = getelementptr inbounds %struct.press_state, %struct.press_state* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 8
  %53 = load %struct.press_state*, %struct.press_state** %11, align 8
  %54 = getelementptr inbounds %struct.press_state, %struct.press_state* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %83

59:                                               ; preds = %24
  %60 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %8, align 8
  %61 = load i32, i32* @HID_FEATURE_REPORT, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @HID_USAGE_SENSOR_DATA_MOD_CHANGE_SENSITIVITY_ABS, align 4
  %64 = load i32, i32* @HID_USAGE_SENSOR_DATA_ATMOSPHERIC_PRESSURE, align 4
  %65 = or i32 %63, %64
  %66 = load %struct.press_state*, %struct.press_state** %11, align 8
  %67 = getelementptr inbounds %struct.press_state, %struct.press_state* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = call i32 @sensor_hub_input_get_attribute_info(%struct.hid_sensor_hub_device* %60, i32 %61, i32 %62, i32 %65, %struct.TYPE_5__* %68)
  %70 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %71 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %70, i32 0, i32 0
  %72 = load %struct.press_state*, %struct.press_state** %11, align 8
  %73 = getelementptr inbounds %struct.press_state, %struct.press_state* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.press_state*, %struct.press_state** %11, align 8
  %78 = getelementptr inbounds %struct.press_state, %struct.press_state* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @dev_dbg(i32* %71, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %76, i32 %81)
  br label %83

83:                                               ; preds = %59, %24
  %84 = load i32, i32* %12, align 4
  store i32 %84, i32* %6, align 4
  br label %85

85:                                               ; preds = %83, %22
  %86 = load i32, i32* %6, align 4
  ret i32 %86
}

declare dso_local i32 @sensor_hub_input_get_attribute_info(%struct.hid_sensor_hub_device*, i32, i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @press_adjust_channel_bit_mask(%struct.iio_chan_spec*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64, i32) #1

declare dso_local i32 @hid_sensor_format_scale(i32, %struct.TYPE_5__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

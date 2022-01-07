; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_hid-sensor-als.c_als_parse_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_hid-sensor-als.c_als_parse_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.hid_sensor_hub_device = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.als_state = type { %struct.TYPE_4__, i32, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32, i32 }

@HID_INPUT_REPORT = common dso_local global i32 0, align 4
@HID_USAGE_SENSOR_LIGHT_ILLUM = common dso_local global i32 0, align 4
@CHANNEL_SCAN_INDEX_INTENSITY = common dso_local global i32 0, align 4
@CHANNEL_SCAN_INDEX_ILLUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"als %x:%x\0A\00", align 1
@HID_USAGE_SENSOR_ALS = common dso_local global i32 0, align 4
@HID_FEATURE_REPORT = common dso_local global i32 0, align 4
@HID_USAGE_SENSOR_DATA_MOD_CHANGE_SENSITIVITY_ABS = common dso_local global i32 0, align 4
@HID_USAGE_SENSOR_DATA_LIGHT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Sensitivity index:report %d:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.hid_sensor_hub_device*, %struct.iio_chan_spec*, i32, %struct.als_state*)* @als_parse_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @als_parse_report(%struct.platform_device* %0, %struct.hid_sensor_hub_device* %1, %struct.iio_chan_spec* %2, i32 %3, %struct.als_state* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.platform_device*, align 8
  %8 = alloca %struct.hid_sensor_hub_device*, align 8
  %9 = alloca %struct.iio_chan_spec*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.als_state*, align 8
  %12 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %7, align 8
  store %struct.hid_sensor_hub_device* %1, %struct.hid_sensor_hub_device** %8, align 8
  store %struct.iio_chan_spec* %2, %struct.iio_chan_spec** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.als_state* %4, %struct.als_state** %11, align 8
  %13 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %8, align 8
  %14 = load i32, i32* @HID_INPUT_REPORT, align 4
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* @HID_USAGE_SENSOR_LIGHT_ILLUM, align 4
  %17 = load %struct.als_state*, %struct.als_state** %11, align 8
  %18 = getelementptr inbounds %struct.als_state, %struct.als_state* %17, i32 0, i32 3
  %19 = call i32 @sensor_hub_input_get_attribute_info(%struct.hid_sensor_hub_device* %13, i32 %14, i32 %15, i32 %16, %struct.TYPE_5__* %18)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32, i32* %12, align 4
  store i32 %23, i32* %6, align 4
  br label %92

24:                                               ; preds = %5
  %25 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %9, align 8
  %26 = load i32, i32* @CHANNEL_SCAN_INDEX_INTENSITY, align 4
  %27 = load %struct.als_state*, %struct.als_state** %11, align 8
  %28 = getelementptr inbounds %struct.als_state, %struct.als_state* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @als_adjust_channel_bit_mask(%struct.iio_chan_spec* %25, i32 %26, i32 %30)
  %32 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %9, align 8
  %33 = load i32, i32* @CHANNEL_SCAN_INDEX_ILLUM, align 4
  %34 = load %struct.als_state*, %struct.als_state** %11, align 8
  %35 = getelementptr inbounds %struct.als_state, %struct.als_state* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @als_adjust_channel_bit_mask(%struct.iio_chan_spec* %32, i32 %33, i32 %37)
  %39 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = load %struct.als_state*, %struct.als_state** %11, align 8
  %42 = getelementptr inbounds %struct.als_state, %struct.als_state* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.als_state*, %struct.als_state** %11, align 8
  %46 = getelementptr inbounds %struct.als_state, %struct.als_state* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @dev_dbg(i32* %40, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 %44, i32 %48)
  %50 = load i32, i32* @HID_USAGE_SENSOR_ALS, align 4
  %51 = load %struct.als_state*, %struct.als_state** %11, align 8
  %52 = getelementptr inbounds %struct.als_state, %struct.als_state* %51, i32 0, i32 3
  %53 = load %struct.als_state*, %struct.als_state** %11, align 8
  %54 = getelementptr inbounds %struct.als_state, %struct.als_state* %53, i32 0, i32 2
  %55 = load %struct.als_state*, %struct.als_state** %11, align 8
  %56 = getelementptr inbounds %struct.als_state, %struct.als_state* %55, i32 0, i32 1
  %57 = call i32 @hid_sensor_format_scale(i32 %50, %struct.TYPE_5__* %52, i32* %54, i32* %56)
  %58 = load %struct.als_state*, %struct.als_state** %11, align 8
  %59 = getelementptr inbounds %struct.als_state, %struct.als_state* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 8
  %60 = load %struct.als_state*, %struct.als_state** %11, align 8
  %61 = getelementptr inbounds %struct.als_state, %struct.als_state* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %90

66:                                               ; preds = %24
  %67 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %8, align 8
  %68 = load i32, i32* @HID_FEATURE_REPORT, align 4
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* @HID_USAGE_SENSOR_DATA_MOD_CHANGE_SENSITIVITY_ABS, align 4
  %71 = load i32, i32* @HID_USAGE_SENSOR_DATA_LIGHT, align 4
  %72 = or i32 %70, %71
  %73 = load %struct.als_state*, %struct.als_state** %11, align 8
  %74 = getelementptr inbounds %struct.als_state, %struct.als_state* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = call i32 @sensor_hub_input_get_attribute_info(%struct.hid_sensor_hub_device* %67, i32 %68, i32 %69, i32 %72, %struct.TYPE_5__* %75)
  %77 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %78 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %77, i32 0, i32 0
  %79 = load %struct.als_state*, %struct.als_state** %11, align 8
  %80 = getelementptr inbounds %struct.als_state, %struct.als_state* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.als_state*, %struct.als_state** %11, align 8
  %85 = getelementptr inbounds %struct.als_state, %struct.als_state* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @dev_dbg(i32* %78, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %83, i32 %88)
  br label %90

90:                                               ; preds = %66, %24
  %91 = load i32, i32* %12, align 4
  store i32 %91, i32* %6, align 4
  br label %92

92:                                               ; preds = %90, %22
  %93 = load i32, i32* %6, align 4
  ret i32 %93
}

declare dso_local i32 @sensor_hub_input_get_attribute_info(%struct.hid_sensor_hub_device*, i32, i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @als_adjust_channel_bit_mask(%struct.iio_chan_spec*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64, i32) #1

declare dso_local i32 @hid_sensor_format_scale(i32, %struct.TYPE_5__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

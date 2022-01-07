; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/orientation/extr_hid-sensor-rotation.c_dev_rot_parse_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/orientation/extr_hid-sensor-rotation.c_dev_rot_parse_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.hid_sensor_hub_device = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.dev_rot_state = type { %struct.TYPE_4__, i32, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }

@HID_INPUT_REPORT = common dso_local global i32 0, align 4
@HID_USAGE_SENSOR_ORIENT_QUATERNION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"dev_rot %x:%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"dev_rot: attrib size %d\0A\00", align 1
@HID_FEATURE_REPORT = common dso_local global i32 0, align 4
@HID_USAGE_SENSOR_DATA_MOD_CHANGE_SENSITIVITY_ABS = common dso_local global i32 0, align 4
@HID_USAGE_SENSOR_DATA_ORIENTATION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Sensitivity index:report %d:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.hid_sensor_hub_device*, %struct.iio_chan_spec*, i32, %struct.dev_rot_state*)* @dev_rot_parse_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dev_rot_parse_report(%struct.platform_device* %0, %struct.hid_sensor_hub_device* %1, %struct.iio_chan_spec* %2, i32 %3, %struct.dev_rot_state* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.platform_device*, align 8
  %8 = alloca %struct.hid_sensor_hub_device*, align 8
  %9 = alloca %struct.iio_chan_spec*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dev_rot_state*, align 8
  %12 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %7, align 8
  store %struct.hid_sensor_hub_device* %1, %struct.hid_sensor_hub_device** %8, align 8
  store %struct.iio_chan_spec* %2, %struct.iio_chan_spec** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.dev_rot_state* %4, %struct.dev_rot_state** %11, align 8
  %13 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %8, align 8
  %14 = load i32, i32* @HID_INPUT_REPORT, align 4
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* @HID_USAGE_SENSOR_ORIENT_QUATERNION, align 4
  %17 = load %struct.dev_rot_state*, %struct.dev_rot_state** %11, align 8
  %18 = getelementptr inbounds %struct.dev_rot_state, %struct.dev_rot_state* %17, i32 0, i32 3
  %19 = call i32 @sensor_hub_input_get_attribute_info(%struct.hid_sensor_hub_device* %13, i32 %14, i32 %15, i32 %16, %struct.TYPE_5__* %18)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32, i32* %12, align 4
  store i32 %23, i32* %6, align 4
  br label %94

24:                                               ; preds = %5
  %25 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %9, align 8
  %26 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %25, i64 0
  %27 = load %struct.dev_rot_state*, %struct.dev_rot_state** %11, align 8
  %28 = getelementptr inbounds %struct.dev_rot_state, %struct.dev_rot_state* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sdiv i32 %30, 4
  %32 = call i32 @dev_rot_adjust_channel_bit_mask(%struct.iio_chan_spec* %26, i32 %31)
  %33 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = load %struct.dev_rot_state*, %struct.dev_rot_state** %11, align 8
  %36 = getelementptr inbounds %struct.dev_rot_state, %struct.dev_rot_state* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.dev_rot_state*, %struct.dev_rot_state** %11, align 8
  %40 = getelementptr inbounds %struct.dev_rot_state, %struct.dev_rot_state* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %34, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %42)
  %44 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = load %struct.dev_rot_state*, %struct.dev_rot_state** %11, align 8
  %47 = getelementptr inbounds %struct.dev_rot_state, %struct.dev_rot_state* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %45, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %8, align 8
  %52 = getelementptr inbounds %struct.hid_sensor_hub_device, %struct.hid_sensor_hub_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.dev_rot_state*, %struct.dev_rot_state** %11, align 8
  %55 = getelementptr inbounds %struct.dev_rot_state, %struct.dev_rot_state* %54, i32 0, i32 3
  %56 = load %struct.dev_rot_state*, %struct.dev_rot_state** %11, align 8
  %57 = getelementptr inbounds %struct.dev_rot_state, %struct.dev_rot_state* %56, i32 0, i32 2
  %58 = load %struct.dev_rot_state*, %struct.dev_rot_state** %11, align 8
  %59 = getelementptr inbounds %struct.dev_rot_state, %struct.dev_rot_state* %58, i32 0, i32 1
  %60 = call i32 @hid_sensor_format_scale(i32 %53, %struct.TYPE_5__* %55, i32* %57, i32* %59)
  %61 = load %struct.dev_rot_state*, %struct.dev_rot_state** %11, align 8
  %62 = getelementptr inbounds %struct.dev_rot_state, %struct.dev_rot_state* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 4
  %63 = load %struct.dev_rot_state*, %struct.dev_rot_state** %11, align 8
  %64 = getelementptr inbounds %struct.dev_rot_state, %struct.dev_rot_state* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %93

69:                                               ; preds = %24
  %70 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %8, align 8
  %71 = load i32, i32* @HID_FEATURE_REPORT, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* @HID_USAGE_SENSOR_DATA_MOD_CHANGE_SENSITIVITY_ABS, align 4
  %74 = load i32, i32* @HID_USAGE_SENSOR_DATA_ORIENTATION, align 4
  %75 = or i32 %73, %74
  %76 = load %struct.dev_rot_state*, %struct.dev_rot_state** %11, align 8
  %77 = getelementptr inbounds %struct.dev_rot_state, %struct.dev_rot_state* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = call i32 @sensor_hub_input_get_attribute_info(%struct.hid_sensor_hub_device* %70, i32 %71, i32 %72, i32 %75, %struct.TYPE_5__* %78)
  %80 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %81 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %80, i32 0, i32 0
  %82 = load %struct.dev_rot_state*, %struct.dev_rot_state** %11, align 8
  %83 = getelementptr inbounds %struct.dev_rot_state, %struct.dev_rot_state* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.dev_rot_state*, %struct.dev_rot_state** %11, align 8
  %88 = getelementptr inbounds %struct.dev_rot_state, %struct.dev_rot_state* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %81, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %86, i32 %91)
  br label %93

93:                                               ; preds = %69, %24
  store i32 0, i32* %6, align 4
  br label %94

94:                                               ; preds = %93, %22
  %95 = load i32, i32* %6, align 4
  ret i32 %95
}

declare dso_local i32 @sensor_hub_input_get_attribute_info(%struct.hid_sensor_hub_device*, i32, i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @dev_rot_adjust_channel_bit_mask(%struct.iio_chan_spec*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

declare dso_local i32 @hid_sensor_format_scale(i32, %struct.TYPE_5__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

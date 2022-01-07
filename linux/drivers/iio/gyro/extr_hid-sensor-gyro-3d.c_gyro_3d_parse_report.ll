; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_hid-sensor-gyro-3d.c_gyro_3d_parse_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_hid-sensor-gyro-3d.c_gyro_3d_parse_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.hid_sensor_hub_device = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.gyro_3d_state = type { %struct.TYPE_4__, i32, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32, i32 }

@CHANNEL_SCAN_INDEX_Z = common dso_local global i32 0, align 4
@HID_INPUT_REPORT = common dso_local global i32 0, align 4
@HID_USAGE_SENSOR_ANGL_VELOCITY_X_AXIS = common dso_local global i32 0, align 4
@CHANNEL_SCAN_INDEX_X = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"gyro_3d %x:%x, %x:%x, %x:%x\0A\00", align 1
@HID_USAGE_SENSOR_GYRO_3D = common dso_local global i32 0, align 4
@HID_FEATURE_REPORT = common dso_local global i32 0, align 4
@HID_USAGE_SENSOR_DATA_MOD_CHANGE_SENSITIVITY_ABS = common dso_local global i32 0, align 4
@HID_USAGE_SENSOR_DATA_ANGL_VELOCITY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Sensitivity index:report %d:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.hid_sensor_hub_device*, %struct.iio_chan_spec*, i32, %struct.gyro_3d_state*)* @gyro_3d_parse_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gyro_3d_parse_report(%struct.platform_device* %0, %struct.hid_sensor_hub_device* %1, %struct.iio_chan_spec* %2, i32 %3, %struct.gyro_3d_state* %4) #0 {
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca %struct.hid_sensor_hub_device*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.gyro_3d_state*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %6, align 8
  store %struct.hid_sensor_hub_device* %1, %struct.hid_sensor_hub_device** %7, align 8
  store %struct.iio_chan_spec* %2, %struct.iio_chan_spec** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.gyro_3d_state* %4, %struct.gyro_3d_state** %10, align 8
  store i32 0, i32* %12, align 4
  br label %13

13:                                               ; preds = %52, %5
  %14 = load i32, i32* %12, align 4
  %15 = load i32, i32* @CHANNEL_SCAN_INDEX_Z, align 4
  %16 = icmp sle i32 %14, %15
  br i1 %16, label %17, label %55

17:                                               ; preds = %13
  %18 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %7, align 8
  %19 = load i32, i32* @HID_INPUT_REPORT, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @HID_USAGE_SENSOR_ANGL_VELOCITY_X_AXIS, align 4
  %22 = load i32, i32* %12, align 4
  %23 = add nsw i32 %21, %22
  %24 = load %struct.gyro_3d_state*, %struct.gyro_3d_state** %10, align 8
  %25 = getelementptr inbounds %struct.gyro_3d_state, %struct.gyro_3d_state* %24, i32 0, i32 3
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = load i32, i32* @CHANNEL_SCAN_INDEX_X, align 4
  %28 = load i32, i32* %12, align 4
  %29 = add nsw i32 %27, %28
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i64 %30
  %32 = call i32 @sensor_hub_input_get_attribute_info(%struct.hid_sensor_hub_device* %18, i32 %19, i32 %20, i32 %23, %struct.TYPE_5__* %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %17
  br label %55

36:                                               ; preds = %17
  %37 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %38 = load i32, i32* @CHANNEL_SCAN_INDEX_X, align 4
  %39 = load i32, i32* %12, align 4
  %40 = add nsw i32 %38, %39
  %41 = load %struct.gyro_3d_state*, %struct.gyro_3d_state** %10, align 8
  %42 = getelementptr inbounds %struct.gyro_3d_state, %struct.gyro_3d_state* %41, i32 0, i32 3
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = load i32, i32* @CHANNEL_SCAN_INDEX_X, align 4
  %45 = load i32, i32* %12, align 4
  %46 = add nsw i32 %44, %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @gyro_3d_adjust_channel_bit_mask(%struct.iio_chan_spec* %37, i32 %40, i32 %50)
  br label %52

52:                                               ; preds = %36
  %53 = load i32, i32* %12, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %12, align 4
  br label %13

55:                                               ; preds = %35, %13
  %56 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = load %struct.gyro_3d_state*, %struct.gyro_3d_state** %10, align 8
  %59 = getelementptr inbounds %struct.gyro_3d_state, %struct.gyro_3d_state* %58, i32 0, i32 3
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i64 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.gyro_3d_state*, %struct.gyro_3d_state** %10, align 8
  %65 = getelementptr inbounds %struct.gyro_3d_state, %struct.gyro_3d_state* %64, i32 0, i32 3
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i64 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.gyro_3d_state*, %struct.gyro_3d_state** %10, align 8
  %71 = getelementptr inbounds %struct.gyro_3d_state, %struct.gyro_3d_state* %70, i32 0, i32 3
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i64 1
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.gyro_3d_state*, %struct.gyro_3d_state** %10, align 8
  %77 = getelementptr inbounds %struct.gyro_3d_state, %struct.gyro_3d_state* %76, i32 0, i32 3
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i64 1
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.gyro_3d_state*, %struct.gyro_3d_state** %10, align 8
  %83 = getelementptr inbounds %struct.gyro_3d_state, %struct.gyro_3d_state* %82, i32 0, i32 3
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i64 2
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.gyro_3d_state*, %struct.gyro_3d_state** %10, align 8
  %89 = getelementptr inbounds %struct.gyro_3d_state, %struct.gyro_3d_state* %88, i32 0, i32 3
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i64 2
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = call i32 (i32*, i8*, i64, i32, ...) @dev_dbg(i32* %57, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %63, i32 %69, i64 %75, i32 %81, i64 %87, i32 %93)
  %95 = load i32, i32* @HID_USAGE_SENSOR_GYRO_3D, align 4
  %96 = load %struct.gyro_3d_state*, %struct.gyro_3d_state** %10, align 8
  %97 = getelementptr inbounds %struct.gyro_3d_state, %struct.gyro_3d_state* %96, i32 0, i32 3
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = load i32, i32* @CHANNEL_SCAN_INDEX_X, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i64 %100
  %102 = load %struct.gyro_3d_state*, %struct.gyro_3d_state** %10, align 8
  %103 = getelementptr inbounds %struct.gyro_3d_state, %struct.gyro_3d_state* %102, i32 0, i32 2
  %104 = load %struct.gyro_3d_state*, %struct.gyro_3d_state** %10, align 8
  %105 = getelementptr inbounds %struct.gyro_3d_state, %struct.gyro_3d_state* %104, i32 0, i32 1
  %106 = call i32 @hid_sensor_format_scale(i32 %95, %struct.TYPE_5__* %101, i32* %103, i32* %105)
  %107 = load %struct.gyro_3d_state*, %struct.gyro_3d_state** %10, align 8
  %108 = getelementptr inbounds %struct.gyro_3d_state, %struct.gyro_3d_state* %107, i32 0, i32 4
  store i32 %106, i32* %108, align 8
  %109 = load %struct.gyro_3d_state*, %struct.gyro_3d_state** %10, align 8
  %110 = getelementptr inbounds %struct.gyro_3d_state, %struct.gyro_3d_state* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp slt i64 %113, 0
  br i1 %114, label %115, label %139

115:                                              ; preds = %55
  %116 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %7, align 8
  %117 = load i32, i32* @HID_FEATURE_REPORT, align 4
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* @HID_USAGE_SENSOR_DATA_MOD_CHANGE_SENSITIVITY_ABS, align 4
  %120 = load i32, i32* @HID_USAGE_SENSOR_DATA_ANGL_VELOCITY, align 4
  %121 = or i32 %119, %120
  %122 = load %struct.gyro_3d_state*, %struct.gyro_3d_state** %10, align 8
  %123 = getelementptr inbounds %struct.gyro_3d_state, %struct.gyro_3d_state* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = call i32 @sensor_hub_input_get_attribute_info(%struct.hid_sensor_hub_device* %116, i32 %117, i32 %118, i32 %121, %struct.TYPE_5__* %124)
  %126 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %127 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %126, i32 0, i32 0
  %128 = load %struct.gyro_3d_state*, %struct.gyro_3d_state** %10, align 8
  %129 = getelementptr inbounds %struct.gyro_3d_state, %struct.gyro_3d_state* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.gyro_3d_state*, %struct.gyro_3d_state** %10, align 8
  %134 = getelementptr inbounds %struct.gyro_3d_state, %struct.gyro_3d_state* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = call i32 (i32*, i8*, i64, i32, ...) @dev_dbg(i32* %127, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %132, i32 %137)
  br label %139

139:                                              ; preds = %115, %55
  %140 = load i32, i32* %11, align 4
  ret i32 %140
}

declare dso_local i32 @sensor_hub_input_get_attribute_info(%struct.hid_sensor_hub_device*, i32, i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @gyro_3d_adjust_channel_bit_mask(%struct.iio_chan_spec*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64, i32, ...) #1

declare dso_local i32 @hid_sensor_format_scale(i32, %struct.TYPE_5__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/orientation/extr_hid-sensor-incl-3d.c_incl_3d_parse_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/orientation/extr_hid-sensor-incl-3d.c_incl_3d_parse_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.hid_sensor_hub_device = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.incl_3d_state = type { %struct.TYPE_4__, i32, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32, i32 }

@HID_INPUT_REPORT = common dso_local global i32 0, align 4
@HID_USAGE_SENSOR_ORIENT_TILT_X = common dso_local global i32 0, align 4
@CHANNEL_SCAN_INDEX_X = common dso_local global i64 0, align 8
@HID_USAGE_SENSOR_ORIENT_TILT_Y = common dso_local global i32 0, align 4
@CHANNEL_SCAN_INDEX_Y = common dso_local global i64 0, align 8
@HID_USAGE_SENSOR_ORIENT_TILT_Z = common dso_local global i32 0, align 4
@CHANNEL_SCAN_INDEX_Z = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"incl_3d %x:%x, %x:%x, %x:%x\0A\00", align 1
@HID_USAGE_SENSOR_INCLINOMETER_3D = common dso_local global i32 0, align 4
@HID_FEATURE_REPORT = common dso_local global i32 0, align 4
@HID_USAGE_SENSOR_DATA_MOD_CHANGE_SENSITIVITY_ABS = common dso_local global i32 0, align 4
@HID_USAGE_SENSOR_DATA_ORIENTATION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Sensitivity index:report %d:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.hid_sensor_hub_device*, %struct.iio_chan_spec*, i32, %struct.incl_3d_state*)* @incl_3d_parse_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @incl_3d_parse_report(%struct.platform_device* %0, %struct.hid_sensor_hub_device* %1, %struct.iio_chan_spec* %2, i32 %3, %struct.incl_3d_state* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.platform_device*, align 8
  %8 = alloca %struct.hid_sensor_hub_device*, align 8
  %9 = alloca %struct.iio_chan_spec*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.incl_3d_state*, align 8
  %12 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %7, align 8
  store %struct.hid_sensor_hub_device* %1, %struct.hid_sensor_hub_device** %8, align 8
  store %struct.iio_chan_spec* %2, %struct.iio_chan_spec** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.incl_3d_state* %4, %struct.incl_3d_state** %11, align 8
  %13 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %8, align 8
  %14 = load i32, i32* @HID_INPUT_REPORT, align 4
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* @HID_USAGE_SENSOR_ORIENT_TILT_X, align 4
  %17 = load %struct.incl_3d_state*, %struct.incl_3d_state** %11, align 8
  %18 = getelementptr inbounds %struct.incl_3d_state, %struct.incl_3d_state* %17, i32 0, i32 3
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = load i64, i64* @CHANNEL_SCAN_INDEX_X, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i64 %20
  %22 = call i32 @sensor_hub_input_get_attribute_info(%struct.hid_sensor_hub_device* %13, i32 %14, i32 %15, i32 %16, %struct.TYPE_5__* %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %5
  %26 = load i32, i32* %12, align 4
  store i32 %26, i32* %6, align 4
  br label %175

27:                                               ; preds = %5
  %28 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %9, align 8
  %29 = load i64, i64* @CHANNEL_SCAN_INDEX_X, align 8
  %30 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %28, i64 %29
  %31 = load %struct.incl_3d_state*, %struct.incl_3d_state** %11, align 8
  %32 = getelementptr inbounds %struct.incl_3d_state, %struct.incl_3d_state* %31, i32 0, i32 3
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = load i64, i64* @CHANNEL_SCAN_INDEX_X, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @incl_3d_adjust_channel_bit_mask(%struct.iio_chan_spec* %30, i32 %37)
  %39 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %8, align 8
  %40 = load i32, i32* @HID_INPUT_REPORT, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @HID_USAGE_SENSOR_ORIENT_TILT_Y, align 4
  %43 = load %struct.incl_3d_state*, %struct.incl_3d_state** %11, align 8
  %44 = getelementptr inbounds %struct.incl_3d_state, %struct.incl_3d_state* %43, i32 0, i32 3
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = load i64, i64* @CHANNEL_SCAN_INDEX_Y, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i64 %46
  %48 = call i32 @sensor_hub_input_get_attribute_info(%struct.hid_sensor_hub_device* %39, i32 %40, i32 %41, i32 %42, %struct.TYPE_5__* %47)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %27
  %52 = load i32, i32* %12, align 4
  store i32 %52, i32* %6, align 4
  br label %175

53:                                               ; preds = %27
  %54 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %9, align 8
  %55 = load i64, i64* @CHANNEL_SCAN_INDEX_Y, align 8
  %56 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %54, i64 %55
  %57 = load %struct.incl_3d_state*, %struct.incl_3d_state** %11, align 8
  %58 = getelementptr inbounds %struct.incl_3d_state, %struct.incl_3d_state* %57, i32 0, i32 3
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = load i64, i64* @CHANNEL_SCAN_INDEX_Y, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @incl_3d_adjust_channel_bit_mask(%struct.iio_chan_spec* %56, i32 %63)
  %65 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %8, align 8
  %66 = load i32, i32* @HID_INPUT_REPORT, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @HID_USAGE_SENSOR_ORIENT_TILT_Z, align 4
  %69 = load %struct.incl_3d_state*, %struct.incl_3d_state** %11, align 8
  %70 = getelementptr inbounds %struct.incl_3d_state, %struct.incl_3d_state* %69, i32 0, i32 3
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = load i64, i64* @CHANNEL_SCAN_INDEX_Z, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i64 %72
  %74 = call i32 @sensor_hub_input_get_attribute_info(%struct.hid_sensor_hub_device* %65, i32 %66, i32 %67, i32 %68, %struct.TYPE_5__* %73)
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %12, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %53
  %78 = load i32, i32* %12, align 4
  store i32 %78, i32* %6, align 4
  br label %175

79:                                               ; preds = %53
  %80 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %9, align 8
  %81 = load i64, i64* @CHANNEL_SCAN_INDEX_Z, align 8
  %82 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %80, i64 %81
  %83 = load %struct.incl_3d_state*, %struct.incl_3d_state** %11, align 8
  %84 = getelementptr inbounds %struct.incl_3d_state, %struct.incl_3d_state* %83, i32 0, i32 3
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = load i64, i64* @CHANNEL_SCAN_INDEX_Z, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @incl_3d_adjust_channel_bit_mask(%struct.iio_chan_spec* %82, i32 %89)
  %91 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %92 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %91, i32 0, i32 0
  %93 = load %struct.incl_3d_state*, %struct.incl_3d_state** %11, align 8
  %94 = getelementptr inbounds %struct.incl_3d_state, %struct.incl_3d_state* %93, i32 0, i32 3
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i64 0
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.incl_3d_state*, %struct.incl_3d_state** %11, align 8
  %100 = getelementptr inbounds %struct.incl_3d_state, %struct.incl_3d_state* %99, i32 0, i32 3
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i64 0
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.incl_3d_state*, %struct.incl_3d_state** %11, align 8
  %106 = getelementptr inbounds %struct.incl_3d_state, %struct.incl_3d_state* %105, i32 0, i32 3
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i64 1
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.incl_3d_state*, %struct.incl_3d_state** %11, align 8
  %112 = getelementptr inbounds %struct.incl_3d_state, %struct.incl_3d_state* %111, i32 0, i32 3
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i64 1
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.incl_3d_state*, %struct.incl_3d_state** %11, align 8
  %118 = getelementptr inbounds %struct.incl_3d_state, %struct.incl_3d_state* %117, i32 0, i32 3
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i64 2
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.incl_3d_state*, %struct.incl_3d_state** %11, align 8
  %124 = getelementptr inbounds %struct.incl_3d_state, %struct.incl_3d_state* %123, i32 0, i32 3
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i64 2
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = call i32 (i32*, i8*, i64, i32, ...) @dev_dbg(i32* %92, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %98, i32 %104, i64 %110, i32 %116, i64 %122, i32 %128)
  %130 = load i32, i32* @HID_USAGE_SENSOR_INCLINOMETER_3D, align 4
  %131 = load %struct.incl_3d_state*, %struct.incl_3d_state** %11, align 8
  %132 = getelementptr inbounds %struct.incl_3d_state, %struct.incl_3d_state* %131, i32 0, i32 3
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %132, align 8
  %134 = load i64, i64* @CHANNEL_SCAN_INDEX_X, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i64 %134
  %136 = load %struct.incl_3d_state*, %struct.incl_3d_state** %11, align 8
  %137 = getelementptr inbounds %struct.incl_3d_state, %struct.incl_3d_state* %136, i32 0, i32 2
  %138 = load %struct.incl_3d_state*, %struct.incl_3d_state** %11, align 8
  %139 = getelementptr inbounds %struct.incl_3d_state, %struct.incl_3d_state* %138, i32 0, i32 1
  %140 = call i32 @hid_sensor_format_scale(i32 %130, %struct.TYPE_5__* %135, i32* %137, i32* %139)
  %141 = load %struct.incl_3d_state*, %struct.incl_3d_state** %11, align 8
  %142 = getelementptr inbounds %struct.incl_3d_state, %struct.incl_3d_state* %141, i32 0, i32 4
  store i32 %140, i32* %142, align 8
  %143 = load %struct.incl_3d_state*, %struct.incl_3d_state** %11, align 8
  %144 = getelementptr inbounds %struct.incl_3d_state, %struct.incl_3d_state* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = icmp slt i64 %147, 0
  br i1 %148, label %149, label %173

149:                                              ; preds = %79
  %150 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %8, align 8
  %151 = load i32, i32* @HID_FEATURE_REPORT, align 4
  %152 = load i32, i32* %10, align 4
  %153 = load i32, i32* @HID_USAGE_SENSOR_DATA_MOD_CHANGE_SENSITIVITY_ABS, align 4
  %154 = load i32, i32* @HID_USAGE_SENSOR_DATA_ORIENTATION, align 4
  %155 = or i32 %153, %154
  %156 = load %struct.incl_3d_state*, %struct.incl_3d_state** %11, align 8
  %157 = getelementptr inbounds %struct.incl_3d_state, %struct.incl_3d_state* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = call i32 @sensor_hub_input_get_attribute_info(%struct.hid_sensor_hub_device* %150, i32 %151, i32 %152, i32 %155, %struct.TYPE_5__* %158)
  %160 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %161 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %160, i32 0, i32 0
  %162 = load %struct.incl_3d_state*, %struct.incl_3d_state** %11, align 8
  %163 = getelementptr inbounds %struct.incl_3d_state, %struct.incl_3d_state* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.incl_3d_state*, %struct.incl_3d_state** %11, align 8
  %168 = getelementptr inbounds %struct.incl_3d_state, %struct.incl_3d_state* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = call i32 (i32*, i8*, i64, i32, ...) @dev_dbg(i32* %161, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %166, i32 %171)
  br label %173

173:                                              ; preds = %149, %79
  %174 = load i32, i32* %12, align 4
  store i32 %174, i32* %6, align 4
  br label %175

175:                                              ; preds = %173, %77, %51, %25
  %176 = load i32, i32* %6, align 4
  ret i32 %176
}

declare dso_local i32 @sensor_hub_input_get_attribute_info(%struct.hid_sensor_hub_device*, i32, i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @incl_3d_adjust_channel_bit_mask(%struct.iio_chan_spec*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64, i32, ...) #1

declare dso_local i32 @hid_sensor_format_scale(i32, %struct.TYPE_5__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

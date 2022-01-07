; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_hid-sensor-prox.c_prox_parse_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_hid-sensor-prox.c_prox_parse_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.hid_sensor_hub_device = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.prox_state = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i32 }

@HID_INPUT_REPORT = common dso_local global i32 0, align 4
@HID_USAGE_SENSOR_HUMAN_PRESENCE = common dso_local global i32 0, align 4
@CHANNEL_SCAN_INDEX_PRESENCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"prox %x:%x\0A\00", align 1
@HID_FEATURE_REPORT = common dso_local global i32 0, align 4
@HID_USAGE_SENSOR_DATA_MOD_CHANGE_SENSITIVITY_ABS = common dso_local global i32 0, align 4
@HID_USAGE_SENSOR_DATA_PRESENCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Sensitivity index:report %d:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.hid_sensor_hub_device*, %struct.iio_chan_spec*, i32, %struct.prox_state*)* @prox_parse_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prox_parse_report(%struct.platform_device* %0, %struct.hid_sensor_hub_device* %1, %struct.iio_chan_spec* %2, i32 %3, %struct.prox_state* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.platform_device*, align 8
  %8 = alloca %struct.hid_sensor_hub_device*, align 8
  %9 = alloca %struct.iio_chan_spec*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.prox_state*, align 8
  %12 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %7, align 8
  store %struct.hid_sensor_hub_device* %1, %struct.hid_sensor_hub_device** %8, align 8
  store %struct.iio_chan_spec* %2, %struct.iio_chan_spec** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.prox_state* %4, %struct.prox_state** %11, align 8
  %13 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %8, align 8
  %14 = load i32, i32* @HID_INPUT_REPORT, align 4
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* @HID_USAGE_SENSOR_HUMAN_PRESENCE, align 4
  %17 = load %struct.prox_state*, %struct.prox_state** %11, align 8
  %18 = getelementptr inbounds %struct.prox_state, %struct.prox_state* %17, i32 0, i32 1
  %19 = call i32 @sensor_hub_input_get_attribute_info(%struct.hid_sensor_hub_device* %13, i32 %14, i32 %15, i32 %16, %struct.TYPE_4__* %18)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32, i32* %12, align 4
  store i32 %23, i32* %6, align 4
  br label %93

24:                                               ; preds = %5
  %25 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %9, align 8
  %26 = load i32, i32* @CHANNEL_SCAN_INDEX_PRESENCE, align 4
  %27 = load %struct.prox_state*, %struct.prox_state** %11, align 8
  %28 = getelementptr inbounds %struct.prox_state, %struct.prox_state* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @prox_adjust_channel_bit_mask(%struct.iio_chan_spec* %25, i32 %26, i32 %30)
  %32 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = load %struct.prox_state*, %struct.prox_state** %11, align 8
  %35 = getelementptr inbounds %struct.prox_state, %struct.prox_state* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.prox_state*, %struct.prox_state** %11, align 8
  %39 = getelementptr inbounds %struct.prox_state, %struct.prox_state* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @dev_dbg(i32* %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %37, i32 %41)
  %43 = load %struct.prox_state*, %struct.prox_state** %11, align 8
  %44 = getelementptr inbounds %struct.prox_state, %struct.prox_state* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %73

49:                                               ; preds = %24
  %50 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %8, align 8
  %51 = load i32, i32* @HID_FEATURE_REPORT, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @HID_USAGE_SENSOR_DATA_MOD_CHANGE_SENSITIVITY_ABS, align 4
  %54 = load i32, i32* @HID_USAGE_SENSOR_DATA_PRESENCE, align 4
  %55 = or i32 %53, %54
  %56 = load %struct.prox_state*, %struct.prox_state** %11, align 8
  %57 = getelementptr inbounds %struct.prox_state, %struct.prox_state* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = call i32 @sensor_hub_input_get_attribute_info(%struct.hid_sensor_hub_device* %50, i32 %51, i32 %52, i32 %55, %struct.TYPE_4__* %58)
  %60 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 0
  %62 = load %struct.prox_state*, %struct.prox_state** %11, align 8
  %63 = getelementptr inbounds %struct.prox_state, %struct.prox_state* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.prox_state*, %struct.prox_state** %11, align 8
  %68 = getelementptr inbounds %struct.prox_state, %struct.prox_state* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @dev_dbg(i32* %61, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %66, i32 %71)
  br label %73

73:                                               ; preds = %49, %24
  %74 = load %struct.prox_state*, %struct.prox_state** %11, align 8
  %75 = getelementptr inbounds %struct.prox_state, %struct.prox_state* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp slt i64 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %73
  %81 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %8, align 8
  %82 = load i32, i32* @HID_FEATURE_REPORT, align 4
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* @HID_USAGE_SENSOR_DATA_MOD_CHANGE_SENSITIVITY_ABS, align 4
  %85 = load i32, i32* @HID_USAGE_SENSOR_HUMAN_PRESENCE, align 4
  %86 = or i32 %84, %85
  %87 = load %struct.prox_state*, %struct.prox_state** %11, align 8
  %88 = getelementptr inbounds %struct.prox_state, %struct.prox_state* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = call i32 @sensor_hub_input_get_attribute_info(%struct.hid_sensor_hub_device* %81, i32 %82, i32 %83, i32 %86, %struct.TYPE_4__* %89)
  br label %91

91:                                               ; preds = %80, %73
  %92 = load i32, i32* %12, align 4
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %91, %22
  %94 = load i32, i32* %6, align 4
  ret i32 %94
}

declare dso_local i32 @sensor_hub_input_get_attribute_info(%struct.hid_sensor_hub_device*, i32, i32, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @prox_adjust_channel_bit_mask(%struct.iio_chan_spec*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

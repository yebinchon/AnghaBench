; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/common/hid-sensors/extr_hid-sensor-attributes.c_hid_sensor_get_reporting_interval.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/common/hid-sensors/extr_hid-sensor-attributes.c_hid_sensor_get_reporting_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_sensor_hub_device = type { i32 }
%struct.hid_sensor_common = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@HID_FEATURE_REPORT = common dso_local global i32 0, align 4
@HID_USAGE_SENSOR_PROP_REPORT_INTERVAL = common dso_local global i32 0, align 4
@HID_USAGE_SENSOR_UNITS_MILLISECOND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_sensor_hub_device*, i32, %struct.hid_sensor_common*)* @hid_sensor_get_reporting_interval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hid_sensor_get_reporting_interval(%struct.hid_sensor_hub_device* %0, i32 %1, %struct.hid_sensor_common* %2) #0 {
  %4 = alloca %struct.hid_sensor_hub_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hid_sensor_common*, align 8
  store %struct.hid_sensor_hub_device* %0, %struct.hid_sensor_hub_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.hid_sensor_common* %2, %struct.hid_sensor_common** %6, align 8
  %7 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %4, align 8
  %8 = load i32, i32* @HID_FEATURE_REPORT, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @HID_USAGE_SENSOR_PROP_REPORT_INTERVAL, align 4
  %11 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %6, align 8
  %12 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %11, i32 0, i32 1
  %13 = call i32 @sensor_hub_input_get_attribute_info(%struct.hid_sensor_hub_device* %7, i32 %8, i32 %9, i32 %10, %struct.TYPE_2__* %12)
  %14 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %6, align 8
  %15 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load i64, i64* @HID_USAGE_SENSOR_UNITS_MILLISECOND, align 8
  %21 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %6, align 8
  %22 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i64 %20, i64* %23, align 8
  br label %24

24:                                               ; preds = %19, %3
  %25 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %6, align 8
  %26 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %25, i32 0, i32 0
  store i32 -1, i32* %26, align 8
  ret i32 0
}

declare dso_local i32 @sensor_hub_input_get_attribute_info(%struct.hid_sensor_hub_device*, i32, i32, i32, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

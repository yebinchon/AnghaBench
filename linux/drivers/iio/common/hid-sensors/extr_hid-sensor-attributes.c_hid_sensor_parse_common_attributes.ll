; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/common/hid-sensors/extr_hid-sensor-attributes.c_hid_sensor_parse_common_attributes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/common/hid-sensors/extr_hid-sensor-attributes.c_hid_sensor_parse_common_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_sensor_hub_device = type { i32 }
%struct.hid_sensor_common = type { i32, i32, %struct.hid_sensor_hub_attribute_info, %struct.hid_sensor_hub_attribute_info, %struct.hid_sensor_hub_attribute_info, %struct.TYPE_2__ }
%struct.hid_sensor_hub_attribute_info = type { i32, i64, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@HID_FEATURE_REPORT = common dso_local global i32 0, align 4
@HID_USAGE_SENSOR_PROP_REPORT_STATE = common dso_local global i32 0, align 4
@HID_USAGE_SENSOR_PROY_POWER_STATE = common dso_local global i32 0, align 4
@HID_USAGE_SENSOR_PROP_SENSITIVITY_ABS = common dso_local global i32 0, align 4
@HID_INPUT_REPORT = common dso_local global i32 0, align 4
@HID_USAGE_SENSOR_TIME_TIMESTAMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"common attributes: %x:%x, %x:%x, %x:%x %x:%x %x:%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hid_sensor_parse_common_attributes(%struct.hid_sensor_hub_device* %0, i32 %1, %struct.hid_sensor_common* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hid_sensor_hub_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hid_sensor_common*, align 8
  %8 = alloca %struct.hid_sensor_hub_attribute_info, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hid_sensor_hub_device* %0, %struct.hid_sensor_hub_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.hid_sensor_common* %2, %struct.hid_sensor_common** %7, align 8
  %13 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %7, align 8
  %16 = call i32 @hid_sensor_get_reporting_interval(%struct.hid_sensor_hub_device* %13, i32 %14, %struct.hid_sensor_common* %15)
  %17 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %5, align 8
  %18 = load i32, i32* @HID_FEATURE_REPORT, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @HID_USAGE_SENSOR_PROP_REPORT_STATE, align 4
  %21 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %7, align 8
  %22 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %21, i32 0, i32 4
  %23 = call i32 @sensor_hub_input_get_attribute_info(%struct.hid_sensor_hub_device* %17, i32 %18, i32 %19, i32 %20, %struct.hid_sensor_hub_attribute_info* %22)
  %24 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %5, align 8
  %25 = load i32, i32* @HID_FEATURE_REPORT, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @HID_USAGE_SENSOR_PROY_POWER_STATE, align 4
  %28 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %7, align 8
  %29 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %28, i32 0, i32 2
  %30 = call i32 @sensor_hub_input_get_attribute_info(%struct.hid_sensor_hub_device* %24, i32 %25, i32 %26, i32 %27, %struct.hid_sensor_hub_attribute_info* %29)
  %31 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %7, align 8
  %32 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.hid_sensor_hub_attribute_info, %struct.hid_sensor_hub_attribute_info* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %7, align 8
  %35 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.hid_sensor_hub_attribute_info, %struct.hid_sensor_hub_attribute_info* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  %37 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %5, align 8
  %38 = load i32, i32* @HID_FEATURE_REPORT, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @HID_USAGE_SENSOR_PROP_SENSITIVITY_ABS, align 4
  %41 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %7, align 8
  %42 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %41, i32 0, i32 3
  %43 = call i32 @sensor_hub_input_get_attribute_info(%struct.hid_sensor_hub_device* %37, i32 %38, i32 %39, i32 %40, %struct.hid_sensor_hub_attribute_info* %42)
  %44 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %7, align 8
  %45 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %44, i32 0, i32 0
  store i32 -1, i32* %45, align 8
  %46 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %5, align 8
  %47 = load i32, i32* @HID_INPUT_REPORT, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @HID_USAGE_SENSOR_TIME_TIMESTAMP, align 4
  %50 = call i32 @sensor_hub_input_get_attribute_info(%struct.hid_sensor_hub_device* %46, i32 %47, i32 %48, i32 %49, %struct.hid_sensor_hub_attribute_info* %8)
  %51 = getelementptr inbounds %struct.hid_sensor_hub_attribute_info, %struct.hid_sensor_hub_attribute_info* %8, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp sge i64 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %3
  %55 = getelementptr inbounds %struct.hid_sensor_hub_attribute_info, %struct.hid_sensor_hub_attribute_info* %8, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = load i32, i32* @HID_USAGE_SENSOR_TIME_TIMESTAMP, align 4
  %60 = call i32 @hid_sensor_format_scale(i32 %59, %struct.hid_sensor_hub_attribute_info* %8, i32* %11, i32* %12)
  %61 = load i32, i32* %11, align 4
  %62 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %7, align 8
  %63 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  br label %67

64:                                               ; preds = %54, %3
  %65 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %7, align 8
  %66 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %65, i32 0, i32 1
  store i32 1000000000, i32* %66, align 4
  br label %67

67:                                               ; preds = %64, %58
  %68 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %5, align 8
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %7, align 8
  %71 = call i32 @hid_sensor_get_report_latency_info(%struct.hid_sensor_hub_device* %68, i32 %69, %struct.hid_sensor_common* %70)
  %72 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %5, align 8
  %73 = getelementptr inbounds %struct.hid_sensor_hub_device, %struct.hid_sensor_hub_device* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %7, align 8
  %76 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %75, i32 0, i32 5
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %7, align 8
  %80 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %79, i32 0, i32 5
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %7, align 8
  %84 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.hid_sensor_hub_attribute_info, %struct.hid_sensor_hub_attribute_info* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %7, align 8
  %88 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.hid_sensor_hub_attribute_info, %struct.hid_sensor_hub_attribute_info* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %7, align 8
  %92 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.hid_sensor_hub_attribute_info, %struct.hid_sensor_hub_attribute_info* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %7, align 8
  %96 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.hid_sensor_hub_attribute_info, %struct.hid_sensor_hub_attribute_info* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %7, align 8
  %100 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.hid_sensor_hub_attribute_info, %struct.hid_sensor_hub_attribute_info* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %7, align 8
  %104 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.hid_sensor_hub_attribute_info, %struct.hid_sensor_hub_attribute_info* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds %struct.hid_sensor_hub_attribute_info, %struct.hid_sensor_hub_attribute_info* %8, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds %struct.hid_sensor_hub_attribute_info, %struct.hid_sensor_hub_attribute_info* %8, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @hid_dbg(i32 %74, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %78, i32 %82, i64 %86, i64 %90, i64 %94, i64 %98, i64 %102, i64 %106, i64 %108, i64 %110)
  %112 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %5, align 8
  %113 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %7, align 8
  %114 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.hid_sensor_hub_attribute_info, %struct.hid_sensor_hub_attribute_info* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %7, align 8
  %118 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.hid_sensor_hub_attribute_info, %struct.hid_sensor_hub_attribute_info* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @sensor_hub_get_feature(%struct.hid_sensor_hub_device* %112, i64 %116, i64 %120, i32 8, i64* %9)
  store i32 %121, i32* %10, align 4
  %122 = load i32, i32* %10, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %67
  %125 = load i32, i32* %10, align 4
  store i32 %125, i32* %4, align 4
  br label %133

126:                                              ; preds = %67
  %127 = load i64, i64* %9, align 8
  %128 = icmp slt i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = load i32, i32* @EINVAL, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %4, align 4
  br label %133

132:                                              ; preds = %126
  store i32 0, i32* %4, align 4
  br label %133

133:                                              ; preds = %132, %129, %124
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local i32 @hid_sensor_get_reporting_interval(%struct.hid_sensor_hub_device*, i32, %struct.hid_sensor_common*) #1

declare dso_local i32 @sensor_hub_input_get_attribute_info(%struct.hid_sensor_hub_device*, i32, i32, i32, %struct.hid_sensor_hub_attribute_info*) #1

declare dso_local i32 @hid_sensor_format_scale(i32, %struct.hid_sensor_hub_attribute_info*, i32*, i32*) #1

declare dso_local i32 @hid_sensor_get_report_latency_info(%struct.hid_sensor_hub_device*, i32, %struct.hid_sensor_common*) #1

declare dso_local i32 @hid_dbg(i32, i8*, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @sensor_hub_get_feature(%struct.hid_sensor_hub_device*, i64, i64, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

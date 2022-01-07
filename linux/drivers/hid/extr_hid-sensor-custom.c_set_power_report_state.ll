; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sensor-custom.c_set_power_report_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sensor-custom.c_set_power_report_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_sensor_custom = type { %struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_8__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i64 }

@HID_USAGE_SENSOR_PROP_POWER_STATE_D0_FULL_POWER_ENUM = common dso_local global i32 0, align 4
@HID_USAGE_SENSOR_PROP_REPORTING_STATE_ALL_EVENTS_ENUM = common dso_local global i32 0, align 4
@HID_USAGE_SENSOR_PROP_POWER_STATE_D4_POWER_OFF_ENUM = common dso_local global i32 0, align 4
@HID_USAGE_SENSOR_PROP_REPORTING_STATE_NO_EVENTS_ENUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Set power state failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Set report state failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_sensor_custom*, i32)* @set_power_report_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_power_report_state(%struct.hid_sensor_custom* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hid_sensor_custom*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hid_sensor_custom* %0, %struct.hid_sensor_custom** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @HID_USAGE_SENSOR_PROP_POWER_STATE_D0_FULL_POWER_ENUM, align 4
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* @HID_USAGE_SENSOR_PROP_REPORTING_STATE_ALL_EVENTS_ENUM, align 4
  store i32 %15, i32* %9, align 4
  br label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @HID_USAGE_SENSOR_PROP_POWER_STATE_D4_POWER_OFF_ENUM, align 4
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* @HID_USAGE_SENSOR_PROP_REPORTING_STATE_NO_EVENTS_ENUM, align 4
  store i32 %18, i32* %9, align 4
  br label %19

19:                                               ; preds = %16, %13
  %20 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %4, align 8
  %21 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %20, i32 0, i32 2
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = icmp ne %struct.TYPE_8__* %22, null
  br i1 %23, label %24, label %42

24:                                               ; preds = %19
  %25 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %4, align 8
  %26 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %25, i32 0, i32 0
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %28 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %4, align 8
  %29 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %28, i32 0, i32 2
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %4, align 8
  %35 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %34, i32 0, i32 2
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @hid_sensor_get_usage_index(%struct.TYPE_11__* %27, i32 %33, i32 %39, i32 %40)
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %24, %19
  %43 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %4, align 8
  %44 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %43, i32 0, i32 1
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = icmp ne %struct.TYPE_10__* %45, null
  br i1 %46, label %47, label %65

47:                                               ; preds = %42
  %48 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %4, align 8
  %49 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %48, i32 0, i32 0
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %49, align 8
  %51 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %4, align 8
  %52 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %51, i32 0, i32 1
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %4, align 8
  %58 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %57, i32 0, i32 1
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @hid_sensor_get_usage_index(%struct.TYPE_11__* %50, i32 %56, i32 %62, i32 %63)
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %47, %42
  %66 = load i32, i32* %6, align 4
  %67 = icmp sge i32 %66, 0
  br i1 %67, label %68, label %106

68:                                               ; preds = %65
  %69 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %4, align 8
  %70 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %69, i32 0, i32 2
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %76, %74
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %6, align 4
  %79 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %4, align 8
  %80 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %79, i32 0, i32 0
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %80, align 8
  %82 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %4, align 8
  %83 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %82, i32 0, i32 2
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %4, align 8
  %89 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %88, i32 0, i32 2
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @sensor_hub_set_feature(%struct.TYPE_11__* %81, i32 %87, i32 %93, i32 4, i32* %6)
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %68
  %98 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %4, align 8
  %99 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %98, i32 0, i32 0
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @hid_err(i32 %102, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %104 = load i32, i32* %10, align 4
  store i32 %104, i32* %3, align 4
  br label %148

105:                                              ; preds = %68
  br label %106

106:                                              ; preds = %105, %65
  %107 = load i32, i32* %7, align 4
  %108 = icmp sge i32 %107, 0
  br i1 %108, label %109, label %147

109:                                              ; preds = %106
  %110 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %4, align 8
  %111 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %110, i32 0, i32 1
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = load i32, i32* %7, align 4
  %117 = sext i32 %116 to i64
  %118 = add nsw i64 %117, %115
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %7, align 4
  %120 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %4, align 8
  %121 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %120, i32 0, i32 0
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %121, align 8
  %123 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %4, align 8
  %124 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %123, i32 0, i32 1
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %4, align 8
  %130 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %129, i32 0, i32 1
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @sensor_hub_set_feature(%struct.TYPE_11__* %122, i32 %128, i32 %134, i32 4, i32* %7)
  store i32 %135, i32* %10, align 4
  %136 = load i32, i32* %10, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %146

138:                                              ; preds = %109
  %139 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %4, align 8
  %140 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %139, i32 0, i32 0
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @hid_err(i32 %143, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %145 = load i32, i32* %10, align 4
  store i32 %145, i32* %3, align 4
  br label %148

146:                                              ; preds = %109
  br label %147

147:                                              ; preds = %146, %106
  store i32 0, i32* %3, align 4
  br label %148

148:                                              ; preds = %147, %138, %97
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local i32 @hid_sensor_get_usage_index(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i32 @sensor_hub_set_feature(%struct.TYPE_11__*, i32, i32, i32, i32*) #1

declare dso_local i32 @hid_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/common/hid-sensors/extr_hid-sensor-trigger.c__hid_sensor_power_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/common/hid-sensors/extr_hid-sensor-trigger.c__hid_sensor_power_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_sensor_common = type { %struct.TYPE_6__, i32, %struct.TYPE_5__*, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { i32, i32, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i64 }

@EIO = common dso_local global i32 0, align 4
@HID_USAGE_SENSOR_PROP_POWER_STATE_D0_FULL_POWER_ENUM = common dso_local global i32 0, align 4
@HID_USAGE_SENSOR_PROP_REPORTING_STATE_ALL_EVENTS_ENUM = common dso_local global i32 0, align 4
@HID_USAGE_SENSOR_PROP_POWER_STATE_D4_POWER_OFF_ENUM = common dso_local global i32 0, align 4
@HID_USAGE_SENSOR_PROP_REPORTING_STATE_NO_EVENTS_ENUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"HID_SENSOR %s set power_state %d report_state %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_sensor_common*, i32)* @_hid_sensor_power_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_hid_sensor_power_state(%struct.hid_sensor_common* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hid_sensor_common*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hid_sensor_common* %0, %struct.hid_sensor_common** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %53

12:                                               ; preds = %2
  %13 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %4, align 8
  %14 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @sensor_hub_device_open(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %170

21:                                               ; preds = %12
  %22 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %4, align 8
  %23 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %22, i32 0, i32 4
  %24 = call i32 @atomic_inc(i32* %23)
  %25 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %4, align 8
  %26 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %4, align 8
  %29 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %4, align 8
  %33 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @HID_USAGE_SENSOR_PROP_POWER_STATE_D0_FULL_POWER_ENUM, align 4
  %37 = call i32 @hid_sensor_get_usage_index(i32 %27, i32 %31, i32 %35, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %4, align 8
  %39 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %4, align 8
  %42 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %4, align 8
  %46 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @HID_USAGE_SENSOR_PROP_REPORTING_STATE_ALL_EVENTS_ENUM, align 4
  %50 = call i32 @hid_sensor_get_usage_index(i32 %40, i32 %44, i32 %48, i32 %49)
  store i32 %50, i32* %7, align 4
  %51 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %4, align 8
  %52 = call i32 @hid_sensor_read_poll_value(%struct.hid_sensor_common* %51)
  store i32 %52, i32* %8, align 4
  br label %91

53:                                               ; preds = %2
  %54 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %4, align 8
  %55 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %54, i32 0, i32 4
  %56 = call i32 @atomic_dec_if_positive(i32* %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %170

60:                                               ; preds = %53
  %61 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %4, align 8
  %62 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @sensor_hub_device_close(i32 %63)
  %65 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %4, align 8
  %66 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %4, align 8
  %69 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %4, align 8
  %73 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @HID_USAGE_SENSOR_PROP_POWER_STATE_D4_POWER_OFF_ENUM, align 4
  %77 = call i32 @hid_sensor_get_usage_index(i32 %67, i32 %71, i32 %75, i32 %76)
  store i32 %77, i32* %6, align 4
  %78 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %4, align 8
  %79 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %4, align 8
  %82 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %4, align 8
  %86 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @HID_USAGE_SENSOR_PROP_REPORTING_STATE_NO_EVENTS_ENUM, align 4
  %90 = call i32 @hid_sensor_get_usage_index(i32 %80, i32 %84, i32 %88, i32 %89)
  store i32 %90, i32* %7, align 4
  br label %91

91:                                               ; preds = %60, %21
  %92 = load i32, i32* %6, align 4
  %93 = icmp sge i32 %92, 0
  br i1 %93, label %94, label %115

94:                                               ; preds = %91
  %95 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %4, align 8
  %96 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = load i32, i32* %6, align 4
  %100 = sext i32 %99 to i64
  %101 = add nsw i64 %100, %98
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %6, align 4
  %103 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %4, align 8
  %104 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %4, align 8
  %107 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %4, align 8
  %111 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @sensor_hub_set_feature(i32 %105, i32 %109, i32 %113, i32 4, i32* %6)
  br label %115

115:                                              ; preds = %94, %91
  %116 = load i32, i32* %7, align 4
  %117 = icmp sge i32 %116, 0
  br i1 %117, label %118, label %139

118:                                              ; preds = %115
  %119 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %4, align 8
  %120 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = load i32, i32* %7, align 4
  %124 = sext i32 %123 to i64
  %125 = add nsw i64 %124, %122
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %7, align 4
  %127 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %4, align 8
  %128 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %4, align 8
  %131 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %4, align 8
  %135 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @sensor_hub_set_feature(i32 %129, i32 %133, i32 %137, i32 4, i32* %7)
  br label %139

139:                                              ; preds = %118, %115
  %140 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %4, align 8
  %141 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %140, i32 0, i32 2
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %6, align 4
  %146 = load i32, i32* %7, align 4
  %147 = call i32 @pr_debug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %144, i32 %145, i32 %146)
  %148 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %4, align 8
  %149 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %4, align 8
  %152 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %4, align 8
  %156 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @sensor_hub_get_feature(i32 %150, i32 %154, i32 %158, i32 4, i32* %6)
  %160 = load i32, i32* %5, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %169

162:                                              ; preds = %139
  %163 = load i32, i32* %8, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %162
  %166 = load i32, i32* %8, align 4
  %167 = mul nsw i32 %166, 2
  %168 = call i32 @msleep_interruptible(i32 %167)
  br label %169

169:                                              ; preds = %165, %162, %139
  store i32 0, i32* %3, align 4
  br label %170

170:                                              ; preds = %169, %59, %18
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

declare dso_local i64 @sensor_hub_device_open(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @hid_sensor_get_usage_index(i32, i32, i32, i32) #1

declare dso_local i32 @hid_sensor_read_poll_value(%struct.hid_sensor_common*) #1

declare dso_local i32 @atomic_dec_if_positive(i32*) #1

declare dso_local i32 @sensor_hub_device_close(i32) #1

declare dso_local i32 @sensor_hub_set_feature(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

declare dso_local i32 @sensor_hub_get_feature(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @msleep_interruptible(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_scmi-hwmon.c_scmi_hwmon_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_scmi-hwmon.c_scmi_hwmon_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.scmi_sensor_info = type { i32 }
%struct.scmi_sensors = type { %struct.scmi_sensor_info***, %struct.scmi_handle* }
%struct.scmi_handle = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.scmi_handle*, i32, i64*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32, i32, i64*)* @scmi_hwmon_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scmi_hwmon_read(%struct.device* %0, i32 %1, i32 %2, i32 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.scmi_sensor_info*, align 8
  %15 = alloca %struct.scmi_sensors*, align 8
  %16 = alloca %struct.scmi_handle*, align 8
  store %struct.device* %0, %struct.device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  %17 = load %struct.device*, %struct.device** %7, align 8
  %18 = call %struct.scmi_sensors* @dev_get_drvdata(%struct.device* %17)
  store %struct.scmi_sensors* %18, %struct.scmi_sensors** %15, align 8
  %19 = load %struct.scmi_sensors*, %struct.scmi_sensors** %15, align 8
  %20 = getelementptr inbounds %struct.scmi_sensors, %struct.scmi_sensors* %19, i32 0, i32 1
  %21 = load %struct.scmi_handle*, %struct.scmi_handle** %20, align 8
  store %struct.scmi_handle* %21, %struct.scmi_handle** %16, align 8
  %22 = load %struct.scmi_sensors*, %struct.scmi_sensors** %15, align 8
  %23 = getelementptr inbounds %struct.scmi_sensors, %struct.scmi_sensors* %22, i32 0, i32 0
  %24 = load %struct.scmi_sensor_info***, %struct.scmi_sensor_info**** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.scmi_sensor_info**, %struct.scmi_sensor_info*** %24, i64 %26
  %28 = load %struct.scmi_sensor_info**, %struct.scmi_sensor_info*** %27, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.scmi_sensor_info*, %struct.scmi_sensor_info** %28, i64 %30
  %32 = load %struct.scmi_sensor_info*, %struct.scmi_sensor_info** %31, align 8
  store %struct.scmi_sensor_info* %32, %struct.scmi_sensor_info** %14, align 8
  %33 = load %struct.scmi_handle*, %struct.scmi_handle** %16, align 8
  %34 = getelementptr inbounds %struct.scmi_handle, %struct.scmi_handle* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32 (%struct.scmi_handle*, i32, i64*)*, i32 (%struct.scmi_handle*, i32, i64*)** %36, align 8
  %38 = load %struct.scmi_handle*, %struct.scmi_handle** %16, align 8
  %39 = load %struct.scmi_sensor_info*, %struct.scmi_sensor_info** %14, align 8
  %40 = getelementptr inbounds %struct.scmi_sensor_info, %struct.scmi_sensor_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 %37(%struct.scmi_handle* %38, i32 %41, i64* %13)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %5
  %46 = load i32, i32* %12, align 4
  store i32 %46, i32* %6, align 4
  br label %57

47:                                               ; preds = %5
  %48 = load %struct.scmi_sensor_info*, %struct.scmi_sensor_info** %14, align 8
  %49 = call i32 @scmi_hwmon_scale(%struct.scmi_sensor_info* %48, i64* %13)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %47
  %53 = load i64, i64* %13, align 8
  %54 = load i64*, i64** %11, align 8
  store i64 %53, i64* %54, align 8
  br label %55

55:                                               ; preds = %52, %47
  %56 = load i32, i32* %12, align 4
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %55, %45
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local %struct.scmi_sensors* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @scmi_hwmon_scale(%struct.scmi_sensor_info*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

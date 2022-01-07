; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_scmi-hwmon.c_scmi_hwmon_read_string.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_scmi-hwmon.c_scmi_hwmon_read_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.scmi_sensor_info = type { i8* }
%struct.scmi_sensors = type { %struct.scmi_sensor_info*** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32, i32, i8**)* @scmi_hwmon_read_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scmi_hwmon_read_string(%struct.device* %0, i32 %1, i32 %2, i32 %3, i8** %4) #0 {
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca %struct.scmi_sensor_info*, align 8
  %12 = alloca %struct.scmi_sensors*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8** %4, i8*** %10, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.scmi_sensors* @dev_get_drvdata(%struct.device* %13)
  store %struct.scmi_sensors* %14, %struct.scmi_sensors** %12, align 8
  %15 = load %struct.scmi_sensors*, %struct.scmi_sensors** %12, align 8
  %16 = getelementptr inbounds %struct.scmi_sensors, %struct.scmi_sensors* %15, i32 0, i32 0
  %17 = load %struct.scmi_sensor_info***, %struct.scmi_sensor_info**** %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.scmi_sensor_info**, %struct.scmi_sensor_info*** %17, i64 %19
  %21 = load %struct.scmi_sensor_info**, %struct.scmi_sensor_info*** %20, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.scmi_sensor_info*, %struct.scmi_sensor_info** %21, i64 %23
  %25 = load %struct.scmi_sensor_info*, %struct.scmi_sensor_info** %24, align 8
  store %struct.scmi_sensor_info* %25, %struct.scmi_sensor_info** %11, align 8
  %26 = load %struct.scmi_sensor_info*, %struct.scmi_sensor_info** %11, align 8
  %27 = getelementptr inbounds %struct.scmi_sensor_info, %struct.scmi_sensor_info* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load i8**, i8*** %10, align 8
  store i8* %28, i8** %29, align 8
  ret i32 0
}

declare dso_local %struct.scmi_sensors* @dev_get_drvdata(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

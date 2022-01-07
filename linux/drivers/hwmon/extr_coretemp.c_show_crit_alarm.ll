; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_coretemp.c_show_crit_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_coretemp.c_show_crit_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i64 }
%struct.platform_data = type { %struct.temp_data** }
%struct.temp_data = type { i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_crit_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_crit_alarm(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sensor_device_attribute*, align 8
  %10 = alloca %struct.platform_data*, align 8
  %11 = alloca %struct.temp_data*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load %struct.device_attribute*, %struct.device_attribute** %5, align 8
  %13 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %12)
  store %struct.sensor_device_attribute* %13, %struct.sensor_device_attribute** %9, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = call %struct.platform_data* @dev_get_drvdata(%struct.device* %14)
  store %struct.platform_data* %15, %struct.platform_data** %10, align 8
  %16 = load %struct.platform_data*, %struct.platform_data** %10, align 8
  %17 = getelementptr inbounds %struct.platform_data, %struct.platform_data* %16, i32 0, i32 0
  %18 = load %struct.temp_data**, %struct.temp_data*** %17, align 8
  %19 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %9, align 8
  %20 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.temp_data*, %struct.temp_data** %18, i64 %21
  %23 = load %struct.temp_data*, %struct.temp_data** %22, align 8
  store %struct.temp_data* %23, %struct.temp_data** %11, align 8
  %24 = load %struct.temp_data*, %struct.temp_data** %11, align 8
  %25 = getelementptr inbounds %struct.temp_data, %struct.temp_data* %24, i32 0, i32 0
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.temp_data*, %struct.temp_data** %11, align 8
  %28 = getelementptr inbounds %struct.temp_data, %struct.temp_data* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.temp_data*, %struct.temp_data** %11, align 8
  %31 = getelementptr inbounds %struct.temp_data, %struct.temp_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @rdmsr_on_cpu(i32 %29, i32 %32, i32* %7, i32* %8)
  %34 = load %struct.temp_data*, %struct.temp_data** %11, align 8
  %35 = getelementptr inbounds %struct.temp_data, %struct.temp_data* %34, i32 0, i32 0
  %36 = call i32 @mutex_unlock(i32* %35)
  %37 = load i8*, i8** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = ashr i32 %38, 5
  %40 = and i32 %39, 1
  %41 = call i32 @sprintf(i8* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %40)
  ret i32 %41
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.platform_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rdmsr_on_cpu(i32, i32, i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

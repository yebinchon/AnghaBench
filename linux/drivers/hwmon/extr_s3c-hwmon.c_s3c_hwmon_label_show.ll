; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_s3c-hwmon.c_s3c_hwmon_label_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_s3c-hwmon.c_s3c_hwmon_label_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i64 }
%struct.s3c_hwmon_pdata = type { %struct.s3c_hwmon_chcfg** }
%struct.s3c_hwmon_chcfg = type { i8* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @s3c_hwmon_label_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c_hwmon_label_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sensor_device_attribute*, align 8
  %8 = alloca %struct.s3c_hwmon_pdata*, align 8
  %9 = alloca %struct.s3c_hwmon_chcfg*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.device_attribute*, %struct.device_attribute** %5, align 8
  %11 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %10)
  store %struct.sensor_device_attribute* %11, %struct.sensor_device_attribute** %7, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.s3c_hwmon_pdata* @dev_get_platdata(%struct.device* %12)
  store %struct.s3c_hwmon_pdata* %13, %struct.s3c_hwmon_pdata** %8, align 8
  %14 = load %struct.s3c_hwmon_pdata*, %struct.s3c_hwmon_pdata** %8, align 8
  %15 = getelementptr inbounds %struct.s3c_hwmon_pdata, %struct.s3c_hwmon_pdata* %14, i32 0, i32 0
  %16 = load %struct.s3c_hwmon_chcfg**, %struct.s3c_hwmon_chcfg*** %15, align 8
  %17 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %7, align 8
  %18 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.s3c_hwmon_chcfg*, %struct.s3c_hwmon_chcfg** %16, i64 %19
  %21 = load %struct.s3c_hwmon_chcfg*, %struct.s3c_hwmon_chcfg** %20, align 8
  store %struct.s3c_hwmon_chcfg* %21, %struct.s3c_hwmon_chcfg** %9, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load i32, i32* @PAGE_SIZE, align 4
  %24 = load %struct.s3c_hwmon_chcfg*, %struct.s3c_hwmon_chcfg** %9, align 8
  %25 = getelementptr inbounds %struct.s3c_hwmon_chcfg, %struct.s3c_hwmon_chcfg* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @snprintf(i8* %22, i32 %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %26)
  ret i32 %27
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.s3c_hwmon_pdata* @dev_get_platdata(%struct.device*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

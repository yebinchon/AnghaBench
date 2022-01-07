; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_s3c-hwmon.c_s3c_hwmon_ch_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_s3c-hwmon.c_s3c_hwmon_ch_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i64 }
%struct.s3c_hwmon = type { i32 }
%struct.s3c_hwmon_pdata = type { %struct.s3c_hwmon_chcfg** }
%struct.s3c_hwmon_chcfg = type { i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @s3c_hwmon_ch_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c_hwmon_ch_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sensor_device_attribute*, align 8
  %9 = alloca %struct.s3c_hwmon*, align 8
  %10 = alloca %struct.s3c_hwmon_pdata*, align 8
  %11 = alloca %struct.s3c_hwmon_chcfg*, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %14 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %13)
  store %struct.sensor_device_attribute* %14, %struct.sensor_device_attribute** %8, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = call %struct.s3c_hwmon* @dev_get_drvdata(%struct.device* %15)
  store %struct.s3c_hwmon* %16, %struct.s3c_hwmon** %9, align 8
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = call %struct.s3c_hwmon_pdata* @dev_get_platdata(%struct.device* %17)
  store %struct.s3c_hwmon_pdata* %18, %struct.s3c_hwmon_pdata** %10, align 8
  %19 = load %struct.s3c_hwmon_pdata*, %struct.s3c_hwmon_pdata** %10, align 8
  %20 = getelementptr inbounds %struct.s3c_hwmon_pdata, %struct.s3c_hwmon_pdata* %19, i32 0, i32 0
  %21 = load %struct.s3c_hwmon_chcfg**, %struct.s3c_hwmon_chcfg*** %20, align 8
  %22 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %8, align 8
  %23 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.s3c_hwmon_chcfg*, %struct.s3c_hwmon_chcfg** %21, i64 %24
  %26 = load %struct.s3c_hwmon_chcfg*, %struct.s3c_hwmon_chcfg** %25, align 8
  store %struct.s3c_hwmon_chcfg* %26, %struct.s3c_hwmon_chcfg** %11, align 8
  %27 = load %struct.device*, %struct.device** %5, align 8
  %28 = load %struct.s3c_hwmon*, %struct.s3c_hwmon** %9, align 8
  %29 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %8, align 8
  %30 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @s3c_hwmon_read_ch(%struct.device* %27, %struct.s3c_hwmon* %28, i64 %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %3
  %36 = load i32, i32* %12, align 4
  store i32 %36, i32* %4, align 4
  br label %52

37:                                               ; preds = %3
  %38 = load %struct.s3c_hwmon_chcfg*, %struct.s3c_hwmon_chcfg** %11, align 8
  %39 = getelementptr inbounds %struct.s3c_hwmon_chcfg, %struct.s3c_hwmon_chcfg* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %12, align 4
  %42 = mul nsw i32 %41, %40
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load %struct.s3c_hwmon_chcfg*, %struct.s3c_hwmon_chcfg** %11, align 8
  %45 = getelementptr inbounds %struct.s3c_hwmon_chcfg, %struct.s3c_hwmon_chcfg* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @DIV_ROUND_CLOSEST(i32 %43, i32 %46)
  store i32 %47, i32* %12, align 4
  %48 = load i8*, i8** %7, align 8
  %49 = load i32, i32* @PAGE_SIZE, align 4
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @snprintf(i8* %48, i32 %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %50)
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %37, %35
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.s3c_hwmon* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.s3c_hwmon_pdata* @dev_get_platdata(%struct.device*) #1

declare dso_local i32 @s3c_hwmon_read_ch(%struct.device*, %struct.s3c_hwmon*, i64) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

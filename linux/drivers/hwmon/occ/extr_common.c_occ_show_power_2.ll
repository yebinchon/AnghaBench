; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/occ/extr_common.c_occ_show_power_2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/occ/extr_common.c_occ_show_power_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.power_sensor_2 = type { i32, i32, i32, i32, i32, i32 }
%struct.occ = type { i32, %struct.occ_sensors }
%struct.occ_sensors = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.sensor_device_attribute_2 = type { i32, i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"%u_%u_%u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @occ_show_power_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @occ_show_power_2(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.power_sensor_2*, align 8
  %11 = alloca %struct.occ*, align 8
  %12 = alloca %struct.occ_sensors*, align 8
  %13 = alloca %struct.sensor_device_attribute_2*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call %struct.occ* @dev_get_drvdata(%struct.device* %14)
  store %struct.occ* %15, %struct.occ** %11, align 8
  %16 = load %struct.occ*, %struct.occ** %11, align 8
  %17 = getelementptr inbounds %struct.occ, %struct.occ* %16, i32 0, i32 1
  store %struct.occ_sensors* %17, %struct.occ_sensors** %12, align 8
  %18 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %19 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %18)
  store %struct.sensor_device_attribute_2* %19, %struct.sensor_device_attribute_2** %13, align 8
  %20 = load %struct.occ*, %struct.occ** %11, align 8
  %21 = call i32 @occ_update_response(%struct.occ* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %4, align 4
  br label %83

26:                                               ; preds = %3
  %27 = load %struct.occ_sensors*, %struct.occ_sensors** %12, align 8
  %28 = getelementptr inbounds %struct.occ_sensors, %struct.occ_sensors* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.power_sensor_2*
  %32 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %13, align 8
  %33 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.power_sensor_2, %struct.power_sensor_2* %31, i64 %35
  store %struct.power_sensor_2* %36, %struct.power_sensor_2** %10, align 8
  %37 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %13, align 8
  %38 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %74 [
    i32 0, label %40
    i32 1, label %54
    i32 2, label %60
    i32 3, label %68
  ]

40:                                               ; preds = %26
  %41 = load i8*, i8** %7, align 8
  %42 = load i64, i64* @PAGE_SIZE, align 8
  %43 = sub nsw i64 %42, 1
  %44 = load %struct.power_sensor_2*, %struct.power_sensor_2** %10, align 8
  %45 = getelementptr inbounds %struct.power_sensor_2, %struct.power_sensor_2* %44, i32 0, i32 5
  %46 = call i32 @get_unaligned_be32(i32* %45)
  %47 = load %struct.power_sensor_2*, %struct.power_sensor_2** %10, align 8
  %48 = getelementptr inbounds %struct.power_sensor_2, %struct.power_sensor_2* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.power_sensor_2*, %struct.power_sensor_2** %10, align 8
  %51 = getelementptr inbounds %struct.power_sensor_2, %struct.power_sensor_2* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i8*, i64, i8*, i32, ...) @snprintf(i8* %41, i64 %43, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %49, i32 %52)
  store i32 %53, i32* %4, align 4
  br label %83

54:                                               ; preds = %26
  %55 = load %struct.power_sensor_2*, %struct.power_sensor_2** %10, align 8
  %56 = getelementptr inbounds %struct.power_sensor_2, %struct.power_sensor_2* %55, i32 0, i32 4
  %57 = load %struct.power_sensor_2*, %struct.power_sensor_2** %10, align 8
  %58 = getelementptr inbounds %struct.power_sensor_2, %struct.power_sensor_2* %57, i32 0, i32 3
  %59 = call i32 @occ_get_powr_avg(i32* %56, i32* %58)
  store i32 %59, i32* %9, align 4
  br label %77

60:                                               ; preds = %26
  %61 = load %struct.power_sensor_2*, %struct.power_sensor_2** %10, align 8
  %62 = getelementptr inbounds %struct.power_sensor_2, %struct.power_sensor_2* %61, i32 0, i32 3
  %63 = call i32 @get_unaligned_be32(i32* %62)
  %64 = load %struct.occ*, %struct.occ** %11, align 8
  %65 = getelementptr inbounds %struct.occ, %struct.occ* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = mul nsw i32 %63, %66
  store i32 %67, i32* %9, align 4
  br label %77

68:                                               ; preds = %26
  %69 = load %struct.power_sensor_2*, %struct.power_sensor_2** %10, align 8
  %70 = getelementptr inbounds %struct.power_sensor_2, %struct.power_sensor_2* %69, i32 0, i32 2
  %71 = call i64 @get_unaligned_be16(i32* %70)
  %72 = mul i64 %71, 1000000
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %9, align 4
  br label %77

74:                                               ; preds = %26
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %83

77:                                               ; preds = %68, %60, %54
  %78 = load i8*, i8** %7, align 8
  %79 = load i64, i64* @PAGE_SIZE, align 8
  %80 = sub nsw i64 %79, 1
  %81 = load i32, i32* %9, align 4
  %82 = call i32 (i8*, i64, i8*, i32, ...) @snprintf(i8* %78, i64 %80, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %77, %74, %40, %24
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local %struct.occ* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local i32 @occ_update_response(%struct.occ*) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i32, ...) #1

declare dso_local i32 @get_unaligned_be32(i32*) #1

declare dso_local i32 @occ_get_powr_avg(i32*, i32*) #1

declare dso_local i64 @get_unaligned_be16(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

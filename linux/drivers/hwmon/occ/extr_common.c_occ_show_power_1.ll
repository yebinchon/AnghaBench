; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/occ/extr_common.c_occ_show_power_1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/occ/extr_common.c_occ_show_power_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.power_sensor_1 = type { i32, i32, i32, i32 }
%struct.occ = type { i64, %struct.occ_sensors }
%struct.occ_sensors = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.sensor_device_attribute_2 = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @occ_show_power_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @occ_show_power_1(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.power_sensor_1*, align 8
  %11 = alloca %struct.occ*, align 8
  %12 = alloca %struct.occ_sensors*, align 8
  %13 = alloca %struct.sensor_device_attribute_2*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 0, i64* %9, align 8
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
  br label %76

26:                                               ; preds = %3
  %27 = load %struct.occ_sensors*, %struct.occ_sensors** %12, align 8
  %28 = getelementptr inbounds %struct.occ_sensors, %struct.occ_sensors* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.power_sensor_1*
  %32 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %13, align 8
  %33 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.power_sensor_1, %struct.power_sensor_1* %31, i64 %35
  store %struct.power_sensor_1* %36, %struct.power_sensor_1** %10, align 8
  %37 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %13, align 8
  %38 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %67 [
    i32 0, label %40
    i32 1, label %44
    i32 2, label %54
    i32 3, label %62
  ]

40:                                               ; preds = %26
  %41 = load %struct.power_sensor_1*, %struct.power_sensor_1** %10, align 8
  %42 = getelementptr inbounds %struct.power_sensor_1, %struct.power_sensor_1* %41, i32 0, i32 3
  %43 = call i64 @get_unaligned_be16(i32* %42)
  store i64 %43, i64* %9, align 8
  br label %70

44:                                               ; preds = %26
  %45 = load %struct.power_sensor_1*, %struct.power_sensor_1** %10, align 8
  %46 = getelementptr inbounds %struct.power_sensor_1, %struct.power_sensor_1* %45, i32 0, i32 2
  %47 = call i64 @get_unaligned_be32(i32* %46)
  %48 = load %struct.power_sensor_1*, %struct.power_sensor_1** %10, align 8
  %49 = getelementptr inbounds %struct.power_sensor_1, %struct.power_sensor_1* %48, i32 0, i32 1
  %50 = call i64 @get_unaligned_be32(i32* %49)
  %51 = udiv i64 %47, %50
  store i64 %51, i64* %9, align 8
  %52 = load i64, i64* %9, align 8
  %53 = mul i64 %52, 1000000
  store i64 %53, i64* %9, align 8
  br label %70

54:                                               ; preds = %26
  %55 = load %struct.power_sensor_1*, %struct.power_sensor_1** %10, align 8
  %56 = getelementptr inbounds %struct.power_sensor_1, %struct.power_sensor_1* %55, i32 0, i32 1
  %57 = call i64 @get_unaligned_be32(i32* %56)
  %58 = load %struct.occ*, %struct.occ** %11, align 8
  %59 = getelementptr inbounds %struct.occ, %struct.occ* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = mul i64 %57, %60
  store i64 %61, i64* %9, align 8
  br label %70

62:                                               ; preds = %26
  %63 = load %struct.power_sensor_1*, %struct.power_sensor_1** %10, align 8
  %64 = getelementptr inbounds %struct.power_sensor_1, %struct.power_sensor_1* %63, i32 0, i32 0
  %65 = call i64 @get_unaligned_be16(i32* %64)
  %66 = mul i64 %65, 1000000
  store i64 %66, i64* %9, align 8
  br label %70

67:                                               ; preds = %26
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %76

70:                                               ; preds = %62, %54, %44, %40
  %71 = load i8*, i8** %7, align 8
  %72 = load i64, i64* @PAGE_SIZE, align 8
  %73 = sub nsw i64 %72, 1
  %74 = load i64, i64* %9, align 8
  %75 = call i32 @snprintf(i8* %71, i64 %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %74)
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %70, %67, %24
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local %struct.occ* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local i32 @occ_update_response(%struct.occ*) #1

declare dso_local i64 @get_unaligned_be16(i32*) #1

declare dso_local i64 @get_unaligned_be32(i32*) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

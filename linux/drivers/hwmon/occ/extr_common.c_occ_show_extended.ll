; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/occ/extr_common.c_occ_show_extended.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/occ/extr_common.c_occ_show_extended.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.extended_sensor = type { i32, i32*, i32*, i32 }
%struct.occ = type { %struct.occ_sensors }
%struct.occ_sensors = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.sensor_device_attribute_2 = type { i32, i32 }

@EXTN_FLAG_SENSOR_ID = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"%02x%02x%02x%02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%02x\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"%02x%02x%02x%02x%02x%02x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @occ_show_extended to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @occ_show_extended(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.extended_sensor*, align 8
  %10 = alloca %struct.occ*, align 8
  %11 = alloca %struct.occ_sensors*, align 8
  %12 = alloca %struct.sensor_device_attribute_2*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.occ* @dev_get_drvdata(%struct.device* %13)
  store %struct.occ* %14, %struct.occ** %10, align 8
  %15 = load %struct.occ*, %struct.occ** %10, align 8
  %16 = getelementptr inbounds %struct.occ, %struct.occ* %15, i32 0, i32 0
  store %struct.occ_sensors* %16, %struct.occ_sensors** %11, align 8
  %17 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %18 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %17)
  store %struct.sensor_device_attribute_2* %18, %struct.sensor_device_attribute_2** %12, align 8
  %19 = load %struct.occ*, %struct.occ** %10, align 8
  %20 = call i32 @occ_update_response(%struct.occ* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %4, align 4
  br label %128

25:                                               ; preds = %3
  %26 = load %struct.occ_sensors*, %struct.occ_sensors** %11, align 8
  %27 = getelementptr inbounds %struct.occ_sensors, %struct.occ_sensors* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.extended_sensor*
  %31 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %12, align 8
  %32 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.extended_sensor, %struct.extended_sensor* %30, i64 %34
  store %struct.extended_sensor* %35, %struct.extended_sensor** %9, align 8
  %36 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %12, align 8
  %37 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %123 [
    i32 0, label %39
    i32 1, label %80
    i32 2, label %88
  ]

39:                                               ; preds = %25
  %40 = load %struct.extended_sensor*, %struct.extended_sensor** %9, align 8
  %41 = getelementptr inbounds %struct.extended_sensor, %struct.extended_sensor* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @EXTN_FLAG_SENSOR_ID, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %39
  %47 = load i8*, i8** %7, align 8
  %48 = load i32, i32* @PAGE_SIZE, align 4
  %49 = sub nsw i32 %48, 1
  %50 = load %struct.extended_sensor*, %struct.extended_sensor** %9, align 8
  %51 = getelementptr inbounds %struct.extended_sensor, %struct.extended_sensor* %50, i32 0, i32 3
  %52 = call i32 @get_unaligned_be32(i32* %51)
  %53 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %47, i32 %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %52)
  store i32 %53, i32* %8, align 4
  br label %79

54:                                               ; preds = %39
  %55 = load i8*, i8** %7, align 8
  %56 = load i32, i32* @PAGE_SIZE, align 4
  %57 = sub nsw i32 %56, 1
  %58 = load %struct.extended_sensor*, %struct.extended_sensor** %9, align 8
  %59 = getelementptr inbounds %struct.extended_sensor, %struct.extended_sensor* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.extended_sensor*, %struct.extended_sensor** %9, align 8
  %64 = getelementptr inbounds %struct.extended_sensor, %struct.extended_sensor* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.extended_sensor*, %struct.extended_sensor** %9, align 8
  %69 = getelementptr inbounds %struct.extended_sensor, %struct.extended_sensor* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.extended_sensor*, %struct.extended_sensor** %9, align 8
  %74 = getelementptr inbounds %struct.extended_sensor, %struct.extended_sensor* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 3
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %55, i32 %57, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32 %67, i32 %72, i32 %77)
  store i32 %78, i32* %8, align 4
  br label %79

79:                                               ; preds = %54, %46
  br label %126

80:                                               ; preds = %25
  %81 = load i8*, i8** %7, align 8
  %82 = load i32, i32* @PAGE_SIZE, align 4
  %83 = sub nsw i32 %82, 1
  %84 = load %struct.extended_sensor*, %struct.extended_sensor** %9, align 8
  %85 = getelementptr inbounds %struct.extended_sensor, %struct.extended_sensor* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %81, i32 %83, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %86)
  store i32 %87, i32* %8, align 4
  br label %126

88:                                               ; preds = %25
  %89 = load i8*, i8** %7, align 8
  %90 = load i32, i32* @PAGE_SIZE, align 4
  %91 = sub nsw i32 %90, 1
  %92 = load %struct.extended_sensor*, %struct.extended_sensor** %9, align 8
  %93 = getelementptr inbounds %struct.extended_sensor, %struct.extended_sensor* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.extended_sensor*, %struct.extended_sensor** %9, align 8
  %98 = getelementptr inbounds %struct.extended_sensor, %struct.extended_sensor* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.extended_sensor*, %struct.extended_sensor** %9, align 8
  %103 = getelementptr inbounds %struct.extended_sensor, %struct.extended_sensor* %102, i32 0, i32 2
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 2
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.extended_sensor*, %struct.extended_sensor** %9, align 8
  %108 = getelementptr inbounds %struct.extended_sensor, %struct.extended_sensor* %107, i32 0, i32 2
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 3
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.extended_sensor*, %struct.extended_sensor** %9, align 8
  %113 = getelementptr inbounds %struct.extended_sensor, %struct.extended_sensor* %112, i32 0, i32 2
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 4
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.extended_sensor*, %struct.extended_sensor** %9, align 8
  %118 = getelementptr inbounds %struct.extended_sensor, %struct.extended_sensor* %117, i32 0, i32 2
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 5
  %121 = load i32, i32* %120, align 4
  %122 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %89, i32 %91, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %96, i32 %101, i32 %106, i32 %111, i32 %116, i32 %121)
  store i32 %122, i32* %8, align 4
  br label %126

123:                                              ; preds = %25
  %124 = load i32, i32* @EINVAL, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %4, align 4
  br label %128

126:                                              ; preds = %88, %80, %79
  %127 = load i32, i32* %8, align 4
  store i32 %127, i32* %4, align 4
  br label %128

128:                                              ; preds = %126, %123, %23
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

declare dso_local %struct.occ* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local i32 @occ_update_response(%struct.occ*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, ...) #1

declare dso_local i32 @get_unaligned_be32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

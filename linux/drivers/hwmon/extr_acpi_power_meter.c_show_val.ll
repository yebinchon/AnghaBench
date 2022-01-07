; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_acpi_power_meter.c_show_val.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_acpi_power_meter.c_show_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i32 }
%struct.acpi_device = type { %struct.acpi_power_meter_resource* }
%struct.acpi_power_meter_resource = type { i32*, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@UNKNOWN_HYSTERESIS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"unknown\0A\00", align 1
@POWER_METER_IS_BATTERY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"Implementation error: unexpected attribute index %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_val(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sensor_device_attribute*, align 8
  %9 = alloca %struct.acpi_device*, align 8
  %10 = alloca %struct.acpi_power_meter_resource*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %13 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %12)
  store %struct.sensor_device_attribute* %13, %struct.sensor_device_attribute** %8, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call %struct.acpi_device* @to_acpi_device(%struct.device* %14)
  store %struct.acpi_device* %15, %struct.acpi_device** %9, align 8
  %16 = load %struct.acpi_device*, %struct.acpi_device** %9, align 8
  %17 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %16, i32 0, i32 0
  %18 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %17, align 8
  store %struct.acpi_power_meter_resource* %18, %struct.acpi_power_meter_resource** %10, align 8
  store i32 0, i32* %11, align 4
  %19 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %8, align 8
  %20 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %109 [
    i32 0, label %22
    i32 1, label %27
    i32 2, label %32
    i32 3, label %38
    i32 4, label %44
    i32 5, label %60
    i32 6, label %71
    i32 7, label %82
    i32 8, label %82
  ]

22:                                               ; preds = %3
  %23 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %10, align 8
  %24 = getelementptr inbounds %struct.acpi_power_meter_resource, %struct.acpi_power_meter_resource* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %11, align 4
  br label %114

27:                                               ; preds = %3
  %28 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %10, align 8
  %29 = getelementptr inbounds %struct.acpi_power_meter_resource, %struct.acpi_power_meter_resource* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %11, align 4
  br label %114

32:                                               ; preds = %3
  %33 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %10, align 8
  %34 = getelementptr inbounds %struct.acpi_power_meter_resource, %struct.acpi_power_meter_resource* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = mul nsw i32 %36, 1000
  store i32 %37, i32* %11, align 4
  br label %114

38:                                               ; preds = %3
  %39 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %10, align 8
  %40 = getelementptr inbounds %struct.acpi_power_meter_resource, %struct.acpi_power_meter_resource* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = mul nsw i32 %42, 1000
  store i32 %43, i32* %11, align 4
  br label %114

44:                                               ; preds = %3
  %45 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %10, align 8
  %46 = getelementptr inbounds %struct.acpi_power_meter_resource, %struct.acpi_power_meter_resource* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @UNKNOWN_HYSTERESIS, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load i8*, i8** %7, align 8
  %53 = call i32 (i8*, i8*, ...) @sprintf(i8* %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %53, i32* %4, align 4
  br label %118

54:                                               ; preds = %44
  %55 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %10, align 8
  %56 = getelementptr inbounds %struct.acpi_power_meter_resource, %struct.acpi_power_meter_resource* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = mul nsw i32 %58, 1000
  store i32 %59, i32* %11, align 4
  br label %114

60:                                               ; preds = %3
  %61 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %10, align 8
  %62 = getelementptr inbounds %struct.acpi_power_meter_resource, %struct.acpi_power_meter_resource* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @POWER_METER_IS_BATTERY, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  store i32 1, i32* %11, align 4
  br label %70

69:                                               ; preds = %60
  store i32 0, i32* %11, align 4
  br label %70

70:                                               ; preds = %69, %68
  br label %114

71:                                               ; preds = %3
  %72 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %10, align 8
  %73 = getelementptr inbounds %struct.acpi_power_meter_resource, %struct.acpi_power_meter_resource* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %10, align 8
  %76 = getelementptr inbounds %struct.acpi_power_meter_resource, %struct.acpi_power_meter_resource* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = icmp sgt i32 %74, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  store i32 1, i32* %11, align 4
  br label %81

80:                                               ; preds = %71
  store i32 0, i32* %11, align 4
  br label %81

81:                                               ; preds = %80, %79
  br label %114

82:                                               ; preds = %3, %3
  %83 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %10, align 8
  %84 = getelementptr inbounds %struct.acpi_power_meter_resource, %struct.acpi_power_meter_resource* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %8, align 8
  %87 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = sub nsw i32 %88, 7
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %85, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %82
  %95 = load i8*, i8** %7, align 8
  %96 = call i32 (i8*, i8*, ...) @sprintf(i8* %95, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %96, i32* %4, align 4
  br label %118

97:                                               ; preds = %82
  %98 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %10, align 8
  %99 = getelementptr inbounds %struct.acpi_power_meter_resource, %struct.acpi_power_meter_resource* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %8, align 8
  %102 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = sub nsw i32 %103, 7
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %100, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = mul nsw i32 %107, 1000
  store i32 %108, i32* %11, align 4
  br label %114

109:                                              ; preds = %3
  %110 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %8, align 8
  %111 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %112)
  br label %114

114:                                              ; preds = %109, %97, %81, %70, %54, %38, %32, %27, %22
  %115 = load i8*, i8** %7, align 8
  %116 = load i32, i32* %11, align 4
  %117 = call i32 (i8*, i8*, ...) @sprintf(i8* %115, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %116)
  store i32 %117, i32* %4, align 4
  br label %118

118:                                              ; preds = %114, %94, %51
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.acpi_device* @to_acpi_device(%struct.device*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

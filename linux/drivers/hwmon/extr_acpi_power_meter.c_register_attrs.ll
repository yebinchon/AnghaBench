; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_acpi_power_meter.c_register_attrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_acpi_power_meter.c_register_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_power_meter_resource = type { i64, %struct.sensor_device_attribute*, %struct.TYPE_4__* }
%struct.sensor_device_attribute = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i64, i32 }
%struct.TYPE_5__ = type { i32, i32* }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.sensor_template = type { i64, i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_power_meter_resource*, %struct.sensor_template*)* @register_attrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_attrs(%struct.acpi_power_meter_resource* %0, %struct.sensor_template* %1) #0 {
  %3 = alloca %struct.acpi_power_meter_resource*, align 8
  %4 = alloca %struct.sensor_template*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.sensor_device_attribute*, align 8
  %7 = alloca i32, align 4
  store %struct.acpi_power_meter_resource* %0, %struct.acpi_power_meter_resource** %3, align 8
  store %struct.sensor_template* %1, %struct.sensor_template** %4, align 8
  %8 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %3, align 8
  %9 = getelementptr inbounds %struct.acpi_power_meter_resource, %struct.acpi_power_meter_resource* %8, i32 0, i32 2
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %5, align 8
  %12 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %3, align 8
  %13 = getelementptr inbounds %struct.acpi_power_meter_resource, %struct.acpi_power_meter_resource* %12, i32 0, i32 1
  %14 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %13, align 8
  %15 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %3, align 8
  %16 = getelementptr inbounds %struct.acpi_power_meter_resource, %struct.acpi_power_meter_resource* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %14, i64 %17
  store %struct.sensor_device_attribute* %18, %struct.sensor_device_attribute** %6, align 8
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %80, %2
  %20 = load %struct.sensor_template*, %struct.sensor_template** %4, align 8
  %21 = getelementptr inbounds %struct.sensor_template, %struct.sensor_template* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %89

24:                                               ; preds = %19
  %25 = load %struct.sensor_template*, %struct.sensor_template** %4, align 8
  %26 = getelementptr inbounds %struct.sensor_template, %struct.sensor_template* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %6, align 8
  %29 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  store i32* %27, i32** %31, align 8
  %32 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %6, align 8
  %33 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store i32 292, i32* %35, align 8
  %36 = load %struct.sensor_template*, %struct.sensor_template** %4, align 8
  %37 = getelementptr inbounds %struct.sensor_template, %struct.sensor_template* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %6, align 8
  %40 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  store i32 %38, i32* %41, align 8
  %42 = load %struct.sensor_template*, %struct.sensor_template** %4, align 8
  %43 = getelementptr inbounds %struct.sensor_template, %struct.sensor_template* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %6, align 8
  %46 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  %47 = load %struct.sensor_template*, %struct.sensor_template** %4, align 8
  %48 = getelementptr inbounds %struct.sensor_template, %struct.sensor_template* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %24
  %52 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %6, align 8
  %53 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, 128
  store i32 %57, i32* %55, align 8
  %58 = load %struct.sensor_template*, %struct.sensor_template** %4, align 8
  %59 = getelementptr inbounds %struct.sensor_template, %struct.sensor_template* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %6, align 8
  %62 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  store i64 %60, i64* %63, align 8
  br label %64

64:                                               ; preds = %51, %24
  %65 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %6, align 8
  %66 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = call i32 @sysfs_attr_init(%struct.TYPE_5__* %67)
  %69 = load %struct.device*, %struct.device** %5, align 8
  %70 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %6, align 8
  %71 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %70, i32 0, i32 0
  %72 = call i32 @device_create_file(%struct.device* %69, %struct.TYPE_6__* %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %64
  %76 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %6, align 8
  %77 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  store i32* null, i32** %79, align 8
  br label %90

80:                                               ; preds = %64
  %81 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %6, align 8
  %82 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %81, i32 1
  store %struct.sensor_device_attribute* %82, %struct.sensor_device_attribute** %6, align 8
  %83 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %3, align 8
  %84 = getelementptr inbounds %struct.acpi_power_meter_resource, %struct.acpi_power_meter_resource* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %84, align 8
  %87 = load %struct.sensor_template*, %struct.sensor_template** %4, align 8
  %88 = getelementptr inbounds %struct.sensor_template, %struct.sensor_template* %87, i32 1
  store %struct.sensor_template* %88, %struct.sensor_template** %4, align 8
  br label %19

89:                                               ; preds = %19
  br label %90

90:                                               ; preds = %89, %75
  %91 = load i32, i32* %7, align 4
  ret i32 %91
}

declare dso_local i32 @sysfs_attr_init(%struct.TYPE_5__*) #1

declare dso_local i32 @device_create_file(%struct.device*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

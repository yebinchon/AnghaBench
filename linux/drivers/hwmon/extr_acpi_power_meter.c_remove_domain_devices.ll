; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_acpi_power_meter.c_remove_domain_devices.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_acpi_power_meter.c_remove_domain_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_power_meter_resource = type { i32, i32, %struct.acpi_device** }
%struct.acpi_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_power_meter_resource*)* @remove_domain_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_domain_devices(%struct.acpi_power_meter_resource* %0) #0 {
  %2 = alloca %struct.acpi_power_meter_resource*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_device*, align 8
  store %struct.acpi_power_meter_resource* %0, %struct.acpi_power_meter_resource** %2, align 8
  %5 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %2, align 8
  %6 = getelementptr inbounds %struct.acpi_power_meter_resource, %struct.acpi_power_meter_resource* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %54

10:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %40, %10
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %2, align 8
  %14 = getelementptr inbounds %struct.acpi_power_meter_resource, %struct.acpi_power_meter_resource* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %43

17:                                               ; preds = %11
  %18 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %2, align 8
  %19 = getelementptr inbounds %struct.acpi_power_meter_resource, %struct.acpi_power_meter_resource* %18, i32 0, i32 2
  %20 = load %struct.acpi_device**, %struct.acpi_device*** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.acpi_device*, %struct.acpi_device** %20, i64 %22
  %24 = load %struct.acpi_device*, %struct.acpi_device** %23, align 8
  store %struct.acpi_device* %24, %struct.acpi_device** %4, align 8
  %25 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %26 = icmp ne %struct.acpi_device* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %17
  br label %40

28:                                               ; preds = %17
  %29 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %2, align 8
  %30 = getelementptr inbounds %struct.acpi_power_meter_resource, %struct.acpi_power_meter_resource* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %33 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = call i32 @kobject_name(i32* %34)
  %36 = call i32 @sysfs_remove_link(i32 %31, i32 %35)
  %37 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %38 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %37, i32 0, i32 0
  %39 = call i32 @put_device(%struct.TYPE_2__* %38)
  br label %40

40:                                               ; preds = %28, %27
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %3, align 4
  br label %11

43:                                               ; preds = %11
  %44 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %2, align 8
  %45 = getelementptr inbounds %struct.acpi_power_meter_resource, %struct.acpi_power_meter_resource* %44, i32 0, i32 2
  %46 = load %struct.acpi_device**, %struct.acpi_device*** %45, align 8
  %47 = call i32 @kfree(%struct.acpi_device** %46)
  %48 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %2, align 8
  %49 = getelementptr inbounds %struct.acpi_power_meter_resource, %struct.acpi_power_meter_resource* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @kobject_put(i32 %50)
  %52 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %2, align 8
  %53 = getelementptr inbounds %struct.acpi_power_meter_resource, %struct.acpi_power_meter_resource* %52, i32 0, i32 0
  store i32 0, i32* %53, align 8
  br label %54

54:                                               ; preds = %43, %9
  ret void
}

declare dso_local i32 @sysfs_remove_link(i32, i32) #1

declare dso_local i32 @kobject_name(i32*) #1

declare dso_local i32 @put_device(%struct.TYPE_2__*) #1

declare dso_local i32 @kfree(%struct.acpi_device**) #1

declare dso_local i32 @kobject_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

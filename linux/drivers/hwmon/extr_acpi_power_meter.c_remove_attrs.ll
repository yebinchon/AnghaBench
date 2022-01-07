; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_acpi_power_meter.c_remove_attrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_acpi_power_meter.c_remove_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_power_meter_resource = type { i32, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_power_meter_resource*)* @remove_attrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_attrs(%struct.acpi_power_meter_resource* %0) #0 {
  %2 = alloca %struct.acpi_power_meter_resource*, align 8
  %3 = alloca i32, align 4
  store %struct.acpi_power_meter_resource* %0, %struct.acpi_power_meter_resource** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %36, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %2, align 8
  %7 = getelementptr inbounds %struct.acpi_power_meter_resource, %struct.acpi_power_meter_resource* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp slt i32 %5, %8
  br i1 %9, label %10, label %39

10:                                               ; preds = %4
  %11 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %2, align 8
  %12 = getelementptr inbounds %struct.acpi_power_meter_resource, %struct.acpi_power_meter_resource* %11, i32 0, i32 1
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %10
  br label %36

23:                                               ; preds = %10
  %24 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %2, align 8
  %25 = getelementptr inbounds %struct.acpi_power_meter_resource, %struct.acpi_power_meter_resource* %24, i32 0, i32 2
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %2, align 8
  %29 = getelementptr inbounds %struct.acpi_power_meter_resource, %struct.acpi_power_meter_resource* %28, i32 0, i32 1
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = call i32 @device_remove_file(i32* %27, %struct.TYPE_8__* %34)
  br label %36

36:                                               ; preds = %23, %22
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %4

39:                                               ; preds = %4
  %40 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %2, align 8
  %41 = call i32 @remove_domain_devices(%struct.acpi_power_meter_resource* %40)
  %42 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %2, align 8
  %43 = getelementptr inbounds %struct.acpi_power_meter_resource, %struct.acpi_power_meter_resource* %42, i32 0, i32 0
  store i32 0, i32* %43, align 8
  ret void
}

declare dso_local i32 @device_remove_file(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @remove_domain_devices(%struct.acpi_power_meter_resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

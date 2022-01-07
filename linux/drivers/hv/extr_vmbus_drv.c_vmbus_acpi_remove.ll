; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_vmbus_drv.c_vmbus_acpi_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_vmbus_drv.c_vmbus_acpi_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { %struct.resource* }
%struct.TYPE_3__ = type { i32 }
%struct.acpi_device = type { i32 }

@hyperv_mmio = common dso_local global %struct.resource* null, align 8
@fb_mmio = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @vmbus_acpi_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmbus_acpi_remove(%struct.acpi_device* %0) #0 {
  %2 = alloca %struct.acpi_device*, align 8
  %3 = alloca %struct.resource*, align 8
  %4 = alloca %struct.resource*, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %2, align 8
  %5 = load %struct.resource*, %struct.resource** @hyperv_mmio, align 8
  %6 = icmp ne %struct.resource* %5, null
  br i1 %6, label %7, label %32

7:                                                ; preds = %1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fb_mmio, align 8
  %9 = icmp ne %struct.TYPE_3__* %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %7
  %11 = load %struct.resource*, %struct.resource** @hyperv_mmio, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fb_mmio, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fb_mmio, align 8
  %16 = call i32 @resource_size(%struct.TYPE_3__* %15)
  %17 = call i32 @__release_region(%struct.resource* %11, i32 %14, i32 %16)
  store %struct.TYPE_3__* null, %struct.TYPE_3__** @fb_mmio, align 8
  br label %18

18:                                               ; preds = %10, %7
  %19 = load %struct.resource*, %struct.resource** @hyperv_mmio, align 8
  store %struct.resource* %19, %struct.resource** %3, align 8
  br label %20

20:                                               ; preds = %29, %18
  %21 = load %struct.resource*, %struct.resource** %3, align 8
  %22 = icmp ne %struct.resource* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = load %struct.resource*, %struct.resource** %3, align 8
  %25 = getelementptr inbounds %struct.resource, %struct.resource* %24, i32 0, i32 0
  %26 = load %struct.resource*, %struct.resource** %25, align 8
  store %struct.resource* %26, %struct.resource** %4, align 8
  %27 = load %struct.resource*, %struct.resource** %3, align 8
  %28 = call i32 @kfree(%struct.resource* %27)
  br label %29

29:                                               ; preds = %23
  %30 = load %struct.resource*, %struct.resource** %4, align 8
  store %struct.resource* %30, %struct.resource** %3, align 8
  br label %20

31:                                               ; preds = %20
  br label %32

32:                                               ; preds = %31, %1
  ret i32 0
}

declare dso_local i32 @__release_region(%struct.resource*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.TYPE_3__*) #1

declare dso_local i32 @kfree(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

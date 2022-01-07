; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_vmbus_drv.c_vmbus_acpi_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_vmbus_drv.c_vmbus_acpi_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32, %struct.acpi_device* }

@ENODEV = common dso_local global i32 0, align 4
@hv_acpi_dev = common dso_local global %struct.acpi_device* null, align 8
@METHOD_NAME__CRS = common dso_local global i32 0, align 4
@vmbus_walk_resources = common dso_local global i32 0, align 4
@hyperv_mmio = common dso_local global i64 0, align 8
@probe_event = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @vmbus_acpi_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmbus_acpi_add(%struct.acpi_device* %0) #0 {
  %2 = alloca %struct.acpi_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_device*, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %2, align 8
  %6 = load i32, i32* @ENODEV, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %4, align 4
  %8 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  store %struct.acpi_device* %8, %struct.acpi_device** @hv_acpi_dev, align 8
  %9 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %10 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @METHOD_NAME__CRS, align 4
  %13 = load i32, i32* @vmbus_walk_resources, align 4
  %14 = call i32 @acpi_walk_resources(i32 %11, i32 %12, i32 %13, i32* null)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i64 @ACPI_FAILURE(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %48

19:                                               ; preds = %1
  %20 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %21 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %20, i32 0, i32 1
  %22 = load %struct.acpi_device*, %struct.acpi_device** %21, align 8
  store %struct.acpi_device* %22, %struct.acpi_device** %5, align 8
  br label %23

23:                                               ; preds = %43, %19
  %24 = load %struct.acpi_device*, %struct.acpi_device** %5, align 8
  %25 = icmp ne %struct.acpi_device* %24, null
  br i1 %25, label %26, label %47

26:                                               ; preds = %23
  %27 = load %struct.acpi_device*, %struct.acpi_device** %5, align 8
  %28 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @METHOD_NAME__CRS, align 4
  %31 = load i32, i32* @vmbus_walk_resources, align 4
  %32 = call i32 @acpi_walk_resources(i32 %29, i32 %30, i32 %31, i32* null)
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i64 @ACPI_FAILURE(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  br label %43

37:                                               ; preds = %26
  %38 = load i64, i64* @hyperv_mmio, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = call i32 (...) @vmbus_reserve_fb()
  br label %47

42:                                               ; preds = %37
  br label %43

43:                                               ; preds = %42, %36
  %44 = load %struct.acpi_device*, %struct.acpi_device** %5, align 8
  %45 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %44, i32 0, i32 1
  %46 = load %struct.acpi_device*, %struct.acpi_device** %45, align 8
  store %struct.acpi_device* %46, %struct.acpi_device** %5, align 8
  br label %23

47:                                               ; preds = %40, %23
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %47, %18
  %49 = call i32 @complete(i32* @probe_event)
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %54 = call i32 @vmbus_acpi_remove(%struct.acpi_device* %53)
  br label %55

55:                                               ; preds = %52, %48
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @acpi_walk_resources(i32, i32, i32, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @vmbus_reserve_fb(...) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @vmbus_acpi_remove(%struct.acpi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

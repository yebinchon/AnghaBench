; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_of_iommu.c_of_iommu_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_of_iommu.c_of_iommu_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.of_phandle_args = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.fwnode_handle }
%struct.fwnode_handle = type { i32 }
%struct.iommu_ops = type { i32 (%struct.device.0*, %struct.of_phandle_args*)* }
%struct.device.0 = type opaque

@NO_IOMMU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.of_phandle_args*)* @of_iommu_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @of_iommu_xlate(%struct.device* %0, %struct.of_phandle_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.of_phandle_args*, align 8
  %6 = alloca %struct.iommu_ops*, align 8
  %7 = alloca %struct.fwnode_handle*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.of_phandle_args* %1, %struct.of_phandle_args** %5, align 8
  %9 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %10 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.fwnode_handle* %12, %struct.fwnode_handle** %7, align 8
  %13 = load %struct.fwnode_handle*, %struct.fwnode_handle** %7, align 8
  %14 = call %struct.iommu_ops* @iommu_ops_from_fwnode(%struct.fwnode_handle* %13)
  store %struct.iommu_ops* %14, %struct.iommu_ops** %6, align 8
  %15 = load %struct.iommu_ops*, %struct.iommu_ops** %6, align 8
  %16 = icmp ne %struct.iommu_ops* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.iommu_ops*, %struct.iommu_ops** %6, align 8
  %19 = getelementptr inbounds %struct.iommu_ops, %struct.iommu_ops* %18, i32 0, i32 0
  %20 = load i32 (%struct.device.0*, %struct.of_phandle_args*)*, i32 (%struct.device.0*, %struct.of_phandle_args*)** %19, align 8
  %21 = icmp ne i32 (%struct.device.0*, %struct.of_phandle_args*)* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %17, %2
  %23 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %24 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = call i32 @of_device_is_available(%struct.TYPE_2__* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %22, %17
  %29 = load i32, i32* @NO_IOMMU, align 4
  store i32 %29, i32* %3, align 4
  br label %56

30:                                               ; preds = %22
  %31 = load %struct.device*, %struct.device** %4, align 8
  %32 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %33 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load %struct.iommu_ops*, %struct.iommu_ops** %6, align 8
  %37 = call i32 @iommu_fwspec_init(%struct.device* %31, %struct.fwnode_handle* %35, %struct.iommu_ops* %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %30
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %3, align 4
  br label %56

42:                                               ; preds = %30
  %43 = load %struct.iommu_ops*, %struct.iommu_ops** %6, align 8
  %44 = icmp ne %struct.iommu_ops* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load %struct.device*, %struct.device** %4, align 8
  %47 = call i32 @driver_deferred_probe_check_state(%struct.device* %46)
  store i32 %47, i32* %3, align 4
  br label %56

48:                                               ; preds = %42
  %49 = load %struct.iommu_ops*, %struct.iommu_ops** %6, align 8
  %50 = getelementptr inbounds %struct.iommu_ops, %struct.iommu_ops* %49, i32 0, i32 0
  %51 = load i32 (%struct.device.0*, %struct.of_phandle_args*)*, i32 (%struct.device.0*, %struct.of_phandle_args*)** %50, align 8
  %52 = load %struct.device*, %struct.device** %4, align 8
  %53 = bitcast %struct.device* %52 to %struct.device.0*
  %54 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %55 = call i32 %51(%struct.device.0* %53, %struct.of_phandle_args* %54)
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %48, %45, %40, %28
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local %struct.iommu_ops* @iommu_ops_from_fwnode(%struct.fwnode_handle*) #1

declare dso_local i32 @of_device_is_available(%struct.TYPE_2__*) #1

declare dso_local i32 @iommu_fwspec_init(%struct.device*, %struct.fwnode_handle*, %struct.iommu_ops*) #1

declare dso_local i32 @driver_deferred_probe_check_state(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

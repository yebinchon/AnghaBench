; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_omap-iommu.c_omap_iommu_remove_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_omap-iommu.c_omap_iommu_remove_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.omap_iommu_arch_data* }
%struct.omap_iommu_arch_data = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @omap_iommu_remove_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_iommu_remove_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.omap_iommu_arch_data*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = load %struct.device*, %struct.device** %2, align 8
  %5 = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load %struct.omap_iommu_arch_data*, %struct.omap_iommu_arch_data** %6, align 8
  store %struct.omap_iommu_arch_data* %7, %struct.omap_iommu_arch_data** %3, align 8
  %8 = load %struct.device*, %struct.device** %2, align 8
  %9 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.omap_iommu_arch_data*, %struct.omap_iommu_arch_data** %3, align 8
  %14 = icmp ne %struct.omap_iommu_arch_data* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %12, %1
  br label %30

16:                                               ; preds = %12
  %17 = load %struct.omap_iommu_arch_data*, %struct.omap_iommu_arch_data** %3, align 8
  %18 = getelementptr inbounds %struct.omap_iommu_arch_data, %struct.omap_iommu_arch_data* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.device*, %struct.device** %2, align 8
  %22 = call i32 @iommu_device_unlink(i32* %20, %struct.device* %21)
  %23 = load %struct.device*, %struct.device** %2, align 8
  %24 = call i32 @iommu_group_remove_device(%struct.device* %23)
  %25 = load %struct.device*, %struct.device** %2, align 8
  %26 = getelementptr inbounds %struct.device, %struct.device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store %struct.omap_iommu_arch_data* null, %struct.omap_iommu_arch_data** %27, align 8
  %28 = load %struct.omap_iommu_arch_data*, %struct.omap_iommu_arch_data** %3, align 8
  %29 = call i32 @kfree(%struct.omap_iommu_arch_data* %28)
  br label %30

30:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @iommu_device_unlink(i32*, %struct.device*) #1

declare dso_local i32 @iommu_group_remove_device(%struct.device*) #1

declare dso_local i32 @kfree(%struct.omap_iommu_arch_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

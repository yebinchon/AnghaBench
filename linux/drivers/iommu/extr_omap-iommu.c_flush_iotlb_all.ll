; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_omap-iommu.c_flush_iotlb_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_omap-iommu.c_flush_iotlb_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_iommu = type { i32 }
%struct.iotlb_lock = type { i64, i64 }

@MMU_GFLUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_iommu*)* @flush_iotlb_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_iotlb_all(%struct.omap_iommu* %0) #0 {
  %2 = alloca %struct.omap_iommu*, align 8
  %3 = alloca %struct.iotlb_lock, align 8
  store %struct.omap_iommu* %0, %struct.omap_iommu** %2, align 8
  %4 = load %struct.omap_iommu*, %struct.omap_iommu** %2, align 8
  %5 = getelementptr inbounds %struct.omap_iommu, %struct.omap_iommu* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @pm_runtime_get_sync(i32 %6)
  %8 = getelementptr inbounds %struct.iotlb_lock, %struct.iotlb_lock* %3, i32 0, i32 1
  store i64 0, i64* %8, align 8
  %9 = getelementptr inbounds %struct.iotlb_lock, %struct.iotlb_lock* %3, i32 0, i32 0
  store i64 0, i64* %9, align 8
  %10 = load %struct.omap_iommu*, %struct.omap_iommu** %2, align 8
  %11 = call i32 @iotlb_lock_set(%struct.omap_iommu* %10, %struct.iotlb_lock* %3)
  %12 = load %struct.omap_iommu*, %struct.omap_iommu** %2, align 8
  %13 = load i32, i32* @MMU_GFLUSH, align 4
  %14 = call i32 @iommu_write_reg(%struct.omap_iommu* %12, i32 1, i32 %13)
  %15 = load %struct.omap_iommu*, %struct.omap_iommu** %2, align 8
  %16 = getelementptr inbounds %struct.omap_iommu, %struct.omap_iommu* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @pm_runtime_put_sync(i32 %17)
  ret void
}

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @iotlb_lock_set(%struct.omap_iommu*, %struct.iotlb_lock*) #1

declare dso_local i32 @iommu_write_reg(%struct.omap_iommu*, i32, i32) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

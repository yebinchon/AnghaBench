; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_omap-iommu.c_iotlb_lock_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_omap-iommu.c_iotlb_lock_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_iommu = type { i32 }
%struct.iotlb_lock = type { i32, i32 }

@MMU_LOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iotlb_lock_get(%struct.omap_iommu* %0, %struct.iotlb_lock* %1) #0 {
  %3 = alloca %struct.omap_iommu*, align 8
  %4 = alloca %struct.iotlb_lock*, align 8
  %5 = alloca i32, align 4
  store %struct.omap_iommu* %0, %struct.omap_iommu** %3, align 8
  store %struct.iotlb_lock* %1, %struct.iotlb_lock** %4, align 8
  %6 = load %struct.omap_iommu*, %struct.omap_iommu** %3, align 8
  %7 = load i32, i32* @MMU_LOCK, align 4
  %8 = call i32 @iommu_read_reg(%struct.omap_iommu* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @MMU_LOCK_BASE(i32 %9)
  %11 = load %struct.iotlb_lock*, %struct.iotlb_lock** %4, align 8
  %12 = getelementptr inbounds %struct.iotlb_lock, %struct.iotlb_lock* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @MMU_LOCK_VICT(i32 %13)
  %15 = load %struct.iotlb_lock*, %struct.iotlb_lock** %4, align 8
  %16 = getelementptr inbounds %struct.iotlb_lock, %struct.iotlb_lock* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  ret void
}

declare dso_local i32 @iommu_read_reg(%struct.omap_iommu*, i32) #1

declare dso_local i32 @MMU_LOCK_BASE(i32) #1

declare dso_local i32 @MMU_LOCK_VICT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

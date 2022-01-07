; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_omap-iommu.c_omap_iommu_detach_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_omap-iommu.c_omap_iommu_detach_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_domain = type { i32 }
%struct.device = type { i32 }
%struct.omap_iommu_domain = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iommu_domain*, %struct.device*)* @omap_iommu_detach_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_iommu_detach_dev(%struct.iommu_domain* %0, %struct.device* %1) #0 {
  %3 = alloca %struct.iommu_domain*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.omap_iommu_domain*, align 8
  store %struct.iommu_domain* %0, %struct.iommu_domain** %3, align 8
  store %struct.device* %1, %struct.device** %4, align 8
  %6 = load %struct.iommu_domain*, %struct.iommu_domain** %3, align 8
  %7 = call %struct.omap_iommu_domain* @to_omap_domain(%struct.iommu_domain* %6)
  store %struct.omap_iommu_domain* %7, %struct.omap_iommu_domain** %5, align 8
  %8 = load %struct.omap_iommu_domain*, %struct.omap_iommu_domain** %5, align 8
  %9 = getelementptr inbounds %struct.omap_iommu_domain, %struct.omap_iommu_domain* %8, i32 0, i32 0
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.omap_iommu_domain*, %struct.omap_iommu_domain** %5, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call i32 @_omap_iommu_detach_dev(%struct.omap_iommu_domain* %11, %struct.device* %12)
  %14 = load %struct.omap_iommu_domain*, %struct.omap_iommu_domain** %5, align 8
  %15 = getelementptr inbounds %struct.omap_iommu_domain, %struct.omap_iommu_domain* %14, i32 0, i32 0
  %16 = call i32 @spin_unlock(i32* %15)
  ret void
}

declare dso_local %struct.omap_iommu_domain* @to_omap_domain(%struct.iommu_domain*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @_omap_iommu_detach_dev(%struct.omap_iommu_domain*, %struct.device*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

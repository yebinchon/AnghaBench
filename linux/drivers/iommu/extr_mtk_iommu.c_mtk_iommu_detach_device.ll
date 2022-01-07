; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_mtk_iommu.c_mtk_iommu_detach_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_mtk_iommu.c_mtk_iommu_detach_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_domain = type { i32 }
%struct.device = type { i32 }
%struct.mtk_iommu_data = type { i32 }
%struct.TYPE_2__ = type { %struct.mtk_iommu_data* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iommu_domain*, %struct.device*)* @mtk_iommu_detach_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_iommu_detach_device(%struct.iommu_domain* %0, %struct.device* %1) #0 {
  %3 = alloca %struct.iommu_domain*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.mtk_iommu_data*, align 8
  store %struct.iommu_domain* %0, %struct.iommu_domain** %3, align 8
  store %struct.device* %1, %struct.device** %4, align 8
  %6 = load %struct.device*, %struct.device** %4, align 8
  %7 = call %struct.TYPE_2__* @dev_iommu_fwspec_get(%struct.device* %6)
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %8, align 8
  store %struct.mtk_iommu_data* %9, %struct.mtk_iommu_data** %5, align 8
  %10 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %5, align 8
  %11 = icmp ne %struct.mtk_iommu_data* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %17

13:                                               ; preds = %2
  %14 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %5, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = call i32 @mtk_iommu_config(%struct.mtk_iommu_data* %14, %struct.device* %15, i32 0)
  br label %17

17:                                               ; preds = %13, %12
  ret void
}

declare dso_local %struct.TYPE_2__* @dev_iommu_fwspec_get(%struct.device*) #1

declare dso_local i32 @mtk_iommu_config(%struct.mtk_iommu_data*, %struct.device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

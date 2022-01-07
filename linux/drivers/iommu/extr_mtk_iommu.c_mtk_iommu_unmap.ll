; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_mtk_iommu.c_mtk_iommu_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_mtk_iommu.c_mtk_iommu_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_domain = type { i32 }
%struct.iommu_iotlb_gather = type { i32 }
%struct.mtk_iommu_domain = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.TYPE_2__*, i64, i64, %struct.iommu_iotlb_gather*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.iommu_domain*, i64, i64, %struct.iommu_iotlb_gather*)* @mtk_iommu_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mtk_iommu_unmap(%struct.iommu_domain* %0, i64 %1, i64 %2, %struct.iommu_iotlb_gather* %3) #0 {
  %5 = alloca %struct.iommu_domain*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.iommu_iotlb_gather*, align 8
  %9 = alloca %struct.mtk_iommu_domain*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.iommu_domain* %0, %struct.iommu_domain** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.iommu_iotlb_gather* %3, %struct.iommu_iotlb_gather** %8, align 8
  %12 = load %struct.iommu_domain*, %struct.iommu_domain** %5, align 8
  %13 = call %struct.mtk_iommu_domain* @to_mtk_domain(%struct.iommu_domain* %12)
  store %struct.mtk_iommu_domain* %13, %struct.mtk_iommu_domain** %9, align 8
  %14 = load %struct.mtk_iommu_domain*, %struct.mtk_iommu_domain** %9, align 8
  %15 = getelementptr inbounds %struct.mtk_iommu_domain, %struct.mtk_iommu_domain* %14, i32 0, i32 0
  %16 = load i64, i64* %10, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.mtk_iommu_domain*, %struct.mtk_iommu_domain** %9, align 8
  %19 = getelementptr inbounds %struct.mtk_iommu_domain, %struct.mtk_iommu_domain* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64 (%struct.TYPE_2__*, i64, i64, %struct.iommu_iotlb_gather*)*, i64 (%struct.TYPE_2__*, i64, i64, %struct.iommu_iotlb_gather*)** %21, align 8
  %23 = load %struct.mtk_iommu_domain*, %struct.mtk_iommu_domain** %9, align 8
  %24 = getelementptr inbounds %struct.mtk_iommu_domain, %struct.mtk_iommu_domain* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load %struct.iommu_iotlb_gather*, %struct.iommu_iotlb_gather** %8, align 8
  %29 = call i64 %22(%struct.TYPE_2__* %25, i64 %26, i64 %27, %struct.iommu_iotlb_gather* %28)
  store i64 %29, i64* %11, align 8
  %30 = load %struct.mtk_iommu_domain*, %struct.mtk_iommu_domain** %9, align 8
  %31 = getelementptr inbounds %struct.mtk_iommu_domain, %struct.mtk_iommu_domain* %30, i32 0, i32 0
  %32 = load i64, i64* %10, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  %34 = load i64, i64* %11, align 8
  ret i64 %34
}

declare dso_local %struct.mtk_iommu_domain* @to_mtk_domain(%struct.iommu_domain*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

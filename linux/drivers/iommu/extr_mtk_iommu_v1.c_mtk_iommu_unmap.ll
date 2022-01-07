; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_mtk_iommu_v1.c_mtk_iommu_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_mtk_iommu_v1.c_mtk_iommu_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_domain = type { i32 }
%struct.iommu_iotlb_gather = type { i32 }
%struct.mtk_iommu_domain = type { i32, i32, i32* }

@MT2701_IOMMU_PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.iommu_domain*, i64, i64, %struct.iommu_iotlb_gather*)* @mtk_iommu_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mtk_iommu_unmap(%struct.iommu_domain* %0, i64 %1, i64 %2, %struct.iommu_iotlb_gather* %3) #0 {
  %5 = alloca %struct.iommu_domain*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.iommu_iotlb_gather*, align 8
  %9 = alloca %struct.mtk_iommu_domain*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.iommu_domain* %0, %struct.iommu_domain** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.iommu_iotlb_gather* %3, %struct.iommu_iotlb_gather** %8, align 8
  %13 = load %struct.iommu_domain*, %struct.iommu_domain** %5, align 8
  %14 = call %struct.mtk_iommu_domain* @to_mtk_domain(%struct.iommu_domain* %13)
  store %struct.mtk_iommu_domain* %14, %struct.mtk_iommu_domain** %9, align 8
  %15 = load %struct.mtk_iommu_domain*, %struct.mtk_iommu_domain** %9, align 8
  %16 = getelementptr inbounds %struct.mtk_iommu_domain, %struct.mtk_iommu_domain* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @MT2701_IOMMU_PAGE_SHIFT, align 8
  %20 = lshr i64 %18, %19
  %21 = getelementptr inbounds i32, i32* %17, i64 %20
  store i32* %21, i32** %11, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* @MT2701_IOMMU_PAGE_SHIFT, align 8
  %24 = lshr i64 %22, %23
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %12, align 4
  %26 = load %struct.mtk_iommu_domain*, %struct.mtk_iommu_domain** %9, align 8
  %27 = getelementptr inbounds %struct.mtk_iommu_domain, %struct.mtk_iommu_domain* %26, i32 0, i32 1
  %28 = load i64, i64* %10, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load i32*, i32** %11, align 8
  %31 = load i32, i32* %12, align 4
  %32 = zext i32 %31 to i64
  %33 = mul i64 %32, 4
  %34 = trunc i64 %33 to i32
  %35 = call i32 @memset(i32* %30, i32 0, i32 %34)
  %36 = load %struct.mtk_iommu_domain*, %struct.mtk_iommu_domain** %9, align 8
  %37 = getelementptr inbounds %struct.mtk_iommu_domain, %struct.mtk_iommu_domain* %36, i32 0, i32 1
  %38 = load i64, i64* %10, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  %40 = load %struct.mtk_iommu_domain*, %struct.mtk_iommu_domain** %9, align 8
  %41 = getelementptr inbounds %struct.mtk_iommu_domain, %struct.mtk_iommu_domain* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @mtk_iommu_tlb_flush_range(i32 %42, i64 %43, i64 %44)
  %46 = load i64, i64* %7, align 8
  ret i64 %46
}

declare dso_local %struct.mtk_iommu_domain* @to_mtk_domain(%struct.iommu_domain*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mtk_iommu_tlb_flush_range(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

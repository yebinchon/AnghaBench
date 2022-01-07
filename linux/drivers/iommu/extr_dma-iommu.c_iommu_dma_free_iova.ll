; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_dma-iommu.c_iommu_dma_free_iova.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_dma-iommu.c_iommu_dma_free_iova.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_dma_cookie = type { i64, i64, i64, %struct.iova_domain }
%struct.iova_domain = type { i32 }

@IOMMU_DMA_MSI_COOKIE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iommu_dma_cookie*, i32, i64)* @iommu_dma_free_iova to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iommu_dma_free_iova(%struct.iommu_dma_cookie* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.iommu_dma_cookie*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.iova_domain*, align 8
  store %struct.iommu_dma_cookie* %0, %struct.iommu_dma_cookie** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load %struct.iommu_dma_cookie*, %struct.iommu_dma_cookie** %4, align 8
  %9 = getelementptr inbounds %struct.iommu_dma_cookie, %struct.iommu_dma_cookie* %8, i32 0, i32 3
  store %struct.iova_domain* %9, %struct.iova_domain** %7, align 8
  %10 = load %struct.iommu_dma_cookie*, %struct.iommu_dma_cookie** %4, align 8
  %11 = getelementptr inbounds %struct.iommu_dma_cookie, %struct.iommu_dma_cookie* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @IOMMU_DMA_MSI_COOKIE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.iommu_dma_cookie*, %struct.iommu_dma_cookie** %4, align 8
  %18 = getelementptr inbounds %struct.iommu_dma_cookie, %struct.iommu_dma_cookie* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = sub i64 %19, %16
  store i64 %20, i64* %18, align 8
  br label %47

21:                                               ; preds = %3
  %22 = load %struct.iommu_dma_cookie*, %struct.iommu_dma_cookie** %4, align 8
  %23 = getelementptr inbounds %struct.iommu_dma_cookie, %struct.iommu_dma_cookie* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  %27 = load %struct.iova_domain*, %struct.iova_domain** %7, align 8
  %28 = load %struct.iova_domain*, %struct.iova_domain** %7, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @iova_pfn(%struct.iova_domain* %28, i32 %29)
  %31 = load i64, i64* %6, align 8
  %32 = load %struct.iova_domain*, %struct.iova_domain** %7, align 8
  %33 = call i64 @iova_shift(%struct.iova_domain* %32)
  %34 = lshr i64 %31, %33
  %35 = call i32 @queue_iova(%struct.iova_domain* %27, i32 %30, i64 %34, i32 0)
  br label %46

36:                                               ; preds = %21
  %37 = load %struct.iova_domain*, %struct.iova_domain** %7, align 8
  %38 = load %struct.iova_domain*, %struct.iova_domain** %7, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @iova_pfn(%struct.iova_domain* %38, i32 %39)
  %41 = load i64, i64* %6, align 8
  %42 = load %struct.iova_domain*, %struct.iova_domain** %7, align 8
  %43 = call i64 @iova_shift(%struct.iova_domain* %42)
  %44 = lshr i64 %41, %43
  %45 = call i32 @free_iova_fast(%struct.iova_domain* %37, i32 %40, i64 %44)
  br label %46

46:                                               ; preds = %36, %26
  br label %47

47:                                               ; preds = %46, %15
  ret void
}

declare dso_local i32 @queue_iova(%struct.iova_domain*, i32, i64, i32) #1

declare dso_local i32 @iova_pfn(%struct.iova_domain*, i32) #1

declare dso_local i64 @iova_shift(%struct.iova_domain*) #1

declare dso_local i32 @free_iova_fast(%struct.iova_domain*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

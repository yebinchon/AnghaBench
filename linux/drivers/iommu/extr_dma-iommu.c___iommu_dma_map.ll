; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_dma-iommu.c___iommu_dma_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_dma-iommu.c___iommu_dma_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.iommu_domain = type { %struct.iommu_dma_cookie* }
%struct.iommu_dma_cookie = type { %struct.iova_domain }
%struct.iova_domain = type { i32 }

@DMA_MAPPING_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, i64, i64, i32)* @__iommu_dma_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__iommu_dma_map(%struct.device* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.iommu_domain*, align 8
  %11 = alloca %struct.iommu_dma_cookie*, align 8
  %12 = alloca %struct.iova_domain*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.iommu_domain* @iommu_get_dma_domain(%struct.device* %15)
  store %struct.iommu_domain* %16, %struct.iommu_domain** %10, align 8
  %17 = load %struct.iommu_domain*, %struct.iommu_domain** %10, align 8
  %18 = getelementptr inbounds %struct.iommu_domain, %struct.iommu_domain* %17, i32 0, i32 0
  %19 = load %struct.iommu_dma_cookie*, %struct.iommu_dma_cookie** %18, align 8
  store %struct.iommu_dma_cookie* %19, %struct.iommu_dma_cookie** %11, align 8
  %20 = load %struct.iommu_dma_cookie*, %struct.iommu_dma_cookie** %11, align 8
  %21 = getelementptr inbounds %struct.iommu_dma_cookie, %struct.iommu_dma_cookie* %20, i32 0, i32 0
  store %struct.iova_domain* %21, %struct.iova_domain** %12, align 8
  %22 = load %struct.iova_domain*, %struct.iova_domain** %12, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call i64 @iova_offset(%struct.iova_domain* %22, i64 %23)
  store i64 %24, i64* %13, align 8
  %25 = load %struct.iova_domain*, %struct.iova_domain** %12, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* %13, align 8
  %28 = add i64 %26, %27
  %29 = call i64 @iova_align(%struct.iova_domain* %25, i64 %28)
  store i64 %29, i64* %8, align 8
  %30 = load %struct.iommu_domain*, %struct.iommu_domain** %10, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load %struct.device*, %struct.device** %6, align 8
  %33 = call i32 @dma_get_mask(%struct.device* %32)
  %34 = load %struct.device*, %struct.device** %6, align 8
  %35 = call i64 @iommu_dma_alloc_iova(%struct.iommu_domain* %30, i64 %31, i32 %33, %struct.device* %34)
  store i64 %35, i64* %14, align 8
  %36 = load i64, i64* %14, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %4
  %39 = load i64, i64* @DMA_MAPPING_ERROR, align 8
  store i64 %39, i64* %5, align 8
  br label %60

40:                                               ; preds = %4
  %41 = load %struct.iommu_domain*, %struct.iommu_domain** %10, align 8
  %42 = load i64, i64* %14, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* %13, align 8
  %45 = sub i64 %43, %44
  %46 = load i64, i64* %8, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i64 @iommu_map(%struct.iommu_domain* %41, i64 %42, i64 %45, i64 %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %40
  %51 = load %struct.iommu_dma_cookie*, %struct.iommu_dma_cookie** %11, align 8
  %52 = load i64, i64* %14, align 8
  %53 = load i64, i64* %8, align 8
  %54 = call i32 @iommu_dma_free_iova(%struct.iommu_dma_cookie* %51, i64 %52, i64 %53)
  %55 = load i64, i64* @DMA_MAPPING_ERROR, align 8
  store i64 %55, i64* %5, align 8
  br label %60

56:                                               ; preds = %40
  %57 = load i64, i64* %14, align 8
  %58 = load i64, i64* %13, align 8
  %59 = add i64 %57, %58
  store i64 %59, i64* %5, align 8
  br label %60

60:                                               ; preds = %56, %50, %38
  %61 = load i64, i64* %5, align 8
  ret i64 %61
}

declare dso_local %struct.iommu_domain* @iommu_get_dma_domain(%struct.device*) #1

declare dso_local i64 @iova_offset(%struct.iova_domain*, i64) #1

declare dso_local i64 @iova_align(%struct.iova_domain*, i64) #1

declare dso_local i64 @iommu_dma_alloc_iova(%struct.iommu_domain*, i64, i32, %struct.device*) #1

declare dso_local i32 @dma_get_mask(%struct.device*) #1

declare dso_local i64 @iommu_map(%struct.iommu_domain*, i64, i64, i64, i32) #1

declare dso_local i32 @iommu_dma_free_iova(%struct.iommu_dma_cookie*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

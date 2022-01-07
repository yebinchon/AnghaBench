; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_dma-iommu.c_iommu_dma_alloc_iova.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_dma-iommu.c_iommu_dma_alloc_iova.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_domain = type { %struct.TYPE_2__, %struct.iommu_dma_cookie* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.iommu_dma_cookie = type { i64, i64, %struct.iova_domain }
%struct.iova_domain = type { i32 }
%struct.device = type { i32 }

@IOMMU_DMA_MSI_COOKIE = common dso_local global i64 0, align 8
@IOVA_RANGE_CACHE_MAX_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.iommu_domain*, i64, i64, %struct.device*)* @iommu_dma_alloc_iova to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @iommu_dma_alloc_iova(%struct.iommu_domain* %0, i64 %1, i64 %2, %struct.device* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.iommu_domain*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.iommu_dma_cookie*, align 8
  %11 = alloca %struct.iova_domain*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.iommu_domain* %0, %struct.iommu_domain** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.device* %3, %struct.device** %9, align 8
  %15 = load %struct.iommu_domain*, %struct.iommu_domain** %6, align 8
  %16 = getelementptr inbounds %struct.iommu_domain, %struct.iommu_domain* %15, i32 0, i32 1
  %17 = load %struct.iommu_dma_cookie*, %struct.iommu_dma_cookie** %16, align 8
  store %struct.iommu_dma_cookie* %17, %struct.iommu_dma_cookie** %10, align 8
  %18 = load %struct.iommu_dma_cookie*, %struct.iommu_dma_cookie** %10, align 8
  %19 = getelementptr inbounds %struct.iommu_dma_cookie, %struct.iommu_dma_cookie* %18, i32 0, i32 2
  store %struct.iova_domain* %19, %struct.iova_domain** %11, align 8
  store i64 0, i64* %14, align 8
  %20 = load %struct.iommu_dma_cookie*, %struct.iommu_dma_cookie** %10, align 8
  %21 = getelementptr inbounds %struct.iommu_dma_cookie, %struct.iommu_dma_cookie* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @IOMMU_DMA_MSI_COOKIE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %4
  %26 = load i64, i64* %7, align 8
  %27 = load %struct.iommu_dma_cookie*, %struct.iommu_dma_cookie** %10, align 8
  %28 = getelementptr inbounds %struct.iommu_dma_cookie, %struct.iommu_dma_cookie* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = add i64 %29, %26
  store i64 %30, i64* %28, align 8
  %31 = load %struct.iommu_dma_cookie*, %struct.iommu_dma_cookie** %10, align 8
  %32 = getelementptr inbounds %struct.iommu_dma_cookie, %struct.iommu_dma_cookie* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = sub i64 %33, %34
  store i64 %35, i64* %5, align 8
  br label %105

36:                                               ; preds = %4
  %37 = load %struct.iova_domain*, %struct.iova_domain** %11, align 8
  %38 = call i64 @iova_shift(%struct.iova_domain* %37)
  store i64 %38, i64* %12, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* %12, align 8
  %41 = lshr i64 %39, %40
  store i64 %41, i64* %13, align 8
  %42 = load i64, i64* %13, align 8
  %43 = load i32, i32* @IOVA_RANGE_CACHE_MAX_SIZE, align 4
  %44 = sub nsw i32 %43, 1
  %45 = shl i32 1, %44
  %46 = sext i32 %45 to i64
  %47 = icmp ult i64 %42, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %36
  %49 = load i64, i64* %13, align 8
  %50 = call i64 @roundup_pow_of_two(i64 %49)
  store i64 %50, i64* %13, align 8
  br label %51

51:                                               ; preds = %48, %36
  %52 = load %struct.device*, %struct.device** %9, align 8
  %53 = getelementptr inbounds %struct.device, %struct.device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load %struct.device*, %struct.device** %9, align 8
  %58 = getelementptr inbounds %struct.device, %struct.device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = load i64, i64* %8, align 8
  %62 = and i64 %61, %60
  store i64 %62, i64* %8, align 8
  br label %63

63:                                               ; preds = %56, %51
  %64 = load %struct.iommu_domain*, %struct.iommu_domain** %6, align 8
  %65 = getelementptr inbounds %struct.iommu_domain, %struct.iommu_domain* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %63
  %70 = load i64, i64* %8, align 8
  %71 = load %struct.iommu_domain*, %struct.iommu_domain** %6, align 8
  %72 = getelementptr inbounds %struct.iommu_domain, %struct.iommu_domain* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @min(i64 %70, i32 %74)
  store i64 %75, i64* %8, align 8
  br label %76

76:                                               ; preds = %69, %63
  %77 = load i64, i64* %8, align 8
  %78 = call i64 @DMA_BIT_MASK(i32 32)
  %79 = icmp ugt i64 %77, %78
  br i1 %79, label %80, label %91

80:                                               ; preds = %76
  %81 = load %struct.device*, %struct.device** %9, align 8
  %82 = call i64 @dev_is_pci(%struct.device* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %80
  %85 = load %struct.iova_domain*, %struct.iova_domain** %11, align 8
  %86 = load i64, i64* %13, align 8
  %87 = call i64 @DMA_BIT_MASK(i32 32)
  %88 = load i64, i64* %12, align 8
  %89 = lshr i64 %87, %88
  %90 = call i64 @alloc_iova_fast(%struct.iova_domain* %85, i64 %86, i64 %89, i32 0)
  store i64 %90, i64* %14, align 8
  br label %91

91:                                               ; preds = %84, %80, %76
  %92 = load i64, i64* %14, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %101, label %94

94:                                               ; preds = %91
  %95 = load %struct.iova_domain*, %struct.iova_domain** %11, align 8
  %96 = load i64, i64* %13, align 8
  %97 = load i64, i64* %8, align 8
  %98 = load i64, i64* %12, align 8
  %99 = lshr i64 %97, %98
  %100 = call i64 @alloc_iova_fast(%struct.iova_domain* %95, i64 %96, i64 %99, i32 1)
  store i64 %100, i64* %14, align 8
  br label %101

101:                                              ; preds = %94, %91
  %102 = load i64, i64* %14, align 8
  %103 = load i64, i64* %12, align 8
  %104 = shl i64 %102, %103
  store i64 %104, i64* %5, align 8
  br label %105

105:                                              ; preds = %101, %25
  %106 = load i64, i64* %5, align 8
  ret i64 %106
}

declare dso_local i64 @iova_shift(%struct.iova_domain*) #1

declare dso_local i64 @roundup_pow_of_two(i64) #1

declare dso_local i64 @min(i64, i32) #1

declare dso_local i64 @DMA_BIT_MASK(i32) #1

declare dso_local i64 @dev_is_pci(%struct.device*) #1

declare dso_local i64 @alloc_iova_fast(%struct.iova_domain*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

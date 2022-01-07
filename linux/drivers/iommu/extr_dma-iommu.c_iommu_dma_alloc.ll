; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_dma-iommu.c_iommu_dma_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_dma-iommu.c_iommu_dma_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.page = type { i32 }

@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@CONFIG_DMA_REMAP = common dso_local global i32 0, align 4
@DMA_ATTR_FORCE_CONTIGUOUS = common dso_local global i64 0, align 8
@CONFIG_DMA_DIRECT_REMAP = common dso_local global i32 0, align 4
@DMA_MAPPING_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.device*, i64, i32*, i32, i64)* @iommu_dma_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @iommu_dma_alloc(%struct.device* %0, i64 %1, i32* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.page*, align 8
  %15 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %16 = load %struct.device*, %struct.device** %7, align 8
  %17 = call i32 @dev_is_dma_coherent(%struct.device* %16)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %19 = load i32, i32* %12, align 4
  %20 = load i64, i64* %11, align 8
  %21 = call i32 @dma_info_to_prot(i32 %18, i32 %19, i64 %20)
  store i32 %21, i32* %13, align 4
  store %struct.page* null, %struct.page** %14, align 8
  %22 = load i32, i32* @__GFP_ZERO, align 4
  %23 = load i32, i32* %10, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* @CONFIG_DMA_REMAP, align 4
  %26 = call i64 @IS_ENABLED(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %5
  %29 = load i32, i32* %10, align 4
  %30 = call i64 @gfpflags_allow_blocking(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %28
  %33 = load i64, i64* %11, align 8
  %34 = load i64, i64* @DMA_ATTR_FORCE_CONTIGUOUS, align 8
  %35 = and i64 %33, %34
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %32
  %38 = load %struct.device*, %struct.device** %7, align 8
  %39 = load i64, i64* %8, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load i64, i64* %11, align 8
  %43 = call i8* @iommu_dma_alloc_remap(%struct.device* %38, i64 %39, i32* %40, i32 %41, i64 %42)
  store i8* %43, i8** %6, align 8
  br label %89

44:                                               ; preds = %32, %28, %5
  %45 = load i32, i32* @CONFIG_DMA_DIRECT_REMAP, align 4
  %46 = call i64 @IS_ENABLED(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %44
  %49 = load i32, i32* %10, align 4
  %50 = call i64 @gfpflags_allow_blocking(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %52
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @PAGE_ALIGN(i64 %56)
  %58 = load i32, i32* %10, align 4
  %59 = call i8* @dma_alloc_from_pool(i32 %57, %struct.page** %14, i32 %58)
  store i8* %59, i8** %15, align 8
  br label %66

60:                                               ; preds = %52, %48, %44
  %61 = load %struct.device*, %struct.device** %7, align 8
  %62 = load i64, i64* %8, align 8
  %63 = load i32, i32* %10, align 4
  %64 = load i64, i64* %11, align 8
  %65 = call i8* @iommu_dma_alloc_pages(%struct.device* %61, i64 %62, %struct.page** %14, i32 %63, i64 %64)
  store i8* %65, i8** %15, align 8
  br label %66

66:                                               ; preds = %60, %55
  %67 = load i8*, i8** %15, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %66
  store i8* null, i8** %6, align 8
  br label %89

70:                                               ; preds = %66
  %71 = load %struct.device*, %struct.device** %7, align 8
  %72 = load %struct.page*, %struct.page** %14, align 8
  %73 = call i32 @page_to_phys(%struct.page* %72)
  %74 = load i64, i64* %8, align 8
  %75 = load i32, i32* %13, align 4
  %76 = call i32 @__iommu_dma_map(%struct.device* %71, i32 %73, i64 %74, i32 %75)
  %77 = load i32*, i32** %9, align 8
  store i32 %76, i32* %77, align 4
  %78 = load i32*, i32** %9, align 8
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @DMA_MAPPING_ERROR, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %70
  %83 = load %struct.device*, %struct.device** %7, align 8
  %84 = load i64, i64* %8, align 8
  %85 = load i8*, i8** %15, align 8
  %86 = call i32 @__iommu_dma_free(%struct.device* %83, i64 %84, i8* %85)
  store i8* null, i8** %6, align 8
  br label %89

87:                                               ; preds = %70
  %88 = load i8*, i8** %15, align 8
  store i8* %88, i8** %6, align 8
  br label %89

89:                                               ; preds = %87, %82, %69, %37
  %90 = load i8*, i8** %6, align 8
  ret i8* %90
}

declare dso_local i32 @dev_is_dma_coherent(%struct.device*) #1

declare dso_local i32 @dma_info_to_prot(i32, i32, i64) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i64 @gfpflags_allow_blocking(i32) #1

declare dso_local i8* @iommu_dma_alloc_remap(%struct.device*, i64, i32*, i32, i64) #1

declare dso_local i8* @dma_alloc_from_pool(i32, %struct.page**, i32) #1

declare dso_local i32 @PAGE_ALIGN(i64) #1

declare dso_local i8* @iommu_dma_alloc_pages(%struct.device*, i64, %struct.page**, i32, i64) #1

declare dso_local i32 @__iommu_dma_map(%struct.device*, i32, i64, i32) #1

declare dso_local i32 @page_to_phys(%struct.page*) #1

declare dso_local i32 @__iommu_dma_free(%struct.device*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

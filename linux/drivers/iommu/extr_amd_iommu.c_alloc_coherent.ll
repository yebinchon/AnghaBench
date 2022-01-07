; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_alloc_coherent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_alloc_coherent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i64*, i64 }
%struct.protection_domain = type { i32 }
%struct.dma_ops_domain = type { i32 }
%struct.page = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@__GFP_DMA = common dso_local global i32 0, align 4
@__GFP_HIGHMEM = common dso_local global i32 0, align 4
@__GFP_DMA32 = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@DMA_MAPPING_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.device*, i64, i32*, i32, i64)* @alloc_coherent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @alloc_coherent(%struct.device* %0, i64 %1, i32* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.protection_domain*, align 8
  %14 = alloca %struct.dma_ops_domain*, align 8
  %15 = alloca %struct.page*, align 8
  store %struct.device* %0, %struct.device** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %16 = load %struct.device*, %struct.device** %7, align 8
  %17 = getelementptr inbounds %struct.device, %struct.device* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %12, align 8
  %19 = load %struct.device*, %struct.device** %7, align 8
  %20 = call %struct.protection_domain* @get_domain(%struct.device* %19)
  store %struct.protection_domain* %20, %struct.protection_domain** %13, align 8
  %21 = load %struct.protection_domain*, %struct.protection_domain** %13, align 8
  %22 = call i32 @PTR_ERR(%struct.protection_domain* %21)
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %5
  %27 = load i32, i32* %10, align 4
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @get_order(i64 %28)
  %30 = call %struct.page* @alloc_pages(i32 %27, i32 %29)
  store %struct.page* %30, %struct.page** %15, align 8
  %31 = load %struct.page*, %struct.page** %15, align 8
  %32 = call i32 @page_to_phys(%struct.page* %31)
  %33 = load i32*, i32** %9, align 8
  store i32 %32, i32* %33, align 4
  %34 = load %struct.page*, %struct.page** %15, align 8
  %35 = call i8* @page_address(%struct.page* %34)
  store i8* %35, i8** %6, align 8
  br label %129

36:                                               ; preds = %5
  %37 = load %struct.protection_domain*, %struct.protection_domain** %13, align 8
  %38 = call i64 @IS_ERR(%struct.protection_domain* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i8* null, i8** %6, align 8
  br label %129

41:                                               ; preds = %36
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.protection_domain*, %struct.protection_domain** %13, align 8
  %44 = call %struct.dma_ops_domain* @to_dma_ops_domain(%struct.protection_domain* %43)
  store %struct.dma_ops_domain* %44, %struct.dma_ops_domain** %14, align 8
  %45 = load i64, i64* %8, align 8
  %46 = call i64 @PAGE_ALIGN(i64 %45)
  store i64 %46, i64* %8, align 8
  %47 = load %struct.device*, %struct.device** %7, align 8
  %48 = getelementptr inbounds %struct.device, %struct.device* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %12, align 8
  %50 = load i32, i32* @__GFP_DMA, align 4
  %51 = load i32, i32* @__GFP_HIGHMEM, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @__GFP_DMA32, align 4
  %54 = or i32 %52, %53
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %10, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* @__GFP_ZERO, align 4
  %59 = load i32, i32* %10, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @__GFP_NOWARN, align 4
  %63 = or i32 %61, %62
  %64 = load i64, i64* %8, align 8
  %65 = call i32 @get_order(i64 %64)
  %66 = call %struct.page* @alloc_pages(i32 %63, i32 %65)
  store %struct.page* %66, %struct.page** %15, align 8
  %67 = load %struct.page*, %struct.page** %15, align 8
  %68 = icmp ne %struct.page* %67, null
  br i1 %68, label %89, label %69

69:                                               ; preds = %42
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @gfpflags_allow_blocking(i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %69
  store i8* null, i8** %6, align 8
  br label %129

74:                                               ; preds = %69
  %75 = load %struct.device*, %struct.device** %7, align 8
  %76 = load i64, i64* %8, align 8
  %77 = load i64, i64* @PAGE_SHIFT, align 8
  %78 = lshr i64 %76, %77
  %79 = load i64, i64* %8, align 8
  %80 = call i32 @get_order(i64 %79)
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* @__GFP_NOWARN, align 4
  %83 = and i32 %81, %82
  %84 = call %struct.page* @dma_alloc_from_contiguous(%struct.device* %75, i64 %78, i32 %80, i32 %83)
  store %struct.page* %84, %struct.page** %15, align 8
  %85 = load %struct.page*, %struct.page** %15, align 8
  %86 = icmp ne %struct.page* %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %74
  store i8* null, i8** %6, align 8
  br label %129

88:                                               ; preds = %74
  br label %89

89:                                               ; preds = %88, %42
  %90 = load i64, i64* %12, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %89
  %93 = load %struct.device*, %struct.device** %7, align 8
  %94 = getelementptr inbounds %struct.device, %struct.device* %93, i32 0, i32 0
  %95 = load i64*, i64** %94, align 8
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %12, align 8
  br label %97

97:                                               ; preds = %92, %89
  %98 = load %struct.device*, %struct.device** %7, align 8
  %99 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %14, align 8
  %100 = load %struct.page*, %struct.page** %15, align 8
  %101 = call i32 @page_to_phys(%struct.page* %100)
  %102 = load i64, i64* %8, align 8
  %103 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %104 = load i64, i64* %12, align 8
  %105 = call i32 @__map_single(%struct.device* %98, %struct.dma_ops_domain* %99, i32 %101, i64 %102, i32 %103, i64 %104)
  %106 = load i32*, i32** %9, align 8
  store i32 %105, i32* %106, align 4
  %107 = load i32*, i32** %9, align 8
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @DMA_MAPPING_ERROR, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %97
  br label %115

112:                                              ; preds = %97
  %113 = load %struct.page*, %struct.page** %15, align 8
  %114 = call i8* @page_address(%struct.page* %113)
  store i8* %114, i8** %6, align 8
  br label %129

115:                                              ; preds = %111
  %116 = load %struct.device*, %struct.device** %7, align 8
  %117 = load %struct.page*, %struct.page** %15, align 8
  %118 = load i64, i64* %8, align 8
  %119 = load i64, i64* @PAGE_SHIFT, align 8
  %120 = lshr i64 %118, %119
  %121 = call i32 @dma_release_from_contiguous(%struct.device* %116, %struct.page* %117, i64 %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %128, label %123

123:                                              ; preds = %115
  %124 = load %struct.page*, %struct.page** %15, align 8
  %125 = load i64, i64* %8, align 8
  %126 = call i32 @get_order(i64 %125)
  %127 = call i32 @__free_pages(%struct.page* %124, i32 %126)
  br label %128

128:                                              ; preds = %123, %115
  store i8* null, i8** %6, align 8
  br label %129

129:                                              ; preds = %128, %112, %87, %73, %40, %26
  %130 = load i8*, i8** %6, align 8
  ret i8* %130
}

declare dso_local %struct.protection_domain* @get_domain(%struct.device*) #1

declare dso_local i32 @PTR_ERR(%struct.protection_domain*) #1

declare dso_local %struct.page* @alloc_pages(i32, i32) #1

declare dso_local i32 @get_order(i64) #1

declare dso_local i32 @page_to_phys(%struct.page*) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i64 @IS_ERR(%struct.protection_domain*) #1

declare dso_local %struct.dma_ops_domain* @to_dma_ops_domain(%struct.protection_domain*) #1

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i32 @gfpflags_allow_blocking(i32) #1

declare dso_local %struct.page* @dma_alloc_from_contiguous(%struct.device*, i64, i32, i32) #1

declare dso_local i32 @__map_single(%struct.device*, %struct.dma_ops_domain*, i32, i64, i32, i64) #1

declare dso_local i32 @dma_release_from_contiguous(%struct.device*, %struct.page*, i64) #1

declare dso_local i32 @__free_pages(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_iommu_v2.c_etnaviv_iommuv2_context_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_iommu_v2.c_etnaviv_iommuv2_context_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_iommu_context = type { i32, i32, i32, i32, %struct.etnaviv_iommu_global* }
%struct.etnaviv_iommu_global = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32* }
%struct.etnaviv_iommuv2_context = type { i64, %struct.etnaviv_iommu_context, i32, i32 }

@ETNAVIV_PTA_ENTRIES = common dso_local global i64 0, align 8
@SZ_4K = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@MMUv2_PTE_EXCEPTION = common dso_local global i32 0, align 4
@MMUv2_MAX_STLB_ENTRIES = common dso_local global i32 0, align 4
@SZ_1G = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.etnaviv_iommu_context* @etnaviv_iommuv2_context_alloc(%struct.etnaviv_iommu_global* %0) #0 {
  %2 = alloca %struct.etnaviv_iommu_context*, align 8
  %3 = alloca %struct.etnaviv_iommu_global*, align 8
  %4 = alloca %struct.etnaviv_iommuv2_context*, align 8
  %5 = alloca %struct.etnaviv_iommu_context*, align 8
  store %struct.etnaviv_iommu_global* %0, %struct.etnaviv_iommu_global** %3, align 8
  %6 = call %struct.etnaviv_iommuv2_context* @vzalloc(i32 40)
  store %struct.etnaviv_iommuv2_context* %6, %struct.etnaviv_iommuv2_context** %4, align 8
  %7 = load %struct.etnaviv_iommuv2_context*, %struct.etnaviv_iommuv2_context** %4, align 8
  %8 = icmp ne %struct.etnaviv_iommuv2_context* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.etnaviv_iommu_context* null, %struct.etnaviv_iommu_context** %2, align 8
  br label %114

10:                                               ; preds = %1
  %11 = load %struct.etnaviv_iommu_global*, %struct.etnaviv_iommu_global** %3, align 8
  %12 = getelementptr inbounds %struct.etnaviv_iommu_global, %struct.etnaviv_iommu_global* %11, i32 0, i32 2
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.etnaviv_iommu_global*, %struct.etnaviv_iommu_global** %3, align 8
  %15 = getelementptr inbounds %struct.etnaviv_iommu_global, %struct.etnaviv_iommu_global* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i64, i64* @ETNAVIV_PTA_ENTRIES, align 8
  %19 = call i64 @find_first_zero_bit(i32 %17, i64 %18)
  %20 = load %struct.etnaviv_iommuv2_context*, %struct.etnaviv_iommuv2_context** %4, align 8
  %21 = getelementptr inbounds %struct.etnaviv_iommuv2_context, %struct.etnaviv_iommuv2_context* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load %struct.etnaviv_iommuv2_context*, %struct.etnaviv_iommuv2_context** %4, align 8
  %23 = getelementptr inbounds %struct.etnaviv_iommuv2_context, %struct.etnaviv_iommuv2_context* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ETNAVIV_PTA_ENTRIES, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %10
  %28 = load %struct.etnaviv_iommuv2_context*, %struct.etnaviv_iommuv2_context** %4, align 8
  %29 = getelementptr inbounds %struct.etnaviv_iommuv2_context, %struct.etnaviv_iommuv2_context* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.etnaviv_iommu_global*, %struct.etnaviv_iommu_global** %3, align 8
  %32 = getelementptr inbounds %struct.etnaviv_iommu_global, %struct.etnaviv_iommu_global* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @set_bit(i64 %30, i32 %34)
  br label %40

36:                                               ; preds = %10
  %37 = load %struct.etnaviv_iommu_global*, %struct.etnaviv_iommu_global** %3, align 8
  %38 = getelementptr inbounds %struct.etnaviv_iommu_global, %struct.etnaviv_iommu_global* %37, i32 0, i32 2
  %39 = call i32 @mutex_unlock(i32* %38)
  br label %111

40:                                               ; preds = %27
  %41 = load %struct.etnaviv_iommu_global*, %struct.etnaviv_iommu_global** %3, align 8
  %42 = getelementptr inbounds %struct.etnaviv_iommu_global, %struct.etnaviv_iommu_global* %41, i32 0, i32 2
  %43 = call i32 @mutex_unlock(i32* %42)
  %44 = load %struct.etnaviv_iommu_global*, %struct.etnaviv_iommu_global** %3, align 8
  %45 = getelementptr inbounds %struct.etnaviv_iommu_global, %struct.etnaviv_iommu_global* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i64, i64* @SZ_4K, align 8
  %48 = load %struct.etnaviv_iommuv2_context*, %struct.etnaviv_iommuv2_context** %4, align 8
  %49 = getelementptr inbounds %struct.etnaviv_iommuv2_context, %struct.etnaviv_iommuv2_context* %48, i32 0, i32 2
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call i32 @dma_alloc_wc(i32 %46, i64 %47, i32* %49, i32 %50)
  %52 = load %struct.etnaviv_iommuv2_context*, %struct.etnaviv_iommuv2_context** %4, align 8
  %53 = getelementptr inbounds %struct.etnaviv_iommuv2_context, %struct.etnaviv_iommuv2_context* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 4
  %54 = load %struct.etnaviv_iommuv2_context*, %struct.etnaviv_iommuv2_context** %4, align 8
  %55 = getelementptr inbounds %struct.etnaviv_iommuv2_context, %struct.etnaviv_iommuv2_context* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %40
  br label %102

59:                                               ; preds = %40
  %60 = load %struct.etnaviv_iommuv2_context*, %struct.etnaviv_iommuv2_context** %4, align 8
  %61 = getelementptr inbounds %struct.etnaviv_iommuv2_context, %struct.etnaviv_iommuv2_context* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @MMUv2_PTE_EXCEPTION, align 4
  %64 = load i32, i32* @MMUv2_MAX_STLB_ENTRIES, align 4
  %65 = call i32 @memset32(i32 %62, i32 %63, i32 %64)
  %66 = load %struct.etnaviv_iommuv2_context*, %struct.etnaviv_iommuv2_context** %4, align 8
  %67 = getelementptr inbounds %struct.etnaviv_iommuv2_context, %struct.etnaviv_iommuv2_context* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.etnaviv_iommu_global*, %struct.etnaviv_iommu_global** %3, align 8
  %70 = getelementptr inbounds %struct.etnaviv_iommu_global, %struct.etnaviv_iommu_global* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.etnaviv_iommuv2_context*, %struct.etnaviv_iommuv2_context** %4, align 8
  %74 = getelementptr inbounds %struct.etnaviv_iommuv2_context, %struct.etnaviv_iommuv2_context* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds i32, i32* %72, i64 %75
  store i32 %68, i32* %76, align 4
  %77 = load %struct.etnaviv_iommuv2_context*, %struct.etnaviv_iommuv2_context** %4, align 8
  %78 = getelementptr inbounds %struct.etnaviv_iommuv2_context, %struct.etnaviv_iommuv2_context* %77, i32 0, i32 1
  store %struct.etnaviv_iommu_context* %78, %struct.etnaviv_iommu_context** %5, align 8
  %79 = load %struct.etnaviv_iommu_global*, %struct.etnaviv_iommu_global** %3, align 8
  %80 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %5, align 8
  %81 = getelementptr inbounds %struct.etnaviv_iommu_context, %struct.etnaviv_iommu_context* %80, i32 0, i32 4
  store %struct.etnaviv_iommu_global* %79, %struct.etnaviv_iommu_global** %81, align 8
  %82 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %5, align 8
  %83 = getelementptr inbounds %struct.etnaviv_iommu_context, %struct.etnaviv_iommu_context* %82, i32 0, i32 3
  %84 = call i32 @kref_init(i32* %83)
  %85 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %5, align 8
  %86 = getelementptr inbounds %struct.etnaviv_iommu_context, %struct.etnaviv_iommu_context* %85, i32 0, i32 2
  %87 = call i32 @mutex_init(i32* %86)
  %88 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %5, align 8
  %89 = getelementptr inbounds %struct.etnaviv_iommu_context, %struct.etnaviv_iommu_context* %88, i32 0, i32 1
  %90 = call i32 @INIT_LIST_HEAD(i32* %89)
  %91 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %5, align 8
  %92 = getelementptr inbounds %struct.etnaviv_iommu_context, %struct.etnaviv_iommu_context* %91, i32 0, i32 0
  %93 = load i64, i64* @SZ_4K, align 8
  %94 = load i64, i64* @SZ_1G, align 8
  %95 = trunc i64 %94 to i32
  %96 = mul nsw i32 %95, 4
  %97 = sext i32 %96 to i64
  %98 = load i64, i64* @SZ_4K, align 8
  %99 = sub nsw i64 %97, %98
  %100 = call i32 @drm_mm_init(i32* %92, i64 %93, i64 %99)
  %101 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %5, align 8
  store %struct.etnaviv_iommu_context* %101, %struct.etnaviv_iommu_context** %2, align 8
  br label %114

102:                                              ; preds = %58
  %103 = load %struct.etnaviv_iommuv2_context*, %struct.etnaviv_iommuv2_context** %4, align 8
  %104 = getelementptr inbounds %struct.etnaviv_iommuv2_context, %struct.etnaviv_iommuv2_context* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.etnaviv_iommu_global*, %struct.etnaviv_iommu_global** %3, align 8
  %107 = getelementptr inbounds %struct.etnaviv_iommu_global, %struct.etnaviv_iommu_global* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @clear_bit(i64 %105, i32 %109)
  br label %111

111:                                              ; preds = %102, %36
  %112 = load %struct.etnaviv_iommuv2_context*, %struct.etnaviv_iommuv2_context** %4, align 8
  %113 = call i32 @vfree(%struct.etnaviv_iommuv2_context* %112)
  store %struct.etnaviv_iommu_context* null, %struct.etnaviv_iommu_context** %2, align 8
  br label %114

114:                                              ; preds = %111, %59, %9
  %115 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %2, align 8
  ret %struct.etnaviv_iommu_context* %115
}

declare dso_local %struct.etnaviv_iommuv2_context* @vzalloc(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @find_first_zero_bit(i32, i64) #1

declare dso_local i32 @set_bit(i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dma_alloc_wc(i32, i64, i32*, i32) #1

declare dso_local i32 @memset32(i32, i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @drm_mm_init(i32*, i64, i64) #1

declare dso_local i32 @clear_bit(i64, i32) #1

declare dso_local i32 @vfree(%struct.etnaviv_iommuv2_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

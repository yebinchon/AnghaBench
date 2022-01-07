; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_iommu.c_etnaviv_iommuv1_context_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_iommu.c_etnaviv_iommuv1_context_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_iommu_context = type { %struct.etnaviv_iommu_global*, i32, i32, i32, i32 }
%struct.etnaviv_iommu_global = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { %struct.etnaviv_iommu_context* }
%struct.etnaviv_iommuv1_context = type { %struct.etnaviv_iommu_context, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@PT_SIZE = common dso_local global i32 0, align 4
@PT_ENTRIES = common dso_local global i32 0, align 4
@GPU_MEM_START = common dso_local global i32 0, align 4
@SZ_4K = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.etnaviv_iommu_context* @etnaviv_iommuv1_context_alloc(%struct.etnaviv_iommu_global* %0) #0 {
  %2 = alloca %struct.etnaviv_iommu_context*, align 8
  %3 = alloca %struct.etnaviv_iommu_global*, align 8
  %4 = alloca %struct.etnaviv_iommuv1_context*, align 8
  %5 = alloca %struct.etnaviv_iommu_context*, align 8
  store %struct.etnaviv_iommu_global* %0, %struct.etnaviv_iommu_global** %3, align 8
  %6 = load %struct.etnaviv_iommu_global*, %struct.etnaviv_iommu_global** %3, align 8
  %7 = getelementptr inbounds %struct.etnaviv_iommu_global, %struct.etnaviv_iommu_global* %6, i32 0, i32 0
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.etnaviv_iommu_global*, %struct.etnaviv_iommu_global** %3, align 8
  %10 = getelementptr inbounds %struct.etnaviv_iommu_global, %struct.etnaviv_iommu_global* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %11, align 8
  %13 = icmp ne %struct.etnaviv_iommu_context* %12, null
  br i1 %13, label %14, label %25

14:                                               ; preds = %1
  %15 = load %struct.etnaviv_iommu_global*, %struct.etnaviv_iommu_global** %3, align 8
  %16 = getelementptr inbounds %struct.etnaviv_iommu_global, %struct.etnaviv_iommu_global* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %17, align 8
  store %struct.etnaviv_iommu_context* %18, %struct.etnaviv_iommu_context** %5, align 8
  %19 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %5, align 8
  %20 = call i32 @etnaviv_iommu_context_get(%struct.etnaviv_iommu_context* %19)
  %21 = load %struct.etnaviv_iommu_global*, %struct.etnaviv_iommu_global** %3, align 8
  %22 = getelementptr inbounds %struct.etnaviv_iommu_global, %struct.etnaviv_iommu_global* %21, i32 0, i32 0
  %23 = call i32 @mutex_unlock(i32* %22)
  %24 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %5, align 8
  store %struct.etnaviv_iommu_context* %24, %struct.etnaviv_iommu_context** %2, align 8
  br label %96

25:                                               ; preds = %1
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.etnaviv_iommuv1_context* @kzalloc(i32 32, i32 %26)
  store %struct.etnaviv_iommuv1_context* %27, %struct.etnaviv_iommuv1_context** %4, align 8
  %28 = load %struct.etnaviv_iommuv1_context*, %struct.etnaviv_iommuv1_context** %4, align 8
  %29 = icmp ne %struct.etnaviv_iommuv1_context* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = load %struct.etnaviv_iommu_global*, %struct.etnaviv_iommu_global** %3, align 8
  %32 = getelementptr inbounds %struct.etnaviv_iommu_global, %struct.etnaviv_iommu_global* %31, i32 0, i32 0
  %33 = call i32 @mutex_unlock(i32* %32)
  store %struct.etnaviv_iommu_context* null, %struct.etnaviv_iommu_context** %2, align 8
  br label %96

34:                                               ; preds = %25
  %35 = load %struct.etnaviv_iommu_global*, %struct.etnaviv_iommu_global** %3, align 8
  %36 = getelementptr inbounds %struct.etnaviv_iommu_global, %struct.etnaviv_iommu_global* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @PT_SIZE, align 4
  %39 = load %struct.etnaviv_iommuv1_context*, %struct.etnaviv_iommuv1_context** %4, align 8
  %40 = getelementptr inbounds %struct.etnaviv_iommuv1_context, %struct.etnaviv_iommuv1_context* %39, i32 0, i32 2
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call i32 @dma_alloc_wc(i32 %37, i32 %38, i32* %40, i32 %41)
  %43 = load %struct.etnaviv_iommuv1_context*, %struct.etnaviv_iommuv1_context** %4, align 8
  %44 = getelementptr inbounds %struct.etnaviv_iommuv1_context, %struct.etnaviv_iommuv1_context* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load %struct.etnaviv_iommuv1_context*, %struct.etnaviv_iommuv1_context** %4, align 8
  %46 = getelementptr inbounds %struct.etnaviv_iommuv1_context, %struct.etnaviv_iommuv1_context* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %34
  br label %90

50:                                               ; preds = %34
  %51 = load %struct.etnaviv_iommuv1_context*, %struct.etnaviv_iommuv1_context** %4, align 8
  %52 = getelementptr inbounds %struct.etnaviv_iommuv1_context, %struct.etnaviv_iommuv1_context* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.etnaviv_iommu_global*, %struct.etnaviv_iommu_global** %3, align 8
  %55 = getelementptr inbounds %struct.etnaviv_iommu_global, %struct.etnaviv_iommu_global* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @PT_ENTRIES, align 4
  %58 = call i32 @memset32(i32 %53, i32 %56, i32 %57)
  %59 = load %struct.etnaviv_iommuv1_context*, %struct.etnaviv_iommuv1_context** %4, align 8
  %60 = getelementptr inbounds %struct.etnaviv_iommuv1_context, %struct.etnaviv_iommuv1_context* %59, i32 0, i32 0
  store %struct.etnaviv_iommu_context* %60, %struct.etnaviv_iommu_context** %5, align 8
  %61 = load %struct.etnaviv_iommu_global*, %struct.etnaviv_iommu_global** %3, align 8
  %62 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %5, align 8
  %63 = getelementptr inbounds %struct.etnaviv_iommu_context, %struct.etnaviv_iommu_context* %62, i32 0, i32 0
  store %struct.etnaviv_iommu_global* %61, %struct.etnaviv_iommu_global** %63, align 8
  %64 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %5, align 8
  %65 = getelementptr inbounds %struct.etnaviv_iommu_context, %struct.etnaviv_iommu_context* %64, i32 0, i32 4
  %66 = call i32 @kref_init(i32* %65)
  %67 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %5, align 8
  %68 = getelementptr inbounds %struct.etnaviv_iommu_context, %struct.etnaviv_iommu_context* %67, i32 0, i32 3
  %69 = call i32 @mutex_init(i32* %68)
  %70 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %5, align 8
  %71 = getelementptr inbounds %struct.etnaviv_iommu_context, %struct.etnaviv_iommu_context* %70, i32 0, i32 2
  %72 = call i32 @INIT_LIST_HEAD(i32* %71)
  %73 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %5, align 8
  %74 = getelementptr inbounds %struct.etnaviv_iommu_context, %struct.etnaviv_iommu_context* %73, i32 0, i32 1
  %75 = load i32, i32* @GPU_MEM_START, align 4
  %76 = load i32, i32* @PT_ENTRIES, align 4
  %77 = load i32, i32* @SZ_4K, align 4
  %78 = mul nsw i32 %76, %77
  %79 = call i32 @drm_mm_init(i32* %74, i32 %75, i32 %78)
  %80 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %5, align 8
  %81 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %5, align 8
  %82 = getelementptr inbounds %struct.etnaviv_iommu_context, %struct.etnaviv_iommu_context* %81, i32 0, i32 0
  %83 = load %struct.etnaviv_iommu_global*, %struct.etnaviv_iommu_global** %82, align 8
  %84 = getelementptr inbounds %struct.etnaviv_iommu_global, %struct.etnaviv_iommu_global* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  store %struct.etnaviv_iommu_context* %80, %struct.etnaviv_iommu_context** %85, align 8
  %86 = load %struct.etnaviv_iommu_global*, %struct.etnaviv_iommu_global** %3, align 8
  %87 = getelementptr inbounds %struct.etnaviv_iommu_global, %struct.etnaviv_iommu_global* %86, i32 0, i32 0
  %88 = call i32 @mutex_unlock(i32* %87)
  %89 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %5, align 8
  store %struct.etnaviv_iommu_context* %89, %struct.etnaviv_iommu_context** %2, align 8
  br label %96

90:                                               ; preds = %49
  %91 = load %struct.etnaviv_iommu_global*, %struct.etnaviv_iommu_global** %3, align 8
  %92 = getelementptr inbounds %struct.etnaviv_iommu_global, %struct.etnaviv_iommu_global* %91, i32 0, i32 0
  %93 = call i32 @mutex_unlock(i32* %92)
  %94 = load %struct.etnaviv_iommuv1_context*, %struct.etnaviv_iommuv1_context** %4, align 8
  %95 = call i32 @kfree(%struct.etnaviv_iommuv1_context* %94)
  store %struct.etnaviv_iommu_context* null, %struct.etnaviv_iommu_context** %2, align 8
  br label %96

96:                                               ; preds = %90, %50, %30, %14
  %97 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %2, align 8
  ret %struct.etnaviv_iommu_context* %97
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @etnaviv_iommu_context_get(%struct.etnaviv_iommu_context*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.etnaviv_iommuv1_context* @kzalloc(i32, i32) #1

declare dso_local i32 @dma_alloc_wc(i32, i32, i32*, i32) #1

declare dso_local i32 @memset32(i32, i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @drm_mm_init(i32*, i32, i32) #1

declare dso_local i32 @kfree(%struct.etnaviv_iommuv1_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

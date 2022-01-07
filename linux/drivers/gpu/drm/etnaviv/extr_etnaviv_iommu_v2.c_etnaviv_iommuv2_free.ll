; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_iommu_v2.c_etnaviv_iommuv2_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_iommu_v2.c_etnaviv_iommuv2_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_iommu_context = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.etnaviv_iommuv2_context = type { i32, i32, i64, i32*, i64* }

@MMUv2_MAX_STLB_ENTRIES = common dso_local global i32 0, align 4
@SZ_4K = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.etnaviv_iommu_context*)* @etnaviv_iommuv2_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @etnaviv_iommuv2_free(%struct.etnaviv_iommu_context* %0) #0 {
  %2 = alloca %struct.etnaviv_iommu_context*, align 8
  %3 = alloca %struct.etnaviv_iommuv2_context*, align 8
  %4 = alloca i32, align 4
  store %struct.etnaviv_iommu_context* %0, %struct.etnaviv_iommu_context** %2, align 8
  %5 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %2, align 8
  %6 = call %struct.etnaviv_iommuv2_context* @to_v2_context(%struct.etnaviv_iommu_context* %5)
  store %struct.etnaviv_iommuv2_context* %6, %struct.etnaviv_iommuv2_context** %3, align 8
  %7 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %2, align 8
  %8 = getelementptr inbounds %struct.etnaviv_iommu_context, %struct.etnaviv_iommu_context* %7, i32 0, i32 1
  %9 = call i32 @drm_mm_takedown(i32* %8)
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %46, %1
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @MMUv2_MAX_STLB_ENTRIES, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %49

14:                                               ; preds = %10
  %15 = load %struct.etnaviv_iommuv2_context*, %struct.etnaviv_iommuv2_context** %3, align 8
  %16 = getelementptr inbounds %struct.etnaviv_iommuv2_context, %struct.etnaviv_iommuv2_context* %15, i32 0, i32 4
  %17 = load i64*, i64** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %17, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %45

23:                                               ; preds = %14
  %24 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %2, align 8
  %25 = getelementptr inbounds %struct.etnaviv_iommu_context, %struct.etnaviv_iommu_context* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @SZ_4K, align 4
  %30 = load %struct.etnaviv_iommuv2_context*, %struct.etnaviv_iommuv2_context** %3, align 8
  %31 = getelementptr inbounds %struct.etnaviv_iommuv2_context, %struct.etnaviv_iommuv2_context* %30, i32 0, i32 4
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.etnaviv_iommuv2_context*, %struct.etnaviv_iommuv2_context** %3, align 8
  %38 = getelementptr inbounds %struct.etnaviv_iommuv2_context, %struct.etnaviv_iommuv2_context* %37, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dma_free_wc(i32 %28, i32 %29, i64 %36, i32 %43)
  br label %45

45:                                               ; preds = %23, %14
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %4, align 4
  br label %10

49:                                               ; preds = %10
  %50 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %2, align 8
  %51 = getelementptr inbounds %struct.etnaviv_iommu_context, %struct.etnaviv_iommu_context* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @SZ_4K, align 4
  %56 = load %struct.etnaviv_iommuv2_context*, %struct.etnaviv_iommuv2_context** %3, align 8
  %57 = getelementptr inbounds %struct.etnaviv_iommuv2_context, %struct.etnaviv_iommuv2_context* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.etnaviv_iommuv2_context*, %struct.etnaviv_iommuv2_context** %3, align 8
  %60 = getelementptr inbounds %struct.etnaviv_iommuv2_context, %struct.etnaviv_iommuv2_context* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @dma_free_wc(i32 %54, i32 %55, i64 %58, i32 %61)
  %63 = load %struct.etnaviv_iommuv2_context*, %struct.etnaviv_iommuv2_context** %3, align 8
  %64 = getelementptr inbounds %struct.etnaviv_iommuv2_context, %struct.etnaviv_iommuv2_context* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %2, align 8
  %67 = getelementptr inbounds %struct.etnaviv_iommu_context, %struct.etnaviv_iommu_context* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @clear_bit(i32 %65, i32 %71)
  %73 = load %struct.etnaviv_iommuv2_context*, %struct.etnaviv_iommuv2_context** %3, align 8
  %74 = call i32 @vfree(%struct.etnaviv_iommuv2_context* %73)
  ret void
}

declare dso_local %struct.etnaviv_iommuv2_context* @to_v2_context(%struct.etnaviv_iommu_context*) #1

declare dso_local i32 @drm_mm_takedown(i32*) #1

declare dso_local i32 @dma_free_wc(i32, i32, i64, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @vfree(%struct.etnaviv_iommuv2_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

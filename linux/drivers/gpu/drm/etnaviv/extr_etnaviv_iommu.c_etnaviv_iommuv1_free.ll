; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_iommu.c_etnaviv_iommuv1_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_iommu.c_etnaviv_iommuv1_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_iommu_context = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32* }
%struct.etnaviv_iommuv1_context = type { i32, i32 }

@PT_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.etnaviv_iommu_context*)* @etnaviv_iommuv1_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @etnaviv_iommuv1_free(%struct.etnaviv_iommu_context* %0) #0 {
  %2 = alloca %struct.etnaviv_iommu_context*, align 8
  %3 = alloca %struct.etnaviv_iommuv1_context*, align 8
  store %struct.etnaviv_iommu_context* %0, %struct.etnaviv_iommu_context** %2, align 8
  %4 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %2, align 8
  %5 = call %struct.etnaviv_iommuv1_context* @to_v1_context(%struct.etnaviv_iommu_context* %4)
  store %struct.etnaviv_iommuv1_context* %5, %struct.etnaviv_iommuv1_context** %3, align 8
  %6 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %2, align 8
  %7 = getelementptr inbounds %struct.etnaviv_iommu_context, %struct.etnaviv_iommu_context* %6, i32 0, i32 1
  %8 = call i32 @drm_mm_takedown(i32* %7)
  %9 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %2, align 8
  %10 = getelementptr inbounds %struct.etnaviv_iommu_context, %struct.etnaviv_iommu_context* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @PT_SIZE, align 4
  %15 = load %struct.etnaviv_iommuv1_context*, %struct.etnaviv_iommuv1_context** %3, align 8
  %16 = getelementptr inbounds %struct.etnaviv_iommuv1_context, %struct.etnaviv_iommuv1_context* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.etnaviv_iommuv1_context*, %struct.etnaviv_iommuv1_context** %3, align 8
  %19 = getelementptr inbounds %struct.etnaviv_iommuv1_context, %struct.etnaviv_iommuv1_context* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @dma_free_wc(i32 %13, i32 %14, i32 %17, i32 %20)
  %22 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %2, align 8
  %23 = getelementptr inbounds %struct.etnaviv_iommu_context, %struct.etnaviv_iommu_context* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i32* null, i32** %26, align 8
  %27 = load %struct.etnaviv_iommuv1_context*, %struct.etnaviv_iommuv1_context** %3, align 8
  %28 = call i32 @kfree(%struct.etnaviv_iommuv1_context* %27)
  ret void
}

declare dso_local %struct.etnaviv_iommuv1_context* @to_v1_context(%struct.etnaviv_iommu_context*) #1

declare dso_local i32 @drm_mm_takedown(i32*) #1

declare dso_local i32 @dma_free_wc(i32, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.etnaviv_iommuv1_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

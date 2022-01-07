; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_mmu.c_etnaviv_iommu_put_suballoc_va.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_mmu.c_etnaviv_iommu_put_suballoc_va.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_iommu_context = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.etnaviv_vram_mapping = type { i64, %struct.drm_mm_node }
%struct.drm_mm_node = type { i32, i32 }

@ETNAVIV_IOMMU_V1 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @etnaviv_iommu_put_suballoc_va(%struct.etnaviv_iommu_context* %0, %struct.etnaviv_vram_mapping* %1) #0 {
  %3 = alloca %struct.etnaviv_iommu_context*, align 8
  %4 = alloca %struct.etnaviv_vram_mapping*, align 8
  %5 = alloca %struct.drm_mm_node*, align 8
  store %struct.etnaviv_iommu_context* %0, %struct.etnaviv_iommu_context** %3, align 8
  store %struct.etnaviv_vram_mapping* %1, %struct.etnaviv_vram_mapping** %4, align 8
  %6 = load %struct.etnaviv_vram_mapping*, %struct.etnaviv_vram_mapping** %4, align 8
  %7 = getelementptr inbounds %struct.etnaviv_vram_mapping, %struct.etnaviv_vram_mapping* %6, i32 0, i32 1
  store %struct.drm_mm_node* %7, %struct.drm_mm_node** %5, align 8
  %8 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %3, align 8
  %9 = getelementptr inbounds %struct.etnaviv_iommu_context, %struct.etnaviv_iommu_context* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.etnaviv_vram_mapping*, %struct.etnaviv_vram_mapping** %4, align 8
  %12 = getelementptr inbounds %struct.etnaviv_vram_mapping, %struct.etnaviv_vram_mapping* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, -1
  store i64 %14, i64* %12, align 8
  %15 = load %struct.etnaviv_vram_mapping*, %struct.etnaviv_vram_mapping** %4, align 8
  %16 = getelementptr inbounds %struct.etnaviv_vram_mapping, %struct.etnaviv_vram_mapping* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %2
  %20 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %3, align 8
  %21 = getelementptr inbounds %struct.etnaviv_iommu_context, %struct.etnaviv_iommu_context* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ETNAVIV_IOMMU_V1, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %19, %2
  %28 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %3, align 8
  %29 = getelementptr inbounds %struct.etnaviv_iommu_context, %struct.etnaviv_iommu_context* %28, i32 0, i32 0
  %30 = call i32 @mutex_unlock(i32* %29)
  br label %45

31:                                               ; preds = %19
  %32 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %3, align 8
  %33 = load %struct.drm_mm_node*, %struct.drm_mm_node** %5, align 8
  %34 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.drm_mm_node*, %struct.drm_mm_node** %5, align 8
  %37 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @etnaviv_context_unmap(%struct.etnaviv_iommu_context* %32, i32 %35, i32 %38)
  %40 = load %struct.drm_mm_node*, %struct.drm_mm_node** %5, align 8
  %41 = call i32 @drm_mm_remove_node(%struct.drm_mm_node* %40)
  %42 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %3, align 8
  %43 = getelementptr inbounds %struct.etnaviv_iommu_context, %struct.etnaviv_iommu_context* %42, i32 0, i32 0
  %44 = call i32 @mutex_unlock(i32* %43)
  br label %45

45:                                               ; preds = %31, %27
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @etnaviv_context_unmap(%struct.etnaviv_iommu_context*, i32, i32) #1

declare dso_local i32 @drm_mm_remove_node(%struct.drm_mm_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

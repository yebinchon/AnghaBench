; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_mmu.c_etnaviv_iommu_get_suballoc_va.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_mmu.c_etnaviv_iommu_get_suballoc_va.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_iommu_context = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.etnaviv_vram_mapping = type { i32, i32, i64, %struct.drm_mm_node }
%struct.drm_mm_node = type { i64 }

@ETNAVIV_IOMMU_V1 = common dso_local global i64 0, align 8
@ETNAVIV_PROT_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @etnaviv_iommu_get_suballoc_va(%struct.etnaviv_iommu_context* %0, %struct.etnaviv_vram_mapping* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.etnaviv_iommu_context*, align 8
  %8 = alloca %struct.etnaviv_vram_mapping*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.drm_mm_node*, align 8
  %13 = alloca i32, align 4
  store %struct.etnaviv_iommu_context* %0, %struct.etnaviv_iommu_context** %7, align 8
  store %struct.etnaviv_vram_mapping* %1, %struct.etnaviv_vram_mapping** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %7, align 8
  %15 = getelementptr inbounds %struct.etnaviv_iommu_context, %struct.etnaviv_iommu_context* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.etnaviv_vram_mapping*, %struct.etnaviv_vram_mapping** %8, align 8
  %18 = getelementptr inbounds %struct.etnaviv_vram_mapping, %struct.etnaviv_vram_mapping* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %5
  %22 = load %struct.etnaviv_vram_mapping*, %struct.etnaviv_vram_mapping** %8, align 8
  %23 = getelementptr inbounds %struct.etnaviv_vram_mapping, %struct.etnaviv_vram_mapping* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 8
  %26 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %7, align 8
  %27 = getelementptr inbounds %struct.etnaviv_iommu_context, %struct.etnaviv_iommu_context* %26, i32 0, i32 0
  %28 = call i32 @mutex_unlock(i32* %27)
  store i32 0, i32* %6, align 4
  br label %96

29:                                               ; preds = %5
  %30 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %7, align 8
  %31 = getelementptr inbounds %struct.etnaviv_iommu_context, %struct.etnaviv_iommu_context* %30, i32 0, i32 3
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @ETNAVIV_IOMMU_V1, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %29
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* %9, align 8
  %40 = sub nsw i64 %38, %39
  %41 = load %struct.etnaviv_vram_mapping*, %struct.etnaviv_vram_mapping** %8, align 8
  %42 = getelementptr inbounds %struct.etnaviv_vram_mapping, %struct.etnaviv_vram_mapping* %41, i32 0, i32 2
  store i64 %40, i64* %42, align 8
  br label %85

43:                                               ; preds = %29
  %44 = load %struct.etnaviv_vram_mapping*, %struct.etnaviv_vram_mapping** %8, align 8
  %45 = getelementptr inbounds %struct.etnaviv_vram_mapping, %struct.etnaviv_vram_mapping* %44, i32 0, i32 3
  store %struct.drm_mm_node* %45, %struct.drm_mm_node** %12, align 8
  %46 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %7, align 8
  %47 = load %struct.drm_mm_node*, %struct.drm_mm_node** %12, align 8
  %48 = load i64, i64* %11, align 8
  %49 = call i32 @etnaviv_iommu_find_iova(%struct.etnaviv_iommu_context* %46, %struct.drm_mm_node* %47, i64 %48)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %43
  %53 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %7, align 8
  %54 = getelementptr inbounds %struct.etnaviv_iommu_context, %struct.etnaviv_iommu_context* %53, i32 0, i32 0
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load i32, i32* %13, align 4
  store i32 %56, i32* %6, align 4
  br label %96

57:                                               ; preds = %43
  %58 = load %struct.drm_mm_node*, %struct.drm_mm_node** %12, align 8
  %59 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.etnaviv_vram_mapping*, %struct.etnaviv_vram_mapping** %8, align 8
  %62 = getelementptr inbounds %struct.etnaviv_vram_mapping, %struct.etnaviv_vram_mapping* %61, i32 0, i32 2
  store i64 %60, i64* %62, align 8
  %63 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %7, align 8
  %64 = load %struct.drm_mm_node*, %struct.drm_mm_node** %12, align 8
  %65 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %10, align 8
  %68 = load i64, i64* %11, align 8
  %69 = load i32, i32* @ETNAVIV_PROT_READ, align 4
  %70 = call i32 @etnaviv_context_map(%struct.etnaviv_iommu_context* %63, i64 %66, i64 %67, i64 %68, i32 %69)
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %57
  %74 = load %struct.drm_mm_node*, %struct.drm_mm_node** %12, align 8
  %75 = call i32 @drm_mm_remove_node(%struct.drm_mm_node* %74)
  %76 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %7, align 8
  %77 = getelementptr inbounds %struct.etnaviv_iommu_context, %struct.etnaviv_iommu_context* %76, i32 0, i32 0
  %78 = call i32 @mutex_unlock(i32* %77)
  %79 = load i32, i32* %13, align 4
  store i32 %79, i32* %6, align 4
  br label %96

80:                                               ; preds = %57
  %81 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %7, align 8
  %82 = getelementptr inbounds %struct.etnaviv_iommu_context, %struct.etnaviv_iommu_context* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 8
  br label %85

85:                                               ; preds = %80, %37
  %86 = load %struct.etnaviv_vram_mapping*, %struct.etnaviv_vram_mapping** %8, align 8
  %87 = getelementptr inbounds %struct.etnaviv_vram_mapping, %struct.etnaviv_vram_mapping* %86, i32 0, i32 1
  %88 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %7, align 8
  %89 = getelementptr inbounds %struct.etnaviv_iommu_context, %struct.etnaviv_iommu_context* %88, i32 0, i32 1
  %90 = call i32 @list_add_tail(i32* %87, i32* %89)
  %91 = load %struct.etnaviv_vram_mapping*, %struct.etnaviv_vram_mapping** %8, align 8
  %92 = getelementptr inbounds %struct.etnaviv_vram_mapping, %struct.etnaviv_vram_mapping* %91, i32 0, i32 0
  store i32 1, i32* %92, align 8
  %93 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %7, align 8
  %94 = getelementptr inbounds %struct.etnaviv_iommu_context, %struct.etnaviv_iommu_context* %93, i32 0, i32 0
  %95 = call i32 @mutex_unlock(i32* %94)
  store i32 0, i32* %6, align 4
  br label %96

96:                                               ; preds = %85, %73, %52, %21
  %97 = load i32, i32* %6, align 4
  ret i32 %97
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @etnaviv_iommu_find_iova(%struct.etnaviv_iommu_context*, %struct.drm_mm_node*, i64) #1

declare dso_local i32 @etnaviv_context_map(%struct.etnaviv_iommu_context*, i64, i64, i64, i32) #1

declare dso_local i32 @drm_mm_remove_node(%struct.drm_mm_node*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

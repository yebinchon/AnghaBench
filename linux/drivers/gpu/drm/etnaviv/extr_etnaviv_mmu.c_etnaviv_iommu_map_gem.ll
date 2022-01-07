; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_mmu.c_etnaviv_iommu_map_gem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_mmu.c_etnaviv_iommu_map_gem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_iommu_context = type { i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.etnaviv_gem_object = type { i32, %struct.TYPE_4__, i32, %struct.sg_table* }
%struct.TYPE_4__ = type { i32 }
%struct.sg_table = type { i32, i32 }
%struct.etnaviv_vram_mapping = type { i32, i32, %struct.drm_mm_node }
%struct.drm_mm_node = type { i32 }

@ETNAVIV_IOMMU_V1 = common dso_local global i64 0, align 8
@ETNA_BO_FORCE_MMU = common dso_local global i32 0, align 4
@ETNAVIV_PROT_READ = common dso_local global i32 0, align 4
@ETNAVIV_PROT_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @etnaviv_iommu_map_gem(%struct.etnaviv_iommu_context* %0, %struct.etnaviv_gem_object* %1, i32 %2, %struct.etnaviv_vram_mapping* %3, i32 %4) #0 {
  %6 = alloca %struct.etnaviv_iommu_context*, align 8
  %7 = alloca %struct.etnaviv_gem_object*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.etnaviv_vram_mapping*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sg_table*, align 8
  %12 = alloca %struct.drm_mm_node*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.etnaviv_iommu_context* %0, %struct.etnaviv_iommu_context** %6, align 8
  store %struct.etnaviv_gem_object* %1, %struct.etnaviv_gem_object** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.etnaviv_vram_mapping* %3, %struct.etnaviv_vram_mapping** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %7, align 8
  %16 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %15, i32 0, i32 3
  %17 = load %struct.sg_table*, %struct.sg_table** %16, align 8
  store %struct.sg_table* %17, %struct.sg_table** %11, align 8
  %18 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %7, align 8
  %19 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %18, i32 0, i32 2
  %20 = call i32 @lockdep_assert_held(i32* %19)
  %21 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %6, align 8
  %22 = getelementptr inbounds %struct.etnaviv_iommu_context, %struct.etnaviv_iommu_context* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %6, align 8
  %25 = getelementptr inbounds %struct.etnaviv_iommu_context, %struct.etnaviv_iommu_context* %24, i32 0, i32 3
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ETNAVIV_IOMMU_V1, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %67

31:                                               ; preds = %5
  %32 = load %struct.sg_table*, %struct.sg_table** %11, align 8
  %33 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %67

36:                                               ; preds = %31
  %37 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %7, align 8
  %38 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @ETNA_BO_FORCE_MMU, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %67, label %43

43:                                               ; preds = %36
  %44 = load %struct.sg_table*, %struct.sg_table** %11, align 8
  %45 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @sg_dma_address(i32 %46)
  %48 = load i32, i32* %8, align 4
  %49 = sub nsw i32 %47, %48
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %14, align 4
  %51 = load %struct.sg_table*, %struct.sg_table** %11, align 8
  %52 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @sg_dma_len(i32 %53)
  %55 = sub i32 -2147483648, %54
  %56 = icmp ult i32 %50, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %43
  %58 = load i32, i32* %14, align 4
  %59 = load %struct.etnaviv_vram_mapping*, %struct.etnaviv_vram_mapping** %9, align 8
  %60 = getelementptr inbounds %struct.etnaviv_vram_mapping, %struct.etnaviv_vram_mapping* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load %struct.etnaviv_vram_mapping*, %struct.etnaviv_vram_mapping** %9, align 8
  %62 = getelementptr inbounds %struct.etnaviv_vram_mapping, %struct.etnaviv_vram_mapping* %61, i32 0, i32 1
  %63 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %6, align 8
  %64 = getelementptr inbounds %struct.etnaviv_iommu_context, %struct.etnaviv_iommu_context* %63, i32 0, i32 2
  %65 = call i32 @list_add_tail(i32* %62, i32* %64)
  store i32 0, i32* %13, align 4
  br label %127

66:                                               ; preds = %43
  br label %67

67:                                               ; preds = %66, %36, %31, %5
  %68 = load %struct.etnaviv_vram_mapping*, %struct.etnaviv_vram_mapping** %9, align 8
  %69 = getelementptr inbounds %struct.etnaviv_vram_mapping, %struct.etnaviv_vram_mapping* %68, i32 0, i32 2
  store %struct.drm_mm_node* %69, %struct.drm_mm_node** %12, align 8
  %70 = load i32, i32* %10, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %67
  %73 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %6, align 8
  %74 = load %struct.drm_mm_node*, %struct.drm_mm_node** %12, align 8
  %75 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %7, align 8
  %76 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @etnaviv_iommu_insert_exact(%struct.etnaviv_iommu_context* %73, %struct.drm_mm_node* %74, i32 %78, i32 %79)
  store i32 %80, i32* %13, align 4
  br label %89

81:                                               ; preds = %67
  %82 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %6, align 8
  %83 = load %struct.drm_mm_node*, %struct.drm_mm_node** %12, align 8
  %84 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %7, align 8
  %85 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @etnaviv_iommu_find_iova(%struct.etnaviv_iommu_context* %82, %struct.drm_mm_node* %83, i32 %87)
  store i32 %88, i32* %13, align 4
  br label %89

89:                                               ; preds = %81, %72
  %90 = load i32, i32* %13, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  br label %127

93:                                               ; preds = %89
  %94 = load %struct.drm_mm_node*, %struct.drm_mm_node** %12, align 8
  %95 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.etnaviv_vram_mapping*, %struct.etnaviv_vram_mapping** %9, align 8
  %98 = getelementptr inbounds %struct.etnaviv_vram_mapping, %struct.etnaviv_vram_mapping* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  %99 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %6, align 8
  %100 = load %struct.drm_mm_node*, %struct.drm_mm_node** %12, align 8
  %101 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.sg_table*, %struct.sg_table** %11, align 8
  %104 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %7, align 8
  %105 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @ETNAVIV_PROT_READ, align 4
  %109 = load i32, i32* @ETNAVIV_PROT_WRITE, align 4
  %110 = or i32 %108, %109
  %111 = call i32 @etnaviv_iommu_map(%struct.etnaviv_iommu_context* %99, i32 %102, %struct.sg_table* %103, i32 %107, i32 %110)
  store i32 %111, i32* %13, align 4
  %112 = load i32, i32* %13, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %93
  %115 = load %struct.drm_mm_node*, %struct.drm_mm_node** %12, align 8
  %116 = call i32 @drm_mm_remove_node(%struct.drm_mm_node* %115)
  br label %127

117:                                              ; preds = %93
  %118 = load %struct.etnaviv_vram_mapping*, %struct.etnaviv_vram_mapping** %9, align 8
  %119 = getelementptr inbounds %struct.etnaviv_vram_mapping, %struct.etnaviv_vram_mapping* %118, i32 0, i32 1
  %120 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %6, align 8
  %121 = getelementptr inbounds %struct.etnaviv_iommu_context, %struct.etnaviv_iommu_context* %120, i32 0, i32 2
  %122 = call i32 @list_add_tail(i32* %119, i32* %121)
  %123 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %6, align 8
  %124 = getelementptr inbounds %struct.etnaviv_iommu_context, %struct.etnaviv_iommu_context* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %124, align 4
  br label %127

127:                                              ; preds = %117, %114, %92, %57
  %128 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %6, align 8
  %129 = getelementptr inbounds %struct.etnaviv_iommu_context, %struct.etnaviv_iommu_context* %128, i32 0, i32 0
  %130 = call i32 @mutex_unlock(i32* %129)
  %131 = load i32, i32* %13, align 4
  ret i32 %131
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sg_dma_address(i32) #1

declare dso_local i32 @sg_dma_len(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @etnaviv_iommu_insert_exact(%struct.etnaviv_iommu_context*, %struct.drm_mm_node*, i32, i32) #1

declare dso_local i32 @etnaviv_iommu_find_iova(%struct.etnaviv_iommu_context*, %struct.drm_mm_node*, i32) #1

declare dso_local i32 @etnaviv_iommu_map(%struct.etnaviv_iommu_context*, i32, %struct.sg_table*, i32, i32) #1

declare dso_local i32 @drm_mm_remove_node(%struct.drm_mm_node*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

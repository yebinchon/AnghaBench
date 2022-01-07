; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gem.c_etnaviv_gem_mapping_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gem.c_etnaviv_gem_mapping_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_vram_mapping = type { i32, i32, %struct.etnaviv_iommu_context*, %struct.etnaviv_gem_object*, i32 }
%struct.etnaviv_gem_object = type { i32, i32 }
%struct.drm_gem_object = type { i32 }
%struct.etnaviv_iommu_context = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.page = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.etnaviv_vram_mapping* @etnaviv_gem_mapping_get(%struct.drm_gem_object* %0, %struct.etnaviv_iommu_context* %1, i32 %2) #0 {
  %4 = alloca %struct.etnaviv_vram_mapping*, align 8
  %5 = alloca %struct.drm_gem_object*, align 8
  %6 = alloca %struct.etnaviv_iommu_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.etnaviv_gem_object*, align 8
  %9 = alloca %struct.etnaviv_vram_mapping*, align 8
  %10 = alloca %struct.page**, align 8
  %11 = alloca i32, align 4
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %5, align 8
  store %struct.etnaviv_iommu_context* %1, %struct.etnaviv_iommu_context** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.drm_gem_object*, %struct.drm_gem_object** %5, align 8
  %13 = call %struct.etnaviv_gem_object* @to_etnaviv_bo(%struct.drm_gem_object* %12)
  store %struct.etnaviv_gem_object* %13, %struct.etnaviv_gem_object** %8, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %8, align 8
  %15 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %8, align 8
  %18 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %6, align 8
  %19 = call %struct.etnaviv_vram_mapping* @etnaviv_gem_get_vram_mapping(%struct.etnaviv_gem_object* %17, %struct.etnaviv_iommu_context* %18)
  store %struct.etnaviv_vram_mapping* %19, %struct.etnaviv_vram_mapping** %9, align 8
  %20 = load %struct.etnaviv_vram_mapping*, %struct.etnaviv_vram_mapping** %9, align 8
  %21 = icmp ne %struct.etnaviv_vram_mapping* %20, null
  br i1 %21, label %22, label %56

22:                                               ; preds = %3
  %23 = load %struct.etnaviv_vram_mapping*, %struct.etnaviv_vram_mapping** %9, align 8
  %24 = getelementptr inbounds %struct.etnaviv_vram_mapping, %struct.etnaviv_vram_mapping* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %50

27:                                               ; preds = %22
  %28 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %6, align 8
  %29 = getelementptr inbounds %struct.etnaviv_iommu_context, %struct.etnaviv_iommu_context* %28, i32 0, i32 1
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.etnaviv_vram_mapping*, %struct.etnaviv_vram_mapping** %9, align 8
  %32 = getelementptr inbounds %struct.etnaviv_vram_mapping, %struct.etnaviv_vram_mapping* %31, i32 0, i32 2
  %33 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %32, align 8
  %34 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %6, align 8
  %35 = icmp eq %struct.etnaviv_iommu_context* %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %27
  %37 = load %struct.etnaviv_vram_mapping*, %struct.etnaviv_vram_mapping** %9, align 8
  %38 = getelementptr inbounds %struct.etnaviv_vram_mapping, %struct.etnaviv_vram_mapping* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 8
  br label %42

41:                                               ; preds = %27
  store %struct.etnaviv_vram_mapping* null, %struct.etnaviv_vram_mapping** %9, align 8
  br label %42

42:                                               ; preds = %41, %36
  %43 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %6, align 8
  %44 = getelementptr inbounds %struct.etnaviv_iommu_context, %struct.etnaviv_iommu_context* %43, i32 0, i32 1
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load %struct.etnaviv_vram_mapping*, %struct.etnaviv_vram_mapping** %9, align 8
  %47 = icmp ne %struct.etnaviv_vram_mapping* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %121

49:                                               ; preds = %42
  br label %55

50:                                               ; preds = %22
  %51 = load %struct.etnaviv_vram_mapping*, %struct.etnaviv_vram_mapping** %9, align 8
  %52 = getelementptr inbounds %struct.etnaviv_vram_mapping, %struct.etnaviv_vram_mapping* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 8
  br label %121

55:                                               ; preds = %49
  br label %56

56:                                               ; preds = %55, %3
  %57 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %8, align 8
  %58 = call %struct.page** @etnaviv_gem_get_pages(%struct.etnaviv_gem_object* %57)
  store %struct.page** %58, %struct.page*** %10, align 8
  %59 = load %struct.page**, %struct.page*** %10, align 8
  %60 = call i64 @IS_ERR(%struct.page** %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load %struct.page**, %struct.page*** %10, align 8
  %64 = call i32 @PTR_ERR(%struct.page** %63)
  store i32 %64, i32* %11, align 4
  br label %121

65:                                               ; preds = %56
  %66 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %8, align 8
  %67 = call %struct.etnaviv_vram_mapping* @etnaviv_gem_get_vram_mapping(%struct.etnaviv_gem_object* %66, %struct.etnaviv_iommu_context* null)
  store %struct.etnaviv_vram_mapping* %67, %struct.etnaviv_vram_mapping** %9, align 8
  %68 = load %struct.etnaviv_vram_mapping*, %struct.etnaviv_vram_mapping** %9, align 8
  %69 = icmp ne %struct.etnaviv_vram_mapping* %68, null
  br i1 %69, label %85, label %70

70:                                               ; preds = %65
  %71 = load i32, i32* @GFP_KERNEL, align 4
  %72 = call %struct.etnaviv_vram_mapping* @kzalloc(i32 32, i32 %71)
  store %struct.etnaviv_vram_mapping* %72, %struct.etnaviv_vram_mapping** %9, align 8
  %73 = load %struct.etnaviv_vram_mapping*, %struct.etnaviv_vram_mapping** %9, align 8
  %74 = icmp ne %struct.etnaviv_vram_mapping* %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %70
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %11, align 4
  br label %121

78:                                               ; preds = %70
  %79 = load %struct.etnaviv_vram_mapping*, %struct.etnaviv_vram_mapping** %9, align 8
  %80 = getelementptr inbounds %struct.etnaviv_vram_mapping, %struct.etnaviv_vram_mapping* %79, i32 0, i32 4
  %81 = call i32 @INIT_LIST_HEAD(i32* %80)
  %82 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %8, align 8
  %83 = load %struct.etnaviv_vram_mapping*, %struct.etnaviv_vram_mapping** %9, align 8
  %84 = getelementptr inbounds %struct.etnaviv_vram_mapping, %struct.etnaviv_vram_mapping* %83, i32 0, i32 3
  store %struct.etnaviv_gem_object* %82, %struct.etnaviv_gem_object** %84, align 8
  br label %89

85:                                               ; preds = %65
  %86 = load %struct.etnaviv_vram_mapping*, %struct.etnaviv_vram_mapping** %9, align 8
  %87 = getelementptr inbounds %struct.etnaviv_vram_mapping, %struct.etnaviv_vram_mapping* %86, i32 0, i32 1
  %88 = call i32 @list_del(i32* %87)
  br label %89

89:                                               ; preds = %85, %78
  %90 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %6, align 8
  %91 = call i32 @etnaviv_iommu_context_get(%struct.etnaviv_iommu_context* %90)
  %92 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %6, align 8
  %93 = load %struct.etnaviv_vram_mapping*, %struct.etnaviv_vram_mapping** %9, align 8
  %94 = getelementptr inbounds %struct.etnaviv_vram_mapping, %struct.etnaviv_vram_mapping* %93, i32 0, i32 2
  store %struct.etnaviv_iommu_context* %92, %struct.etnaviv_iommu_context** %94, align 8
  %95 = load %struct.etnaviv_vram_mapping*, %struct.etnaviv_vram_mapping** %9, align 8
  %96 = getelementptr inbounds %struct.etnaviv_vram_mapping, %struct.etnaviv_vram_mapping* %95, i32 0, i32 0
  store i32 1, i32* %96, align 8
  %97 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %6, align 8
  %98 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %8, align 8
  %99 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %6, align 8
  %100 = getelementptr inbounds %struct.etnaviv_iommu_context, %struct.etnaviv_iommu_context* %99, i32 0, i32 0
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.etnaviv_vram_mapping*, %struct.etnaviv_vram_mapping** %9, align 8
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @etnaviv_iommu_map_gem(%struct.etnaviv_iommu_context* %97, %struct.etnaviv_gem_object* %98, i32 %103, %struct.etnaviv_vram_mapping* %104, i32 %105)
  store i32 %106, i32* %11, align 4
  %107 = load i32, i32* %11, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %89
  %110 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %6, align 8
  %111 = call i32 @etnaviv_iommu_context_put(%struct.etnaviv_iommu_context* %110)
  %112 = load %struct.etnaviv_vram_mapping*, %struct.etnaviv_vram_mapping** %9, align 8
  %113 = call i32 @kfree(%struct.etnaviv_vram_mapping* %112)
  br label %120

114:                                              ; preds = %89
  %115 = load %struct.etnaviv_vram_mapping*, %struct.etnaviv_vram_mapping** %9, align 8
  %116 = getelementptr inbounds %struct.etnaviv_vram_mapping, %struct.etnaviv_vram_mapping* %115, i32 0, i32 1
  %117 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %8, align 8
  %118 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %117, i32 0, i32 1
  %119 = call i32 @list_add_tail(i32* %116, i32* %118)
  br label %120

120:                                              ; preds = %114, %109
  br label %121

121:                                              ; preds = %120, %75, %62, %50, %48
  %122 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %8, align 8
  %123 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %122, i32 0, i32 0
  %124 = call i32 @mutex_unlock(i32* %123)
  %125 = load i32, i32* %11, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %121
  %128 = load i32, i32* %11, align 4
  %129 = call %struct.etnaviv_vram_mapping* @ERR_PTR(i32 %128)
  store %struct.etnaviv_vram_mapping* %129, %struct.etnaviv_vram_mapping** %4, align 8
  br label %134

130:                                              ; preds = %121
  %131 = load %struct.drm_gem_object*, %struct.drm_gem_object** %5, align 8
  %132 = call i32 @drm_gem_object_get(%struct.drm_gem_object* %131)
  %133 = load %struct.etnaviv_vram_mapping*, %struct.etnaviv_vram_mapping** %9, align 8
  store %struct.etnaviv_vram_mapping* %133, %struct.etnaviv_vram_mapping** %4, align 8
  br label %134

134:                                              ; preds = %130, %127
  %135 = load %struct.etnaviv_vram_mapping*, %struct.etnaviv_vram_mapping** %4, align 8
  ret %struct.etnaviv_vram_mapping* %135
}

declare dso_local %struct.etnaviv_gem_object* @to_etnaviv_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.etnaviv_vram_mapping* @etnaviv_gem_get_vram_mapping(%struct.etnaviv_gem_object*, %struct.etnaviv_iommu_context*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.page** @etnaviv_gem_get_pages(%struct.etnaviv_gem_object*) #1

declare dso_local i64 @IS_ERR(%struct.page**) #1

declare dso_local i32 @PTR_ERR(%struct.page**) #1

declare dso_local %struct.etnaviv_vram_mapping* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @etnaviv_iommu_context_get(%struct.etnaviv_iommu_context*) #1

declare dso_local i32 @etnaviv_iommu_map_gem(%struct.etnaviv_iommu_context*, %struct.etnaviv_gem_object*, i32, %struct.etnaviv_vram_mapping*, i32) #1

declare dso_local i32 @etnaviv_iommu_context_put(%struct.etnaviv_iommu_context*) #1

declare dso_local i32 @kfree(%struct.etnaviv_vram_mapping*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local %struct.etnaviv_vram_mapping* @ERR_PTR(i32) #1

declare dso_local i32 @drm_gem_object_get(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_gem_evict.c_igt_evict_for_cache_color.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_gem_evict.c_igt_evict_for_cache_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.i915_ggtt }
%struct.i915_ggtt = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.drm_mm_node = type { i32, i32, i32 }
%struct.drm_i915_gem_object = type opaque
%struct.i915_vma = type { i32 }

@PIN_OFFSET_FIXED = common dso_local global i64 0, align 8
@I915_GTT_PAGE_SIZE = common dso_local global i32 0, align 4
@I915_CACHE_LLC = common dso_local global i32 0, align 4
@objects = common dso_local global i32 0, align 4
@mock_color_adjust = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [36 x i8] c"[0]i915_gem_object_ggtt_pin failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"[1]i915_gem_object_ggtt_pin failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"[0]i915_gem_evict_for_node returned err=%d\0A\00", align 1
@I915_CACHE_L3_LLC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"[1]i915_gem_evict_for_node returned err=%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @igt_evict_for_cache_color to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igt_evict_for_cache_color(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.i915_ggtt*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.drm_mm_node, align 4
  %7 = alloca %struct.drm_i915_gem_object*, align 8
  %8 = alloca %struct.i915_vma*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.drm_i915_private*
  store %struct.drm_i915_private* %11, %struct.drm_i915_private** %3, align 8
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %13 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %12, i32 0, i32 0
  store %struct.i915_ggtt* %13, %struct.i915_ggtt** %4, align 8
  %14 = load i64, i64* @PIN_OFFSET_FIXED, align 8
  store i64 %14, i64* %5, align 8
  %15 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %6, i32 0, i32 0
  %16 = load i32, i32* @I915_GTT_PAGE_SIZE, align 4
  %17 = mul nsw i32 %16, 2
  store i32 %17, i32* %15, align 4
  %18 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %6, i32 0, i32 1
  %19 = load i32, i32* @I915_GTT_PAGE_SIZE, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %6, i32 0, i32 2
  %21 = load i32, i32* @I915_CACHE_LLC, align 4
  store i32 %21, i32* %20, align 4
  %22 = load i32, i32* @objects, align 4
  %23 = call i32 @LIST_HEAD(i32 %22)
  %24 = load i32*, i32** @mock_color_adjust, align 8
  %25 = load %struct.i915_ggtt*, %struct.i915_ggtt** %4, align 8
  %26 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i32* %24, i32** %28, align 8
  %29 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %30 = load i32, i32* @I915_GTT_PAGE_SIZE, align 4
  %31 = call %struct.i915_vma* @i915_gem_object_create_internal(%struct.drm_i915_private* %29, i32 %30)
  %32 = bitcast %struct.i915_vma* %31 to %struct.drm_i915_gem_object*
  store %struct.drm_i915_gem_object* %32, %struct.drm_i915_gem_object** %7, align 8
  %33 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %34 = bitcast %struct.drm_i915_gem_object* %33 to %struct.i915_vma*
  %35 = call i64 @IS_ERR(%struct.i915_vma* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %1
  %38 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %39 = bitcast %struct.drm_i915_gem_object* %38 to %struct.i915_vma*
  %40 = call i32 @PTR_ERR(%struct.i915_vma* %39)
  store i32 %40, i32* %9, align 4
  br label %126

41:                                               ; preds = %1
  %42 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %43 = bitcast %struct.drm_i915_gem_object* %42 to %struct.i915_vma*
  %44 = load i32, i32* @I915_CACHE_LLC, align 4
  %45 = call i32 @i915_gem_object_set_cache_coherency(%struct.i915_vma* %43, i32 %44)
  %46 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %47 = bitcast %struct.drm_i915_gem_object* %46 to %struct.i915_vma*
  %48 = call i32 @quirk_add(%struct.i915_vma* %47, i32* @objects)
  %49 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %50 = bitcast %struct.drm_i915_gem_object* %49 to %struct.i915_vma*
  %51 = load i32, i32* @I915_GTT_PAGE_SIZE, align 4
  %52 = sext i32 %51 to i64
  %53 = load i64, i64* %5, align 8
  %54 = or i64 %52, %53
  %55 = trunc i64 %54 to i32
  %56 = call %struct.i915_vma* @i915_gem_object_ggtt_pin(%struct.i915_vma* %50, i32* null, i32 0, i32 0, i32 %55)
  store %struct.i915_vma* %56, %struct.i915_vma** %8, align 8
  %57 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %58 = call i64 @IS_ERR(%struct.i915_vma* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %41
  %61 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %62 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %63 = call i32 @PTR_ERR(%struct.i915_vma* %62)
  store i32 %63, i32* %9, align 4
  br label %126

64:                                               ; preds = %41
  %65 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %66 = load i32, i32* @I915_GTT_PAGE_SIZE, align 4
  %67 = call %struct.i915_vma* @i915_gem_object_create_internal(%struct.drm_i915_private* %65, i32 %66)
  %68 = bitcast %struct.i915_vma* %67 to %struct.drm_i915_gem_object*
  store %struct.drm_i915_gem_object* %68, %struct.drm_i915_gem_object** %7, align 8
  %69 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %70 = bitcast %struct.drm_i915_gem_object* %69 to %struct.i915_vma*
  %71 = call i64 @IS_ERR(%struct.i915_vma* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %64
  %74 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %75 = bitcast %struct.drm_i915_gem_object* %74 to %struct.i915_vma*
  %76 = call i32 @PTR_ERR(%struct.i915_vma* %75)
  store i32 %76, i32* %9, align 4
  br label %126

77:                                               ; preds = %64
  %78 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %79 = bitcast %struct.drm_i915_gem_object* %78 to %struct.i915_vma*
  %80 = load i32, i32* @I915_CACHE_LLC, align 4
  %81 = call i32 @i915_gem_object_set_cache_coherency(%struct.i915_vma* %79, i32 %80)
  %82 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %83 = bitcast %struct.drm_i915_gem_object* %82 to %struct.i915_vma*
  %84 = call i32 @quirk_add(%struct.i915_vma* %83, i32* @objects)
  %85 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %86 = bitcast %struct.drm_i915_gem_object* %85 to %struct.i915_vma*
  %87 = load i32, i32* @I915_GTT_PAGE_SIZE, align 4
  %88 = mul nsw i32 %87, 2
  %89 = sext i32 %88 to i64
  %90 = load i64, i64* %5, align 8
  %91 = or i64 %89, %90
  %92 = trunc i64 %91 to i32
  %93 = call %struct.i915_vma* @i915_gem_object_ggtt_pin(%struct.i915_vma* %86, i32* null, i32 0, i32 0, i32 %92)
  store %struct.i915_vma* %93, %struct.i915_vma** %8, align 8
  %94 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %95 = call i64 @IS_ERR(%struct.i915_vma* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %77
  %98 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %99 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %100 = call i32 @PTR_ERR(%struct.i915_vma* %99)
  store i32 %100, i32* %9, align 4
  br label %126

101:                                              ; preds = %77
  %102 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %103 = call i32 @i915_vma_unpin(%struct.i915_vma* %102)
  %104 = load %struct.i915_ggtt*, %struct.i915_ggtt** %4, align 8
  %105 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %104, i32 0, i32 0
  %106 = call i32 @i915_gem_evict_for_node(%struct.TYPE_4__* %105, %struct.drm_mm_node* %6, i32 0)
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %9, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %101
  %110 = load i32, i32* %9, align 4
  %111 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %110)
  br label %126

112:                                              ; preds = %101
  %113 = load i32, i32* @I915_CACHE_L3_LLC, align 4
  %114 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %6, i32 0, i32 2
  store i32 %113, i32* %114, align 4
  %115 = load %struct.i915_ggtt*, %struct.i915_ggtt** %4, align 8
  %116 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %115, i32 0, i32 0
  %117 = call i32 @i915_gem_evict_for_node(%struct.TYPE_4__* %116, %struct.drm_mm_node* %6, i32 0)
  store i32 %117, i32* %9, align 4
  %118 = load i32, i32* %9, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %125, label %120

120:                                              ; preds = %112
  %121 = load i32, i32* %9, align 4
  %122 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %121)
  %123 = load i32, i32* @EINVAL, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %9, align 4
  br label %126

125:                                              ; preds = %112
  store i32 0, i32* %9, align 4
  br label %126

126:                                              ; preds = %125, %120, %109, %97, %73, %60, %37
  %127 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %128 = call i32 @unpin_ggtt(%struct.drm_i915_private* %127)
  %129 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %130 = call i32 @cleanup_objects(%struct.drm_i915_private* %129, i32* @objects)
  %131 = load %struct.i915_ggtt*, %struct.i915_ggtt** %4, align 8
  %132 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  store i32* null, i32** %134, align 8
  %135 = load i32, i32* %9, align 4
  ret i32 %135
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local %struct.i915_vma* @i915_gem_object_create_internal(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @IS_ERR(%struct.i915_vma*) #1

declare dso_local i32 @PTR_ERR(%struct.i915_vma*) #1

declare dso_local i32 @i915_gem_object_set_cache_coherency(%struct.i915_vma*, i32) #1

declare dso_local i32 @quirk_add(%struct.i915_vma*, i32*) #1

declare dso_local %struct.i915_vma* @i915_gem_object_ggtt_pin(%struct.i915_vma*, i32*, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @i915_vma_unpin(%struct.i915_vma*) #1

declare dso_local i32 @i915_gem_evict_for_node(%struct.TYPE_4__*, %struct.drm_mm_node*, i32) #1

declare dso_local i32 @unpin_ggtt(%struct.drm_i915_private*) #1

declare dso_local i32 @cleanup_objects(%struct.drm_i915_private*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

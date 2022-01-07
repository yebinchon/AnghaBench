; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_domain.c_i915_gem_object_pin_to_display_plane.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_domain.c_i915_gem_object_pin_to_display_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_vma = type { i32 }
%struct.drm_i915_gem_object = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i915_ggtt_view = type { i64 }

@I915_CACHE_WT = common dso_local global i32 0, align 4
@I915_CACHE_NONE = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@PIN_MAPPABLE = common dso_local global i32 0, align 4
@I915_GGTT_VIEW_NORMAL = common dso_local global i64 0, align 8
@PIN_NONBLOCK = common dso_local global i32 0, align 4
@u64 = common dso_local global i32 0, align 4
@I915_GEM_DOMAIN_GTT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.i915_vma* @i915_gem_object_pin_to_display_plane(%struct.drm_i915_gem_object* %0, i32 %1, %struct.i915_ggtt_view* %2, i32 %3) #0 {
  %5 = alloca %struct.i915_vma*, align 8
  %6 = alloca %struct.drm_i915_gem_object*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.i915_ggtt_view*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.i915_vma*, align 8
  %11 = alloca i32, align 4
  store %struct.drm_i915_gem_object* %0, %struct.drm_i915_gem_object** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.i915_ggtt_view* %2, %struct.i915_ggtt_view** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %13 = call i32 @assert_object_held(%struct.drm_i915_gem_object* %12)
  %14 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %15 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 4
  %18 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %19 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %20 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @to_i915(i32 %22)
  %24 = call i64 @HAS_WT(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i32, i32* @I915_CACHE_WT, align 4
  br label %30

28:                                               ; preds = %4
  %29 = load i32, i32* @I915_CACHE_NONE, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  %32 = call i32 @i915_gem_object_set_cache_level(%struct.drm_i915_gem_object* %18, i32 %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* %11, align 4
  %37 = call %struct.i915_vma* @ERR_PTR(i32 %36)
  store %struct.i915_vma* %37, %struct.i915_vma** %10, align 8
  br label %97

38:                                               ; preds = %30
  %39 = load i32, i32* @ENOSPC, align 4
  %40 = sub nsw i32 0, %39
  %41 = call %struct.i915_vma* @ERR_PTR(i32 %40)
  store %struct.i915_vma* %41, %struct.i915_vma** %10, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @PIN_MAPPABLE, align 4
  %44 = and i32 %42, %43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %65

46:                                               ; preds = %38
  %47 = load %struct.i915_ggtt_view*, %struct.i915_ggtt_view** %8, align 8
  %48 = icmp ne %struct.i915_ggtt_view* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load %struct.i915_ggtt_view*, %struct.i915_ggtt_view** %8, align 8
  %51 = getelementptr inbounds %struct.i915_ggtt_view, %struct.i915_ggtt_view* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @I915_GGTT_VIEW_NORMAL, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %49, %46
  %56 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %57 = load %struct.i915_ggtt_view*, %struct.i915_ggtt_view** %8, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @PIN_MAPPABLE, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @PIN_NONBLOCK, align 4
  %63 = or i32 %61, %62
  %64 = call %struct.i915_vma* @i915_gem_object_ggtt_pin(%struct.drm_i915_gem_object* %56, %struct.i915_ggtt_view* %57, i32 0, i32 %58, i32 %63)
  store %struct.i915_vma* %64, %struct.i915_vma** %10, align 8
  br label %65

65:                                               ; preds = %55, %49, %38
  %66 = load %struct.i915_vma*, %struct.i915_vma** %10, align 8
  %67 = call i64 @IS_ERR(%struct.i915_vma* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %65
  %70 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %71 = load %struct.i915_ggtt_view*, %struct.i915_ggtt_view** %8, align 8
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %9, align 4
  %74 = call %struct.i915_vma* @i915_gem_object_ggtt_pin(%struct.drm_i915_gem_object* %70, %struct.i915_ggtt_view* %71, i32 0, i32 %72, i32 %73)
  store %struct.i915_vma* %74, %struct.i915_vma** %10, align 8
  br label %75

75:                                               ; preds = %69, %65
  %76 = load %struct.i915_vma*, %struct.i915_vma** %10, align 8
  %77 = call i64 @IS_ERR(%struct.i915_vma* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  br label %97

80:                                               ; preds = %75
  %81 = load i32, i32* @u64, align 4
  %82 = load %struct.i915_vma*, %struct.i915_vma** %10, align 8
  %83 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @max_t(i32 %81, i32 %84, i32 %85)
  %87 = load %struct.i915_vma*, %struct.i915_vma** %10, align 8
  %88 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  %89 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %90 = call i32 @__i915_gem_object_flush_for_display(%struct.drm_i915_gem_object* %89)
  %91 = load i32, i32* @I915_GEM_DOMAIN_GTT, align 4
  %92 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %93 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 4
  %96 = load %struct.i915_vma*, %struct.i915_vma** %10, align 8
  store %struct.i915_vma* %96, %struct.i915_vma** %5, align 8
  br label %103

97:                                               ; preds = %79, %35
  %98 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %99 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %99, align 4
  %102 = load %struct.i915_vma*, %struct.i915_vma** %10, align 8
  store %struct.i915_vma* %102, %struct.i915_vma** %5, align 8
  br label %103

103:                                              ; preds = %97, %80
  %104 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  ret %struct.i915_vma* %104
}

declare dso_local i32 @assert_object_held(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_gem_object_set_cache_level(%struct.drm_i915_gem_object*, i32) #1

declare dso_local i64 @HAS_WT(i32) #1

declare dso_local i32 @to_i915(i32) #1

declare dso_local %struct.i915_vma* @ERR_PTR(i32) #1

declare dso_local %struct.i915_vma* @i915_gem_object_ggtt_pin(%struct.drm_i915_gem_object*, %struct.i915_ggtt_view*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.i915_vma*) #1

declare dso_local i32 @max_t(i32, i32, i32) #1

declare dso_local i32 @__i915_gem_object_flush_for_display(%struct.drm_i915_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

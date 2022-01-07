; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_timeline.c___hwsp_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_timeline.c___hwsp_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_vma = type { i32 }
%struct.intel_gt = type { %struct.TYPE_2__*, %struct.drm_i915_private* }
%struct.TYPE_2__ = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.drm_i915_gem_object = type opaque

@PAGE_SIZE = common dso_local global i32 0, align 4
@I915_CACHE_LLC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.i915_vma* (%struct.intel_gt*)* @__hwsp_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.i915_vma* @__hwsp_alloc(%struct.intel_gt* %0) #0 {
  %2 = alloca %struct.i915_vma*, align 8
  %3 = alloca %struct.intel_gt*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.drm_i915_gem_object*, align 8
  %6 = alloca %struct.i915_vma*, align 8
  store %struct.intel_gt* %0, %struct.intel_gt** %3, align 8
  %7 = load %struct.intel_gt*, %struct.intel_gt** %3, align 8
  %8 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %7, i32 0, i32 1
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  store %struct.drm_i915_private* %9, %struct.drm_i915_private** %4, align 8
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %11 = load i32, i32* @PAGE_SIZE, align 4
  %12 = call %struct.i915_vma* @i915_gem_object_create_internal(%struct.drm_i915_private* %10, i32 %11)
  %13 = bitcast %struct.i915_vma* %12 to %struct.drm_i915_gem_object*
  store %struct.drm_i915_gem_object* %13, %struct.drm_i915_gem_object** %5, align 8
  %14 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %15 = bitcast %struct.drm_i915_gem_object* %14 to %struct.i915_vma*
  %16 = call i64 @IS_ERR(%struct.i915_vma* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %20 = bitcast %struct.drm_i915_gem_object* %19 to %struct.i915_vma*
  %21 = call %struct.i915_vma* @ERR_CAST(%struct.i915_vma* %20)
  store %struct.i915_vma* %21, %struct.i915_vma** %2, align 8
  br label %43

22:                                               ; preds = %1
  %23 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %24 = bitcast %struct.drm_i915_gem_object* %23 to %struct.i915_vma*
  %25 = load i32, i32* @I915_CACHE_LLC, align 4
  %26 = call i32 @i915_gem_object_set_cache_coherency(%struct.i915_vma* %24, i32 %25)
  %27 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %28 = bitcast %struct.drm_i915_gem_object* %27 to %struct.i915_vma*
  %29 = load %struct.intel_gt*, %struct.intel_gt** %3, align 8
  %30 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = call %struct.i915_vma* @i915_vma_instance(%struct.i915_vma* %28, i32* %32, i32* null)
  store %struct.i915_vma* %33, %struct.i915_vma** %6, align 8
  %34 = load %struct.i915_vma*, %struct.i915_vma** %6, align 8
  %35 = call i64 @IS_ERR(%struct.i915_vma* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %22
  %38 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %39 = bitcast %struct.drm_i915_gem_object* %38 to %struct.i915_vma*
  %40 = call i32 @i915_gem_object_put(%struct.i915_vma* %39)
  br label %41

41:                                               ; preds = %37, %22
  %42 = load %struct.i915_vma*, %struct.i915_vma** %6, align 8
  store %struct.i915_vma* %42, %struct.i915_vma** %2, align 8
  br label %43

43:                                               ; preds = %41, %18
  %44 = load %struct.i915_vma*, %struct.i915_vma** %2, align 8
  ret %struct.i915_vma* %44
}

declare dso_local %struct.i915_vma* @i915_gem_object_create_internal(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @IS_ERR(%struct.i915_vma*) #1

declare dso_local %struct.i915_vma* @ERR_CAST(%struct.i915_vma*) #1

declare dso_local i32 @i915_gem_object_set_cache_coherency(%struct.i915_vma*, i32) #1

declare dso_local %struct.i915_vma* @i915_vma_instance(%struct.i915_vma*, i32*, i32*) #1

declare dso_local i32 @i915_gem_object_put(%struct.i915_vma*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

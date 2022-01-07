; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_uc_fw.c_intel_uc_fw_ggtt_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_uc_fw.c_intel_uc_fw_ggtt_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uc_fw = type { %struct.drm_i915_gem_object* }
%struct.drm_i915_gem_object = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.intel_gt = type { %struct.i915_ggtt* }
%struct.i915_ggtt = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_10__*, %struct.i915_vma*, i32, i32)* }
%struct.i915_vma = type { i32, %struct.TYPE_8__, %struct.TYPE_10__* }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_9__ = type { i64 }

@I915_CACHE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_uc_fw*, %struct.intel_gt*)* @intel_uc_fw_ggtt_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_uc_fw_ggtt_bind(%struct.intel_uc_fw* %0, %struct.intel_gt* %1) #0 {
  %3 = alloca %struct.intel_uc_fw*, align 8
  %4 = alloca %struct.intel_gt*, align 8
  %5 = alloca %struct.drm_i915_gem_object*, align 8
  %6 = alloca %struct.i915_ggtt*, align 8
  %7 = alloca %struct.i915_vma, align 8
  store %struct.intel_uc_fw* %0, %struct.intel_uc_fw** %3, align 8
  store %struct.intel_gt* %1, %struct.intel_gt** %4, align 8
  %8 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %3, align 8
  %9 = getelementptr inbounds %struct.intel_uc_fw, %struct.intel_uc_fw* %8, i32 0, i32 0
  %10 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  store %struct.drm_i915_gem_object* %10, %struct.drm_i915_gem_object** %5, align 8
  %11 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %12 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %11, i32 0, i32 0
  %13 = load %struct.i915_ggtt*, %struct.i915_ggtt** %12, align 8
  store %struct.i915_ggtt* %13, %struct.i915_ggtt** %6, align 8
  %14 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %7, i32 0, i32 0
  %15 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %16 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %14, align 8
  %19 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %7, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %22 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %20, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %26 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %3, align 8
  %27 = load %struct.i915_ggtt*, %struct.i915_ggtt** %6, align 8
  %28 = call i32 @uc_fw_ggtt_offset(%struct.intel_uc_fw* %26, %struct.i915_ggtt* %27)
  store i32 %28, i32* %25, align 8
  %29 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %7, i32 0, i32 2
  %30 = load %struct.i915_ggtt*, %struct.i915_ggtt** %6, align 8
  %31 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %30, i32 0, i32 0
  store %struct.TYPE_10__* %31, %struct.TYPE_10__** %29, align 8
  %32 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %33 = call i32 @i915_gem_object_has_pinned_pages(%struct.drm_i915_gem_object* %32)
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i32 @GEM_BUG_ON(i32 %36)
  %38 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %7, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.i915_ggtt*, %struct.i915_ggtt** %6, align 8
  %42 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %40, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @GEM_BUG_ON(i32 %46)
  %48 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %7, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @drm_clflush_sg(i32 %49)
  %51 = load %struct.i915_ggtt*, %struct.i915_ggtt** %6, align 8
  %52 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i32 (%struct.TYPE_10__*, %struct.i915_vma*, i32, i32)*, i32 (%struct.TYPE_10__*, %struct.i915_vma*, i32, i32)** %53, align 8
  %55 = load %struct.i915_ggtt*, %struct.i915_ggtt** %6, align 8
  %56 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %55, i32 0, i32 0
  %57 = load i32, i32* @I915_CACHE_NONE, align 4
  %58 = call i32 %54(%struct.TYPE_10__* %56, %struct.i915_vma* %7, i32 %57, i32 0)
  ret void
}

declare dso_local i32 @uc_fw_ggtt_offset(%struct.intel_uc_fw*, %struct.i915_ggtt*) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @i915_gem_object_has_pinned_pages(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @drm_clflush_sg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

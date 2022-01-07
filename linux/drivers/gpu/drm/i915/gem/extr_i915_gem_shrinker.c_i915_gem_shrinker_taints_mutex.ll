; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_shrinker.c_i915_gem_shrinker_taints_mutex.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_shrinker.c_i915_gem_shrinker_taints_mutex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.mutex = type { i32 }

@CONFIG_LOCKDEP = common dso_local global i32 0, align 4
@I915_MM_NORMAL = common dso_local global i32 0, align 4
@_RET_IP_ = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@I915_MM_SHRINKER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i915_gem_shrinker_taints_mutex(%struct.drm_i915_private* %0, %struct.mutex* %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.mutex*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store %struct.mutex* %1, %struct.mutex** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @CONFIG_LOCKDEP, align 4
  %7 = call i32 @IS_ENABLED(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %59

10:                                               ; preds = %2
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %12 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = call i32 @lockdep_is_held_type(%struct.TYPE_4__* %13, i32 -1)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %10
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %18 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* @I915_MM_NORMAL, align 4
  %22 = load i32, i32* @_RET_IP_, align 4
  %23 = call i32 @mutex_acquire(i32* %20, i32 %21, i32 0, i32 %22)
  store i32 1, i32* %5, align 4
  br label %24

24:                                               ; preds = %16, %10
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i32 @fs_reclaim_acquire(i32 %25)
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %28 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* @I915_MM_SHRINKER, align 4
  %32 = load i32, i32* @_RET_IP_, align 4
  %33 = call i32 @mutex_acquire(i32* %30, i32 %31, i32 0, i32 %32)
  %34 = load %struct.mutex*, %struct.mutex** %4, align 8
  %35 = getelementptr inbounds %struct.mutex, %struct.mutex* %34, i32 0, i32 0
  %36 = load i32, i32* @_RET_IP_, align 4
  %37 = call i32 @mutex_acquire(i32* %35, i32 0, i32 0, i32 %36)
  %38 = load %struct.mutex*, %struct.mutex** %4, align 8
  %39 = getelementptr inbounds %struct.mutex, %struct.mutex* %38, i32 0, i32 0
  %40 = load i32, i32* @_RET_IP_, align 4
  %41 = call i32 @mutex_release(i32* %39, i32 0, i32 %40)
  %42 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %43 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* @_RET_IP_, align 4
  %47 = call i32 @mutex_release(i32* %45, i32 0, i32 %46)
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call i32 @fs_reclaim_release(i32 %48)
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %24
  %53 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %54 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* @_RET_IP_, align 4
  %58 = call i32 @mutex_release(i32* %56, i32 0, i32 %57)
  br label %59

59:                                               ; preds = %9, %52, %24
  ret void
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @lockdep_is_held_type(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @mutex_acquire(i32*, i32, i32, i32) #1

declare dso_local i32 @fs_reclaim_acquire(i32) #1

declare dso_local i32 @mutex_release(i32*, i32, i32) #1

declare dso_local i32 @fs_reclaim_release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

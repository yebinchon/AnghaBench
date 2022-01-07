; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_shrinker.c_i915_gem_driver_register__shrinker.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_shrinker.c_i915_gem_driver_register__shrinker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@i915_gem_shrinker_scan = common dso_local global i32 0, align 4
@i915_gem_shrinker_count = common dso_local global i32 0, align 4
@DEFAULT_SEEKS = common dso_local global i32 0, align 4
@i915_gem_shrinker_oom = common dso_local global i32 0, align 4
@i915_gem_shrinker_vmap = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i915_gem_driver_register__shrinker(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %3 = load i32, i32* @i915_gem_shrinker_scan, align 4
  %4 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %5 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 3
  store i32 %3, i32* %7, align 4
  %8 = load i32, i32* @i915_gem_shrinker_count, align 4
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %10 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  store i32 %8, i32* %12, align 4
  %13 = load i32, i32* @DEFAULT_SEEKS, align 4
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %15 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  store i32 %13, i32* %17, align 4
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %19 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  store i32 4096, i32* %21, align 4
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %23 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 2
  %25 = call i32 @register_shrinker(%struct.TYPE_7__* %24)
  %26 = call i32 @WARN_ON(i32 %25)
  %27 = load i32, i32* @i915_gem_shrinker_oom, align 4
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %29 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  store i32 %27, i32* %31, align 4
  %32 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %33 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = call i32 @register_oom_notifier(%struct.TYPE_8__* %34)
  %36 = call i32 @WARN_ON(i32 %35)
  %37 = load i32, i32* @i915_gem_shrinker_vmap, align 4
  %38 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %39 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  store i32 %37, i32* %41, align 4
  %42 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %43 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = call i32 @register_vmap_purge_notifier(%struct.TYPE_6__* %44)
  %46 = call i32 @WARN_ON(i32 %45)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @register_shrinker(%struct.TYPE_7__*) #1

declare dso_local i32 @register_oom_notifier(%struct.TYPE_8__*) #1

declare dso_local i32 @register_vmap_purge_notifier(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

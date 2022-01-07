; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_shrinker.c_shrinker_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_shrinker.c_shrinker_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mutex }
%struct.mutex = type { i32 }

@I915_SHRINK_ACTIVE = common dso_local global i32 0, align 4
@I915_MM_SHRINKER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*, i32, i32*)* @shrinker_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shrinker_lock(%struct.drm_i915_private* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.mutex*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %10 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.mutex* %11, %struct.mutex** %8, align 8
  %12 = load %struct.mutex*, %struct.mutex** %8, align 8
  %13 = call i32 @mutex_trylock_recursive(%struct.mutex* %12)
  switch i32 %13, label %34 [
    i32 129, label %14
    i32 130, label %16
    i32 128, label %32
  ]

14:                                               ; preds = %3
  %15 = load i32*, i32** %7, align 8
  store i32 0, i32* %15, align 4
  store i32 1, i32* %4, align 4
  br label %36

16:                                               ; preds = %3
  %17 = load i32*, i32** %7, align 8
  store i32 0, i32* %17, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @I915_SHRINK_ACTIVE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = load %struct.mutex*, %struct.mutex** %8, align 8
  %24 = load i32, i32* @I915_MM_SHRINKER, align 4
  %25 = call i32 @mutex_lock_killable_nested(%struct.mutex* %23, i32 %24)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32*, i32** %7, align 8
  store i32 1, i32* %28, align 4
  br label %29

29:                                               ; preds = %27, %22, %16
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %4, align 4
  br label %36

32:                                               ; preds = %3
  %33 = load i32*, i32** %7, align 8
  store i32 1, i32* %33, align 4
  store i32 1, i32* %4, align 4
  br label %36

34:                                               ; preds = %3
  %35 = call i32 (...) @BUG()
  br label %36

36:                                               ; preds = %34, %32, %29, %14
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @mutex_trylock_recursive(%struct.mutex*) #1

declare dso_local i32 @mutex_lock_killable_nested(%struct.mutex*, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

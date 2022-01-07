; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_shrinker.c_unsafe_drop_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_shrinker.c_unsafe_drop_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_gem_object = type { i32 }

@I915_SHRINK_ACTIVE = common dso_local global i64 0, align 8
@I915_GEM_OBJECT_UNBIND_ACTIVE = common dso_local global i64 0, align 8
@I915_MM_SHRINKER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_gem_object*, i64)* @unsafe_drop_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unsafe_drop_pages(%struct.drm_i915_gem_object* %0, i64 %1) #0 {
  %3 = alloca %struct.drm_i915_gem_object*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.drm_i915_gem_object* %0, %struct.drm_i915_gem_object** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @I915_SHRINK_ACTIVE, align 8
  %8 = and i64 %6, %7
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i64, i64* @I915_GEM_OBJECT_UNBIND_ACTIVE, align 8
  store i64 %11, i64* %5, align 8
  br label %12

12:                                               ; preds = %10, %2
  %13 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call i64 @i915_gem_object_unbind(%struct.drm_i915_gem_object* %13, i64 %14)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %19 = load i32, i32* @I915_MM_SHRINKER, align 4
  %20 = call i32 @__i915_gem_object_put_pages(%struct.drm_i915_gem_object* %18, i32 %19)
  br label %21

21:                                               ; preds = %17, %12
  %22 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %23 = call i32 @i915_gem_object_has_pages(%struct.drm_i915_gem_object* %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  ret i32 %26
}

declare dso_local i64 @i915_gem_object_unbind(%struct.drm_i915_gem_object*, i64) #1

declare dso_local i32 @__i915_gem_object_put_pages(%struct.drm_i915_gem_object*, i32) #1

declare dso_local i32 @i915_gem_object_has_pages(%struct.drm_i915_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

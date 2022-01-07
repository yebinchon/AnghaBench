; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_domain.c_i915_gem_object_flush_if_display.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_domain.c_i915_gem_object_flush_if_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_gem_object = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i915_gem_object_flush_if_display(%struct.drm_i915_gem_object* %0) #0 {
  %2 = alloca %struct.drm_i915_gem_object*, align 8
  store %struct.drm_i915_gem_object* %0, %struct.drm_i915_gem_object** %2, align 8
  %3 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %2, align 8
  %4 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @READ_ONCE(i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %16

9:                                                ; preds = %1
  %10 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %2, align 8
  %11 = call i32 @i915_gem_object_lock(%struct.drm_i915_gem_object* %10)
  %12 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %2, align 8
  %13 = call i32 @__i915_gem_object_flush_for_display(%struct.drm_i915_gem_object* %12)
  %14 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %2, align 8
  %15 = call i32 @i915_gem_object_unlock(%struct.drm_i915_gem_object* %14)
  br label %16

16:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @i915_gem_object_lock(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @__i915_gem_object_flush_for_display(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_gem_object_unlock(%struct.drm_i915_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

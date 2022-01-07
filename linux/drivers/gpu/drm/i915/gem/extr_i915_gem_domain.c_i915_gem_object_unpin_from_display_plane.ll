; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_domain.c_i915_gem_object_unpin_from_display_plane.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_domain.c_i915_gem_object_unpin_from_display_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_vma = type { i32, %struct.drm_i915_gem_object* }
%struct.drm_i915_gem_object = type { i64 }

@I915_GTT_MIN_ALIGNMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i915_gem_object_unpin_from_display_plane(%struct.i915_vma* %0) #0 {
  %2 = alloca %struct.i915_vma*, align 8
  %3 = alloca %struct.drm_i915_gem_object*, align 8
  store %struct.i915_vma* %0, %struct.i915_vma** %2, align 8
  %4 = load %struct.i915_vma*, %struct.i915_vma** %2, align 8
  %5 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %4, i32 0, i32 1
  %6 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  store %struct.drm_i915_gem_object* %6, %struct.drm_i915_gem_object** %3, align 8
  %7 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %8 = call i32 @assert_object_held(%struct.drm_i915_gem_object* %7)
  %9 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %10 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i64 @WARN_ON(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %32

17:                                               ; preds = %1
  %18 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %19 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, -1
  store i64 %21, i64* %19, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load i32, i32* @I915_GTT_MIN_ALIGNMENT, align 4
  %25 = load %struct.i915_vma*, %struct.i915_vma** %2, align 8
  %26 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  br label %27

27:                                               ; preds = %23, %17
  %28 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %29 = call i32 @i915_gem_object_bump_inactive_ggtt(%struct.drm_i915_gem_object* %28)
  %30 = load %struct.i915_vma*, %struct.i915_vma** %2, align 8
  %31 = call i32 @i915_vma_unpin(%struct.i915_vma* %30)
  br label %32

32:                                               ; preds = %27, %16
  ret void
}

declare dso_local i32 @assert_object_held(%struct.drm_i915_gem_object*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @i915_gem_object_bump_inactive_ggtt(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_vma_unpin(%struct.i915_vma*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

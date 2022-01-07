; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_cleanup_plane_fb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_cleanup_plane_fb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32 }
%struct.drm_plane_state = type { i32 }
%struct.intel_atomic_state = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_cleanup_plane_fb(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.drm_plane_state*, align 8
  %5 = alloca %struct.intel_atomic_state*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %3, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %4, align 8
  %7 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %8 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.intel_atomic_state* @to_intel_atomic_state(i32 %9)
  store %struct.intel_atomic_state* %10, %struct.intel_atomic_state** %5, align 8
  %11 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %12 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.drm_i915_private* @to_i915(i32 %13)
  store %struct.drm_i915_private* %14, %struct.drm_i915_private** %6, align 8
  %15 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %5, align 8
  %16 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %21 = call i32 @intel_rps_mark_interactive(%struct.drm_i915_private* %20, i32 0)
  %22 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %5, align 8
  %23 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %22, i32 0, i32 0
  store i32 0, i32* %23, align 4
  br label %24

24:                                               ; preds = %19, %2
  %25 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %26 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %30 = call i32 @to_intel_plane_state(%struct.drm_plane_state* %29)
  %31 = call i32 @intel_plane_unpin_fb(i32 %30)
  %32 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %33 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = call i32 @mutex_unlock(i32* %34)
  ret void
}

declare dso_local %struct.intel_atomic_state* @to_intel_atomic_state(i32) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @intel_rps_mark_interactive(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @intel_plane_unpin_fb(i32) #1

declare dso_local i32 @to_intel_plane_state(%struct.drm_plane_state*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

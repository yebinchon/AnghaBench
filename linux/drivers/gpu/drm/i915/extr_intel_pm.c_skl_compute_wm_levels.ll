; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_skl_compute_wm_levels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_skl_compute_wm_levels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.skl_wm_params = type { i32 }
%struct.skl_wm_level = type { i32 }
%struct.drm_i915_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc_state*, %struct.skl_wm_params*, %struct.skl_wm_level*)* @skl_compute_wm_levels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skl_compute_wm_levels(%struct.intel_crtc_state* %0, %struct.skl_wm_params* %1, %struct.skl_wm_level* %2) #0 {
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.skl_wm_params*, align 8
  %6 = alloca %struct.skl_wm_level*, align 8
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.skl_wm_level*, align 8
  %11 = alloca %struct.skl_wm_level*, align 8
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %4, align 8
  store %struct.skl_wm_params* %1, %struct.skl_wm_params** %5, align 8
  store %struct.skl_wm_level* %2, %struct.skl_wm_level** %6, align 8
  %12 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %13 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.drm_i915_private* @to_i915(i32 %17)
  store %struct.drm_i915_private* %18, %struct.drm_i915_private** %7, align 8
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %20 = call i32 @ilk_wm_max_level(%struct.drm_i915_private* %19)
  store i32 %20, i32* %9, align 4
  %21 = load %struct.skl_wm_level*, %struct.skl_wm_level** %6, align 8
  %22 = getelementptr inbounds %struct.skl_wm_level, %struct.skl_wm_level* %21, i64 0
  store %struct.skl_wm_level* %22, %struct.skl_wm_level** %10, align 8
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %39, %3
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp sle i32 %24, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %23
  %28 = load %struct.skl_wm_level*, %struct.skl_wm_level** %6, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.skl_wm_level, %struct.skl_wm_level* %28, i64 %30
  store %struct.skl_wm_level* %31, %struct.skl_wm_level** %11, align 8
  %32 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.skl_wm_params*, %struct.skl_wm_params** %5, align 8
  %35 = load %struct.skl_wm_level*, %struct.skl_wm_level** %10, align 8
  %36 = load %struct.skl_wm_level*, %struct.skl_wm_level** %11, align 8
  %37 = call i32 @skl_compute_plane_wm(%struct.intel_crtc_state* %32, i32 %33, %struct.skl_wm_params* %34, %struct.skl_wm_level* %35, %struct.skl_wm_level* %36)
  %38 = load %struct.skl_wm_level*, %struct.skl_wm_level** %11, align 8
  store %struct.skl_wm_level* %38, %struct.skl_wm_level** %10, align 8
  br label %39

39:                                               ; preds = %27
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %8, align 4
  br label %23

42:                                               ; preds = %23
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @ilk_wm_max_level(%struct.drm_i915_private*) #1

declare dso_local i32 @skl_compute_plane_wm(%struct.intel_crtc_state*, i32, %struct.skl_wm_params*, %struct.skl_wm_level*, %struct.skl_wm_level*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

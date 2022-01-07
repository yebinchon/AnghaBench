; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_skl_compute_transition_wm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_skl_compute_transition_wm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.skl_wm_params = type { i32, i64 }
%struct.skl_plane_wm = type { %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@CNL_REVID_A0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc_state*, %struct.skl_wm_params*, %struct.skl_plane_wm*)* @skl_compute_transition_wm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skl_compute_transition_wm(%struct.intel_crtc_state* %0, %struct.skl_wm_params* %1, %struct.skl_plane_wm* %2) #0 {
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.skl_wm_params*, align 8
  %6 = alloca %struct.skl_plane_wm*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.drm_i915_private*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %4, align 8
  store %struct.skl_wm_params* %1, %struct.skl_wm_params** %5, align 8
  store %struct.skl_plane_wm* %2, %struct.skl_plane_wm** %6, align 8
  %15 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %16 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load %struct.drm_device*, %struct.drm_device** %19, align 8
  store %struct.drm_device* %20, %struct.drm_device** %7, align 8
  %21 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %22 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %21)
  store %struct.drm_i915_private* %22, %struct.drm_i915_private** %8, align 8
  store i32 10, i32* %11, align 4
  %23 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %24 = call i32 @INTEL_GEN(%struct.drm_i915_private* %23)
  %25 = icmp sle i32 %24, 9
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  br label %85

27:                                               ; preds = %3
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %29 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  br label %85

33:                                               ; preds = %27
  store i32 14, i32* %9, align 4
  %34 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %35 = call i32 @INTEL_GEN(%struct.drm_i915_private* %34)
  %36 = icmp sge i32 %35, 11
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 4, i32* %9, align 4
  br label %38

38:                                               ; preds = %37, %33
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 %39, 10
  store i32 %40, i32* %13, align 4
  %41 = load %struct.skl_plane_wm*, %struct.skl_plane_wm** %6, align 8
  %42 = getelementptr inbounds %struct.skl_plane_wm, %struct.skl_plane_wm* %41, i32 0, i32 1
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %46, 1
  store i32 %47, i32* %12, align 4
  %48 = load %struct.skl_wm_params*, %struct.skl_wm_params** %5, align 8
  %49 = getelementptr inbounds %struct.skl_wm_params, %struct.skl_wm_params* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %38
  %53 = load %struct.skl_wm_params*, %struct.skl_wm_params** %5, align 8
  %54 = getelementptr inbounds %struct.skl_wm_params, %struct.skl_wm_params* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @mul_round_up_u32_fixed16(i32 2, i32 %55)
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @max(i32 %58, i32 %59)
  %61 = load i32, i32* %13, align 4
  %62 = add nsw i32 %60, %61
  store i32 %62, i32* %14, align 4
  br label %76

63:                                               ; preds = %38
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %13, align 4
  %66 = add nsw i32 %64, %65
  store i32 %66, i32* %14, align 4
  %67 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %68 = load i32, i32* @CNL_REVID_A0, align 4
  %69 = load i32, i32* @CNL_REVID_A0, align 4
  %70 = call i64 @IS_CNL_REVID(%struct.drm_i915_private* %67, i32 %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %63
  %73 = load i32, i32* %14, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %14, align 4
  br label %75

75:                                               ; preds = %72, %63
  br label %76

76:                                               ; preds = %75, %52
  %77 = load i32, i32* %14, align 4
  %78 = add nsw i32 %77, 1
  %79 = load %struct.skl_plane_wm*, %struct.skl_plane_wm** %6, align 8
  %80 = getelementptr inbounds %struct.skl_plane_wm, %struct.skl_plane_wm* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 8
  %82 = load %struct.skl_plane_wm*, %struct.skl_plane_wm** %6, align 8
  %83 = getelementptr inbounds %struct.skl_plane_wm, %struct.skl_plane_wm* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  store i32 1, i32* %84, align 4
  br label %85

85:                                               ; preds = %76, %32, %26
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i64 @mul_round_up_u32_fixed16(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i64 @IS_CNL_REVID(%struct.drm_i915_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

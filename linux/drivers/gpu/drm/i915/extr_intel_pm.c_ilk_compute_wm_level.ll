; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_ilk_compute_wm_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_ilk_compute_wm_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32*, i32* }
%struct.intel_crtc = type { i32 }
%struct.intel_crtc_state = type { i32 }
%struct.intel_plane_state = type { i32 }
%struct.intel_wm_level = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, %struct.intel_crtc*, i32, %struct.intel_crtc_state*, %struct.intel_plane_state*, %struct.intel_plane_state*, %struct.intel_plane_state*, %struct.intel_wm_level*)* @ilk_compute_wm_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ilk_compute_wm_level(%struct.drm_i915_private* %0, %struct.intel_crtc* %1, i32 %2, %struct.intel_crtc_state* %3, %struct.intel_plane_state* %4, %struct.intel_plane_state* %5, %struct.intel_plane_state* %6, %struct.intel_wm_level* %7) #0 {
  %9 = alloca %struct.drm_i915_private*, align 8
  %10 = alloca %struct.intel_crtc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.intel_crtc_state*, align 8
  %13 = alloca %struct.intel_plane_state*, align 8
  %14 = alloca %struct.intel_plane_state*, align 8
  %15 = alloca %struct.intel_plane_state*, align 8
  %16 = alloca %struct.intel_wm_level*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %9, align 8
  store %struct.intel_crtc* %1, %struct.intel_crtc** %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.intel_crtc_state* %3, %struct.intel_crtc_state** %12, align 8
  store %struct.intel_plane_state* %4, %struct.intel_plane_state** %13, align 8
  store %struct.intel_plane_state* %5, %struct.intel_plane_state** %14, align 8
  store %struct.intel_plane_state* %6, %struct.intel_plane_state** %15, align 8
  store %struct.intel_wm_level* %7, %struct.intel_wm_level** %16, align 8
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  %21 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %11, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %17, align 4
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  %29 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %18, align 4
  %36 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  %37 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %19, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %8
  %47 = load i32, i32* %17, align 4
  %48 = mul nsw i32 %47, 5
  store i32 %48, i32* %17, align 4
  %49 = load i32, i32* %18, align 4
  %50 = mul nsw i32 %49, 5
  store i32 %50, i32* %18, align 4
  %51 = load i32, i32* %19, align 4
  %52 = mul nsw i32 %51, 5
  store i32 %52, i32* %19, align 4
  br label %53

53:                                               ; preds = %46, %8
  %54 = load %struct.intel_plane_state*, %struct.intel_plane_state** %13, align 8
  %55 = icmp ne %struct.intel_plane_state* %54, null
  br i1 %55, label %56, label %72

56:                                               ; preds = %53
  %57 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %12, align 8
  %58 = load %struct.intel_plane_state*, %struct.intel_plane_state** %13, align 8
  %59 = load i32, i32* %17, align 4
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @ilk_compute_pri_wm(%struct.intel_crtc_state* %57, %struct.intel_plane_state* %58, i32 %59, i32 %60)
  %62 = load %struct.intel_wm_level*, %struct.intel_wm_level** %16, align 8
  %63 = getelementptr inbounds %struct.intel_wm_level, %struct.intel_wm_level* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  %64 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %12, align 8
  %65 = load %struct.intel_plane_state*, %struct.intel_plane_state** %13, align 8
  %66 = load %struct.intel_wm_level*, %struct.intel_wm_level** %16, align 8
  %67 = getelementptr inbounds %struct.intel_wm_level, %struct.intel_wm_level* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @ilk_compute_fbc_wm(%struct.intel_crtc_state* %64, %struct.intel_plane_state* %65, i32 %68)
  %70 = load %struct.intel_wm_level*, %struct.intel_wm_level** %16, align 8
  %71 = getelementptr inbounds %struct.intel_wm_level, %struct.intel_wm_level* %70, i32 0, i32 4
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %56, %53
  %73 = load %struct.intel_plane_state*, %struct.intel_plane_state** %14, align 8
  %74 = icmp ne %struct.intel_plane_state* %73, null
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %12, align 8
  %77 = load %struct.intel_plane_state*, %struct.intel_plane_state** %14, align 8
  %78 = load i32, i32* %18, align 4
  %79 = call i32 @ilk_compute_spr_wm(%struct.intel_crtc_state* %76, %struct.intel_plane_state* %77, i32 %78)
  %80 = load %struct.intel_wm_level*, %struct.intel_wm_level** %16, align 8
  %81 = getelementptr inbounds %struct.intel_wm_level, %struct.intel_wm_level* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %75, %72
  %83 = load %struct.intel_plane_state*, %struct.intel_plane_state** %15, align 8
  %84 = icmp ne %struct.intel_plane_state* %83, null
  br i1 %84, label %85, label %92

85:                                               ; preds = %82
  %86 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %12, align 8
  %87 = load %struct.intel_plane_state*, %struct.intel_plane_state** %15, align 8
  %88 = load i32, i32* %19, align 4
  %89 = call i32 @ilk_compute_cur_wm(%struct.intel_crtc_state* %86, %struct.intel_plane_state* %87, i32 %88)
  %90 = load %struct.intel_wm_level*, %struct.intel_wm_level** %16, align 8
  %91 = getelementptr inbounds %struct.intel_wm_level, %struct.intel_wm_level* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  br label %92

92:                                               ; preds = %85, %82
  %93 = load %struct.intel_wm_level*, %struct.intel_wm_level** %16, align 8
  %94 = getelementptr inbounds %struct.intel_wm_level, %struct.intel_wm_level* %93, i32 0, i32 0
  store i32 1, i32* %94, align 4
  ret void
}

declare dso_local i32 @ilk_compute_pri_wm(%struct.intel_crtc_state*, %struct.intel_plane_state*, i32, i32) #1

declare dso_local i32 @ilk_compute_fbc_wm(%struct.intel_crtc_state*, %struct.intel_plane_state*, i32) #1

declare dso_local i32 @ilk_compute_spr_wm(%struct.intel_crtc_state*, %struct.intel_plane_state*, i32) #1

declare dso_local i32 @ilk_compute_cur_wm(%struct.intel_crtc_state*, %struct.intel_plane_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

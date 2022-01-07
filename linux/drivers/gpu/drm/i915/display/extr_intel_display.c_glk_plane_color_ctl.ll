; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_glk_plane_color_ctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_glk_plane_color_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { i32 }
%struct.intel_plane_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, %struct.TYPE_6__*, %struct.drm_framebuffer* }
%struct.TYPE_6__ = type { i32 }
%struct.drm_framebuffer = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.drm_i915_private = type { i32 }
%struct.intel_plane = type { i32 }

@PLANE_COLOR_PLANE_GAMMA_DISABLE = common dso_local global i32 0, align 4
@DRM_COLOR_YCBCR_BT709 = common dso_local global i64 0, align 8
@PLANE_COLOR_CSC_MODE_YUV709_TO_RGB709 = common dso_local global i32 0, align 4
@PLANE_COLOR_CSC_MODE_YUV601_TO_RGB709 = common dso_local global i32 0, align 4
@DRM_COLOR_YCBCR_FULL_RANGE = common dso_local global i64 0, align 8
@PLANE_COLOR_YUV_RANGE_CORRECTION_DISABLE = common dso_local global i32 0, align 4
@PLANE_COLOR_INPUT_CSC_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @glk_plane_color_ctl(%struct.intel_crtc_state* %0, %struct.intel_plane_state* %1) #0 {
  %3 = alloca %struct.intel_crtc_state*, align 8
  %4 = alloca %struct.intel_plane_state*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.drm_framebuffer*, align 8
  %7 = alloca %struct.intel_plane*, align 8
  %8 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %3, align 8
  store %struct.intel_plane_state* %1, %struct.intel_plane_state** %4, align 8
  %9 = load %struct.intel_plane_state*, %struct.intel_plane_state** %4, align 8
  %10 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.drm_i915_private* @to_i915(i32 %14)
  store %struct.drm_i915_private* %15, %struct.drm_i915_private** %5, align 8
  %16 = load %struct.intel_plane_state*, %struct.intel_plane_state** %4, align 8
  %17 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 3
  %19 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %18, align 8
  store %struct.drm_framebuffer* %19, %struct.drm_framebuffer** %6, align 8
  %20 = load %struct.intel_plane_state*, %struct.intel_plane_state** %4, align 8
  %21 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = call %struct.intel_plane* @to_intel_plane(%struct.TYPE_6__* %23)
  store %struct.intel_plane* %24, %struct.intel_plane** %7, align 8
  store i32 0, i32* %8, align 4
  %25 = load i32, i32* @PLANE_COLOR_PLANE_GAMMA_DISABLE, align 4
  %26 = load i32, i32* %8, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %8, align 4
  %28 = load %struct.intel_plane_state*, %struct.intel_plane_state** %4, align 8
  %29 = call i32 @glk_plane_color_ctl_alpha(%struct.intel_plane_state* %28)
  %30 = load i32, i32* %8, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %8, align 4
  %32 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %33 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %72

38:                                               ; preds = %2
  %39 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %40 = load %struct.intel_plane*, %struct.intel_plane** %7, align 8
  %41 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @icl_is_hdr_plane(%struct.drm_i915_private* %39, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %72, label %45

45:                                               ; preds = %38
  %46 = load %struct.intel_plane_state*, %struct.intel_plane_state** %4, align 8
  %47 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @DRM_COLOR_YCBCR_BT709, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = load i32, i32* @PLANE_COLOR_CSC_MODE_YUV709_TO_RGB709, align 4
  %54 = load i32, i32* %8, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %8, align 4
  br label %60

56:                                               ; preds = %45
  %57 = load i32, i32* @PLANE_COLOR_CSC_MODE_YUV601_TO_RGB709, align 4
  %58 = load i32, i32* %8, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %56, %52
  %61 = load %struct.intel_plane_state*, %struct.intel_plane_state** %4, align 8
  %62 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @DRM_COLOR_YCBCR_FULL_RANGE, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %60
  %68 = load i32, i32* @PLANE_COLOR_YUV_RANGE_CORRECTION_DISABLE, align 4
  %69 = load i32, i32* %8, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %67, %60
  br label %84

72:                                               ; preds = %38, %2
  %73 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %74 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %73, i32 0, i32 0
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %72
  %80 = load i32, i32* @PLANE_COLOR_INPUT_CSC_ENABLE, align 4
  %81 = load i32, i32* %8, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %8, align 4
  br label %83

83:                                               ; preds = %79, %72
  br label %84

84:                                               ; preds = %83, %71
  %85 = load i32, i32* %8, align 4
  ret i32 %85
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.intel_plane* @to_intel_plane(%struct.TYPE_6__*) #1

declare dso_local i32 @glk_plane_color_ctl_alpha(%struct.intel_plane_state*) #1

declare dso_local i32 @icl_is_hdr_plane(%struct.drm_i915_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

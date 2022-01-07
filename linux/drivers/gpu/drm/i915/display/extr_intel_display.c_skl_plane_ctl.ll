; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_skl_plane_ctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_skl_plane_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { i32 }
%struct.intel_plane_state = type { %struct.TYPE_5__, %struct.drm_intel_sprite_colorkey }
%struct.TYPE_5__ = type { i32, i64, i64, %struct.drm_framebuffer*, %struct.TYPE_4__* }
%struct.drm_framebuffer = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.drm_intel_sprite_colorkey = type { i32 }
%struct.drm_i915_private = type { i32 }

@PLANE_CTL_ENABLE = common dso_local global i32 0, align 4
@PLANE_CTL_PLANE_GAMMA_DISABLE = common dso_local global i32 0, align 4
@DRM_COLOR_YCBCR_BT709 = common dso_local global i64 0, align 8
@PLANE_CTL_YUV_TO_RGB_CSC_FORMAT_BT709 = common dso_local global i32 0, align 4
@DRM_COLOR_YCBCR_FULL_RANGE = common dso_local global i64 0, align 8
@PLANE_CTL_YUV_RANGE_CORRECTION_DISABLE = common dso_local global i32 0, align 4
@DRM_MODE_ROTATE_MASK = common dso_local global i32 0, align 4
@DRM_MODE_REFLECT_MASK = common dso_local global i32 0, align 4
@I915_SET_COLORKEY_DESTINATION = common dso_local global i32 0, align 4
@PLANE_CTL_KEY_ENABLE_DESTINATION = common dso_local global i32 0, align 4
@I915_SET_COLORKEY_SOURCE = common dso_local global i32 0, align 4
@PLANE_CTL_KEY_ENABLE_SOURCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @skl_plane_ctl(%struct.intel_crtc_state* %0, %struct.intel_plane_state* %1) #0 {
  %3 = alloca %struct.intel_crtc_state*, align 8
  %4 = alloca %struct.intel_plane_state*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.drm_framebuffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_intel_sprite_colorkey*, align 8
  %9 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %3, align 8
  store %struct.intel_plane_state* %1, %struct.intel_plane_state** %4, align 8
  %10 = load %struct.intel_plane_state*, %struct.intel_plane_state** %4, align 8
  %11 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.drm_i915_private* @to_i915(i32 %15)
  store %struct.drm_i915_private* %16, %struct.drm_i915_private** %5, align 8
  %17 = load %struct.intel_plane_state*, %struct.intel_plane_state** %4, align 8
  %18 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 3
  %20 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %19, align 8
  store %struct.drm_framebuffer* %20, %struct.drm_framebuffer** %6, align 8
  %21 = load %struct.intel_plane_state*, %struct.intel_plane_state** %4, align 8
  %22 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %7, align 4
  %25 = load %struct.intel_plane_state*, %struct.intel_plane_state** %4, align 8
  %26 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %25, i32 0, i32 1
  store %struct.drm_intel_sprite_colorkey* %26, %struct.drm_intel_sprite_colorkey** %8, align 8
  %27 = load i32, i32* @PLANE_CTL_ENABLE, align 4
  store i32 %27, i32* %9, align 4
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %29 = call i32 @INTEL_GEN(%struct.drm_i915_private* %28)
  %30 = icmp slt i32 %29, 10
  br i1 %30, label %31, label %65

31:                                               ; preds = %2
  %32 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %33 = call i32 @IS_GEMINILAKE(%struct.drm_i915_private* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %65, label %35

35:                                               ; preds = %31
  %36 = load %struct.intel_plane_state*, %struct.intel_plane_state** %4, align 8
  %37 = call i32 @skl_plane_ctl_alpha(%struct.intel_plane_state* %36)
  %38 = load i32, i32* %9, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* @PLANE_CTL_PLANE_GAMMA_DISABLE, align 4
  %41 = load i32, i32* %9, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %9, align 4
  %43 = load %struct.intel_plane_state*, %struct.intel_plane_state** %4, align 8
  %44 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @DRM_COLOR_YCBCR_BT709, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %35
  %50 = load i32, i32* @PLANE_CTL_YUV_TO_RGB_CSC_FORMAT_BT709, align 4
  %51 = load i32, i32* %9, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %49, %35
  %54 = load %struct.intel_plane_state*, %struct.intel_plane_state** %4, align 8
  %55 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @DRM_COLOR_YCBCR_FULL_RANGE, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %53
  %61 = load i32, i32* @PLANE_CTL_YUV_RANGE_CORRECTION_DISABLE, align 4
  %62 = load i32, i32* %9, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %60, %53
  br label %65

65:                                               ; preds = %64, %31, %2
  %66 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %67 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %66, i32 0, i32 1
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @skl_plane_ctl_format(i32 %70)
  %72 = load i32, i32* %9, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %9, align 4
  %74 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %75 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @skl_plane_ctl_tiling(i32 %76)
  %78 = load i32, i32* %9, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @DRM_MODE_ROTATE_MASK, align 4
  %82 = and i32 %80, %81
  %83 = call i32 @skl_plane_ctl_rotate(i32 %82)
  %84 = load i32, i32* %9, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %9, align 4
  %86 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %87 = call i32 @INTEL_GEN(%struct.drm_i915_private* %86)
  %88 = icmp sge i32 %87, 10
  br i1 %88, label %89, label %96

89:                                               ; preds = %65
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* @DRM_MODE_REFLECT_MASK, align 4
  %92 = and i32 %90, %91
  %93 = call i32 @cnl_plane_ctl_flip(i32 %92)
  %94 = load i32, i32* %9, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %9, align 4
  br label %96

96:                                               ; preds = %89, %65
  %97 = load %struct.drm_intel_sprite_colorkey*, %struct.drm_intel_sprite_colorkey** %8, align 8
  %98 = getelementptr inbounds %struct.drm_intel_sprite_colorkey, %struct.drm_intel_sprite_colorkey* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @I915_SET_COLORKEY_DESTINATION, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %96
  %104 = load i32, i32* @PLANE_CTL_KEY_ENABLE_DESTINATION, align 4
  %105 = load i32, i32* %9, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %9, align 4
  br label %119

107:                                              ; preds = %96
  %108 = load %struct.drm_intel_sprite_colorkey*, %struct.drm_intel_sprite_colorkey** %8, align 8
  %109 = getelementptr inbounds %struct.drm_intel_sprite_colorkey, %struct.drm_intel_sprite_colorkey* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @I915_SET_COLORKEY_SOURCE, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %107
  %115 = load i32, i32* @PLANE_CTL_KEY_ENABLE_SOURCE, align 4
  %116 = load i32, i32* %9, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %9, align 4
  br label %118

118:                                              ; preds = %114, %107
  br label %119

119:                                              ; preds = %118, %103
  %120 = load i32, i32* %9, align 4
  ret i32 %120
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @IS_GEMINILAKE(%struct.drm_i915_private*) #1

declare dso_local i32 @skl_plane_ctl_alpha(%struct.intel_plane_state*) #1

declare dso_local i32 @skl_plane_ctl_format(i32) #1

declare dso_local i32 @skl_plane_ctl_tiling(i32) #1

declare dso_local i32 @skl_plane_ctl_rotate(i32) #1

declare dso_local i32 @cnl_plane_ctl_flip(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

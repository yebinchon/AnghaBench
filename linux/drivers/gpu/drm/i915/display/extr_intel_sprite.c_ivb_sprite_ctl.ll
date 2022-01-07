; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sprite.c_ivb_sprite_ctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sprite.c_ivb_sprite_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { i32 }
%struct.intel_plane_state = type { %struct.TYPE_6__, %struct.drm_intel_sprite_colorkey }
%struct.TYPE_6__ = type { i32, i64, i64, %struct.drm_framebuffer*, %struct.TYPE_4__* }
%struct.drm_framebuffer = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.drm_intel_sprite_colorkey = type { i32 }
%struct.drm_i915_private = type { i32 }

@SPRITE_ENABLE = common dso_local global i32 0, align 4
@SPRITE_TRICKLE_FEED_DISABLE = common dso_local global i32 0, align 4
@SPRITE_FORMAT_RGBX888 = common dso_local global i32 0, align 4
@SPRITE_RGB_ORDER_RGBX = common dso_local global i32 0, align 4
@SPRITE_FORMAT_YUV422 = common dso_local global i32 0, align 4
@SPRITE_YUV_ORDER_YUYV = common dso_local global i32 0, align 4
@SPRITE_YUV_ORDER_YVYU = common dso_local global i32 0, align 4
@SPRITE_YUV_ORDER_UYVY = common dso_local global i32 0, align 4
@SPRITE_YUV_ORDER_VYUY = common dso_local global i32 0, align 4
@SPRITE_INT_GAMMA_DISABLE = common dso_local global i32 0, align 4
@DRM_COLOR_YCBCR_BT709 = common dso_local global i64 0, align 8
@SPRITE_YUV_TO_RGB_CSC_FORMAT_BT709 = common dso_local global i32 0, align 4
@DRM_COLOR_YCBCR_FULL_RANGE = common dso_local global i64 0, align 8
@SPRITE_YUV_RANGE_CORRECTION_DISABLE = common dso_local global i32 0, align 4
@I915_FORMAT_MOD_X_TILED = common dso_local global i64 0, align 8
@SPRITE_TILED = common dso_local global i32 0, align 4
@DRM_MODE_ROTATE_180 = common dso_local global i32 0, align 4
@SPRITE_ROTATE_180 = common dso_local global i32 0, align 4
@I915_SET_COLORKEY_DESTINATION = common dso_local global i32 0, align 4
@SPRITE_DEST_KEY = common dso_local global i32 0, align 4
@I915_SET_COLORKEY_SOURCE = common dso_local global i32 0, align 4
@SPRITE_SOURCE_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_crtc_state*, %struct.intel_plane_state*)* @ivb_sprite_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivb_sprite_ctl(%struct.intel_crtc_state* %0, %struct.intel_plane_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.intel_plane_state*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca %struct.drm_framebuffer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_intel_sprite_colorkey*, align 8
  %10 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %4, align 8
  store %struct.intel_plane_state* %1, %struct.intel_plane_state** %5, align 8
  %11 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %12 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.drm_i915_private* @to_i915(i32 %16)
  store %struct.drm_i915_private* %17, %struct.drm_i915_private** %6, align 8
  %18 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %19 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 3
  %21 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %20, align 8
  store %struct.drm_framebuffer* %21, %struct.drm_framebuffer** %7, align 8
  %22 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %23 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %8, align 4
  %26 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %27 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %26, i32 0, i32 1
  store %struct.drm_intel_sprite_colorkey* %27, %struct.drm_intel_sprite_colorkey** %9, align 8
  %28 = load i32, i32* @SPRITE_ENABLE, align 4
  store i32 %28, i32* %10, align 4
  %29 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %30 = call i64 @IS_IVYBRIDGE(%struct.drm_i915_private* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %2
  %33 = load i32, i32* @SPRITE_TRICKLE_FEED_DISABLE, align 4
  %34 = load i32, i32* %10, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %10, align 4
  br label %36

36:                                               ; preds = %32, %2
  %37 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %38 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %37, i32 0, i32 1
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %76 [
    i32 131, label %42
    i32 130, label %48
    i32 129, label %52
    i32 128, label %58
    i32 133, label %64
    i32 132, label %70
  ]

42:                                               ; preds = %36
  %43 = load i32, i32* @SPRITE_FORMAT_RGBX888, align 4
  %44 = load i32, i32* @SPRITE_RGB_ORDER_RGBX, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* %10, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %10, align 4
  br label %83

48:                                               ; preds = %36
  %49 = load i32, i32* @SPRITE_FORMAT_RGBX888, align 4
  %50 = load i32, i32* %10, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %10, align 4
  br label %83

52:                                               ; preds = %36
  %53 = load i32, i32* @SPRITE_FORMAT_YUV422, align 4
  %54 = load i32, i32* @SPRITE_YUV_ORDER_YUYV, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* %10, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %10, align 4
  br label %83

58:                                               ; preds = %36
  %59 = load i32, i32* @SPRITE_FORMAT_YUV422, align 4
  %60 = load i32, i32* @SPRITE_YUV_ORDER_YVYU, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* %10, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %10, align 4
  br label %83

64:                                               ; preds = %36
  %65 = load i32, i32* @SPRITE_FORMAT_YUV422, align 4
  %66 = load i32, i32* @SPRITE_YUV_ORDER_UYVY, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* %10, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %10, align 4
  br label %83

70:                                               ; preds = %36
  %71 = load i32, i32* @SPRITE_FORMAT_YUV422, align 4
  %72 = load i32, i32* @SPRITE_YUV_ORDER_VYUY, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* %10, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %10, align 4
  br label %83

76:                                               ; preds = %36
  %77 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %78 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %77, i32 0, i32 1
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @MISSING_CASE(i32 %81)
  store i32 0, i32* %3, align 4
  br label %152

83:                                               ; preds = %70, %64, %58, %52, %48, %42
  %84 = load i32, i32* @SPRITE_INT_GAMMA_DISABLE, align 4
  %85 = load i32, i32* %10, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %10, align 4
  %87 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %88 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @DRM_COLOR_YCBCR_BT709, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %83
  %94 = load i32, i32* @SPRITE_YUV_TO_RGB_CSC_FORMAT_BT709, align 4
  %95 = load i32, i32* %10, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %10, align 4
  br label %97

97:                                               ; preds = %93, %83
  %98 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %99 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @DRM_COLOR_YCBCR_FULL_RANGE, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %97
  %105 = load i32, i32* @SPRITE_YUV_RANGE_CORRECTION_DISABLE, align 4
  %106 = load i32, i32* %10, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %10, align 4
  br label %108

108:                                              ; preds = %104, %97
  %109 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %110 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @I915_FORMAT_MOD_X_TILED, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %108
  %115 = load i32, i32* @SPRITE_TILED, align 4
  %116 = load i32, i32* %10, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %10, align 4
  br label %118

118:                                              ; preds = %114, %108
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* @DRM_MODE_ROTATE_180, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %118
  %124 = load i32, i32* @SPRITE_ROTATE_180, align 4
  %125 = load i32, i32* %10, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %10, align 4
  br label %127

127:                                              ; preds = %123, %118
  %128 = load %struct.drm_intel_sprite_colorkey*, %struct.drm_intel_sprite_colorkey** %9, align 8
  %129 = getelementptr inbounds %struct.drm_intel_sprite_colorkey, %struct.drm_intel_sprite_colorkey* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @I915_SET_COLORKEY_DESTINATION, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %127
  %135 = load i32, i32* @SPRITE_DEST_KEY, align 4
  %136 = load i32, i32* %10, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %10, align 4
  br label %150

138:                                              ; preds = %127
  %139 = load %struct.drm_intel_sprite_colorkey*, %struct.drm_intel_sprite_colorkey** %9, align 8
  %140 = getelementptr inbounds %struct.drm_intel_sprite_colorkey, %struct.drm_intel_sprite_colorkey* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @I915_SET_COLORKEY_SOURCE, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %138
  %146 = load i32, i32* @SPRITE_SOURCE_KEY, align 4
  %147 = load i32, i32* %10, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %10, align 4
  br label %149

149:                                              ; preds = %145, %138
  br label %150

150:                                              ; preds = %149, %134
  %151 = load i32, i32* %10, align 4
  store i32 %151, i32* %3, align 4
  br label %152

152:                                              ; preds = %150, %76
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i64 @IS_IVYBRIDGE(%struct.drm_i915_private*) #1

declare dso_local i32 @MISSING_CASE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

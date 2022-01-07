; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sprite.c_vlv_sprite_ctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sprite.c_vlv_sprite_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { i32 }
%struct.intel_plane_state = type { %struct.TYPE_4__, %struct.drm_intel_sprite_colorkey }
%struct.TYPE_4__ = type { i32, i64, %struct.drm_framebuffer* }
%struct.drm_framebuffer = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.drm_intel_sprite_colorkey = type { i32 }

@SP_ENABLE = common dso_local global i32 0, align 4
@SP_FORMAT_YUV422 = common dso_local global i32 0, align 4
@SP_YUV_ORDER_YUYV = common dso_local global i32 0, align 4
@SP_YUV_ORDER_YVYU = common dso_local global i32 0, align 4
@SP_YUV_ORDER_UYVY = common dso_local global i32 0, align 4
@SP_YUV_ORDER_VYUY = common dso_local global i32 0, align 4
@SP_FORMAT_BGR565 = common dso_local global i32 0, align 4
@SP_FORMAT_BGRX8888 = common dso_local global i32 0, align 4
@SP_FORMAT_BGRA8888 = common dso_local global i32 0, align 4
@SP_FORMAT_RGBX1010102 = common dso_local global i32 0, align 4
@SP_FORMAT_RGBA1010102 = common dso_local global i32 0, align 4
@SP_FORMAT_RGBX8888 = common dso_local global i32 0, align 4
@SP_FORMAT_RGBA8888 = common dso_local global i32 0, align 4
@DRM_COLOR_YCBCR_BT709 = common dso_local global i64 0, align 8
@SP_YUV_FORMAT_BT709 = common dso_local global i32 0, align 4
@I915_FORMAT_MOD_X_TILED = common dso_local global i64 0, align 8
@SP_TILED = common dso_local global i32 0, align 4
@DRM_MODE_ROTATE_180 = common dso_local global i32 0, align 4
@SP_ROTATE_180 = common dso_local global i32 0, align 4
@DRM_MODE_REFLECT_X = common dso_local global i32 0, align 4
@SP_MIRROR = common dso_local global i32 0, align 4
@I915_SET_COLORKEY_SOURCE = common dso_local global i32 0, align 4
@SP_SOURCE_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_crtc_state*, %struct.intel_plane_state*)* @vlv_sprite_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlv_sprite_ctl(%struct.intel_crtc_state* %0, %struct.intel_plane_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.intel_plane_state*, align 8
  %6 = alloca %struct.drm_framebuffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_intel_sprite_colorkey*, align 8
  %9 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %4, align 8
  store %struct.intel_plane_state* %1, %struct.intel_plane_state** %5, align 8
  %10 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %11 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  %13 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  store %struct.drm_framebuffer* %13, %struct.drm_framebuffer** %6, align 8
  %14 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %15 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %7, align 4
  %18 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %19 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %18, i32 0, i32 1
  store %struct.drm_intel_sprite_colorkey* %19, %struct.drm_intel_sprite_colorkey** %8, align 8
  %20 = load i32, i32* @SP_ENABLE, align 4
  store i32 %20, i32* %9, align 4
  %21 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %22 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %78 [
    i32 129, label %26
    i32 128, label %32
    i32 134, label %38
    i32 133, label %44
    i32 135, label %50
    i32 130, label %54
    i32 136, label %58
    i32 132, label %62
    i32 138, label %66
    i32 131, label %70
    i32 137, label %74
  ]

26:                                               ; preds = %2
  %27 = load i32, i32* @SP_FORMAT_YUV422, align 4
  %28 = load i32, i32* @SP_YUV_ORDER_YUYV, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* %9, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %9, align 4
  br label %85

32:                                               ; preds = %2
  %33 = load i32, i32* @SP_FORMAT_YUV422, align 4
  %34 = load i32, i32* @SP_YUV_ORDER_YVYU, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* %9, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %9, align 4
  br label %85

38:                                               ; preds = %2
  %39 = load i32, i32* @SP_FORMAT_YUV422, align 4
  %40 = load i32, i32* @SP_YUV_ORDER_UYVY, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* %9, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %9, align 4
  br label %85

44:                                               ; preds = %2
  %45 = load i32, i32* @SP_FORMAT_YUV422, align 4
  %46 = load i32, i32* @SP_YUV_ORDER_VYUY, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* %9, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %9, align 4
  br label %85

50:                                               ; preds = %2
  %51 = load i32, i32* @SP_FORMAT_BGR565, align 4
  %52 = load i32, i32* %9, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %9, align 4
  br label %85

54:                                               ; preds = %2
  %55 = load i32, i32* @SP_FORMAT_BGRX8888, align 4
  %56 = load i32, i32* %9, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %9, align 4
  br label %85

58:                                               ; preds = %2
  %59 = load i32, i32* @SP_FORMAT_BGRA8888, align 4
  %60 = load i32, i32* %9, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %9, align 4
  br label %85

62:                                               ; preds = %2
  %63 = load i32, i32* @SP_FORMAT_RGBX1010102, align 4
  %64 = load i32, i32* %9, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %9, align 4
  br label %85

66:                                               ; preds = %2
  %67 = load i32, i32* @SP_FORMAT_RGBA1010102, align 4
  %68 = load i32, i32* %9, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %9, align 4
  br label %85

70:                                               ; preds = %2
  %71 = load i32, i32* @SP_FORMAT_RGBX8888, align 4
  %72 = load i32, i32* %9, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %9, align 4
  br label %85

74:                                               ; preds = %2
  %75 = load i32, i32* @SP_FORMAT_RGBA8888, align 4
  %76 = load i32, i32* %9, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %9, align 4
  br label %85

78:                                               ; preds = %2
  %79 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %80 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %79, i32 0, i32 1
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @MISSING_CASE(i32 %83)
  store i32 0, i32* %3, align 4
  br label %137

85:                                               ; preds = %74, %70, %66, %62, %58, %54, %50, %44, %38, %32, %26
  %86 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %87 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @DRM_COLOR_YCBCR_BT709, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %85
  %93 = load i32, i32* @SP_YUV_FORMAT_BT709, align 4
  %94 = load i32, i32* %9, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %9, align 4
  br label %96

96:                                               ; preds = %92, %85
  %97 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %98 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @I915_FORMAT_MOD_X_TILED, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %96
  %103 = load i32, i32* @SP_TILED, align 4
  %104 = load i32, i32* %9, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %9, align 4
  br label %106

106:                                              ; preds = %102, %96
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* @DRM_MODE_ROTATE_180, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = load i32, i32* @SP_ROTATE_180, align 4
  %113 = load i32, i32* %9, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %9, align 4
  br label %115

115:                                              ; preds = %111, %106
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* @DRM_MODE_REFLECT_X, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  %121 = load i32, i32* @SP_MIRROR, align 4
  %122 = load i32, i32* %9, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %9, align 4
  br label %124

124:                                              ; preds = %120, %115
  %125 = load %struct.drm_intel_sprite_colorkey*, %struct.drm_intel_sprite_colorkey** %8, align 8
  %126 = getelementptr inbounds %struct.drm_intel_sprite_colorkey, %struct.drm_intel_sprite_colorkey* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @I915_SET_COLORKEY_SOURCE, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %124
  %132 = load i32, i32* @SP_SOURCE_KEY, align 4
  %133 = load i32, i32* %9, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %9, align 4
  br label %135

135:                                              ; preds = %131, %124
  %136 = load i32, i32* %9, align 4
  store i32 %136, i32* %3, align 4
  br label %137

137:                                              ; preds = %135, %78
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local i32 @MISSING_CASE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

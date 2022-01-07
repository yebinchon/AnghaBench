; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sprite.c_skl_plane_check_fb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sprite.c_skl_plane_check_fb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.intel_plane_state = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.drm_framebuffer*, i32 }
%struct.drm_framebuffer = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.intel_plane = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.drm_format_name_buf = type { i32 }

@DRM_MODE_ROTATE_0 = common dso_local global i32 0, align 4
@DRM_MODE_ROTATE_180 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"RC support only with 0/180 degree rotation (%x)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DRM_MODE_REFLECT_X = common dso_local global i32 0, align 4
@DRM_FORMAT_MOD_LINEAR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [62 x i8] c"horizontal flip is not supported with linear surface formats\0A\00", align 1
@I915_FORMAT_MOD_Y_TILED = common dso_local global i64 0, align 8
@I915_FORMAT_MOD_Yf_TILED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"Y/Yf tiling required for 90/270!\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Unsupported pixel format %s for 90/270!\0A\00", align 1
@DRM_MODE_FLAG_INTERLACE = common dso_local global i32 0, align 4
@I915_FORMAT_MOD_Y_TILED_CCS = common dso_local global i64 0, align 8
@I915_FORMAT_MOD_Yf_TILED_CCS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [41 x i8] c"Y/Yf tiling not supported in IF-ID mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_crtc_state*, %struct.intel_plane_state*)* @skl_plane_check_fb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_plane_check_fb(%struct.intel_crtc_state* %0, %struct.intel_plane_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.intel_plane_state*, align 8
  %6 = alloca %struct.intel_plane*, align 8
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca %struct.drm_framebuffer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.drm_format_name_buf, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %4, align 8
  store %struct.intel_plane_state* %1, %struct.intel_plane_state** %5, align 8
  %11 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %12 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.intel_plane* @to_intel_plane(i32 %14)
  store %struct.intel_plane* %15, %struct.intel_plane** %6, align 8
  %16 = load %struct.intel_plane*, %struct.intel_plane** %6, align 8
  %17 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.drm_i915_private* @to_i915(i32 %19)
  store %struct.drm_i915_private* %20, %struct.drm_i915_private** %7, align 8
  %21 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %22 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %23, align 8
  store %struct.drm_framebuffer* %24, %struct.drm_framebuffer** %8, align 8
  %25 = load %struct.intel_plane_state*, %struct.intel_plane_state** %5, align 8
  %26 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %9, align 4
  %29 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %30 = icmp ne %struct.drm_framebuffer* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %154

32:                                               ; preds = %2
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @DRM_MODE_ROTATE_0, align 4
  %35 = load i32, i32* @DRM_MODE_ROTATE_180, align 4
  %36 = or i32 %34, %35
  %37 = xor i32 %36, -1
  %38 = and i32 %33, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %32
  %41 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %42 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @is_ccs_modifier(i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load i32, i32* %9, align 4
  %48 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %154

51:                                               ; preds = %40, %32
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @DRM_MODE_REFLECT_X, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %51
  %57 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %58 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @DRM_FORMAT_MOD_LINEAR, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %154

66:                                               ; preds = %56, %51
  %67 = load i32, i32* %9, align 4
  %68 = call i64 @drm_rotation_90_or_270(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %110

70:                                               ; preds = %66
  %71 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %72 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @I915_FORMAT_MOD_Y_TILED, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %70
  %77 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %78 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @I915_FORMAT_MOD_Yf_TILED, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %154

86:                                               ; preds = %76, %70
  %87 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %88 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %87, i32 0, i32 1
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  switch i32 %91, label %108 [
    i32 135, label %92
    i32 136, label %98
    i32 133, label %98
    i32 134, label %98
    i32 137, label %98
    i32 138, label %98
    i32 130, label %98
    i32 129, label %98
    i32 128, label %98
    i32 132, label %98
    i32 131, label %98
  ]

92:                                               ; preds = %86
  %93 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %94 = call i32 @INTEL_GEN(%struct.drm_i915_private* %93)
  %95 = icmp sge i32 %94, 11
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  br label %109

97:                                               ; preds = %92
  br label %98

98:                                               ; preds = %86, %86, %86, %86, %86, %86, %86, %86, %86, %86, %97
  %99 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %100 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %99, i32 0, i32 1
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @drm_get_format_name(i32 %103, %struct.drm_format_name_buf* %10)
  %105 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %104)
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %3, align 4
  br label %154

108:                                              ; preds = %86
  br label %109

109:                                              ; preds = %108, %96
  br label %110

110:                                              ; preds = %109, %66
  %111 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %112 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %153

116:                                              ; preds = %110
  %117 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %118 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %153

125:                                              ; preds = %116
  %126 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %127 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @I915_FORMAT_MOD_Y_TILED, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %149, label %131

131:                                              ; preds = %125
  %132 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %133 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @I915_FORMAT_MOD_Yf_TILED, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %149, label %137

137:                                              ; preds = %131
  %138 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %139 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @I915_FORMAT_MOD_Y_TILED_CCS, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %149, label %143

143:                                              ; preds = %137
  %144 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %145 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @I915_FORMAT_MOD_Yf_TILED_CCS, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %153

149:                                              ; preds = %143, %137, %131, %125
  %150 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %151 = load i32, i32* @EINVAL, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %3, align 4
  br label %154

153:                                              ; preds = %143, %116, %110
  store i32 0, i32* %3, align 4
  br label %154

154:                                              ; preds = %153, %149, %98, %82, %62, %46, %31
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local %struct.intel_plane* @to_intel_plane(i32) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i64 @is_ccs_modifier(i64) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i64 @drm_rotation_90_or_270(i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @drm_get_format_name(i32, %struct.drm_format_name_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

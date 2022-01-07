; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_tv.c_intel_tv_compute_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_tv.c_intel_tv_compute_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.intel_crtc_state = type { i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i8*, i32 }
%struct.drm_connector_state = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.drm_i915_private = type { i32 }
%struct.intel_tv_connector_state = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.tv_mode = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_DBLSCAN = common dso_local global i32 0, align 4
@INTEL_OUTPUT_FORMAT_RGB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"forcing bpc to 8 for TV\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"No vertical scaling for >1024 pixel wide modes\0A\00", align 1
@DRM_MODE_FLAG_INTERLACE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"TV mode:\0A\00", align 1
@I915_MODE_FLAG_USE_SCANLINE_COUNTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state*)* @intel_tv_compute_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_tv_compute_config(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1, %struct.drm_connector_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_encoder*, align 8
  %6 = alloca %struct.intel_crtc_state*, align 8
  %7 = alloca %struct.drm_connector_state*, align 8
  %8 = alloca %struct.drm_i915_private*, align 8
  %9 = alloca %struct.intel_tv_connector_state*, align 8
  %10 = alloca %struct.tv_mode*, align 8
  %11 = alloca %struct.drm_display_mode*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %5, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %6, align 8
  store %struct.drm_connector_state* %2, %struct.drm_connector_state** %7, align 8
  %17 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %18 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.drm_i915_private* @to_i915(i32 %20)
  store %struct.drm_i915_private* %21, %struct.drm_i915_private** %8, align 8
  %22 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %23 = call %struct.intel_tv_connector_state* @to_intel_tv_connector_state(%struct.drm_connector_state* %22)
  store %struct.intel_tv_connector_state* %23, %struct.intel_tv_connector_state** %9, align 8
  %24 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %25 = call %struct.tv_mode* @intel_tv_mode_find(%struct.drm_connector_state* %24)
  store %struct.tv_mode* %25, %struct.tv_mode** %10, align 8
  %26 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %27 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  store %struct.drm_display_mode* %28, %struct.drm_display_mode** %11, align 8
  %29 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %30 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %12, align 4
  %32 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %33 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %13, align 4
  %35 = load %struct.tv_mode*, %struct.tv_mode** %10, align 8
  %36 = icmp ne %struct.tv_mode* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %3
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %211

40:                                               ; preds = %3
  %41 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %42 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @DRM_MODE_FLAG_DBLSCAN, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %211

50:                                               ; preds = %40
  %51 = load i32, i32* @INTEL_OUTPUT_FORMAT_RGB, align 4
  %52 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %53 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %55 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %56 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %55, i32 0, i32 0
  store i32 24, i32* %56, align 8
  %57 = load %struct.tv_mode*, %struct.tv_mode** %10, align 8
  %58 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %61 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %63 = load %struct.tv_mode*, %struct.tv_mode** %10, align 8
  %64 = call i32 @intel_tv_mode_to_mode(%struct.drm_display_mode* %62, %struct.tv_mode* %63)
  %65 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %66 = call i32 @drm_mode_set_crtcinfo(%struct.drm_display_mode* %65, i32 0)
  %67 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %68 = load i32, i32* %12, align 4
  %69 = call i64 @intel_tv_source_too_wide(%struct.drm_i915_private* %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %50
  %72 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %73 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %74 = load i32, i32* %13, align 4
  %75 = call i32 @intel_tv_vert_scaling(%struct.drm_display_mode* %72, %struct.drm_connector_state* %73, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %148, label %77

77:                                               ; preds = %71, %50
  %78 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %79 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %13, align 4
  %82 = sub nsw i32 %80, %81
  store i32 %82, i32* %14, align 4
  %83 = load i32, i32* %14, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %77
  %86 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %4, align 4
  br label %211

89:                                               ; preds = %77
  %90 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %91 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %15, align 4
  %95 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %96 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %16, align 4
  %100 = load i32, i32* %15, align 4
  %101 = load i32, i32* %16, align 4
  %102 = add nsw i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %89
  %105 = load i32, i32* %14, align 4
  %106 = load i32, i32* %15, align 4
  %107 = mul nsw i32 %105, %106
  %108 = load i32, i32* %15, align 4
  %109 = load i32, i32* %16, align 4
  %110 = add nsw i32 %108, %109
  %111 = sdiv i32 %107, %110
  store i32 %111, i32* %15, align 4
  br label %115

112:                                              ; preds = %89
  %113 = load i32, i32* %14, align 4
  %114 = sdiv i32 %113, 2
  store i32 %114, i32* %15, align 4
  br label %115

115:                                              ; preds = %112, %104
  %116 = load i32, i32* %14, align 4
  %117 = load i32, i32* %15, align 4
  %118 = sub nsw i32 %116, %117
  store i32 %118, i32* %16, align 4
  %119 = load i32, i32* %15, align 4
  %120 = load %struct.intel_tv_connector_state*, %struct.intel_tv_connector_state** %9, align 8
  %121 = getelementptr inbounds %struct.intel_tv_connector_state, %struct.intel_tv_connector_state* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  store i32 %119, i32* %122, align 4
  %123 = load i32, i32* %16, align 4
  %124 = load %struct.intel_tv_connector_state*, %struct.intel_tv_connector_state** %9, align 8
  %125 = getelementptr inbounds %struct.intel_tv_connector_state, %struct.intel_tv_connector_state* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 1
  store i32 %123, i32* %126, align 4
  %127 = load %struct.intel_tv_connector_state*, %struct.intel_tv_connector_state** %9, align 8
  %128 = getelementptr inbounds %struct.intel_tv_connector_state, %struct.intel_tv_connector_state* %127, i32 0, i32 0
  store i32 1, i32* %128, align 4
  %129 = load %struct.tv_mode*, %struct.tv_mode** %10, align 8
  %130 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %147, label %133

133:                                              ; preds = %115
  %134 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %135 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = sdiv i32 %136, 2
  store i32 %137, i32* %135, align 4
  %138 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %139 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = sdiv i32 %140, 2
  store i32 %141, i32* %139, align 8
  %142 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %143 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %144 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = or i32 %145, %142
  store i32 %146, i32* %144, align 8
  br label %147

147:                                              ; preds = %133, %115
  br label %167

148:                                              ; preds = %71
  %149 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %150 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.intel_tv_connector_state*, %struct.intel_tv_connector_state** %9, align 8
  %155 = getelementptr inbounds %struct.intel_tv_connector_state, %struct.intel_tv_connector_state* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 0
  store i32 %153, i32* %156, align 4
  %157 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %158 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.intel_tv_connector_state*, %struct.intel_tv_connector_state** %9, align 8
  %163 = getelementptr inbounds %struct.intel_tv_connector_state, %struct.intel_tv_connector_state* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 1
  store i32 %161, i32* %164, align 4
  %165 = load %struct.intel_tv_connector_state*, %struct.intel_tv_connector_state** %9, align 8
  %166 = getelementptr inbounds %struct.intel_tv_connector_state, %struct.intel_tv_connector_state* %165, i32 0, i32 0
  store i32 0, i32* %166, align 4
  br label %167

167:                                              ; preds = %148, %147
  %168 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %169 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %170 = call i32 @drm_mode_debug_printmodeline(%struct.drm_display_mode* %169)
  %171 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %172 = load i32, i32* %12, align 4
  %173 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %174 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %179 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @intel_tv_scale_mode_horiz(%struct.drm_display_mode* %171, i32 %172, i32 %177, i32 %182)
  %184 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %185 = load i32, i32* %13, align 4
  %186 = load %struct.intel_tv_connector_state*, %struct.intel_tv_connector_state** %9, align 8
  %187 = getelementptr inbounds %struct.intel_tv_connector_state, %struct.intel_tv_connector_state* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.intel_tv_connector_state*, %struct.intel_tv_connector_state** %9, align 8
  %191 = getelementptr inbounds %struct.intel_tv_connector_state, %struct.intel_tv_connector_state* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @intel_tv_scale_mode_vert(%struct.drm_display_mode* %184, i32 %185, i32 %189, i32 %193)
  %195 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %196 = call i32 @drm_mode_set_crtcinfo(%struct.drm_display_mode* %195, i32 0)
  %197 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %198 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %197, i32 0, i32 5
  %199 = load i8*, i8** %198, align 8
  %200 = getelementptr inbounds i8, i8* %199, i64 0
  store i8 0, i8* %200, align 1
  %201 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %202 = call i64 @IS_I965GM(%struct.drm_i915_private* %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %210

204:                                              ; preds = %167
  %205 = load i32, i32* @I915_MODE_FLAG_USE_SCANLINE_COUNTER, align 4
  %206 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %207 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %206, i32 0, i32 6
  %208 = load i32, i32* %207, align 8
  %209 = or i32 %208, %205
  store i32 %209, i32* %207, align 8
  br label %210

210:                                              ; preds = %204, %167
  store i32 0, i32* %4, align 4
  br label %211

211:                                              ; preds = %210, %85, %47, %37
  %212 = load i32, i32* %4, align 4
  ret i32 %212
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.intel_tv_connector_state* @to_intel_tv_connector_state(%struct.drm_connector_state*) #1

declare dso_local %struct.tv_mode* @intel_tv_mode_find(%struct.drm_connector_state*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @intel_tv_mode_to_mode(%struct.drm_display_mode*, %struct.tv_mode*) #1

declare dso_local i32 @drm_mode_set_crtcinfo(%struct.drm_display_mode*, i32) #1

declare dso_local i64 @intel_tv_source_too_wide(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_tv_vert_scaling(%struct.drm_display_mode*, %struct.drm_connector_state*, i32) #1

declare dso_local i32 @drm_mode_debug_printmodeline(%struct.drm_display_mode*) #1

declare dso_local i32 @intel_tv_scale_mode_horiz(%struct.drm_display_mode*, i32, i32, i32) #1

declare dso_local i32 @intel_tv_scale_mode_vert(%struct.drm_display_mode*, i32, i32, i32) #1

declare dso_local i64 @IS_I965GM(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

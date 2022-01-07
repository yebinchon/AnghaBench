; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_tv.c_intel_tv_pre_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_tv.c_intel_tv_pre_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_levels = type { i32, i32, i32 }
%struct.color_conversion = type { i32 }
%struct.intel_encoder = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.intel_crtc_state = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.drm_connector_state = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i64 }
%struct.drm_i915_private = type { i32 }
%struct.intel_crtc = type { i32 }
%struct.intel_tv = type { i32 }
%struct.intel_tv_connector_state = type { %struct.TYPE_10__, i64 }
%struct.TYPE_10__ = type { i32, i64 }
%struct.tv_mode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i64, i64, i64, %struct.color_conversion*, %struct.video_levels*, %struct.color_conversion*, %struct.video_levels* }

@TV_CTL = common dso_local global i32 0, align 4
@TV_CTL_SAVE = common dso_local global i32 0, align 4
@TV_ENC_OUTPUT_COMPOSITE = common dso_local global i32 0, align 4
@TV_ENC_OUTPUT_COMPONENT = common dso_local global i32 0, align 4
@component_levels = common dso_local global %struct.video_levels zeroinitializer, align 4
@sdtv_csc_yprpb = common dso_local global %struct.color_conversion zeroinitializer, align 4
@hdtv_csc_yprpb = common dso_local global %struct.color_conversion zeroinitializer, align 4
@TV_ENC_OUTPUT_SVIDEO = common dso_local global i32 0, align 4
@TV_OVERSAMPLE_8X = common dso_local global i32 0, align 4
@TV_OVERSAMPLE_4X = common dso_local global i32 0, align 4
@TV_OVERSAMPLE_2X = common dso_local global i32 0, align 4
@TV_OVERSAMPLE_NONE = common dso_local global i32 0, align 4
@TV_PROGRESSIVE = common dso_local global i32 0, align 4
@TV_TRILEVEL_SYNC = common dso_local global i32 0, align 4
@TV_PAL_BURST = common dso_local global i32 0, align 4
@TV_SC_DDA1_EN = common dso_local global i32 0, align 4
@TV_SC_DDA2_EN = common dso_local global i32 0, align 4
@TV_SC_DDA3_EN = common dso_local global i32 0, align 4
@TV_BURST_LEVEL_SHIFT = common dso_local global i32 0, align 4
@TV_SCDDA1_INC_SHIFT = common dso_local global i32 0, align 4
@TV_SCDDA2_SIZE_SHIFT = common dso_local global i32 0, align 4
@TV_SCDDA2_INC_SHIFT = common dso_local global i32 0, align 4
@TV_SCDDA3_SIZE_SHIFT = common dso_local global i32 0, align 4
@TV_SCDDA3_INC_SHIFT = common dso_local global i32 0, align 4
@TV_ENC_C0_FIX = common dso_local global i32 0, align 4
@TV_ENC_SDP_FIX = common dso_local global i32 0, align 4
@TV_SC_CTL_1 = common dso_local global i32 0, align 4
@TV_SC_CTL_2 = common dso_local global i32 0, align 4
@TV_SC_CTL_3 = common dso_local global i32 0, align 4
@TV_CLR_KNOBS = common dso_local global i32 0, align 4
@TV_CLR_LEVEL = common dso_local global i32 0, align 4
@TV_BLACK_LEVEL_SHIFT = common dso_local global i32 0, align 4
@TV_BLANK_LEVEL_SHIFT = common dso_local global i32 0, align 4
@TV_AUTO_SCALE = common dso_local global i32 0, align 4
@TV_V_FILTER_BYPASS = common dso_local global i32 0, align 4
@TV_FILTER_CTL_1 = common dso_local global i32 0, align 4
@TV_WIN_POS = common dso_local global i32 0, align 4
@TV_WIN_SIZE = common dso_local global i32 0, align 4
@TV_DAC = common dso_local global i32 0, align 4
@TV_DAC_SAVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state*)* @intel_tv_pre_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_tv_pre_enable(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1, %struct.drm_connector_state* %2) #0 {
  %4 = alloca %struct.intel_encoder*, align 8
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca %struct.drm_connector_state*, align 8
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca %struct.intel_crtc*, align 8
  %9 = alloca %struct.intel_tv*, align 8
  %10 = alloca %struct.intel_tv_connector_state*, align 8
  %11 = alloca %struct.tv_mode*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.video_levels*, align 8
  %20 = alloca %struct.color_conversion*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %4, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %5, align 8
  store %struct.drm_connector_state* %2, %struct.drm_connector_state** %6, align 8
  %26 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %27 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.drm_i915_private* @to_i915(i32 %29)
  store %struct.drm_i915_private* %30, %struct.drm_i915_private** %7, align 8
  %31 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %32 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.intel_crtc* @to_intel_crtc(i32 %34)
  store %struct.intel_crtc* %35, %struct.intel_crtc** %8, align 8
  %36 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %37 = call %struct.intel_tv* @enc_to_tv(%struct.intel_encoder* %36)
  store %struct.intel_tv* %37, %struct.intel_tv** %9, align 8
  %38 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %39 = call %struct.intel_tv_connector_state* @to_intel_tv_connector_state(%struct.drm_connector_state* %38)
  store %struct.intel_tv_connector_state* %39, %struct.intel_tv_connector_state** %10, align 8
  %40 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %41 = call %struct.tv_mode* @intel_tv_mode_find(%struct.drm_connector_state* %40)
  store %struct.tv_mode* %41, %struct.tv_mode** %11, align 8
  %42 = load %struct.tv_mode*, %struct.tv_mode** %11, align 8
  %43 = icmp ne %struct.tv_mode* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %3
  br label %434

45:                                               ; preds = %3
  %46 = load i32, i32* @TV_CTL, align 4
  %47 = call i32 @I915_READ(i32 %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* @TV_CTL_SAVE, align 4
  %49 = load i32, i32* %12, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %12, align 4
  %51 = load %struct.intel_tv*, %struct.intel_tv** %9, align 8
  %52 = getelementptr inbounds %struct.intel_tv, %struct.intel_tv* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  switch i32 %53, label %54 [
    i32 128, label %55
    i32 130, label %55
    i32 131, label %68
    i32 129, label %79
  ]

54:                                               ; preds = %45
  br label %55

55:                                               ; preds = %45, %45, %54
  %56 = load i32, i32* @TV_ENC_OUTPUT_COMPOSITE, align 4
  %57 = load i32, i32* %12, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %12, align 4
  %59 = load %struct.tv_mode*, %struct.tv_mode** %11, align 8
  %60 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %59, i32 0, i32 17
  %61 = load %struct.video_levels*, %struct.video_levels** %60, align 8
  store %struct.video_levels* %61, %struct.video_levels** %19, align 8
  %62 = load %struct.tv_mode*, %struct.tv_mode** %11, align 8
  %63 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %62, i32 0, i32 16
  %64 = load %struct.color_conversion*, %struct.color_conversion** %63, align 8
  store %struct.color_conversion* %64, %struct.color_conversion** %20, align 8
  %65 = load %struct.tv_mode*, %struct.tv_mode** %11, align 8
  %66 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %21, align 4
  br label %92

68:                                               ; preds = %45
  %69 = load i32, i32* @TV_ENC_OUTPUT_COMPONENT, align 4
  %70 = load i32, i32* %12, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %12, align 4
  store %struct.video_levels* @component_levels, %struct.video_levels** %19, align 8
  %72 = load %struct.tv_mode*, %struct.tv_mode** %11, align 8
  %73 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  store %struct.color_conversion* @sdtv_csc_yprpb, %struct.color_conversion** %20, align 8
  br label %78

77:                                               ; preds = %68
  store %struct.color_conversion* @hdtv_csc_yprpb, %struct.color_conversion** %20, align 8
  br label %78

78:                                               ; preds = %77, %76
  store i32 0, i32* %21, align 4
  br label %92

79:                                               ; preds = %45
  %80 = load i32, i32* @TV_ENC_OUTPUT_SVIDEO, align 4
  %81 = load i32, i32* %12, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %12, align 4
  %83 = load %struct.tv_mode*, %struct.tv_mode** %11, align 8
  %84 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %83, i32 0, i32 15
  %85 = load %struct.video_levels*, %struct.video_levels** %84, align 8
  store %struct.video_levels* %85, %struct.video_levels** %19, align 8
  %86 = load %struct.tv_mode*, %struct.tv_mode** %11, align 8
  %87 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %86, i32 0, i32 14
  %88 = load %struct.color_conversion*, %struct.color_conversion** %87, align 8
  store %struct.color_conversion* %88, %struct.color_conversion** %20, align 8
  %89 = load %struct.tv_mode*, %struct.tv_mode** %11, align 8
  %90 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  store i32 %91, i32* %21, align 4
  br label %92

92:                                               ; preds = %79, %78, %55
  %93 = load %struct.intel_crtc*, %struct.intel_crtc** %8, align 8
  %94 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @TV_ENC_PIPE_SEL(i32 %95)
  %97 = load i32, i32* %12, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %12, align 4
  %99 = load %struct.tv_mode*, %struct.tv_mode** %11, align 8
  %100 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  switch i32 %101, label %114 [
    i32 8, label %102
    i32 4, label %106
    i32 2, label %110
  ]

102:                                              ; preds = %92
  %103 = load i32, i32* @TV_OVERSAMPLE_8X, align 4
  %104 = load i32, i32* %12, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %12, align 4
  br label %118

106:                                              ; preds = %92
  %107 = load i32, i32* @TV_OVERSAMPLE_4X, align 4
  %108 = load i32, i32* %12, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %12, align 4
  br label %118

110:                                              ; preds = %92
  %111 = load i32, i32* @TV_OVERSAMPLE_2X, align 4
  %112 = load i32, i32* %12, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %12, align 4
  br label %118

114:                                              ; preds = %92
  %115 = load i32, i32* @TV_OVERSAMPLE_NONE, align 4
  %116 = load i32, i32* %12, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %12, align 4
  br label %118

118:                                              ; preds = %114, %110, %106, %102
  %119 = load %struct.tv_mode*, %struct.tv_mode** %11, align 8
  %120 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %119, i32 0, i32 13
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %118
  %124 = load i32, i32* @TV_PROGRESSIVE, align 4
  %125 = load i32, i32* %12, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %12, align 4
  br label %127

127:                                              ; preds = %123, %118
  %128 = load %struct.tv_mode*, %struct.tv_mode** %11, align 8
  %129 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %128, i32 0, i32 12
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %127
  %133 = load i32, i32* @TV_TRILEVEL_SYNC, align 4
  %134 = load i32, i32* %12, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %12, align 4
  br label %136

136:                                              ; preds = %132, %127
  %137 = load %struct.tv_mode*, %struct.tv_mode** %11, align 8
  %138 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %137, i32 0, i32 11
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %136
  %142 = load i32, i32* @TV_PAL_BURST, align 4
  %143 = load i32, i32* %12, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %12, align 4
  br label %145

145:                                              ; preds = %141, %136
  store i32 0, i32* %14, align 4
  %146 = load %struct.tv_mode*, %struct.tv_mode** %11, align 8
  %147 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %145
  %151 = load i32, i32* @TV_SC_DDA1_EN, align 4
  %152 = load i32, i32* %14, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %14, align 4
  br label %154

154:                                              ; preds = %150, %145
  %155 = load %struct.tv_mode*, %struct.tv_mode** %11, align 8
  %156 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %154
  %160 = load i32, i32* @TV_SC_DDA2_EN, align 4
  %161 = load i32, i32* %14, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %14, align 4
  br label %163

163:                                              ; preds = %159, %154
  %164 = load %struct.tv_mode*, %struct.tv_mode** %11, align 8
  %165 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 8
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %163
  %169 = load i32, i32* @TV_SC_DDA3_EN, align 4
  %170 = load i32, i32* %14, align 4
  %171 = or i32 %170, %169
  store i32 %171, i32* %14, align 4
  br label %172

172:                                              ; preds = %168, %163
  %173 = load %struct.tv_mode*, %struct.tv_mode** %11, align 8
  %174 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %173, i32 0, i32 5
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %14, align 4
  %177 = or i32 %176, %175
  store i32 %177, i32* %14, align 4
  %178 = load %struct.video_levels*, %struct.video_levels** %19, align 8
  %179 = icmp ne %struct.video_levels* %178, null
  br i1 %179, label %180, label %188

180:                                              ; preds = %172
  %181 = load %struct.video_levels*, %struct.video_levels** %19, align 8
  %182 = getelementptr inbounds %struct.video_levels, %struct.video_levels* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @TV_BURST_LEVEL_SHIFT, align 4
  %185 = shl i32 %183, %184
  %186 = load i32, i32* %14, align 4
  %187 = or i32 %186, %185
  store i32 %187, i32* %14, align 4
  br label %188

188:                                              ; preds = %180, %172
  %189 = load %struct.tv_mode*, %struct.tv_mode** %11, align 8
  %190 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @TV_SCDDA1_INC_SHIFT, align 4
  %193 = shl i32 %191, %192
  %194 = load i32, i32* %14, align 4
  %195 = or i32 %194, %193
  store i32 %195, i32* %14, align 4
  %196 = load %struct.tv_mode*, %struct.tv_mode** %11, align 8
  %197 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %196, i32 0, i32 6
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* @TV_SCDDA2_SIZE_SHIFT, align 4
  %200 = shl i32 %198, %199
  %201 = load %struct.tv_mode*, %struct.tv_mode** %11, align 8
  %202 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @TV_SCDDA2_INC_SHIFT, align 4
  %205 = shl i32 %203, %204
  %206 = or i32 %200, %205
  store i32 %206, i32* %15, align 4
  %207 = load %struct.tv_mode*, %struct.tv_mode** %11, align 8
  %208 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %207, i32 0, i32 7
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @TV_SCDDA3_SIZE_SHIFT, align 4
  %211 = shl i32 %209, %210
  %212 = load %struct.tv_mode*, %struct.tv_mode** %11, align 8
  %213 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %212, i32 0, i32 4
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* @TV_SCDDA3_INC_SHIFT, align 4
  %216 = shl i32 %214, %215
  %217 = or i32 %211, %216
  store i32 %217, i32* %16, align 4
  %218 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %219 = call i64 @IS_I915GM(%struct.drm_i915_private* %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %227

221:                                              ; preds = %188
  %222 = load i32, i32* @TV_ENC_C0_FIX, align 4
  %223 = load i32, i32* @TV_ENC_SDP_FIX, align 4
  %224 = or i32 %222, %223
  %225 = load i32, i32* %12, align 4
  %226 = or i32 %225, %224
  store i32 %226, i32* %12, align 4
  br label %227

227:                                              ; preds = %221, %188
  %228 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %229 = load %struct.tv_mode*, %struct.tv_mode** %11, align 8
  %230 = load i32, i32* %21, align 4
  %231 = call i32 @set_tv_mode_timings(%struct.drm_i915_private* %228, %struct.tv_mode* %229, i32 %230)
  %232 = load i32, i32* @TV_SC_CTL_1, align 4
  %233 = load i32, i32* %14, align 4
  %234 = call i32 @I915_WRITE(i32 %232, i32 %233)
  %235 = load i32, i32* @TV_SC_CTL_2, align 4
  %236 = load i32, i32* %15, align 4
  %237 = call i32 @I915_WRITE(i32 %235, i32 %236)
  %238 = load i32, i32* @TV_SC_CTL_3, align 4
  %239 = load i32, i32* %16, align 4
  %240 = call i32 @I915_WRITE(i32 %238, i32 %239)
  %241 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %242 = load %struct.color_conversion*, %struct.color_conversion** %20, align 8
  %243 = call i32 @set_color_conversion(%struct.drm_i915_private* %241, %struct.color_conversion* %242)
  %244 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %245 = call i32 @INTEL_GEN(%struct.drm_i915_private* %244)
  %246 = icmp sge i32 %245, 4
  br i1 %246, label %247, label %250

247:                                              ; preds = %227
  %248 = load i32, i32* @TV_CLR_KNOBS, align 4
  %249 = call i32 @I915_WRITE(i32 %248, i32 4210688)
  br label %253

250:                                              ; preds = %227
  %251 = load i32, i32* @TV_CLR_KNOBS, align 4
  %252 = call i32 @I915_WRITE(i32 %251, i32 6316032)
  br label %253

253:                                              ; preds = %250, %247
  %254 = load %struct.video_levels*, %struct.video_levels** %19, align 8
  %255 = icmp ne %struct.video_levels* %254, null
  br i1 %255, label %256, label %270

256:                                              ; preds = %253
  %257 = load i32, i32* @TV_CLR_LEVEL, align 4
  %258 = load %struct.video_levels*, %struct.video_levels** %19, align 8
  %259 = getelementptr inbounds %struct.video_levels, %struct.video_levels* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* @TV_BLACK_LEVEL_SHIFT, align 4
  %262 = shl i32 %260, %261
  %263 = load %struct.video_levels*, %struct.video_levels** %19, align 8
  %264 = getelementptr inbounds %struct.video_levels, %struct.video_levels* %263, i32 0, i32 2
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* @TV_BLANK_LEVEL_SHIFT, align 4
  %267 = shl i32 %265, %266
  %268 = or i32 %262, %267
  %269 = call i32 @I915_WRITE(i32 %257, i32 %268)
  br label %270

270:                                              ; preds = %256, %253
  %271 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %272 = load %struct.intel_crtc*, %struct.intel_crtc** %8, align 8
  %273 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = call i32 @assert_pipe_disabled(%struct.drm_i915_private* %271, i32 %274)
  %276 = load i32, i32* @TV_AUTO_SCALE, align 4
  store i32 %276, i32* %13, align 4
  %277 = load %struct.intel_tv_connector_state*, %struct.intel_tv_connector_state** %10, align 8
  %278 = getelementptr inbounds %struct.intel_tv_connector_state, %struct.intel_tv_connector_state* %277, i32 0, i32 1
  %279 = load i64, i64* %278, align 8
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %285

281:                                              ; preds = %270
  %282 = load i32, i32* @TV_V_FILTER_BYPASS, align 4
  %283 = load i32, i32* %13, align 4
  %284 = or i32 %283, %282
  store i32 %284, i32* %13, align 4
  br label %285

285:                                              ; preds = %281, %270
  %286 = load i32, i32* @TV_FILTER_CTL_1, align 4
  %287 = load i32, i32* %13, align 4
  %288 = call i32 @I915_WRITE(i32 %286, i32 %287)
  %289 = load %struct.tv_mode*, %struct.tv_mode** %11, align 8
  %290 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %289, i32 0, i32 8
  %291 = load i32, i32* %290, align 8
  %292 = load %struct.tv_mode*, %struct.tv_mode** %11, align 8
  %293 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %292, i32 0, i32 9
  %294 = load i32, i32* %293, align 4
  %295 = sub i32 %291, %294
  store i32 %295, i32* %24, align 4
  %296 = load %struct.tv_mode*, %struct.tv_mode** %11, align 8
  %297 = call i32 @intel_tv_mode_vdisplay(%struct.tv_mode* %296)
  store i32 %297, i32* %25, align 4
  %298 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %299 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %298, i32 0, i32 0
  %300 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  store i32 %302, i32* %22, align 4
  %303 = load %struct.intel_tv_connector_state*, %struct.intel_tv_connector_state** %10, align 8
  %304 = getelementptr inbounds %struct.intel_tv_connector_state, %struct.intel_tv_connector_state* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  store i32 %306, i32* %23, align 4
  %307 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %308 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = sext i32 %311 to i64
  %313 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %314 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %315, i32 0, i32 1
  %317 = load i64, i64* %316, align 8
  %318 = add nsw i64 %312, %317
  %319 = load i32, i32* %24, align 4
  %320 = zext i32 %319 to i64
  %321 = sub nsw i64 %320, %318
  %322 = trunc i64 %321 to i32
  store i32 %322, i32* %24, align 4
  %323 = load %struct.intel_tv_connector_state*, %struct.intel_tv_connector_state** %10, align 8
  %324 = getelementptr inbounds %struct.intel_tv_connector_state, %struct.intel_tv_connector_state* %323, i32 0, i32 0
  %325 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 8
  %327 = sext i32 %326 to i64
  %328 = load %struct.intel_tv_connector_state*, %struct.intel_tv_connector_state** %10, align 8
  %329 = getelementptr inbounds %struct.intel_tv_connector_state, %struct.intel_tv_connector_state* %328, i32 0, i32 0
  %330 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %329, i32 0, i32 1
  %331 = load i64, i64* %330, align 8
  %332 = add nsw i64 %327, %331
  %333 = load i32, i32* %25, align 4
  %334 = zext i32 %333 to i64
  %335 = sub nsw i64 %334, %332
  %336 = trunc i64 %335 to i32
  store i32 %336, i32* %25, align 4
  %337 = load i32, i32* @TV_WIN_POS, align 4
  %338 = load i32, i32* %22, align 4
  %339 = shl i32 %338, 16
  %340 = load i32, i32* %23, align 4
  %341 = or i32 %339, %340
  %342 = call i32 @I915_WRITE(i32 %337, i32 %341)
  %343 = load i32, i32* @TV_WIN_SIZE, align 4
  %344 = load i32, i32* %24, align 4
  %345 = shl i32 %344, 16
  %346 = load i32, i32* %25, align 4
  %347 = or i32 %345, %346
  %348 = call i32 @I915_WRITE(i32 %343, i32 %347)
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %349

349:                                              ; preds = %364, %285
  %350 = load i32, i32* %17, align 4
  %351 = icmp slt i32 %350, 60
  br i1 %351, label %352, label %367

352:                                              ; preds = %349
  %353 = load i32, i32* %17, align 4
  %354 = call i32 @TV_H_LUMA(i32 %353)
  %355 = load %struct.tv_mode*, %struct.tv_mode** %11, align 8
  %356 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %355, i32 0, i32 10
  %357 = load i32*, i32** %356, align 8
  %358 = load i32, i32* %18, align 4
  %359 = add nsw i32 %358, 1
  store i32 %359, i32* %18, align 4
  %360 = sext i32 %358 to i64
  %361 = getelementptr inbounds i32, i32* %357, i64 %360
  %362 = load i32, i32* %361, align 4
  %363 = call i32 @I915_WRITE(i32 %354, i32 %362)
  br label %364

364:                                              ; preds = %352
  %365 = load i32, i32* %17, align 4
  %366 = add nsw i32 %365, 1
  store i32 %366, i32* %17, align 4
  br label %349

367:                                              ; preds = %349
  store i32 0, i32* %17, align 4
  br label %368

368:                                              ; preds = %383, %367
  %369 = load i32, i32* %17, align 4
  %370 = icmp slt i32 %369, 60
  br i1 %370, label %371, label %386

371:                                              ; preds = %368
  %372 = load i32, i32* %17, align 4
  %373 = call i32 @TV_H_CHROMA(i32 %372)
  %374 = load %struct.tv_mode*, %struct.tv_mode** %11, align 8
  %375 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %374, i32 0, i32 10
  %376 = load i32*, i32** %375, align 8
  %377 = load i32, i32* %18, align 4
  %378 = add nsw i32 %377, 1
  store i32 %378, i32* %18, align 4
  %379 = sext i32 %377 to i64
  %380 = getelementptr inbounds i32, i32* %376, i64 %379
  %381 = load i32, i32* %380, align 4
  %382 = call i32 @I915_WRITE(i32 %373, i32 %381)
  br label %383

383:                                              ; preds = %371
  %384 = load i32, i32* %17, align 4
  %385 = add nsw i32 %384, 1
  store i32 %385, i32* %17, align 4
  br label %368

386:                                              ; preds = %368
  store i32 0, i32* %17, align 4
  br label %387

387:                                              ; preds = %402, %386
  %388 = load i32, i32* %17, align 4
  %389 = icmp slt i32 %388, 43
  br i1 %389, label %390, label %405

390:                                              ; preds = %387
  %391 = load i32, i32* %17, align 4
  %392 = call i32 @TV_V_LUMA(i32 %391)
  %393 = load %struct.tv_mode*, %struct.tv_mode** %11, align 8
  %394 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %393, i32 0, i32 10
  %395 = load i32*, i32** %394, align 8
  %396 = load i32, i32* %18, align 4
  %397 = add nsw i32 %396, 1
  store i32 %397, i32* %18, align 4
  %398 = sext i32 %396 to i64
  %399 = getelementptr inbounds i32, i32* %395, i64 %398
  %400 = load i32, i32* %399, align 4
  %401 = call i32 @I915_WRITE(i32 %392, i32 %400)
  br label %402

402:                                              ; preds = %390
  %403 = load i32, i32* %17, align 4
  %404 = add nsw i32 %403, 1
  store i32 %404, i32* %17, align 4
  br label %387

405:                                              ; preds = %387
  store i32 0, i32* %17, align 4
  br label %406

406:                                              ; preds = %421, %405
  %407 = load i32, i32* %17, align 4
  %408 = icmp slt i32 %407, 43
  br i1 %408, label %409, label %424

409:                                              ; preds = %406
  %410 = load i32, i32* %17, align 4
  %411 = call i32 @TV_V_CHROMA(i32 %410)
  %412 = load %struct.tv_mode*, %struct.tv_mode** %11, align 8
  %413 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %412, i32 0, i32 10
  %414 = load i32*, i32** %413, align 8
  %415 = load i32, i32* %18, align 4
  %416 = add nsw i32 %415, 1
  store i32 %416, i32* %18, align 4
  %417 = sext i32 %415 to i64
  %418 = getelementptr inbounds i32, i32* %414, i64 %417
  %419 = load i32, i32* %418, align 4
  %420 = call i32 @I915_WRITE(i32 %411, i32 %419)
  br label %421

421:                                              ; preds = %409
  %422 = load i32, i32* %17, align 4
  %423 = add nsw i32 %422, 1
  store i32 %423, i32* %17, align 4
  br label %406

424:                                              ; preds = %406
  %425 = load i32, i32* @TV_DAC, align 4
  %426 = load i32, i32* @TV_DAC, align 4
  %427 = call i32 @I915_READ(i32 %426)
  %428 = load i32, i32* @TV_DAC_SAVE, align 4
  %429 = and i32 %427, %428
  %430 = call i32 @I915_WRITE(i32 %425, i32 %429)
  %431 = load i32, i32* @TV_CTL, align 4
  %432 = load i32, i32* %12, align 4
  %433 = call i32 @I915_WRITE(i32 %431, i32 %432)
  br label %434

434:                                              ; preds = %424, %44
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local %struct.intel_tv* @enc_to_tv(%struct.intel_encoder*) #1

declare dso_local %struct.intel_tv_connector_state* @to_intel_tv_connector_state(%struct.drm_connector_state*) #1

declare dso_local %struct.tv_mode* @intel_tv_mode_find(%struct.drm_connector_state*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @TV_ENC_PIPE_SEL(i32) #1

declare dso_local i64 @IS_I915GM(%struct.drm_i915_private*) #1

declare dso_local i32 @set_tv_mode_timings(%struct.drm_i915_private*, %struct.tv_mode*, i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @set_color_conversion(%struct.drm_i915_private*, %struct.color_conversion*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @assert_pipe_disabled(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_tv_mode_vdisplay(%struct.tv_mode*) #1

declare dso_local i32 @TV_H_LUMA(i32) #1

declare dso_local i32 @TV_H_CHROMA(i32) #1

declare dso_local i32 @TV_V_LUMA(i32) #1

declare dso_local i32 @TV_V_CHROMA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

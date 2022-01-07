; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_sdvo_pre_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_sdvo_pre_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.intel_crtc_state = type { i32, i64, i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.drm_display_mode, %struct.drm_display_mode, i32 }
%struct.drm_display_mode = type { i32 }
%struct.drm_connector_state = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.intel_crtc = type { i32 }
%struct.intel_sdvo_connector_state = type { i32 }
%struct.intel_sdvo_connector = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.drm_display_mode* }
%struct.intel_sdvo = type { i32, i64, i32, i32 }
%struct.intel_sdvo_in_out_map = type { i64, i32 }
%struct.intel_sdvo_dtd = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@SDVO_CMD_SET_IN_OUT_MAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Setting output timings on %s failed\0A\00", align 1
@SDVO_ENCODE_HDMI = common dso_local global i32 0, align 4
@SDVO_COLORIMETRY_RGB256 = common dso_local global i32 0, align 4
@SDVO_ENCODE_DVI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Setting input timings on %s failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"unknown pixel multiplier specified\0A\00", align 1
@SDVO_CLOCK_RATE_MULT_1X = common dso_local global i32 0, align 4
@SDVO_CLOCK_RATE_MULT_2X = common dso_local global i32 0, align 4
@SDVO_CLOCK_RATE_MULT_4X = common dso_local global i32 0, align 4
@SDVO_VSYNC_ACTIVE_HIGH = common dso_local global i32 0, align 4
@SDVO_HSYNC_ACTIVE_HIGH = common dso_local global i32 0, align 4
@HDMI_COLOR_RANGE_16_235 = common dso_local global i32 0, align 4
@SDVO_BORDER_ENABLE = common dso_local global i32 0, align 4
@PORT_B = common dso_local global i64 0, align 8
@SDVOB_PRESERVE_MASK = common dso_local global i32 0, align 4
@SDVOC_PRESERVE_MASK = common dso_local global i32 0, align 4
@SDVO_PORT_MULTIPLY_SHIFT = common dso_local global i32 0, align 4
@SDVO_NEED_TO_STALL = common dso_local global i32 0, align 4
@SDVO_STALL_SELECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state*)* @intel_sdvo_pre_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_sdvo_pre_enable(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1, %struct.drm_connector_state* %2) #0 {
  %4 = alloca %struct.intel_encoder*, align 8
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca %struct.drm_connector_state*, align 8
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca %struct.intel_crtc*, align 8
  %9 = alloca %struct.drm_display_mode*, align 8
  %10 = alloca %struct.intel_sdvo_connector_state*, align 8
  %11 = alloca %struct.intel_sdvo_connector*, align 8
  %12 = alloca %struct.drm_display_mode*, align 8
  %13 = alloca %struct.intel_sdvo*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.intel_sdvo_in_out_map, align 8
  %16 = alloca %struct.intel_sdvo_dtd, align 4
  %17 = alloca %struct.intel_sdvo_dtd, align 4
  %18 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %4, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %5, align 8
  store %struct.drm_connector_state* %2, %struct.drm_connector_state** %6, align 8
  %19 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %20 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.drm_i915_private* @to_i915(i32 %22)
  store %struct.drm_i915_private* %23, %struct.drm_i915_private** %7, align 8
  %24 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %25 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.intel_crtc* @to_intel_crtc(i32 %27)
  store %struct.intel_crtc* %28, %struct.intel_crtc** %8, align 8
  %29 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %30 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  store %struct.drm_display_mode* %31, %struct.drm_display_mode** %9, align 8
  %32 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %33 = call %struct.intel_sdvo_connector_state* @to_intel_sdvo_connector_state(%struct.drm_connector_state* %32)
  store %struct.intel_sdvo_connector_state* %33, %struct.intel_sdvo_connector_state** %10, align 8
  %34 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %35 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.intel_sdvo_connector* @to_intel_sdvo_connector(i32 %36)
  store %struct.intel_sdvo_connector* %37, %struct.intel_sdvo_connector** %11, align 8
  %38 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %39 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  store %struct.drm_display_mode* %40, %struct.drm_display_mode** %12, align 8
  %41 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %42 = call %struct.intel_sdvo* @to_sdvo(%struct.intel_encoder* %41)
  store %struct.intel_sdvo* %42, %struct.intel_sdvo** %13, align 8
  %43 = load %struct.intel_sdvo*, %struct.intel_sdvo** %13, align 8
  %44 = load %struct.intel_sdvo_connector_state*, %struct.intel_sdvo_connector_state** %10, align 8
  %45 = call i32 @intel_sdvo_update_props(%struct.intel_sdvo* %43, %struct.intel_sdvo_connector_state* %44)
  %46 = load %struct.intel_sdvo*, %struct.intel_sdvo** %13, align 8
  %47 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.intel_sdvo_in_out_map, %struct.intel_sdvo_in_out_map* %15, i32 0, i32 1
  store i32 %48, i32* %49, align 8
  %50 = getelementptr inbounds %struct.intel_sdvo_in_out_map, %struct.intel_sdvo_in_out_map* %15, i32 0, i32 0
  store i64 0, i64* %50, align 8
  %51 = load %struct.intel_sdvo*, %struct.intel_sdvo** %13, align 8
  %52 = load i32, i32* @SDVO_CMD_SET_IN_OUT_MAP, align 4
  %53 = call i32 @intel_sdvo_set_value(%struct.intel_sdvo* %51, i32 %52, %struct.intel_sdvo_in_out_map* %15, i32 16)
  %54 = load %struct.intel_sdvo*, %struct.intel_sdvo** %13, align 8
  %55 = load %struct.intel_sdvo*, %struct.intel_sdvo** %13, align 8
  %56 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @intel_sdvo_set_target_output(%struct.intel_sdvo* %54, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %3
  br label %280

61:                                               ; preds = %3
  %62 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %11, align 8
  %63 = call i64 @IS_LVDS(%struct.intel_sdvo_connector* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %61
  %66 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %11, align 8
  %67 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load %struct.drm_display_mode*, %struct.drm_display_mode** %69, align 8
  %71 = call i32 @intel_sdvo_get_dtd_from_mode(%struct.intel_sdvo_dtd* %17, %struct.drm_display_mode* %70)
  br label %75

72:                                               ; preds = %61
  %73 = load %struct.drm_display_mode*, %struct.drm_display_mode** %12, align 8
  %74 = call i32 @intel_sdvo_get_dtd_from_mode(%struct.intel_sdvo_dtd* %17, %struct.drm_display_mode* %73)
  br label %75

75:                                               ; preds = %72, %65
  %76 = load %struct.intel_sdvo*, %struct.intel_sdvo** %13, align 8
  %77 = call i32 @intel_sdvo_set_output_timing(%struct.intel_sdvo* %76, %struct.intel_sdvo_dtd* %17)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %75
  %80 = load %struct.intel_sdvo*, %struct.intel_sdvo** %13, align 8
  %81 = call i32 @SDVO_NAME(%struct.intel_sdvo* %80)
  %82 = call i32 @DRM_INFO(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %79, %75
  %84 = load %struct.intel_sdvo*, %struct.intel_sdvo** %13, align 8
  %85 = call i32 @intel_sdvo_set_target_input(%struct.intel_sdvo* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %83
  br label %280

88:                                               ; preds = %83
  %89 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %90 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %88
  %94 = load %struct.intel_sdvo*, %struct.intel_sdvo** %13, align 8
  %95 = load i32, i32* @SDVO_ENCODE_HDMI, align 4
  %96 = call i32 @intel_sdvo_set_encode(%struct.intel_sdvo* %94, i32 %95)
  %97 = load %struct.intel_sdvo*, %struct.intel_sdvo** %13, align 8
  %98 = load i32, i32* @SDVO_COLORIMETRY_RGB256, align 4
  %99 = call i32 @intel_sdvo_set_colorimetry(%struct.intel_sdvo* %97, i32 %98)
  %100 = load %struct.intel_sdvo*, %struct.intel_sdvo** %13, align 8
  %101 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %102 = call i32 @intel_sdvo_set_avi_infoframe(%struct.intel_sdvo* %100, %struct.intel_crtc_state* %101)
  br label %107

103:                                              ; preds = %88
  %104 = load %struct.intel_sdvo*, %struct.intel_sdvo** %13, align 8
  %105 = load i32, i32* @SDVO_ENCODE_DVI, align 4
  %106 = call i32 @intel_sdvo_set_encode(%struct.intel_sdvo* %104, i32 %105)
  br label %107

107:                                              ; preds = %103, %93
  %108 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %11, align 8
  %109 = call i64 @IS_TV(%struct.intel_sdvo_connector* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %107
  %112 = load %struct.intel_sdvo*, %struct.intel_sdvo** %13, align 8
  %113 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %114 = call i32 @intel_sdvo_set_tv_format(%struct.intel_sdvo* %112, %struct.drm_connector_state* %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %111
  br label %280

117:                                              ; preds = %111, %107
  %118 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %119 = call i32 @intel_sdvo_get_dtd_from_mode(%struct.intel_sdvo_dtd* %16, %struct.drm_display_mode* %118)
  %120 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %11, align 8
  %121 = call i64 @IS_TV(%struct.intel_sdvo_connector* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %127, label %123

123:                                              ; preds = %117
  %124 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %11, align 8
  %125 = call i64 @IS_LVDS(%struct.intel_sdvo_connector* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %123, %117
  %128 = load %struct.intel_sdvo*, %struct.intel_sdvo** %13, align 8
  %129 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = getelementptr inbounds %struct.intel_sdvo_dtd, %struct.intel_sdvo_dtd* %16, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 4
  br label %133

133:                                              ; preds = %127, %123
  %134 = load %struct.intel_sdvo*, %struct.intel_sdvo** %13, align 8
  %135 = call i32 @intel_sdvo_set_input_timing(%struct.intel_sdvo* %134, %struct.intel_sdvo_dtd* %16)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %141, label %137

137:                                              ; preds = %133
  %138 = load %struct.intel_sdvo*, %struct.intel_sdvo** %13, align 8
  %139 = call i32 @SDVO_NAME(%struct.intel_sdvo* %138)
  %140 = call i32 @DRM_INFO(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %139)
  br label %141

141:                                              ; preds = %137, %133
  %142 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %143 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  switch i32 %144, label %145 [
    i32 1, label %147
    i32 2, label %149
    i32 4, label %151
  ]

145:                                              ; preds = %141
  %146 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %147

147:                                              ; preds = %141, %145
  %148 = load i32, i32* @SDVO_CLOCK_RATE_MULT_1X, align 4
  store i32 %148, i32* %18, align 4
  br label %153

149:                                              ; preds = %141
  %150 = load i32, i32* @SDVO_CLOCK_RATE_MULT_2X, align 4
  store i32 %150, i32* %18, align 4
  br label %153

151:                                              ; preds = %141
  %152 = load i32, i32* @SDVO_CLOCK_RATE_MULT_4X, align 4
  store i32 %152, i32* %18, align 4
  br label %153

153:                                              ; preds = %151, %149, %147
  %154 = load %struct.intel_sdvo*, %struct.intel_sdvo** %13, align 8
  %155 = load i32, i32* %18, align 4
  %156 = call i32 @intel_sdvo_set_clock_rate_mult(%struct.intel_sdvo* %154, i32 %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %153
  br label %280

159:                                              ; preds = %153
  %160 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %161 = call i32 @INTEL_GEN(%struct.drm_i915_private* %160)
  %162 = icmp sge i32 %161, 4
  br i1 %162, label %163, label %188

163:                                              ; preds = %159
  %164 = load i32, i32* @SDVO_VSYNC_ACTIVE_HIGH, align 4
  %165 = load i32, i32* @SDVO_HSYNC_ACTIVE_HIGH, align 4
  %166 = or i32 %164, %165
  store i32 %166, i32* %14, align 4
  %167 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %168 = call i32 @HAS_PCH_SPLIT(%struct.drm_i915_private* %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %179, label %170

170:                                              ; preds = %163
  %171 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %172 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %170
  %176 = load i32, i32* @HDMI_COLOR_RANGE_16_235, align 4
  %177 = load i32, i32* %14, align 4
  %178 = or i32 %177, %176
  store i32 %178, i32* %14, align 4
  br label %179

179:                                              ; preds = %175, %170, %163
  %180 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %181 = call i32 @INTEL_GEN(%struct.drm_i915_private* %180)
  %182 = icmp slt i32 %181, 5
  br i1 %182, label %183, label %187

183:                                              ; preds = %179
  %184 = load i32, i32* @SDVO_BORDER_ENABLE, align 4
  %185 = load i32, i32* %14, align 4
  %186 = or i32 %185, %184
  store i32 %186, i32* %14, align 4
  br label %187

187:                                              ; preds = %183, %179
  br label %211

188:                                              ; preds = %159
  %189 = load %struct.intel_sdvo*, %struct.intel_sdvo** %13, align 8
  %190 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @I915_READ(i32 %191)
  store i32 %192, i32* %14, align 4
  %193 = load %struct.intel_sdvo*, %struct.intel_sdvo** %13, align 8
  %194 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @PORT_B, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %198, label %202

198:                                              ; preds = %188
  %199 = load i32, i32* @SDVOB_PRESERVE_MASK, align 4
  %200 = load i32, i32* %14, align 4
  %201 = and i32 %200, %199
  store i32 %201, i32* %14, align 4
  br label %206

202:                                              ; preds = %188
  %203 = load i32, i32* @SDVOC_PRESERVE_MASK, align 4
  %204 = load i32, i32* %14, align 4
  %205 = and i32 %204, %203
  store i32 %205, i32* %14, align 4
  br label %206

206:                                              ; preds = %202, %198
  %207 = load i32, i32* @SDVO_BORDER_ENABLE, align 4
  %208 = or i32 4718592, %207
  %209 = load i32, i32* %14, align 4
  %210 = or i32 %209, %208
  store i32 %210, i32* %14, align 4
  br label %211

211:                                              ; preds = %206, %187
  %212 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %213 = call i64 @HAS_PCH_CPT(%struct.drm_i915_private* %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %222

215:                                              ; preds = %211
  %216 = load %struct.intel_crtc*, %struct.intel_crtc** %8, align 8
  %217 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @SDVO_PIPE_SEL_CPT(i32 %218)
  %220 = load i32, i32* %14, align 4
  %221 = or i32 %220, %219
  store i32 %221, i32* %14, align 4
  br label %229

222:                                              ; preds = %211
  %223 = load %struct.intel_crtc*, %struct.intel_crtc** %8, align 8
  %224 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @SDVO_PIPE_SEL(i32 %225)
  %227 = load i32, i32* %14, align 4
  %228 = or i32 %227, %226
  store i32 %228, i32* %14, align 4
  br label %229

229:                                              ; preds = %222, %215
  %230 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %231 = call i32 @INTEL_GEN(%struct.drm_i915_private* %230)
  %232 = icmp sge i32 %231, 4
  br i1 %232, label %233, label %234

233:                                              ; preds = %229
  br label %261

234:                                              ; preds = %229
  %235 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %236 = call i64 @IS_I945G(%struct.drm_i915_private* %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %250, label %238

238:                                              ; preds = %234
  %239 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %240 = call i64 @IS_I945GM(%struct.drm_i915_private* %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %250, label %242

242:                                              ; preds = %238
  %243 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %244 = call i64 @IS_G33(%struct.drm_i915_private* %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %250, label %246

246:                                              ; preds = %242
  %247 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %248 = call i64 @IS_PINEVIEW(%struct.drm_i915_private* %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %246, %242, %238, %234
  br label %260

251:                                              ; preds = %246
  %252 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %253 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = sub nsw i32 %254, 1
  %256 = load i32, i32* @SDVO_PORT_MULTIPLY_SHIFT, align 4
  %257 = shl i32 %255, %256
  %258 = load i32, i32* %14, align 4
  %259 = or i32 %258, %257
  store i32 %259, i32* %14, align 4
  br label %260

260:                                              ; preds = %251, %250
  br label %261

261:                                              ; preds = %260, %233
  %262 = getelementptr inbounds %struct.intel_sdvo_dtd, %struct.intel_sdvo_dtd* %16, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = load i32, i32* @SDVO_NEED_TO_STALL, align 4
  %266 = and i32 %264, %265
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %276

268:                                              ; preds = %261
  %269 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %270 = call i32 @INTEL_GEN(%struct.drm_i915_private* %269)
  %271 = icmp slt i32 %270, 5
  br i1 %271, label %272, label %276

272:                                              ; preds = %268
  %273 = load i32, i32* @SDVO_STALL_SELECT, align 4
  %274 = load i32, i32* %14, align 4
  %275 = or i32 %274, %273
  store i32 %275, i32* %14, align 4
  br label %276

276:                                              ; preds = %272, %268, %261
  %277 = load %struct.intel_sdvo*, %struct.intel_sdvo** %13, align 8
  %278 = load i32, i32* %14, align 4
  %279 = call i32 @intel_sdvo_write_sdvox(%struct.intel_sdvo* %277, i32 %278)
  br label %280

280:                                              ; preds = %276, %158, %116, %87, %60
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local %struct.intel_sdvo_connector_state* @to_intel_sdvo_connector_state(%struct.drm_connector_state*) #1

declare dso_local %struct.intel_sdvo_connector* @to_intel_sdvo_connector(i32) #1

declare dso_local %struct.intel_sdvo* @to_sdvo(%struct.intel_encoder*) #1

declare dso_local i32 @intel_sdvo_update_props(%struct.intel_sdvo*, %struct.intel_sdvo_connector_state*) #1

declare dso_local i32 @intel_sdvo_set_value(%struct.intel_sdvo*, i32, %struct.intel_sdvo_in_out_map*, i32) #1

declare dso_local i32 @intel_sdvo_set_target_output(%struct.intel_sdvo*, i32) #1

declare dso_local i64 @IS_LVDS(%struct.intel_sdvo_connector*) #1

declare dso_local i32 @intel_sdvo_get_dtd_from_mode(%struct.intel_sdvo_dtd*, %struct.drm_display_mode*) #1

declare dso_local i32 @intel_sdvo_set_output_timing(%struct.intel_sdvo*, %struct.intel_sdvo_dtd*) #1

declare dso_local i32 @DRM_INFO(i8*, i32) #1

declare dso_local i32 @SDVO_NAME(%struct.intel_sdvo*) #1

declare dso_local i32 @intel_sdvo_set_target_input(%struct.intel_sdvo*) #1

declare dso_local i32 @intel_sdvo_set_encode(%struct.intel_sdvo*, i32) #1

declare dso_local i32 @intel_sdvo_set_colorimetry(%struct.intel_sdvo*, i32) #1

declare dso_local i32 @intel_sdvo_set_avi_infoframe(%struct.intel_sdvo*, %struct.intel_crtc_state*) #1

declare dso_local i64 @IS_TV(%struct.intel_sdvo_connector*) #1

declare dso_local i32 @intel_sdvo_set_tv_format(%struct.intel_sdvo*, %struct.drm_connector_state*) #1

declare dso_local i32 @intel_sdvo_set_input_timing(%struct.intel_sdvo*, %struct.intel_sdvo_dtd*) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @intel_sdvo_set_clock_rate_mult(%struct.intel_sdvo*, i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @HAS_PCH_SPLIT(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i64 @HAS_PCH_CPT(%struct.drm_i915_private*) #1

declare dso_local i32 @SDVO_PIPE_SEL_CPT(i32) #1

declare dso_local i32 @SDVO_PIPE_SEL(i32) #1

declare dso_local i64 @IS_I945G(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_I945GM(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_G33(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_PINEVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_sdvo_write_sdvox(%struct.intel_sdvo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

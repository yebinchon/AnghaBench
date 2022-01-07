; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_compute_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_compute_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.intel_crtc_state = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_9__, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_8__ = type { i32, %struct.drm_display_mode }
%struct.drm_display_mode = type { i32, i32 }
%struct.drm_connector_state = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.intel_dp = type { i32, i32, %struct.intel_connector* }
%struct.intel_connector = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__*, i64 }
%struct.TYPE_11__ = type { i32 }
%struct.intel_lspcon = type { i64 }
%struct.intel_crtc = type { i32 }
%struct.intel_digital_connector_state = type { i64 }

@DP_DPCD_QUIRK_CONSTANT_N = common dso_local global i32 0, align 4
@PORT_A = common dso_local global i32 0, align 4
@INTEL_OUTPUT_FORMAT_RGB = common dso_local global i32 0, align 4
@HDMI_AUDIO_AUTO = common dso_local global i64 0, align 8
@HDMI_AUDIO_ON = common dso_local global i64 0, align 8
@DRM_MODE_FLAG_DBLSCAN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_INTERLACE = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_DBLCLK = common dso_local global i32 0, align 4
@SEAMLESS_DRRS_SUPPORT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_dp_compute_config(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1, %struct.drm_connector_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_encoder*, align 8
  %6 = alloca %struct.intel_crtc_state*, align 8
  %7 = alloca %struct.drm_connector_state*, align 8
  %8 = alloca %struct.drm_i915_private*, align 8
  %9 = alloca %struct.drm_display_mode*, align 8
  %10 = alloca %struct.intel_dp*, align 8
  %11 = alloca %struct.intel_lspcon*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.intel_crtc*, align 8
  %14 = alloca %struct.intel_connector*, align 8
  %15 = alloca %struct.intel_digital_connector_state*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %5, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %6, align 8
  store %struct.drm_connector_state* %2, %struct.drm_connector_state** %7, align 8
  %19 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %20 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.drm_i915_private* @to_i915(i32 %22)
  store %struct.drm_i915_private* %23, %struct.drm_i915_private** %8, align 8
  %24 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %25 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %24, i32 0, i32 12
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  store %struct.drm_display_mode* %26, %struct.drm_display_mode** %9, align 8
  %27 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %28 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %27, i32 0, i32 1
  %29 = call %struct.intel_dp* @enc_to_intel_dp(%struct.TYPE_13__* %28)
  store %struct.intel_dp* %29, %struct.intel_dp** %10, align 8
  %30 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %31 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %30, i32 0, i32 1
  %32 = call %struct.intel_lspcon* @enc_to_intel_lspcon(%struct.TYPE_13__* %31)
  store %struct.intel_lspcon* %32, %struct.intel_lspcon** %11, align 8
  %33 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %34 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %12, align 4
  %36 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %37 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %36, i32 0, i32 12
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call %struct.intel_crtc* @to_intel_crtc(i32 %39)
  store %struct.intel_crtc* %40, %struct.intel_crtc** %13, align 8
  %41 = load %struct.intel_dp*, %struct.intel_dp** %10, align 8
  %42 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %41, i32 0, i32 2
  %43 = load %struct.intel_connector*, %struct.intel_connector** %42, align 8
  store %struct.intel_connector* %43, %struct.intel_connector** %14, align 8
  %44 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %45 = call %struct.intel_digital_connector_state* @to_intel_digital_connector_state(%struct.drm_connector_state* %44)
  store %struct.intel_digital_connector_state* %45, %struct.intel_digital_connector_state** %15, align 8
  %46 = load %struct.intel_dp*, %struct.intel_dp** %10, align 8
  %47 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %46, i32 0, i32 1
  %48 = load i32, i32* @DP_DPCD_QUIRK_CONSTANT_N, align 4
  %49 = call i32 @drm_dp_has_quirk(i32* %47, i32 %48)
  store i32 %49, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %50 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %51 = call i64 @HAS_PCH_SPLIT(%struct.drm_i915_private* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %3
  %54 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %55 = call i32 @HAS_DDI(%struct.drm_i915_private* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* @PORT_A, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %63 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  br label %64

64:                                               ; preds = %61, %57, %53, %3
  %65 = load i32, i32* @INTEL_OUTPUT_FORMAT_RGB, align 4
  %66 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %67 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %66, i32 0, i32 11
  store i32 %65, i32* %67, align 4
  %68 = load %struct.intel_lspcon*, %struct.intel_lspcon** %11, align 8
  %69 = getelementptr inbounds %struct.intel_lspcon, %struct.intel_lspcon* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %64
  %73 = load %struct.intel_connector*, %struct.intel_connector** %14, align 8
  %74 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %73, i32 0, i32 1
  %75 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %76 = call i32 @lspcon_ycbcr420_config(i32* %74, %struct.intel_crtc_state* %75)
  br label %83

77:                                               ; preds = %64
  %78 = load %struct.intel_dp*, %struct.intel_dp** %10, align 8
  %79 = load %struct.intel_connector*, %struct.intel_connector** %14, align 8
  %80 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %79, i32 0, i32 1
  %81 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %82 = call i32 @intel_dp_ycbcr420_config(%struct.intel_dp* %78, i32* %80, %struct.intel_crtc_state* %81)
  store i32 %82, i32* %17, align 4
  br label %83

83:                                               ; preds = %77, %72
  %84 = load i32, i32* %17, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = load i32, i32* %17, align 4
  store i32 %87, i32* %4, align 4
  br label %300

88:                                               ; preds = %83
  %89 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %90 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %89, i32 0, i32 1
  store i32 0, i32* %90, align 4
  %91 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %92 = call i64 @IS_G4X(%struct.drm_i915_private* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %88
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* @PORT_A, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %94, %88
  %99 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %100 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %99, i32 0, i32 2
  store i32 0, i32* %100, align 8
  br label %123

101:                                              ; preds = %94
  %102 = load %struct.intel_digital_connector_state*, %struct.intel_digital_connector_state** %15, align 8
  %103 = getelementptr inbounds %struct.intel_digital_connector_state, %struct.intel_digital_connector_state* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @HDMI_AUDIO_AUTO, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %101
  %108 = load %struct.intel_dp*, %struct.intel_dp** %10, align 8
  %109 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %112 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %111, i32 0, i32 2
  store i32 %110, i32* %112, align 8
  br label %122

113:                                              ; preds = %101
  %114 = load %struct.intel_digital_connector_state*, %struct.intel_digital_connector_state** %15, align 8
  %115 = getelementptr inbounds %struct.intel_digital_connector_state, %struct.intel_digital_connector_state* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @HDMI_AUDIO_ON, align 8
  %118 = icmp eq i64 %116, %117
  %119 = zext i1 %118 to i32
  %120 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %121 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 8
  br label %122

122:                                              ; preds = %113, %107
  br label %123

123:                                              ; preds = %122, %98
  %124 = load %struct.intel_dp*, %struct.intel_dp** %10, align 8
  %125 = call i64 @intel_dp_is_edp(%struct.intel_dp* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %170

127:                                              ; preds = %123
  %128 = load %struct.intel_connector*, %struct.intel_connector** %14, align 8
  %129 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %170

133:                                              ; preds = %127
  %134 = load %struct.intel_connector*, %struct.intel_connector** %14, align 8
  %135 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %139 = call i32 @intel_fixed_panel_mode(i64 %137, %struct.drm_display_mode* %138)
  %140 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %141 = call i32 @INTEL_GEN(%struct.drm_i915_private* %140)
  %142 = icmp sge i32 %141, 9
  br i1 %142, label %143, label %151

143:                                              ; preds = %133
  %144 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %145 = call i32 @skl_update_scaler_crtc(%struct.intel_crtc_state* %144)
  store i32 %145, i32* %17, align 4
  %146 = load i32, i32* %17, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %143
  %149 = load i32, i32* %17, align 4
  store i32 %149, i32* %4, align 4
  br label %300

150:                                              ; preds = %143
  br label %151

151:                                              ; preds = %150, %133
  %152 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %153 = call i64 @HAS_GMCH(%struct.drm_i915_private* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %162

155:                                              ; preds = %151
  %156 = load %struct.intel_crtc*, %struct.intel_crtc** %13, align 8
  %157 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %158 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %159 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @intel_gmch_panel_fitting(%struct.intel_crtc* %156, %struct.intel_crtc_state* %157, i32 %160)
  br label %169

162:                                              ; preds = %151
  %163 = load %struct.intel_crtc*, %struct.intel_crtc** %13, align 8
  %164 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %165 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %166 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @intel_pch_panel_fitting(%struct.intel_crtc* %163, %struct.intel_crtc_state* %164, i32 %167)
  br label %169

169:                                              ; preds = %162, %155
  br label %170

170:                                              ; preds = %169, %127, %123
  %171 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %172 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @DRM_MODE_FLAG_DBLSCAN, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %170
  %178 = load i32, i32* @EINVAL, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %4, align 4
  br label %300

180:                                              ; preds = %170
  %181 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %182 = call i64 @HAS_GMCH(%struct.drm_i915_private* %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %194

184:                                              ; preds = %180
  %185 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %186 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %184
  %192 = load i32, i32* @EINVAL, align 4
  %193 = sub nsw i32 0, %192
  store i32 %193, i32* %4, align 4
  br label %300

194:                                              ; preds = %184, %180
  %195 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %196 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @DRM_MODE_FLAG_DBLCLK, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %194
  %202 = load i32, i32* @EINVAL, align 4
  %203 = sub nsw i32 0, %202
  store i32 %203, i32* %4, align 4
  br label %300

204:                                              ; preds = %194
  %205 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %206 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %207 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %208 = call i32 @intel_dp_compute_link_config(%struct.intel_encoder* %205, %struct.intel_crtc_state* %206, %struct.drm_connector_state* %207)
  store i32 %208, i32* %17, align 4
  %209 = load i32, i32* %17, align 4
  %210 = icmp slt i32 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %204
  %212 = load i32, i32* %17, align 4
  store i32 %212, i32* %4, align 4
  br label %300

213:                                              ; preds = %204
  %214 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %215 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %216 = call i32 @intel_dp_limited_color_range(%struct.intel_crtc_state* %214, %struct.drm_connector_state* %215)
  %217 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %218 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %217, i32 0, i32 10
  store i32 %216, i32* %218, align 8
  %219 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %220 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %219, i32 0, i32 9
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %229

224:                                              ; preds = %213
  %225 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %226 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %225, i32 0, i32 9
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  store i32 %228, i32* %18, align 4
  br label %235

229:                                              ; preds = %213
  %230 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %231 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %232 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %231, i32 0, i32 8
  %233 = load i32, i32* %232, align 8
  %234 = call i32 @intel_dp_output_bpp(%struct.intel_crtc_state* %230, i32 %233)
  store i32 %234, i32* %18, align 4
  br label %235

235:                                              ; preds = %229, %224
  %236 = load i32, i32* %18, align 4
  %237 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %238 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %237, i32 0, i32 6
  %239 = load i32, i32* %238, align 8
  %240 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %241 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %244 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %243, i32 0, i32 5
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %247 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %246, i32 0, i32 7
  %248 = load i32, i32* %16, align 4
  %249 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %250 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %249, i32 0, i32 3
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @intel_link_compute_m_n(i32 %236, i32 %239, i32 %242, i32 %245, i32* %247, i32 %248, i32 %251)
  %253 = load %struct.intel_connector*, %struct.intel_connector** %14, align 8
  %254 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %254, i32 0, i32 0
  %256 = load %struct.TYPE_11__*, %struct.TYPE_11__** %255, align 8
  %257 = icmp ne %struct.TYPE_11__* %256, null
  br i1 %257, label %258, label %288

258:                                              ; preds = %235
  %259 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %260 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = load i64, i64* @SEAMLESS_DRRS_SUPPORT, align 8
  %264 = icmp eq i64 %262, %263
  br i1 %264, label %265, label %288

265:                                              ; preds = %258
  %266 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %267 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %266, i32 0, i32 1
  store i32 1, i32* %267, align 4
  %268 = load i32, i32* %18, align 4
  %269 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %270 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %269, i32 0, i32 6
  %271 = load i32, i32* %270, align 8
  %272 = load %struct.intel_connector*, %struct.intel_connector** %14, align 8
  %273 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %273, i32 0, i32 0
  %275 = load %struct.TYPE_11__*, %struct.TYPE_11__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  %278 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %279 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %278, i32 0, i32 5
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %282 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %281, i32 0, i32 4
  %283 = load i32, i32* %16, align 4
  %284 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %285 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %284, i32 0, i32 3
  %286 = load i32, i32* %285, align 4
  %287 = call i32 @intel_link_compute_m_n(i32 %268, i32 %271, i32 %277, i32 %280, i32* %282, i32 %283, i32 %286)
  br label %288

288:                                              ; preds = %265, %258, %235
  %289 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %290 = call i32 @HAS_DDI(%struct.drm_i915_private* %289)
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %296, label %292

292:                                              ; preds = %288
  %293 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %294 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %295 = call i32 @intel_dp_set_clock(%struct.intel_encoder* %293, %struct.intel_crtc_state* %294)
  br label %296

296:                                              ; preds = %292, %288
  %297 = load %struct.intel_dp*, %struct.intel_dp** %10, align 8
  %298 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %299 = call i32 @intel_psr_compute_config(%struct.intel_dp* %297, %struct.intel_crtc_state* %298)
  store i32 0, i32* %4, align 4
  br label %300

300:                                              ; preds = %296, %211, %201, %191, %177, %148, %86
  %301 = load i32, i32* %4, align 4
  ret i32 %301
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.intel_dp* @enc_to_intel_dp(%struct.TYPE_13__*) #1

declare dso_local %struct.intel_lspcon* @enc_to_intel_lspcon(%struct.TYPE_13__*) #1

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local %struct.intel_digital_connector_state* @to_intel_digital_connector_state(%struct.drm_connector_state*) #1

declare dso_local i32 @drm_dp_has_quirk(i32*, i32) #1

declare dso_local i64 @HAS_PCH_SPLIT(%struct.drm_i915_private*) #1

declare dso_local i32 @HAS_DDI(%struct.drm_i915_private*) #1

declare dso_local i32 @lspcon_ycbcr420_config(i32*, %struct.intel_crtc_state*) #1

declare dso_local i32 @intel_dp_ycbcr420_config(%struct.intel_dp*, i32*, %struct.intel_crtc_state*) #1

declare dso_local i64 @IS_G4X(%struct.drm_i915_private*) #1

declare dso_local i64 @intel_dp_is_edp(%struct.intel_dp*) #1

declare dso_local i32 @intel_fixed_panel_mode(i64, %struct.drm_display_mode*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @skl_update_scaler_crtc(%struct.intel_crtc_state*) #1

declare dso_local i64 @HAS_GMCH(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_gmch_panel_fitting(%struct.intel_crtc*, %struct.intel_crtc_state*, i32) #1

declare dso_local i32 @intel_pch_panel_fitting(%struct.intel_crtc*, %struct.intel_crtc_state*, i32) #1

declare dso_local i32 @intel_dp_compute_link_config(%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state*) #1

declare dso_local i32 @intel_dp_limited_color_range(%struct.intel_crtc_state*, %struct.drm_connector_state*) #1

declare dso_local i32 @intel_dp_output_bpp(%struct.intel_crtc_state*, i32) #1

declare dso_local i32 @intel_link_compute_m_n(i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @intel_dp_set_clock(%struct.intel_encoder*, %struct.intel_crtc_state*) #1

declare dso_local i32 @intel_psr_compute_config(%struct.intel_dp*, %struct.intel_crtc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

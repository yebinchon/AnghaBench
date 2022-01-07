; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_intel_hdmi_compute_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_intel_hdmi_compute_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.intel_crtc_state = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i32, i32, i32 }
%struct.drm_connector_state = type { i32, %struct.drm_connector* }
%struct.drm_connector = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.drm_scdc }
%struct.drm_scdc = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64 }
%struct.intel_hdmi = type { i32, i64 }
%struct.drm_i915_private = type { i32 }
%struct.intel_digital_connector_state = type { i64, i64 }

@HDMI_AUDIO_OFF_DVI = common dso_local global i64 0, align 8
@DRM_MODE_FLAG_DBLSCAN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@INTEL_OUTPUT_FORMAT_RGB = common dso_local global i32 0, align 4
@INTEL_BROADCAST_RGB_AUTO = common dso_local global i64 0, align 8
@HDMI_QUANTIZATION_RANGE_LIMITED = common dso_local global i64 0, align 8
@INTEL_BROADCAST_RGB_LIMITED = common dso_local global i64 0, align 8
@DRM_MODE_FLAG_DBLCLK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Can't support YCBCR420 output\0A\00", align 1
@HDMI_AUDIO_AUTO = common dso_local global i64 0, align 8
@HDMI_AUDIO_ON = common dso_local global i64 0, align 8
@MODE_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"picking bpc to 12 for HDMI output\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"picking bpc to 10 for HDMI output\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"picking bpc to 8 for HDMI output\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"forcing pipe bpp to %i for HDMI\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"unsupported HDMI clock, rejecting mode\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"bad AVI infoframe\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"bad SPD infoframe\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"bad HDMI infoframe\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"bad DRM infoframe\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_hdmi_compute_config(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1, %struct.drm_connector_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_encoder*, align 8
  %6 = alloca %struct.intel_crtc_state*, align 8
  %7 = alloca %struct.drm_connector_state*, align 8
  %8 = alloca %struct.intel_hdmi*, align 8
  %9 = alloca %struct.drm_i915_private*, align 8
  %10 = alloca %struct.drm_display_mode*, align 8
  %11 = alloca %struct.drm_connector*, align 8
  %12 = alloca %struct.drm_scdc*, align 8
  %13 = alloca %struct.intel_digital_connector_state*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %5, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %6, align 8
  store %struct.drm_connector_state* %2, %struct.drm_connector_state** %7, align 8
  %19 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %20 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %19, i32 0, i32 0
  %21 = call %struct.intel_hdmi* @enc_to_intel_hdmi(%struct.TYPE_9__* %20)
  store %struct.intel_hdmi* %21, %struct.intel_hdmi** %8, align 8
  %22 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %23 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.drm_i915_private* @to_i915(i32 %25)
  store %struct.drm_i915_private* %26, %struct.drm_i915_private** %9, align 8
  %27 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %28 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %27, i32 0, i32 13
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  store %struct.drm_display_mode* %29, %struct.drm_display_mode** %10, align 8
  %30 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %31 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %30, i32 0, i32 1
  %32 = load %struct.drm_connector*, %struct.drm_connector** %31, align 8
  store %struct.drm_connector* %32, %struct.drm_connector** %11, align 8
  %33 = load %struct.drm_connector*, %struct.drm_connector** %11, align 8
  %34 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  store %struct.drm_scdc* %36, %struct.drm_scdc** %12, align 8
  %37 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %38 = call %struct.intel_digital_connector_state* @to_intel_digital_connector_state(%struct.drm_connector_state* %37)
  store %struct.intel_digital_connector_state* %38, %struct.intel_digital_connector_state** %13, align 8
  %39 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %40 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %39, i32 0, i32 13
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %14, align 4
  %45 = mul nsw i32 %44, 5
  %46 = sdiv i32 %45, 4
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* %14, align 4
  %48 = mul nsw i32 %47, 3
  %49 = sdiv i32 %48, 2
  store i32 %49, i32* %16, align 4
  %50 = load %struct.intel_digital_connector_state*, %struct.intel_digital_connector_state** %13, align 8
  %51 = getelementptr inbounds %struct.intel_digital_connector_state, %struct.intel_digital_connector_state* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @HDMI_AUDIO_OFF_DVI, align 8
  %54 = icmp eq i64 %52, %53
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %18, align 4
  %56 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %57 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @DRM_MODE_FLAG_DBLSCAN, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %3
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %336

65:                                               ; preds = %3
  %66 = load i32, i32* @INTEL_OUTPUT_FORMAT_RGB, align 4
  %67 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %68 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %67, i32 0, i32 12
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* %18, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %65
  %72 = load %struct.intel_hdmi*, %struct.intel_hdmi** %8, align 8
  %73 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br label %76

76:                                               ; preds = %71, %65
  %77 = phi i1 [ false, %65 ], [ %75, %71 ]
  %78 = zext i1 %77 to i32
  %79 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %80 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  %81 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %82 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %76
  %86 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %87 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %86, i32 0, i32 1
  store i32 1, i32* %87, align 4
  br label %88

88:                                               ; preds = %85, %76
  %89 = load %struct.intel_digital_connector_state*, %struct.intel_digital_connector_state** %13, align 8
  %90 = getelementptr inbounds %struct.intel_digital_connector_state, %struct.intel_digital_connector_state* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @INTEL_BROADCAST_RGB_AUTO, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %109

94:                                               ; preds = %88
  %95 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %96 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %94
  %100 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %101 = call i64 @drm_default_rgb_quant_range(%struct.drm_display_mode* %100)
  %102 = load i64, i64* @HDMI_QUANTIZATION_RANGE_LIMITED, align 8
  %103 = icmp eq i64 %101, %102
  br label %104

104:                                              ; preds = %99, %94
  %105 = phi i1 [ false, %94 ], [ %103, %99 ]
  %106 = zext i1 %105 to i32
  %107 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %108 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 4
  br label %118

109:                                              ; preds = %88
  %110 = load %struct.intel_digital_connector_state*, %struct.intel_digital_connector_state** %13, align 8
  %111 = getelementptr inbounds %struct.intel_digital_connector_state, %struct.intel_digital_connector_state* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @INTEL_BROADCAST_RGB_LIMITED, align 8
  %114 = icmp eq i64 %112, %113
  %115 = zext i1 %114 to i32
  %116 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %117 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 4
  br label %118

118:                                              ; preds = %109, %104
  %119 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %120 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @DRM_MODE_FLAG_DBLCLK, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %118
  %126 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %127 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %126, i32 0, i32 3
  store i32 2, i32* %127, align 4
  %128 = load i32, i32* %14, align 4
  %129 = mul nsw i32 %128, 2
  store i32 %129, i32* %14, align 4
  %130 = load i32, i32* %15, align 4
  %131 = mul nsw i32 %130, 2
  store i32 %131, i32* %15, align 4
  %132 = load i32, i32* %16, align 4
  %133 = mul nsw i32 %132, 2
  store i32 %133, i32* %16, align 4
  br label %134

134:                                              ; preds = %125, %118
  %135 = load %struct.drm_connector*, %struct.drm_connector** %11, align 8
  %136 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %135, i32 0, i32 0
  %137 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %138 = call i64 @drm_mode_is_420_only(%struct.TYPE_10__* %136, %struct.drm_display_mode* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %150

140:                                              ; preds = %134
  %141 = load %struct.drm_connector*, %struct.drm_connector** %11, align 8
  %142 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %143 = call i32 @intel_hdmi_ycbcr420_config(%struct.drm_connector* %141, %struct.intel_crtc_state* %142, i32* %16, i32* %15, i32* %14)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %149, label %145

145:                                              ; preds = %140
  %146 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %147 = load i32, i32* @EINVAL, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %4, align 4
  br label %336

149:                                              ; preds = %140
  br label %150

150:                                              ; preds = %149, %134
  %151 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  %152 = call i64 @HAS_PCH_SPLIT(%struct.drm_i915_private* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %161

154:                                              ; preds = %150
  %155 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  %156 = call i32 @HAS_DDI(%struct.drm_i915_private* %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %161, label %158

158:                                              ; preds = %154
  %159 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %160 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %159, i32 0, i32 4
  store i32 1, i32* %160, align 4
  br label %161

161:                                              ; preds = %158, %154, %150
  %162 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %163 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %188

166:                                              ; preds = %161
  %167 = load %struct.intel_digital_connector_state*, %struct.intel_digital_connector_state** %13, align 8
  %168 = getelementptr inbounds %struct.intel_digital_connector_state, %struct.intel_digital_connector_state* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @HDMI_AUDIO_AUTO, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %178

172:                                              ; preds = %166
  %173 = load %struct.intel_hdmi*, %struct.intel_hdmi** %8, align 8
  %174 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %177 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %176, i32 0, i32 5
  store i32 %175, i32* %177, align 4
  br label %187

178:                                              ; preds = %166
  %179 = load %struct.intel_digital_connector_state*, %struct.intel_digital_connector_state** %13, align 8
  %180 = getelementptr inbounds %struct.intel_digital_connector_state, %struct.intel_digital_connector_state* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @HDMI_AUDIO_ON, align 8
  %183 = icmp eq i64 %181, %182
  %184 = zext i1 %183 to i32
  %185 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %186 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %185, i32 0, i32 5
  store i32 %184, i32* %186, align 4
  br label %187

187:                                              ; preds = %178, %172
  br label %188

188:                                              ; preds = %187, %161
  %189 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %190 = call i64 @hdmi_deep_color_possible(%struct.intel_crtc_state* %189, i32 12)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %204

192:                                              ; preds = %188
  %193 = load %struct.intel_hdmi*, %struct.intel_hdmi** %8, align 8
  %194 = load i32, i32* %16, align 4
  %195 = load i32, i32* %18, align 4
  %196 = call i64 @hdmi_port_clock_valid(%struct.intel_hdmi* %193, i32 %194, i32 1, i32 %195)
  %197 = load i64, i64* @MODE_OK, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %204

199:                                              ; preds = %192
  %200 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i32 36, i32* %17, align 4
  %201 = load i32, i32* %16, align 4
  %202 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %203 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %202, i32 0, i32 6
  store i32 %201, i32* %203, align 4
  br label %226

204:                                              ; preds = %192, %188
  %205 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %206 = call i64 @hdmi_deep_color_possible(%struct.intel_crtc_state* %205, i32 10)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %220

208:                                              ; preds = %204
  %209 = load %struct.intel_hdmi*, %struct.intel_hdmi** %8, align 8
  %210 = load i32, i32* %15, align 4
  %211 = load i32, i32* %18, align 4
  %212 = call i64 @hdmi_port_clock_valid(%struct.intel_hdmi* %209, i32 %210, i32 1, i32 %211)
  %213 = load i64, i64* @MODE_OK, align 8
  %214 = icmp eq i64 %212, %213
  br i1 %214, label %215, label %220

215:                                              ; preds = %208
  %216 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  store i32 30, i32* %17, align 4
  %217 = load i32, i32* %15, align 4
  %218 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %219 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %218, i32 0, i32 6
  store i32 %217, i32* %219, align 4
  br label %225

220:                                              ; preds = %208, %204
  %221 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  store i32 24, i32* %17, align 4
  %222 = load i32, i32* %14, align 4
  %223 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %224 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %223, i32 0, i32 6
  store i32 %222, i32* %224, align 4
  br label %225

225:                                              ; preds = %220, %215
  br label %226

226:                                              ; preds = %225, %199
  %227 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %228 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %227, i32 0, i32 11
  %229 = load i32, i32* %228, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %237, label %231

231:                                              ; preds = %226
  %232 = load i32, i32* %17, align 4
  %233 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %232)
  %234 = load i32, i32* %17, align 4
  %235 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %236 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %235, i32 0, i32 7
  store i32 %234, i32* %236, align 4
  br label %237

237:                                              ; preds = %231, %226
  %238 = load %struct.intel_hdmi*, %struct.intel_hdmi** %8, align 8
  %239 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %240 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %239, i32 0, i32 6
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* %18, align 4
  %243 = call i64 @hdmi_port_clock_valid(%struct.intel_hdmi* %238, i32 %241, i32 0, i32 %242)
  %244 = load i64, i64* @MODE_OK, align 8
  %245 = icmp ne i64 %243, %244
  br i1 %245, label %246, label %250

246:                                              ; preds = %237
  %247 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  %248 = load i32, i32* @EINVAL, align 4
  %249 = sub nsw i32 0, %248
  store i32 %249, i32* %4, align 4
  br label %336

250:                                              ; preds = %237
  %251 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %252 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %255 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %254, i32 0, i32 2
  store i32 %253, i32* %255, align 4
  %256 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %257 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %256, i32 0, i32 8
  store i32 4, i32* %257, align 4
  %258 = load %struct.drm_scdc*, %struct.drm_scdc** %12, align 8
  %259 = getelementptr inbounds %struct.drm_scdc, %struct.drm_scdc* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %259, i32 0, i32 1
  %261 = load i64, i64* %260, align 8
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %291

263:                                              ; preds = %250
  %264 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  %265 = call i32 @INTEL_GEN(%struct.drm_i915_private* %264)
  %266 = icmp sge i32 %265, 10
  br i1 %266, label %271, label %267

267:                                              ; preds = %263
  %268 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  %269 = call i64 @IS_GEMINILAKE(%struct.drm_i915_private* %268)
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %291

271:                                              ; preds = %267, %263
  %272 = load %struct.drm_scdc*, %struct.drm_scdc** %12, align 8
  %273 = getelementptr inbounds %struct.drm_scdc, %struct.drm_scdc* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %280

277:                                              ; preds = %271
  %278 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %279 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %278, i32 0, i32 9
  store i32 1, i32* %279, align 4
  br label %280

280:                                              ; preds = %277, %271
  %281 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %282 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %281, i32 0, i32 6
  %283 = load i32, i32* %282, align 4
  %284 = icmp sgt i32 %283, 340000
  br i1 %284, label %285, label %290

285:                                              ; preds = %280
  %286 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %287 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %286, i32 0, i32 9
  store i32 1, i32* %287, align 4
  %288 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %289 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %288, i32 0, i32 10
  store i32 1, i32* %289, align 4
  br label %290

290:                                              ; preds = %285, %280
  br label %291

291:                                              ; preds = %290, %267, %250
  %292 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %293 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %294 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %295 = call i32 @intel_hdmi_compute_gcp_infoframe(%struct.intel_encoder* %292, %struct.intel_crtc_state* %293, %struct.drm_connector_state* %294)
  %296 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %297 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %298 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %299 = call i32 @intel_hdmi_compute_avi_infoframe(%struct.intel_encoder* %296, %struct.intel_crtc_state* %297, %struct.drm_connector_state* %298)
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %305, label %301

301:                                              ; preds = %291
  %302 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %303 = load i32, i32* @EINVAL, align 4
  %304 = sub nsw i32 0, %303
  store i32 %304, i32* %4, align 4
  br label %336

305:                                              ; preds = %291
  %306 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %307 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %308 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %309 = call i32 @intel_hdmi_compute_spd_infoframe(%struct.intel_encoder* %306, %struct.intel_crtc_state* %307, %struct.drm_connector_state* %308)
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %315, label %311

311:                                              ; preds = %305
  %312 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %313 = load i32, i32* @EINVAL, align 4
  %314 = sub nsw i32 0, %313
  store i32 %314, i32* %4, align 4
  br label %336

315:                                              ; preds = %305
  %316 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %317 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %318 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %319 = call i32 @intel_hdmi_compute_hdmi_infoframe(%struct.intel_encoder* %316, %struct.intel_crtc_state* %317, %struct.drm_connector_state* %318)
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %325, label %321

321:                                              ; preds = %315
  %322 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %323 = load i32, i32* @EINVAL, align 4
  %324 = sub nsw i32 0, %323
  store i32 %324, i32* %4, align 4
  br label %336

325:                                              ; preds = %315
  %326 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %327 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %328 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %329 = call i32 @intel_hdmi_compute_drm_infoframe(%struct.intel_encoder* %326, %struct.intel_crtc_state* %327, %struct.drm_connector_state* %328)
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %335, label %331

331:                                              ; preds = %325
  %332 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  %333 = load i32, i32* @EINVAL, align 4
  %334 = sub nsw i32 0, %333
  store i32 %334, i32* %4, align 4
  br label %336

335:                                              ; preds = %325
  store i32 0, i32* %4, align 4
  br label %336

336:                                              ; preds = %335, %331, %321, %311, %301, %246, %145, %62
  %337 = load i32, i32* %4, align 4
  ret i32 %337
}

declare dso_local %struct.intel_hdmi* @enc_to_intel_hdmi(%struct.TYPE_9__*) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.intel_digital_connector_state* @to_intel_digital_connector_state(%struct.drm_connector_state*) #1

declare dso_local i64 @drm_default_rgb_quant_range(%struct.drm_display_mode*) #1

declare dso_local i64 @drm_mode_is_420_only(%struct.TYPE_10__*, %struct.drm_display_mode*) #1

declare dso_local i32 @intel_hdmi_ycbcr420_config(%struct.drm_connector*, %struct.intel_crtc_state*, i32*, i32*, i32*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i64 @HAS_PCH_SPLIT(%struct.drm_i915_private*) #1

declare dso_local i32 @HAS_DDI(%struct.drm_i915_private*) #1

declare dso_local i64 @hdmi_deep_color_possible(%struct.intel_crtc_state*, i32) #1

declare dso_local i64 @hdmi_port_clock_valid(%struct.intel_hdmi*, i32, i32, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_GEMINILAKE(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_hdmi_compute_gcp_infoframe(%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state*) #1

declare dso_local i32 @intel_hdmi_compute_avi_infoframe(%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state*) #1

declare dso_local i32 @intel_hdmi_compute_spd_infoframe(%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state*) #1

declare dso_local i32 @intel_hdmi_compute_hdmi_infoframe(%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state*) #1

declare dso_local i32 @intel_hdmi_compute_drm_infoframe(%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_intel_ddi_get_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_intel_ddi_get_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.intel_crtc_state = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_12__, i32, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.intel_crtc = type { i32 }

@TRANS_DDI_PHSYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PHSYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NHSYNC = common dso_local global i32 0, align 4
@TRANS_DDI_PVSYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PVSYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NVSYNC = common dso_local global i32 0, align 4
@TRANS_DDI_BPC_MASK = common dso_local global i32 0, align 4
@TRANS_DDI_MODE_SELECT_MASK = common dso_local global i32 0, align 4
@TRANS_DDI_HDMI_SCRAMBLING = common dso_local global i32 0, align 4
@TRANS_DDI_HIGH_TMDS_CHAR_RATE = common dso_local global i32 0, align 4
@INTEL_OUTPUT_HDMI = common dso_local global i64 0, align 8
@INTEL_OUTPUT_ANALOG = common dso_local global i64 0, align 8
@INTEL_OUTPUT_EDP = common dso_local global i64 0, align 8
@INTEL_OUTPUT_DP = common dso_local global i64 0, align 8
@DDI_PORT_WIDTH_MASK = common dso_local global i32 0, align 4
@DDI_PORT_WIDTH_SHIFT = common dso_local global i32 0, align 4
@INTEL_OUTPUT_DP_MST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [68 x i8] c"pipe has %d bpp for eDP panel, overriding BIOS-provided max %d bpp\0A\00", align 1
@HDMI_INFOFRAME_TYPE_AVI = common dso_local global i32 0, align 4
@HDMI_INFOFRAME_TYPE_SPD = common dso_local global i32 0, align 4
@HDMI_INFOFRAME_TYPE_VENDOR = common dso_local global i32 0, align 4
@HDMI_INFOFRAME_TYPE_DRM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_ddi_get_config(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca %struct.intel_encoder*, align 8
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.intel_crtc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %3, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %4, align 8
  %10 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %11 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.drm_i915_private* @to_i915(i32 %13)
  store %struct.drm_i915_private* %14, %struct.drm_i915_private** %5, align 8
  %15 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %16 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %15, i32 0, i32 11
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.intel_crtc* @to_intel_crtc(i32 %18)
  store %struct.intel_crtc* %19, %struct.intel_crtc** %6, align 8
  %20 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %21 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @transcoder_is_dsi(i32 %23)
  %25 = call i64 @WARN_ON(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  br label %283

28:                                               ; preds = %2
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @TRANS_DDI_FUNC_CTL(i32 %29)
  %31 = call i32 @I915_READ(i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @TRANS_DDI_PHSYNC, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %28
  %37 = load i32, i32* @DRM_MODE_FLAG_PHSYNC, align 4
  %38 = load i32, i32* %9, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %9, align 4
  br label %44

40:                                               ; preds = %28
  %41 = load i32, i32* @DRM_MODE_FLAG_NHSYNC, align 4
  %42 = load i32, i32* %9, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %40, %36
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @TRANS_DDI_PVSYNC, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i32, i32* @DRM_MODE_FLAG_PVSYNC, align 4
  %51 = load i32, i32* %9, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %9, align 4
  br label %57

53:                                               ; preds = %44
  %54 = load i32, i32* @DRM_MODE_FLAG_NVSYNC, align 4
  %55 = load i32, i32* %9, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %53, %49
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %60 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %59, i32 0, i32 11
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %58
  store i32 %64, i32* %62, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @TRANS_DDI_BPC_MASK, align 4
  %67 = and i32 %65, %66
  switch i32 %67, label %80 [
    i32 134, label %68
    i32 133, label %71
    i32 136, label %74
    i32 135, label %77
  ]

68:                                               ; preds = %57
  %69 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %70 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %69, i32 0, i32 1
  store i32 18, i32* %70, align 4
  br label %81

71:                                               ; preds = %57
  %72 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %73 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %72, i32 0, i32 1
  store i32 24, i32* %73, align 4
  br label %81

74:                                               ; preds = %57
  %75 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %76 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %75, i32 0, i32 1
  store i32 30, i32* %76, align 4
  br label %81

77:                                               ; preds = %57
  %78 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %79 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %78, i32 0, i32 1
  store i32 36, i32* %79, align 4
  br label %81

80:                                               ; preds = %57
  br label %81

81:                                               ; preds = %80, %77, %74, %71, %68
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @TRANS_DDI_MODE_SELECT_MASK, align 4
  %84 = and i32 %82, %83
  switch i32 %84, label %187 [
    i32 128, label %85
    i32 130, label %121
    i32 129, label %130
    i32 131, label %137
    i32 132, label %169
  ]

85:                                               ; preds = %81
  %86 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %87 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %86, i32 0, i32 2
  store i32 1, i32* %87, align 4
  %88 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %89 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %90 = call i32 @intel_hdmi_infoframes_enabled(%struct.intel_encoder* %88, %struct.intel_crtc_state* %89)
  %91 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %92 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %91, i32 0, i32 7
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %90
  store i32 %95, i32* %93, align 4
  %96 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %97 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %96, i32 0, i32 7
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %85
  %102 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %103 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %102, i32 0, i32 3
  store i32 1, i32* %103, align 4
  br label %104

104:                                              ; preds = %101, %85
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* @TRANS_DDI_HDMI_SCRAMBLING, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %111 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %110, i32 0, i32 4
  store i32 1, i32* %111, align 4
  br label %112

112:                                              ; preds = %109, %104
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* @TRANS_DDI_HIGH_TMDS_CHAR_RATE, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %112
  %118 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %119 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %118, i32 0, i32 5
  store i32 1, i32* %119, align 4
  br label %120

120:                                              ; preds = %117, %112
  br label %121

121:                                              ; preds = %81, %120
  %122 = load i64, i64* @INTEL_OUTPUT_HDMI, align 8
  %123 = call i32 @BIT(i64 %122)
  %124 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %125 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %124, i32 0, i32 10
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 4
  %128 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %129 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %128, i32 0, i32 6
  store i32 4, i32* %129, align 4
  br label %188

130:                                              ; preds = %81
  %131 = load i64, i64* @INTEL_OUTPUT_ANALOG, align 8
  %132 = call i32 @BIT(i64 %131)
  %133 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %134 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %133, i32 0, i32 10
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 4
  br label %188

137:                                              ; preds = %81
  %138 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %139 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @INTEL_OUTPUT_EDP, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %150

143:                                              ; preds = %137
  %144 = load i64, i64* @INTEL_OUTPUT_EDP, align 8
  %145 = call i32 @BIT(i64 %144)
  %146 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %147 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %146, i32 0, i32 10
  %148 = load i32, i32* %147, align 4
  %149 = or i32 %148, %145
  store i32 %149, i32* %147, align 4
  br label %157

150:                                              ; preds = %137
  %151 = load i64, i64* @INTEL_OUTPUT_DP, align 8
  %152 = call i32 @BIT(i64 %151)
  %153 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %154 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %153, i32 0, i32 10
  %155 = load i32, i32* %154, align 4
  %156 = or i32 %155, %152
  store i32 %156, i32* %154, align 4
  br label %157

157:                                              ; preds = %150, %143
  %158 = load i32, i32* %8, align 4
  %159 = load i32, i32* @DDI_PORT_WIDTH_MASK, align 4
  %160 = and i32 %158, %159
  %161 = load i32, i32* @DDI_PORT_WIDTH_SHIFT, align 4
  %162 = ashr i32 %160, %161
  %163 = add nsw i32 %162, 1
  %164 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %165 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %164, i32 0, i32 6
  store i32 %163, i32* %165, align 4
  %166 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %167 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %168 = call i32 @intel_dp_get_m_n(%struct.intel_crtc* %166, %struct.intel_crtc_state* %167)
  br label %188

169:                                              ; preds = %81
  %170 = load i64, i64* @INTEL_OUTPUT_DP_MST, align 8
  %171 = call i32 @BIT(i64 %170)
  %172 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %173 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %172, i32 0, i32 10
  %174 = load i32, i32* %173, align 4
  %175 = or i32 %174, %171
  store i32 %175, i32* %173, align 4
  %176 = load i32, i32* %8, align 4
  %177 = load i32, i32* @DDI_PORT_WIDTH_MASK, align 4
  %178 = and i32 %176, %177
  %179 = load i32, i32* @DDI_PORT_WIDTH_SHIFT, align 4
  %180 = ashr i32 %178, %179
  %181 = add nsw i32 %180, 1
  %182 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %183 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %182, i32 0, i32 6
  store i32 %181, i32* %183, align 4
  %184 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %185 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %186 = call i32 @intel_dp_get_m_n(%struct.intel_crtc* %184, %struct.intel_crtc_state* %185)
  br label %188

187:                                              ; preds = %81
  br label %188

188:                                              ; preds = %187, %169, %157, %130, %121
  %189 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %190 = load i32, i32* %7, align 4
  %191 = call i32 @intel_ddi_is_audio_enabled(%struct.drm_i915_private* %189, i32 %190)
  %192 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %193 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %192, i32 0, i32 9
  store i32 %191, i32* %193, align 4
  %194 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %195 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @INTEL_OUTPUT_EDP, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %236

199:                                              ; preds = %188
  %200 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %201 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %236

206:                                              ; preds = %199
  %207 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %208 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = sext i32 %209 to i64
  %211 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %212 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = icmp sgt i64 %210, %215
  br i1 %216, label %217, label %236

217:                                              ; preds = %206
  %218 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %219 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = sext i32 %220 to i64
  %222 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %223 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i64 %221, i64 %226)
  %228 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %229 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = sext i32 %230 to i64
  %232 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %233 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 0
  store i64 %231, i64* %235, align 8
  br label %236

236:                                              ; preds = %217, %206, %199, %188
  %237 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %238 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %239 = call i32 @intel_ddi_clock_get(%struct.intel_encoder* %237, %struct.intel_crtc_state* %238)
  %240 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %241 = call i64 @IS_GEN9_LP(%struct.drm_i915_private* %240)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %248

243:                                              ; preds = %236
  %244 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %245 = call i32 @bxt_ddi_phy_get_lane_lat_optim_mask(%struct.intel_encoder* %244)
  %246 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %247 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %246, i32 0, i32 8
  store i32 %245, i32* %247, align 4
  br label %248

248:                                              ; preds = %243, %236
  %249 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %250 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %251 = call i32 @intel_ddi_compute_min_voltage_level(%struct.drm_i915_private* %249, %struct.intel_crtc_state* %250)
  %252 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %253 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %254 = call i32 @intel_hdmi_read_gcp_infoframe(%struct.intel_encoder* %252, %struct.intel_crtc_state* %253)
  %255 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %256 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %257 = load i32, i32* @HDMI_INFOFRAME_TYPE_AVI, align 4
  %258 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %259 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %258, i32 0, i32 7
  %260 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %259, i32 0, i32 3
  %261 = call i32 @intel_read_infoframe(%struct.intel_encoder* %255, %struct.intel_crtc_state* %256, i32 %257, i32* %260)
  %262 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %263 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %264 = load i32, i32* @HDMI_INFOFRAME_TYPE_SPD, align 4
  %265 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %266 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %265, i32 0, i32 7
  %267 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %266, i32 0, i32 2
  %268 = call i32 @intel_read_infoframe(%struct.intel_encoder* %262, %struct.intel_crtc_state* %263, i32 %264, i32* %267)
  %269 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %270 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %271 = load i32, i32* @HDMI_INFOFRAME_TYPE_VENDOR, align 4
  %272 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %273 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %272, i32 0, i32 7
  %274 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %273, i32 0, i32 1
  %275 = call i32 @intel_read_infoframe(%struct.intel_encoder* %269, %struct.intel_crtc_state* %270, i32 %271, i32* %274)
  %276 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %277 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %278 = load i32, i32* @HDMI_INFOFRAME_TYPE_DRM, align 4
  %279 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %280 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %279, i32 0, i32 7
  %281 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %280, i32 0, i32 0
  %282 = call i32 @intel_read_infoframe(%struct.intel_encoder* %276, %struct.intel_crtc_state* %277, i32 %278, i32* %281)
  br label %283

283:                                              ; preds = %248, %27
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @transcoder_is_dsi(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @TRANS_DDI_FUNC_CTL(i32) #1

declare dso_local i32 @intel_hdmi_infoframes_enabled(%struct.intel_encoder*, %struct.intel_crtc_state*) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @intel_dp_get_m_n(%struct.intel_crtc*, %struct.intel_crtc_state*) #1

declare dso_local i32 @intel_ddi_is_audio_enabled(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i64, i64) #1

declare dso_local i32 @intel_ddi_clock_get(%struct.intel_encoder*, %struct.intel_crtc_state*) #1

declare dso_local i64 @IS_GEN9_LP(%struct.drm_i915_private*) #1

declare dso_local i32 @bxt_ddi_phy_get_lane_lat_optim_mask(%struct.intel_encoder*) #1

declare dso_local i32 @intel_ddi_compute_min_voltage_level(%struct.drm_i915_private*, %struct.intel_crtc_state*) #1

declare dso_local i32 @intel_hdmi_read_gcp_infoframe(%struct.intel_encoder*, %struct.intel_crtc_state*) #1

declare dso_local i32 @intel_read_infoframe(%struct.intel_encoder*, %struct.intel_crtc_state*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

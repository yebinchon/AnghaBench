; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_get_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_get_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { i32, i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.intel_crtc_state = type { i32, i32, i32, i32, i64, i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.drm_i915_private = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.intel_dp = type { i32 }
%struct.intel_crtc = type { i32 }

@INTEL_OUTPUT_EDP = common dso_local global i64 0, align 8
@INTEL_OUTPUT_DP = common dso_local global i64 0, align 8
@DP_AUDIO_OUTPUT_ENABLE = common dso_local global i32 0, align 4
@PORT_A = common dso_local global i32 0, align 4
@TRANS_DP_HSYNC_ACTIVE_HIGH = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PHSYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NHSYNC = common dso_local global i32 0, align 4
@TRANS_DP_VSYNC_ACTIVE_HIGH = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PVSYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NVSYNC = common dso_local global i32 0, align 4
@DP_SYNC_HS_HIGH = common dso_local global i32 0, align 4
@DP_SYNC_VS_HIGH = common dso_local global i32 0, align 4
@DP_COLOR_RANGE_16_235 = common dso_local global i32 0, align 4
@DP_PORT_WIDTH_MASK = common dso_local global i32 0, align 4
@DP_PORT_WIDTH_SHIFT = common dso_local global i32 0, align 4
@DP_A = common dso_local global i32 0, align 4
@DP_PLL_FREQ_MASK = common dso_local global i32 0, align 4
@DP_PLL_FREQ_162MHZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"pipe has %d bpp for eDP panel, overriding BIOS-provided max %d bpp\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*, %struct.intel_crtc_state*)* @intel_dp_get_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_dp_get_config(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca %struct.intel_encoder*, align 8
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.intel_dp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.intel_crtc*, align 8
  %11 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %3, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %4, align 8
  %12 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %13 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.drm_i915_private* @to_i915(i32 %15)
  store %struct.drm_i915_private* %16, %struct.drm_i915_private** %5, align 8
  %17 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %18 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %17, i32 0, i32 2
  %19 = call %struct.intel_dp* @enc_to_intel_dp(%struct.TYPE_10__* %18)
  store %struct.intel_dp* %19, %struct.intel_dp** %6, align 8
  store i32 0, i32* %8, align 4
  %20 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %21 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %9, align 4
  %23 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %24 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %23, i32 0, i32 6
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.intel_crtc* @to_intel_crtc(i32 %26)
  store %struct.intel_crtc* %27, %struct.intel_crtc** %10, align 8
  %28 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %29 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @INTEL_OUTPUT_EDP, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %2
  %34 = load i64, i64* @INTEL_OUTPUT_EDP, align 8
  %35 = call i32 @BIT(i64 %34)
  %36 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %37 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %36, i32 0, i32 7
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  br label %47

40:                                               ; preds = %2
  %41 = load i64, i64* @INTEL_OUTPUT_DP, align 8
  %42 = call i32 @BIT(i64 %41)
  %43 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %44 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %43, i32 0, i32 7
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  br label %47

47:                                               ; preds = %40, %33
  %48 = load %struct.intel_dp*, %struct.intel_dp** %6, align 8
  %49 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @I915_READ(i32 %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @DP_AUDIO_OUTPUT_ENABLE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %47
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @PORT_A, align 4
  %59 = icmp ne i32 %57, %58
  br label %60

60:                                               ; preds = %56, %47
  %61 = phi i1 [ false, %47 ], [ %59, %56 ]
  %62 = zext i1 %61 to i32
  %63 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %64 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %66 = call i64 @HAS_PCH_CPT(%struct.drm_i915_private* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %104

68:                                               ; preds = %60
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @PORT_A, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %104

72:                                               ; preds = %68
  %73 = load %struct.intel_crtc*, %struct.intel_crtc** %10, align 8
  %74 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @TRANS_DP_CTL(i32 %75)
  %77 = call i32 @I915_READ(i32 %76)
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* @TRANS_DP_HSYNC_ACTIVE_HIGH, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %72
  %83 = load i32, i32* @DRM_MODE_FLAG_PHSYNC, align 4
  %84 = load i32, i32* %8, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %8, align 4
  br label %90

86:                                               ; preds = %72
  %87 = load i32, i32* @DRM_MODE_FLAG_NHSYNC, align 4
  %88 = load i32, i32* %8, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %8, align 4
  br label %90

90:                                               ; preds = %86, %82
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* @TRANS_DP_VSYNC_ACTIVE_HIGH, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %90
  %96 = load i32, i32* @DRM_MODE_FLAG_PVSYNC, align 4
  %97 = load i32, i32* %8, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %8, align 4
  br label %103

99:                                               ; preds = %90
  %100 = load i32, i32* @DRM_MODE_FLAG_NVSYNC, align 4
  %101 = load i32, i32* %8, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %8, align 4
  br label %103

103:                                              ; preds = %99, %95
  br label %131

104:                                              ; preds = %68, %60
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* @DP_SYNC_HS_HIGH, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %104
  %110 = load i32, i32* @DRM_MODE_FLAG_PHSYNC, align 4
  %111 = load i32, i32* %8, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %8, align 4
  br label %117

113:                                              ; preds = %104
  %114 = load i32, i32* @DRM_MODE_FLAG_NHSYNC, align 4
  %115 = load i32, i32* %8, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %8, align 4
  br label %117

117:                                              ; preds = %113, %109
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* @DP_SYNC_VS_HIGH, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %117
  %123 = load i32, i32* @DRM_MODE_FLAG_PVSYNC, align 4
  %124 = load i32, i32* %8, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %8, align 4
  br label %130

126:                                              ; preds = %117
  %127 = load i32, i32* @DRM_MODE_FLAG_NVSYNC, align 4
  %128 = load i32, i32* %8, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %8, align 4
  br label %130

130:                                              ; preds = %126, %122
  br label %131

131:                                              ; preds = %130, %103
  %132 = load i32, i32* %8, align 4
  %133 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %134 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %133, i32 0, i32 6
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = or i32 %137, %132
  store i32 %138, i32* %136, align 4
  %139 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %140 = call i64 @IS_G4X(%struct.drm_i915_private* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %150

142:                                              ; preds = %131
  %143 = load i32, i32* %7, align 4
  %144 = load i32, i32* @DP_COLOR_RANGE_16_235, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %142
  %148 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %149 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %148, i32 0, i32 1
  store i32 1, i32* %149, align 4
  br label %150

150:                                              ; preds = %147, %142, %131
  %151 = load i32, i32* %7, align 4
  %152 = load i32, i32* @DP_PORT_WIDTH_MASK, align 4
  %153 = and i32 %151, %152
  %154 = load i32, i32* @DP_PORT_WIDTH_SHIFT, align 4
  %155 = ashr i32 %153, %154
  %156 = add nsw i32 %155, 1
  %157 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %158 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %157, i32 0, i32 2
  store i32 %156, i32* %158, align 8
  %159 = load %struct.intel_crtc*, %struct.intel_crtc** %10, align 8
  %160 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %161 = call i32 @intel_dp_get_m_n(%struct.intel_crtc* %159, %struct.intel_crtc_state* %160)
  %162 = load i32, i32* %9, align 4
  %163 = load i32, i32* @PORT_A, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %179

165:                                              ; preds = %150
  %166 = load i32, i32* @DP_A, align 4
  %167 = call i32 @I915_READ(i32 %166)
  %168 = load i32, i32* @DP_PLL_FREQ_MASK, align 4
  %169 = and i32 %167, %168
  %170 = load i32, i32* @DP_PLL_FREQ_162MHZ, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %175

172:                                              ; preds = %165
  %173 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %174 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %173, i32 0, i32 3
  store i32 162000, i32* %174, align 4
  br label %178

175:                                              ; preds = %165
  %176 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %177 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %176, i32 0, i32 3
  store i32 270000, i32* %177, align 4
  br label %178

178:                                              ; preds = %175, %172
  br label %179

179:                                              ; preds = %178, %150
  %180 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %181 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %184 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %183, i32 0, i32 5
  %185 = call i32 @intel_dotclock_calculate(i32 %182, i32* %184)
  %186 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %187 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %186, i32 0, i32 6
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 1
  store i32 %185, i32* %189, align 4
  %190 = load %struct.intel_dp*, %struct.intel_dp** %6, align 8
  %191 = call i64 @intel_dp_is_edp(%struct.intel_dp* %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %227

193:                                              ; preds = %179
  %194 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %195 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %227

200:                                              ; preds = %193
  %201 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %202 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %201, i32 0, i32 4
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %205 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = icmp sgt i64 %203, %208
  br i1 %209, label %210, label %227

210:                                              ; preds = %200
  %211 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %212 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %211, i32 0, i32 4
  %213 = load i64, i64* %212, align 8
  %214 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %215 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i64 %213, i64 %218)
  %220 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %221 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %220, i32 0, i32 4
  %222 = load i64, i64* %221, align 8
  %223 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %224 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 0
  store i64 %222, i64* %226, align 8
  br label %227

227:                                              ; preds = %210, %200, %193, %179
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.intel_dp* @enc_to_intel_dp(%struct.TYPE_10__*) #1

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i64 @HAS_PCH_CPT(%struct.drm_i915_private*) #1

declare dso_local i32 @TRANS_DP_CTL(i32) #1

declare dso_local i64 @IS_G4X(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_dp_get_m_n(%struct.intel_crtc*, %struct.intel_crtc_state*) #1

declare dso_local i32 @intel_dotclock_calculate(i32, i32*) #1

declare dso_local i64 @intel_dp_is_edp(%struct.intel_dp*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

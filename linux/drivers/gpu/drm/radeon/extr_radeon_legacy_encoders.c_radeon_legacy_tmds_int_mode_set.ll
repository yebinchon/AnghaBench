; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_legacy_encoders.c_radeon_legacy_tmds_int_mode_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_legacy_encoders.c_radeon_legacy_tmds_int_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32, %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i64, i64 }
%struct.drm_display_mode = type { i32 }
%struct.radeon_crtc = type { i64 }
%struct.radeon_encoder = type { i64, i64 }
%struct.radeon_encoder_int_tmds = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@RADEON_TMDS_PLL_CNTL = common dso_local global i32 0, align 4
@CHIP_RV280 = common dso_local global i64 0, align 8
@RADEON_TMDS_TRANSMITTER_CNTL = common dso_local global i32 0, align 4
@RADEON_TMDS_TRANSMITTER_PLLRST = common dso_local global i32 0, align 4
@CHIP_R200 = common dso_local global i64 0, align 8
@CHIP_R100 = common dso_local global i64 0, align 8
@RADEON_TMDS_TRANSMITTER_PLLEN = common dso_local global i32 0, align 4
@RADEON_FP_GEN_CNTL = common dso_local global i32 0, align 4
@RADEON_FP_CRTC_DONT_SHADOW_VPAR = common dso_local global i32 0, align 4
@RADEON_FP_CRTC_DONT_SHADOW_HEND = common dso_local global i32 0, align 4
@RADEON_FP_FPON = common dso_local global i32 0, align 4
@RADEON_FP_TMDS_EN = common dso_local global i32 0, align 4
@RADEON_FP_RMX_HVSYNC_CONTROL_EN = common dso_local global i32 0, align 4
@RADEON_FP_DFP_SYNC_SEL = common dso_local global i32 0, align 4
@RADEON_FP_CRT_SYNC_SEL = common dso_local global i32 0, align 4
@RADEON_FP_CRTC_LOCK_8DOT = common dso_local global i32 0, align 4
@RADEON_FP_USE_SHADOW_EN = common dso_local global i32 0, align 4
@RADEON_FP_CRTC_USE_SHADOW_VEND = common dso_local global i32 0, align 4
@RADEON_FP_CRT_SYNC_ALT = common dso_local global i32 0, align 4
@RADEON_FP_PANEL_FORMAT = common dso_local global i32 0, align 4
@R200_FP_SOURCE_SEL_MASK = common dso_local global i32 0, align 4
@RMX_OFF = common dso_local global i64 0, align 8
@R200_FP_SOURCE_SEL_RMX = common dso_local global i32 0, align 4
@R200_FP_SOURCE_SEL_CRTC1 = common dso_local global i32 0, align 4
@RADEON_FP_SEL_CRTC2 = common dso_local global i32 0, align 4
@R200_FP_SOURCE_SEL_CRTC2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, %struct.drm_display_mode*, %struct.drm_display_mode*)* @radeon_legacy_tmds_int_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_legacy_tmds_int_mode_set(%struct.drm_encoder* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.radeon_device*, align 8
  %9 = alloca %struct.radeon_crtc*, align 8
  %10 = alloca %struct.radeon_encoder*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.radeon_encoder_int_tmds*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %6, align 8
  %17 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %18 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %17, i32 0, i32 1
  %19 = load %struct.drm_device*, %struct.drm_device** %18, align 8
  store %struct.drm_device* %19, %struct.drm_device** %7, align 8
  %20 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %21 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %20, i32 0, i32 0
  %22 = load %struct.radeon_device*, %struct.radeon_device** %21, align 8
  store %struct.radeon_device* %22, %struct.radeon_device** %8, align 8
  %23 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %24 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call %struct.radeon_crtc* @to_radeon_crtc(i32 %25)
  store %struct.radeon_crtc* %26, %struct.radeon_crtc** %9, align 8
  %27 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %28 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %27)
  store %struct.radeon_encoder* %28, %struct.radeon_encoder** %10, align 8
  %29 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @RADEON_TMDS_PLL_CNTL, align 4
  %31 = call i32 @RREG32(i32 %30)
  store i32 %31, i32* %12, align 4
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = and i32 %32, 1048575
  store i32 %33, i32* %11, align 4
  %34 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %35 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @CHIP_RV280, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %3
  %40 = load i32, i32* %11, align 4
  %41 = xor i32 %40, 4194304
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %12, align 4
  %43 = xor i32 %42, 4194304
  store i32 %43, i32* %12, align 4
  br label %44

44:                                               ; preds = %39, %3
  %45 = load %struct.radeon_encoder*, %struct.radeon_encoder** %10, align 8
  %46 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %97

49:                                               ; preds = %44
  %50 = load %struct.radeon_encoder*, %struct.radeon_encoder** %10, align 8
  %51 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to %struct.radeon_encoder_int_tmds*
  store %struct.radeon_encoder_int_tmds* %53, %struct.radeon_encoder_int_tmds** %16, align 8
  store i32 0, i32* %15, align 4
  br label %54

54:                                               ; preds = %93, %49
  %55 = load i32, i32* %15, align 4
  %56 = icmp slt i32 %55, 4
  br i1 %56, label %57, label %96

57:                                               ; preds = %54
  %58 = load %struct.radeon_encoder_int_tmds*, %struct.radeon_encoder_int_tmds** %16, align 8
  %59 = getelementptr inbounds %struct.radeon_encoder_int_tmds, %struct.radeon_encoder_int_tmds* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i32, i32* %15, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  br label %96

68:                                               ; preds = %57
  %69 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %70 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = sdiv i32 %71, 10
  %73 = sext i32 %72 to i64
  %74 = load %struct.radeon_encoder_int_tmds*, %struct.radeon_encoder_int_tmds** %16, align 8
  %75 = getelementptr inbounds %struct.radeon_encoder_int_tmds, %struct.radeon_encoder_int_tmds* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = load i32, i32* %15, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp slt i64 %73, %81
  br i1 %82, label %83, label %92

83:                                               ; preds = %68
  %84 = load %struct.radeon_encoder_int_tmds*, %struct.radeon_encoder_int_tmds** %16, align 8
  %85 = getelementptr inbounds %struct.radeon_encoder_int_tmds, %struct.radeon_encoder_int_tmds* %84, i32 0, i32 0
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = load i32, i32* %15, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  store i32 %91, i32* %11, align 4
  br label %96

92:                                               ; preds = %68
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %15, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %15, align 4
  br label %54

96:                                               ; preds = %83, %67, %54
  br label %97

97:                                               ; preds = %96, %44
  %98 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %99 = call i64 @ASIC_IS_R300(%struct.radeon_device* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %107, label %101

101:                                              ; preds = %97
  %102 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %103 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @CHIP_RV280, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %120

107:                                              ; preds = %101, %97
  %108 = load i32, i32* %11, align 4
  %109 = and i32 %108, -1048576
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %107
  %112 = load i32, i32* %11, align 4
  store i32 %112, i32* %12, align 4
  br label %119

113:                                              ; preds = %107
  %114 = load i32, i32* %12, align 4
  %115 = and i32 %114, -1048576
  store i32 %115, i32* %12, align 4
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* %12, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %12, align 4
  br label %119

119:                                              ; preds = %113, %111
  br label %122

120:                                              ; preds = %101
  %121 = load i32, i32* %11, align 4
  store i32 %121, i32* %12, align 4
  br label %122

122:                                              ; preds = %120, %119
  %123 = load i32, i32* @RADEON_TMDS_TRANSMITTER_CNTL, align 4
  %124 = call i32 @RREG32(i32 %123)
  %125 = load i32, i32* @RADEON_TMDS_TRANSMITTER_PLLRST, align 4
  %126 = xor i32 %125, -1
  %127 = and i32 %124, %126
  store i32 %127, i32* %13, align 4
  %128 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %129 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @CHIP_R200, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %143, label %133

133:                                              ; preds = %122
  %134 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %135 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @CHIP_R100, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %143, label %139

139:                                              ; preds = %133
  %140 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %141 = call i64 @ASIC_IS_R300(%struct.radeon_device* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %139, %133, %122
  %144 = load i32, i32* @RADEON_TMDS_TRANSMITTER_PLLEN, align 4
  %145 = xor i32 %144, -1
  %146 = load i32, i32* %13, align 4
  %147 = and i32 %146, %145
  store i32 %147, i32* %13, align 4
  br label %152

148:                                              ; preds = %139
  %149 = load i32, i32* @RADEON_TMDS_TRANSMITTER_PLLEN, align 4
  %150 = load i32, i32* %13, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %13, align 4
  br label %152

152:                                              ; preds = %148, %143
  %153 = load i32, i32* @RADEON_FP_GEN_CNTL, align 4
  %154 = call i32 @RREG32(i32 %153)
  %155 = load i32, i32* @RADEON_FP_CRTC_DONT_SHADOW_VPAR, align 4
  %156 = load i32, i32* @RADEON_FP_CRTC_DONT_SHADOW_HEND, align 4
  %157 = or i32 %155, %156
  %158 = or i32 %154, %157
  store i32 %158, i32* %14, align 4
  %159 = load i32, i32* @RADEON_FP_FPON, align 4
  %160 = load i32, i32* @RADEON_FP_TMDS_EN, align 4
  %161 = or i32 %159, %160
  %162 = xor i32 %161, -1
  %163 = load i32, i32* %14, align 4
  %164 = and i32 %163, %162
  store i32 %164, i32* %14, align 4
  %165 = load i32, i32* @RADEON_FP_RMX_HVSYNC_CONTROL_EN, align 4
  %166 = load i32, i32* @RADEON_FP_DFP_SYNC_SEL, align 4
  %167 = or i32 %165, %166
  %168 = load i32, i32* @RADEON_FP_CRT_SYNC_SEL, align 4
  %169 = or i32 %167, %168
  %170 = load i32, i32* @RADEON_FP_CRTC_LOCK_8DOT, align 4
  %171 = or i32 %169, %170
  %172 = load i32, i32* @RADEON_FP_USE_SHADOW_EN, align 4
  %173 = or i32 %171, %172
  %174 = load i32, i32* @RADEON_FP_CRTC_USE_SHADOW_VEND, align 4
  %175 = or i32 %173, %174
  %176 = load i32, i32* @RADEON_FP_CRT_SYNC_ALT, align 4
  %177 = or i32 %175, %176
  %178 = xor i32 %177, -1
  %179 = load i32, i32* %14, align 4
  %180 = and i32 %179, %178
  store i32 %180, i32* %14, align 4
  %181 = load i32, i32* @RADEON_FP_PANEL_FORMAT, align 4
  %182 = load i32, i32* %14, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %14, align 4
  %184 = load %struct.radeon_crtc*, %struct.radeon_crtc** %9, align 8
  %185 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = icmp eq i64 %186, 0
  br i1 %187, label %188, label %223

188:                                              ; preds = %152
  %189 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %190 = call i64 @ASIC_IS_R300(%struct.radeon_device* %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %198, label %192

192:                                              ; preds = %188
  %193 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %194 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @CHIP_R200, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %198, label %217

198:                                              ; preds = %192, %188
  %199 = load i32, i32* @R200_FP_SOURCE_SEL_MASK, align 4
  %200 = xor i32 %199, -1
  %201 = load i32, i32* %14, align 4
  %202 = and i32 %201, %200
  store i32 %202, i32* %14, align 4
  %203 = load %struct.radeon_encoder*, %struct.radeon_encoder** %10, align 8
  %204 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @RMX_OFF, align 8
  %207 = icmp ne i64 %205, %206
  br i1 %207, label %208, label %212

208:                                              ; preds = %198
  %209 = load i32, i32* @R200_FP_SOURCE_SEL_RMX, align 4
  %210 = load i32, i32* %14, align 4
  %211 = or i32 %210, %209
  store i32 %211, i32* %14, align 4
  br label %216

212:                                              ; preds = %198
  %213 = load i32, i32* @R200_FP_SOURCE_SEL_CRTC1, align 4
  %214 = load i32, i32* %14, align 4
  %215 = or i32 %214, %213
  store i32 %215, i32* %14, align 4
  br label %216

216:                                              ; preds = %212, %208
  br label %222

217:                                              ; preds = %192
  %218 = load i32, i32* @RADEON_FP_SEL_CRTC2, align 4
  %219 = xor i32 %218, -1
  %220 = load i32, i32* %14, align 4
  %221 = and i32 %220, %219
  store i32 %221, i32* %14, align 4
  br label %222

222:                                              ; preds = %217, %216
  br label %246

223:                                              ; preds = %152
  %224 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %225 = call i64 @ASIC_IS_R300(%struct.radeon_device* %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %233, label %227

227:                                              ; preds = %223
  %228 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %229 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* @CHIP_R200, align 8
  %232 = icmp eq i64 %230, %231
  br i1 %232, label %233, label %241

233:                                              ; preds = %227, %223
  %234 = load i32, i32* @R200_FP_SOURCE_SEL_MASK, align 4
  %235 = xor i32 %234, -1
  %236 = load i32, i32* %14, align 4
  %237 = and i32 %236, %235
  store i32 %237, i32* %14, align 4
  %238 = load i32, i32* @R200_FP_SOURCE_SEL_CRTC2, align 4
  %239 = load i32, i32* %14, align 4
  %240 = or i32 %239, %238
  store i32 %240, i32* %14, align 4
  br label %245

241:                                              ; preds = %227
  %242 = load i32, i32* @RADEON_FP_SEL_CRTC2, align 4
  %243 = load i32, i32* %14, align 4
  %244 = or i32 %243, %242
  store i32 %244, i32* %14, align 4
  br label %245

245:                                              ; preds = %241, %233
  br label %246

246:                                              ; preds = %245, %222
  %247 = load i32, i32* @RADEON_TMDS_PLL_CNTL, align 4
  %248 = load i32, i32* %12, align 4
  %249 = call i32 @WREG32(i32 %247, i32 %248)
  %250 = load i32, i32* @RADEON_TMDS_TRANSMITTER_CNTL, align 4
  %251 = load i32, i32* %13, align 4
  %252 = call i32 @WREG32(i32 %250, i32 %251)
  %253 = load i32, i32* @RADEON_FP_GEN_CNTL, align 4
  %254 = load i32, i32* %14, align 4
  %255 = call i32 @WREG32(i32 %253, i32 %254)
  %256 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %257 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %256, i32 0, i32 1
  %258 = load i64, i64* %257, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %266

260:                                              ; preds = %246
  %261 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %262 = load %struct.radeon_crtc*, %struct.radeon_crtc** %9, align 8
  %263 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = call i32 @radeon_atombios_encoder_crtc_scratch_regs(%struct.drm_encoder* %261, i64 %264)
  br label %272

266:                                              ; preds = %246
  %267 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %268 = load %struct.radeon_crtc*, %struct.radeon_crtc** %9, align 8
  %269 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %268, i32 0, i32 0
  %270 = load i64, i64* %269, align 8
  %271 = call i32 @radeon_combios_encoder_crtc_scratch_regs(%struct.drm_encoder* %267, i64 %270)
  br label %272

272:                                              ; preds = %266, %260
  ret void
}

declare dso_local %struct.radeon_crtc* @to_radeon_crtc(i32) #1

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i64 @ASIC_IS_R300(%struct.radeon_device*) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @radeon_atombios_encoder_crtc_scratch_regs(%struct.drm_encoder*, i64) #1

declare dso_local i32 @radeon_combios_encoder_crtc_scratch_regs(%struct.drm_encoder*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

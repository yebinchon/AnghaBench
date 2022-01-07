; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_crtc.c_radeon_atom_pick_pll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_crtc.c_radeon_atom_pick_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.radeon_crtc = type { i32, i32 }
%struct.radeon_encoder = type { i64, %struct.radeon_encoder_atom_dig* }
%struct.radeon_encoder_atom_dig = type { i32 }

@ATOM_PPLL_INVALID = common dso_local global i32 0, align 4
@CHIP_KABINI = common dso_local global i64 0, align 8
@CHIP_MULLINS = common dso_local global i64 0, align 8
@ATOM_PPLL2 = common dso_local global i32 0, align 4
@ATOM_PPLL1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"unable to allocate a PPLL\0A\00", align 1
@ATOM_PPLL0 = common dso_local global i32 0, align 4
@ENCODER_OBJECT_ID_INTERNAL_UNIPHY = common dso_local global i64 0, align 8
@ATOM_DCPLL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*)* @radeon_atom_pick_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_atom_pick_pll(%struct.drm_crtc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.radeon_crtc*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca %struct.radeon_encoder*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.radeon_encoder_atom_dig*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  %11 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %12 = call %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc* %11)
  store %struct.radeon_crtc* %12, %struct.radeon_crtc** %4, align 8
  %13 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %14 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %13, i32 0, i32 0
  %15 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  store %struct.drm_device* %15, %struct.drm_device** %5, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 0
  %18 = load %struct.radeon_device*, %struct.radeon_device** %17, align 8
  store %struct.radeon_device* %18, %struct.radeon_device** %6, align 8
  %19 = load %struct.radeon_crtc*, %struct.radeon_crtc** %4, align 8
  %20 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.radeon_encoder* @to_radeon_encoder(i32 %21)
  store %struct.radeon_encoder* %22, %struct.radeon_encoder** %7, align 8
  %23 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %24 = call i64 @ASIC_IS_DCE8(%struct.radeon_device* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %122

26:                                               ; preds = %1
  %27 = load %struct.radeon_crtc*, %struct.radeon_crtc** %4, align 8
  %28 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @atombios_get_encoder_mode(i32 %29)
  %31 = call i64 @ENCODER_MODE_IS_DP(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %51

33:                                               ; preds = %26
  %34 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %35 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @ATOM_PPLL_INVALID, align 4
  store i32 %40, i32* %2, align 4
  br label %316

41:                                               ; preds = %33
  %42 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %43 = call i32 @radeon_get_shared_dp_ppll(%struct.drm_crtc* %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @ATOM_PPLL_INVALID, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %2, align 4
  br label %316

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49
  br label %60

51:                                               ; preds = %26
  %52 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %53 = call i32 @radeon_get_shared_nondp_ppll(%struct.drm_crtc* %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @ATOM_PPLL_INVALID, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %2, align 4
  br label %316

59:                                               ; preds = %51
  br label %60

60:                                               ; preds = %59, %50
  %61 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %62 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @CHIP_KABINI, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %72, label %66

66:                                               ; preds = %60
  %67 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %68 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @CHIP_MULLINS, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %93

72:                                               ; preds = %66, %60
  %73 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %74 = call i32 @radeon_get_pll_use_mask(%struct.drm_crtc* %73)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @ATOM_PPLL2, align 4
  %77 = shl i32 1, %76
  %78 = and i32 %75, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %72
  %81 = load i32, i32* @ATOM_PPLL2, align 4
  store i32 %81, i32* %2, align 4
  br label %316

82:                                               ; preds = %72
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @ATOM_PPLL1, align 4
  %85 = shl i32 1, %84
  %86 = and i32 %83, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %82
  %89 = load i32, i32* @ATOM_PPLL1, align 4
  store i32 %89, i32* %2, align 4
  br label %316

90:                                               ; preds = %82
  %91 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %92 = load i32, i32* @ATOM_PPLL_INVALID, align 4
  store i32 %92, i32* %2, align 4
  br label %316

93:                                               ; preds = %66
  %94 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %95 = call i32 @radeon_get_pll_use_mask(%struct.drm_crtc* %94)
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* @ATOM_PPLL2, align 4
  %98 = shl i32 1, %97
  %99 = and i32 %96, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %93
  %102 = load i32, i32* @ATOM_PPLL2, align 4
  store i32 %102, i32* %2, align 4
  br label %316

103:                                              ; preds = %93
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* @ATOM_PPLL1, align 4
  %106 = shl i32 1, %105
  %107 = and i32 %104, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %111, label %109

109:                                              ; preds = %103
  %110 = load i32, i32* @ATOM_PPLL1, align 4
  store i32 %110, i32* %2, align 4
  br label %316

111:                                              ; preds = %103
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* @ATOM_PPLL0, align 4
  %114 = shl i32 1, %113
  %115 = and i32 %112, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %111
  %118 = load i32, i32* @ATOM_PPLL0, align 4
  store i32 %118, i32* %2, align 4
  br label %316

119:                                              ; preds = %111
  %120 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %121 = load i32, i32* @ATOM_PPLL_INVALID, align 4
  store i32 %121, i32* %2, align 4
  br label %316

122:                                              ; preds = %1
  %123 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %124 = call i64 @ASIC_IS_DCE61(%struct.radeon_device* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %198

126:                                              ; preds = %122
  %127 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %128 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %127, i32 0, i32 1
  %129 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %128, align 8
  store %struct.radeon_encoder_atom_dig* %129, %struct.radeon_encoder_atom_dig** %10, align 8
  %130 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %131 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @ENCODER_OBJECT_ID_INTERNAL_UNIPHY, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %142

135:                                              ; preds = %126
  %136 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %10, align 8
  %137 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %135
  %141 = load i32, i32* @ATOM_PPLL2, align 4
  store i32 %141, i32* %2, align 4
  br label %316

142:                                              ; preds = %135, %126
  %143 = load %struct.radeon_crtc*, %struct.radeon_crtc** %4, align 8
  %144 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @atombios_get_encoder_mode(i32 %145)
  %147 = call i64 @ENCODER_MODE_IS_DP(i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %167

149:                                              ; preds = %142
  %150 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %151 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %149
  %156 = load i32, i32* @ATOM_PPLL_INVALID, align 4
  store i32 %156, i32* %2, align 4
  br label %316

157:                                              ; preds = %149
  %158 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %159 = call i32 @radeon_get_shared_dp_ppll(%struct.drm_crtc* %158)
  store i32 %159, i32* %9, align 4
  %160 = load i32, i32* %9, align 4
  %161 = load i32, i32* @ATOM_PPLL_INVALID, align 4
  %162 = icmp ne i32 %160, %161
  br i1 %162, label %163, label %165

163:                                              ; preds = %157
  %164 = load i32, i32* %9, align 4
  store i32 %164, i32* %2, align 4
  br label %316

165:                                              ; preds = %157
  br label %166

166:                                              ; preds = %165
  br label %176

167:                                              ; preds = %142
  %168 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %169 = call i32 @radeon_get_shared_nondp_ppll(%struct.drm_crtc* %168)
  store i32 %169, i32* %9, align 4
  %170 = load i32, i32* %9, align 4
  %171 = load i32, i32* @ATOM_PPLL_INVALID, align 4
  %172 = icmp ne i32 %170, %171
  br i1 %172, label %173, label %175

173:                                              ; preds = %167
  %174 = load i32, i32* %9, align 4
  store i32 %174, i32* %2, align 4
  br label %316

175:                                              ; preds = %167
  br label %176

176:                                              ; preds = %175, %166
  br label %177

177:                                              ; preds = %176
  %178 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %179 = call i32 @radeon_get_pll_use_mask(%struct.drm_crtc* %178)
  store i32 %179, i32* %8, align 4
  %180 = load i32, i32* %8, align 4
  %181 = load i32, i32* @ATOM_PPLL0, align 4
  %182 = shl i32 1, %181
  %183 = and i32 %180, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %187, label %185

185:                                              ; preds = %177
  %186 = load i32, i32* @ATOM_PPLL0, align 4
  store i32 %186, i32* %2, align 4
  br label %316

187:                                              ; preds = %177
  %188 = load i32, i32* %8, align 4
  %189 = load i32, i32* @ATOM_PPLL1, align 4
  %190 = shl i32 1, %189
  %191 = and i32 %188, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %195, label %193

193:                                              ; preds = %187
  %194 = load i32, i32* @ATOM_PPLL1, align 4
  store i32 %194, i32* %2, align 4
  br label %316

195:                                              ; preds = %187
  %196 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %197 = load i32, i32* @ATOM_PPLL_INVALID, align 4
  store i32 %197, i32* %2, align 4
  br label %316

198:                                              ; preds = %122
  %199 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %200 = call i64 @ASIC_IS_DCE41(%struct.radeon_device* %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %239

202:                                              ; preds = %198
  %203 = load %struct.radeon_crtc*, %struct.radeon_crtc** %4, align 8
  %204 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @atombios_get_encoder_mode(i32 %205)
  %207 = call i64 @ENCODER_MODE_IS_DP(i32 %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %218

209:                                              ; preds = %202
  %210 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %211 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %217

215:                                              ; preds = %209
  %216 = load i32, i32* @ATOM_PPLL_INVALID, align 4
  store i32 %216, i32* %2, align 4
  br label %316

217:                                              ; preds = %209
  br label %218

218:                                              ; preds = %217, %202
  %219 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %220 = call i32 @radeon_get_pll_use_mask(%struct.drm_crtc* %219)
  store i32 %220, i32* %8, align 4
  %221 = load i32, i32* %8, align 4
  %222 = load i32, i32* @ATOM_PPLL1, align 4
  %223 = shl i32 1, %222
  %224 = and i32 %221, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %228, label %226

226:                                              ; preds = %218
  %227 = load i32, i32* @ATOM_PPLL1, align 4
  store i32 %227, i32* %2, align 4
  br label %316

228:                                              ; preds = %218
  %229 = load i32, i32* %8, align 4
  %230 = load i32, i32* @ATOM_PPLL2, align 4
  %231 = shl i32 1, %230
  %232 = and i32 %229, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %236, label %234

234:                                              ; preds = %228
  %235 = load i32, i32* @ATOM_PPLL2, align 4
  store i32 %235, i32* %2, align 4
  br label %316

236:                                              ; preds = %228
  %237 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %238 = load i32, i32* @ATOM_PPLL_INVALID, align 4
  store i32 %238, i32* %2, align 4
  br label %316

239:                                              ; preds = %198
  %240 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %241 = call i64 @ASIC_IS_DCE4(%struct.radeon_device* %240)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %312

243:                                              ; preds = %239
  %244 = load %struct.radeon_crtc*, %struct.radeon_crtc** %4, align 8
  %245 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = call i32 @atombios_get_encoder_mode(i32 %246)
  %248 = call i64 @ENCODER_MODE_IS_DP(i32 %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %282

250:                                              ; preds = %243
  %251 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %252 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %258

256:                                              ; preds = %250
  %257 = load i32, i32* @ATOM_PPLL_INVALID, align 4
  store i32 %257, i32* %2, align 4
  br label %316

258:                                              ; preds = %250
  %259 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %260 = call i64 @ASIC_IS_DCE6(%struct.radeon_device* %259)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %264

262:                                              ; preds = %258
  %263 = load i32, i32* @ATOM_PPLL0, align 4
  store i32 %263, i32* %2, align 4
  br label %316

264:                                              ; preds = %258
  %265 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %266 = call i64 @ASIC_IS_DCE5(%struct.radeon_device* %265)
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %270

268:                                              ; preds = %264
  %269 = load i32, i32* @ATOM_DCPLL, align 4
  store i32 %269, i32* %2, align 4
  br label %316

270:                                              ; preds = %264
  %271 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %272 = call i32 @radeon_get_shared_dp_ppll(%struct.drm_crtc* %271)
  store i32 %272, i32* %9, align 4
  %273 = load i32, i32* %9, align 4
  %274 = load i32, i32* @ATOM_PPLL_INVALID, align 4
  %275 = icmp ne i32 %273, %274
  br i1 %275, label %276, label %278

276:                                              ; preds = %270
  %277 = load i32, i32* %9, align 4
  store i32 %277, i32* %2, align 4
  br label %316

278:                                              ; preds = %270
  br label %279

279:                                              ; preds = %278
  br label %280

280:                                              ; preds = %279
  br label %281

281:                                              ; preds = %280
  br label %291

282:                                              ; preds = %243
  %283 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %284 = call i32 @radeon_get_shared_nondp_ppll(%struct.drm_crtc* %283)
  store i32 %284, i32* %9, align 4
  %285 = load i32, i32* %9, align 4
  %286 = load i32, i32* @ATOM_PPLL_INVALID, align 4
  %287 = icmp ne i32 %285, %286
  br i1 %287, label %288, label %290

288:                                              ; preds = %282
  %289 = load i32, i32* %9, align 4
  store i32 %289, i32* %2, align 4
  br label %316

290:                                              ; preds = %282
  br label %291

291:                                              ; preds = %290, %281
  %292 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %293 = call i32 @radeon_get_pll_use_mask(%struct.drm_crtc* %292)
  store i32 %293, i32* %8, align 4
  %294 = load i32, i32* %8, align 4
  %295 = load i32, i32* @ATOM_PPLL1, align 4
  %296 = shl i32 1, %295
  %297 = and i32 %294, %296
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %301, label %299

299:                                              ; preds = %291
  %300 = load i32, i32* @ATOM_PPLL1, align 4
  store i32 %300, i32* %2, align 4
  br label %316

301:                                              ; preds = %291
  %302 = load i32, i32* %8, align 4
  %303 = load i32, i32* @ATOM_PPLL2, align 4
  %304 = shl i32 1, %303
  %305 = and i32 %302, %304
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %309, label %307

307:                                              ; preds = %301
  %308 = load i32, i32* @ATOM_PPLL2, align 4
  store i32 %308, i32* %2, align 4
  br label %316

309:                                              ; preds = %301
  %310 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %311 = load i32, i32* @ATOM_PPLL_INVALID, align 4
  store i32 %311, i32* %2, align 4
  br label %316

312:                                              ; preds = %239
  %313 = load %struct.radeon_crtc*, %struct.radeon_crtc** %4, align 8
  %314 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 4
  store i32 %315, i32* %2, align 4
  br label %316

316:                                              ; preds = %312, %309, %307, %299, %288, %276, %268, %262, %256, %236, %234, %226, %215, %195, %193, %185, %173, %163, %155, %140, %119, %117, %109, %101, %90, %88, %80, %57, %47, %39
  %317 = load i32, i32* %2, align 4
  ret i32 %317
}

declare dso_local %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(i32) #1

declare dso_local i64 @ASIC_IS_DCE8(%struct.radeon_device*) #1

declare dso_local i64 @ENCODER_MODE_IS_DP(i32) #1

declare dso_local i32 @atombios_get_encoder_mode(i32) #1

declare dso_local i32 @radeon_get_shared_dp_ppll(%struct.drm_crtc*) #1

declare dso_local i32 @radeon_get_shared_nondp_ppll(%struct.drm_crtc*) #1

declare dso_local i32 @radeon_get_pll_use_mask(%struct.drm_crtc*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i64 @ASIC_IS_DCE61(%struct.radeon_device*) #1

declare dso_local i64 @ASIC_IS_DCE41(%struct.radeon_device*) #1

declare dso_local i64 @ASIC_IS_DCE4(%struct.radeon_device*) #1

declare dso_local i64 @ASIC_IS_DCE6(%struct.radeon_device*) #1

declare dso_local i64 @ASIC_IS_DCE5(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

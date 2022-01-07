; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_clockpowergating.c_smu7_update_clock_gatings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_clockpowergating.c_smu7_update_clock_gatings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32 }

@PP_ENABLE_GFX_CG_THRU_SMU = common dso_local global i32 0, align 4
@PP_GROUP_MASK = common dso_local global i32 0, align 4
@PP_GROUP_SHIFT = common dso_local global i32 0, align 4
@PP_BLOCK_MASK = common dso_local global i32 0, align 4
@PP_BLOCK_SHIFT = common dso_local global i32 0, align 4
@PP_STATE_SUPPORT_CG = common dso_local global i32 0, align 4
@PP_STATE_MASK = common dso_local global i32 0, align 4
@PP_STATE_CG = common dso_local global i32 0, align 4
@PPSMC_MSG_EnableClockGatingFeature = common dso_local global i32 0, align 4
@PPSMC_MSG_DisableClockGatingFeature = common dso_local global i32 0, align 4
@CG_GFX_CGCG_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PP_STATE_SUPPORT_LS = common dso_local global i32 0, align 4
@PP_STATE_LS = common dso_local global i32 0, align 4
@CG_GFX_CGLS_MASK = common dso_local global i32 0, align 4
@CG_GFX_3DCG_MASK = common dso_local global i32 0, align 4
@CG_GFX_3DLS_MASK = common dso_local global i32 0, align 4
@CG_GFX_RLC_LS_MASK = common dso_local global i32 0, align 4
@CG_GFX_CP_LS_MASK = common dso_local global i32 0, align 4
@CG_CPF_MGCG_MASK = common dso_local global i32 0, align 4
@CG_RLC_MGCG_MASK = common dso_local global i32 0, align 4
@CG_GFX_OTHERS_MGCG_MASK = common dso_local global i32 0, align 4
@CG_SYS_BIF_MGCG_MASK = common dso_local global i32 0, align 4
@CG_SYS_BIF_MGLS_MASK = common dso_local global i32 0, align 4
@CG_SYS_MC_MGCG_MASK = common dso_local global i32 0, align 4
@CG_SYS_MC_MGLS_MASK = common dso_local global i32 0, align 4
@CG_SYS_DRM_MGCG_MASK = common dso_local global i32 0, align 4
@CG_SYS_DRM_MGLS_MASK = common dso_local global i32 0, align 4
@CG_SYS_HDP_MGCG_MASK = common dso_local global i32 0, align 4
@CG_SYS_HDP_MGLS_MASK = common dso_local global i32 0, align 4
@CG_SYS_SDMA_MGCG_MASK = common dso_local global i32 0, align 4
@CG_SYS_SDMA_MGLS_MASK = common dso_local global i32 0, align 4
@CG_SYS_ROM_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smu7_update_clock_gatings(%struct.pp_hwmgr* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pp_hwmgr*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %9 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @PP_ENABLE_GFX_CG_THRU_SMU, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %603

15:                                               ; preds = %2
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @PP_GROUP_MASK, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* @PP_GROUP_SHIFT, align 4
  %21 = ashr i32 %19, %20
  switch i32 %21, label %599 [
    i32 129, label %22
    i32 128, label %252
  ]

22:                                               ; preds = %15
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @PP_BLOCK_MASK, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* @PP_BLOCK_SHIFT, align 4
  %28 = ashr i32 %26, %27
  switch i32 %28, label %248 [
    i32 139, label %29
    i32 140, label %90
    i32 136, label %151
    i32 138, label %182
    i32 137, label %213
  ]

29:                                               ; preds = %22
  %30 = load i32, i32* @PP_STATE_SUPPORT_CG, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %30, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %59

35:                                               ; preds = %29
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @PP_STATE_MASK, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* @PP_STATE_CG, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load i32, i32* @PPSMC_MSG_EnableClockGatingFeature, align 4
  br label %47

45:                                               ; preds = %35
  %46 = load i32, i32* @PPSMC_MSG_DisableClockGatingFeature, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* @CG_GFX_CGCG_MASK, align 4
  store i32 %49, i32* %7, align 4
  %50 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %50, i32 %51, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %47
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %603

58:                                               ; preds = %47
  br label %59

59:                                               ; preds = %58, %29
  %60 = load i32, i32* @PP_STATE_SUPPORT_LS, align 4
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %60, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %89

65:                                               ; preds = %59
  %66 = load i32*, i32** %5, align 8
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @PP_STATE_MASK, align 4
  %69 = and i32 %67, %68
  %70 = load i32, i32* @PP_STATE_LS, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %65
  %74 = load i32, i32* @PPSMC_MSG_EnableClockGatingFeature, align 4
  br label %77

75:                                               ; preds = %65
  %76 = load i32, i32* @PPSMC_MSG_DisableClockGatingFeature, align 4
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i32 [ %74, %73 ], [ %76, %75 ]
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* @CG_GFX_CGLS_MASK, align 4
  store i32 %79, i32* %7, align 4
  %80 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %80, i32 %81, i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %77
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %603

88:                                               ; preds = %77
  br label %89

89:                                               ; preds = %88, %59
  br label %251

90:                                               ; preds = %22
  %91 = load i32, i32* @PP_STATE_SUPPORT_CG, align 4
  %92 = load i32*, i32** %5, align 8
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %91, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %120

96:                                               ; preds = %90
  %97 = load i32*, i32** %5, align 8
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @PP_STATE_MASK, align 4
  %100 = and i32 %98, %99
  %101 = load i32, i32* @PP_STATE_CG, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %96
  %105 = load i32, i32* @PPSMC_MSG_EnableClockGatingFeature, align 4
  br label %108

106:                                              ; preds = %96
  %107 = load i32, i32* @PPSMC_MSG_DisableClockGatingFeature, align 4
  br label %108

108:                                              ; preds = %106, %104
  %109 = phi i32 [ %105, %104 ], [ %107, %106 ]
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* @CG_GFX_3DCG_MASK, align 4
  store i32 %110, i32* %7, align 4
  %111 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %111, i32 %112, i32 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %108
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %3, align 4
  br label %603

119:                                              ; preds = %108
  br label %120

120:                                              ; preds = %119, %90
  %121 = load i32, i32* @PP_STATE_SUPPORT_LS, align 4
  %122 = load i32*, i32** %5, align 8
  %123 = load i32, i32* %122, align 4
  %124 = and i32 %121, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %150

126:                                              ; preds = %120
  %127 = load i32*, i32** %5, align 8
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @PP_STATE_MASK, align 4
  %130 = and i32 %128, %129
  %131 = load i32, i32* @PP_STATE_LS, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %126
  %135 = load i32, i32* @PPSMC_MSG_EnableClockGatingFeature, align 4
  br label %138

136:                                              ; preds = %126
  %137 = load i32, i32* @PPSMC_MSG_DisableClockGatingFeature, align 4
  br label %138

138:                                              ; preds = %136, %134
  %139 = phi i32 [ %135, %134 ], [ %137, %136 ]
  store i32 %139, i32* %6, align 4
  %140 = load i32, i32* @CG_GFX_3DLS_MASK, align 4
  store i32 %140, i32* %7, align 4
  %141 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %142 = load i32, i32* %6, align 4
  %143 = load i32, i32* %7, align 4
  %144 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %141, i32 %142, i32 %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %138
  %147 = load i32, i32* @EINVAL, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %3, align 4
  br label %603

149:                                              ; preds = %138
  br label %150

150:                                              ; preds = %149, %120
  br label %251

151:                                              ; preds = %22
  %152 = load i32, i32* @PP_STATE_SUPPORT_LS, align 4
  %153 = load i32*, i32** %5, align 8
  %154 = load i32, i32* %153, align 4
  %155 = and i32 %152, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %181

157:                                              ; preds = %151
  %158 = load i32*, i32** %5, align 8
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @PP_STATE_MASK, align 4
  %161 = and i32 %159, %160
  %162 = load i32, i32* @PP_STATE_LS, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %157
  %166 = load i32, i32* @PPSMC_MSG_EnableClockGatingFeature, align 4
  br label %169

167:                                              ; preds = %157
  %168 = load i32, i32* @PPSMC_MSG_DisableClockGatingFeature, align 4
  br label %169

169:                                              ; preds = %167, %165
  %170 = phi i32 [ %166, %165 ], [ %168, %167 ]
  store i32 %170, i32* %6, align 4
  %171 = load i32, i32* @CG_GFX_RLC_LS_MASK, align 4
  store i32 %171, i32* %7, align 4
  %172 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %173 = load i32, i32* %6, align 4
  %174 = load i32, i32* %7, align 4
  %175 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %172, i32 %173, i32 %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %169
  %178 = load i32, i32* @EINVAL, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %3, align 4
  br label %603

180:                                              ; preds = %169
  br label %181

181:                                              ; preds = %180, %151
  br label %251

182:                                              ; preds = %22
  %183 = load i32, i32* @PP_STATE_SUPPORT_LS, align 4
  %184 = load i32*, i32** %5, align 8
  %185 = load i32, i32* %184, align 4
  %186 = and i32 %183, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %212

188:                                              ; preds = %182
  %189 = load i32*, i32** %5, align 8
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @PP_STATE_MASK, align 4
  %192 = and i32 %190, %191
  %193 = load i32, i32* @PP_STATE_LS, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %188
  %197 = load i32, i32* @PPSMC_MSG_EnableClockGatingFeature, align 4
  br label %200

198:                                              ; preds = %188
  %199 = load i32, i32* @PPSMC_MSG_DisableClockGatingFeature, align 4
  br label %200

200:                                              ; preds = %198, %196
  %201 = phi i32 [ %197, %196 ], [ %199, %198 ]
  store i32 %201, i32* %6, align 4
  %202 = load i32, i32* @CG_GFX_CP_LS_MASK, align 4
  store i32 %202, i32* %7, align 4
  %203 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %204 = load i32, i32* %6, align 4
  %205 = load i32, i32* %7, align 4
  %206 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %203, i32 %204, i32 %205)
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %200
  %209 = load i32, i32* @EINVAL, align 4
  %210 = sub nsw i32 0, %209
  store i32 %210, i32* %3, align 4
  br label %603

211:                                              ; preds = %200
  br label %212

212:                                              ; preds = %211, %182
  br label %251

213:                                              ; preds = %22
  %214 = load i32, i32* @PP_STATE_SUPPORT_CG, align 4
  %215 = load i32*, i32** %5, align 8
  %216 = load i32, i32* %215, align 4
  %217 = and i32 %214, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %247

219:                                              ; preds = %213
  %220 = load i32*, i32** %5, align 8
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* @PP_STATE_MASK, align 4
  %223 = and i32 %221, %222
  %224 = load i32, i32* @PP_STATE_CG, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %229

227:                                              ; preds = %219
  %228 = load i32, i32* @PPSMC_MSG_EnableClockGatingFeature, align 4
  br label %231

229:                                              ; preds = %219
  %230 = load i32, i32* @PPSMC_MSG_DisableClockGatingFeature, align 4
  br label %231

231:                                              ; preds = %229, %227
  %232 = phi i32 [ %228, %227 ], [ %230, %229 ]
  store i32 %232, i32* %6, align 4
  %233 = load i32, i32* @CG_CPF_MGCG_MASK, align 4
  %234 = load i32, i32* @CG_RLC_MGCG_MASK, align 4
  %235 = or i32 %233, %234
  %236 = load i32, i32* @CG_GFX_OTHERS_MGCG_MASK, align 4
  %237 = or i32 %235, %236
  store i32 %237, i32* %7, align 4
  %238 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %239 = load i32, i32* %6, align 4
  %240 = load i32, i32* %7, align 4
  %241 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %238, i32 %239, i32 %240)
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %246

243:                                              ; preds = %231
  %244 = load i32, i32* @EINVAL, align 4
  %245 = sub nsw i32 0, %244
  store i32 %245, i32* %3, align 4
  br label %603

246:                                              ; preds = %231
  br label %247

247:                                              ; preds = %246, %213
  br label %251

248:                                              ; preds = %22
  %249 = load i32, i32* @EINVAL, align 4
  %250 = sub nsw i32 0, %249
  store i32 %250, i32* %3, align 4
  br label %603

251:                                              ; preds = %247, %212, %181, %150, %89
  br label %602

252:                                              ; preds = %15
  %253 = load i32*, i32** %5, align 8
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* @PP_BLOCK_MASK, align 4
  %256 = and i32 %254, %255
  %257 = load i32, i32* @PP_BLOCK_SHIFT, align 4
  %258 = ashr i32 %256, %257
  switch i32 %258, label %595 [
    i32 135, label %259
    i32 132, label %320
    i32 134, label %381
    i32 133, label %442
    i32 130, label %503
    i32 131, label %564
  ]

259:                                              ; preds = %252
  %260 = load i32, i32* @PP_STATE_SUPPORT_CG, align 4
  %261 = load i32*, i32** %5, align 8
  %262 = load i32, i32* %261, align 4
  %263 = and i32 %260, %262
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %289

265:                                              ; preds = %259
  %266 = load i32*, i32** %5, align 8
  %267 = load i32, i32* %266, align 4
  %268 = load i32, i32* @PP_STATE_MASK, align 4
  %269 = and i32 %267, %268
  %270 = load i32, i32* @PP_STATE_CG, align 4
  %271 = and i32 %269, %270
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %275

273:                                              ; preds = %265
  %274 = load i32, i32* @PPSMC_MSG_EnableClockGatingFeature, align 4
  br label %277

275:                                              ; preds = %265
  %276 = load i32, i32* @PPSMC_MSG_DisableClockGatingFeature, align 4
  br label %277

277:                                              ; preds = %275, %273
  %278 = phi i32 [ %274, %273 ], [ %276, %275 ]
  store i32 %278, i32* %6, align 4
  %279 = load i32, i32* @CG_SYS_BIF_MGCG_MASK, align 4
  store i32 %279, i32* %7, align 4
  %280 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %281 = load i32, i32* %6, align 4
  %282 = load i32, i32* %7, align 4
  %283 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %280, i32 %281, i32 %282)
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %288

285:                                              ; preds = %277
  %286 = load i32, i32* @EINVAL, align 4
  %287 = sub nsw i32 0, %286
  store i32 %287, i32* %3, align 4
  br label %603

288:                                              ; preds = %277
  br label %289

289:                                              ; preds = %288, %259
  %290 = load i32, i32* @PP_STATE_SUPPORT_LS, align 4
  %291 = load i32*, i32** %5, align 8
  %292 = load i32, i32* %291, align 4
  %293 = and i32 %290, %292
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %319

295:                                              ; preds = %289
  %296 = load i32*, i32** %5, align 8
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* @PP_STATE_MASK, align 4
  %299 = and i32 %297, %298
  %300 = load i32, i32* @PP_STATE_LS, align 4
  %301 = and i32 %299, %300
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %305

303:                                              ; preds = %295
  %304 = load i32, i32* @PPSMC_MSG_EnableClockGatingFeature, align 4
  br label %307

305:                                              ; preds = %295
  %306 = load i32, i32* @PPSMC_MSG_DisableClockGatingFeature, align 4
  br label %307

307:                                              ; preds = %305, %303
  %308 = phi i32 [ %304, %303 ], [ %306, %305 ]
  store i32 %308, i32* %6, align 4
  %309 = load i32, i32* @CG_SYS_BIF_MGLS_MASK, align 4
  store i32 %309, i32* %7, align 4
  %310 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %311 = load i32, i32* %6, align 4
  %312 = load i32, i32* %7, align 4
  %313 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %310, i32 %311, i32 %312)
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %318

315:                                              ; preds = %307
  %316 = load i32, i32* @EINVAL, align 4
  %317 = sub nsw i32 0, %316
  store i32 %317, i32* %3, align 4
  br label %603

318:                                              ; preds = %307
  br label %319

319:                                              ; preds = %318, %289
  br label %598

320:                                              ; preds = %252
  %321 = load i32, i32* @PP_STATE_SUPPORT_CG, align 4
  %322 = load i32*, i32** %5, align 8
  %323 = load i32, i32* %322, align 4
  %324 = and i32 %321, %323
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %350

326:                                              ; preds = %320
  %327 = load i32*, i32** %5, align 8
  %328 = load i32, i32* %327, align 4
  %329 = load i32, i32* @PP_STATE_MASK, align 4
  %330 = and i32 %328, %329
  %331 = load i32, i32* @PP_STATE_CG, align 4
  %332 = and i32 %330, %331
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %336

334:                                              ; preds = %326
  %335 = load i32, i32* @PPSMC_MSG_EnableClockGatingFeature, align 4
  br label %338

336:                                              ; preds = %326
  %337 = load i32, i32* @PPSMC_MSG_DisableClockGatingFeature, align 4
  br label %338

338:                                              ; preds = %336, %334
  %339 = phi i32 [ %335, %334 ], [ %337, %336 ]
  store i32 %339, i32* %6, align 4
  %340 = load i32, i32* @CG_SYS_MC_MGCG_MASK, align 4
  store i32 %340, i32* %7, align 4
  %341 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %342 = load i32, i32* %6, align 4
  %343 = load i32, i32* %7, align 4
  %344 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %341, i32 %342, i32 %343)
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %349

346:                                              ; preds = %338
  %347 = load i32, i32* @EINVAL, align 4
  %348 = sub nsw i32 0, %347
  store i32 %348, i32* %3, align 4
  br label %603

349:                                              ; preds = %338
  br label %350

350:                                              ; preds = %349, %320
  %351 = load i32, i32* @PP_STATE_SUPPORT_LS, align 4
  %352 = load i32*, i32** %5, align 8
  %353 = load i32, i32* %352, align 4
  %354 = and i32 %351, %353
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %380

356:                                              ; preds = %350
  %357 = load i32*, i32** %5, align 8
  %358 = load i32, i32* %357, align 4
  %359 = load i32, i32* @PP_STATE_MASK, align 4
  %360 = and i32 %358, %359
  %361 = load i32, i32* @PP_STATE_LS, align 4
  %362 = and i32 %360, %361
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %366

364:                                              ; preds = %356
  %365 = load i32, i32* @PPSMC_MSG_EnableClockGatingFeature, align 4
  br label %368

366:                                              ; preds = %356
  %367 = load i32, i32* @PPSMC_MSG_DisableClockGatingFeature, align 4
  br label %368

368:                                              ; preds = %366, %364
  %369 = phi i32 [ %365, %364 ], [ %367, %366 ]
  store i32 %369, i32* %6, align 4
  %370 = load i32, i32* @CG_SYS_MC_MGLS_MASK, align 4
  store i32 %370, i32* %7, align 4
  %371 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %372 = load i32, i32* %6, align 4
  %373 = load i32, i32* %7, align 4
  %374 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %371, i32 %372, i32 %373)
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %379

376:                                              ; preds = %368
  %377 = load i32, i32* @EINVAL, align 4
  %378 = sub nsw i32 0, %377
  store i32 %378, i32* %3, align 4
  br label %603

379:                                              ; preds = %368
  br label %380

380:                                              ; preds = %379, %350
  br label %598

381:                                              ; preds = %252
  %382 = load i32, i32* @PP_STATE_SUPPORT_CG, align 4
  %383 = load i32*, i32** %5, align 8
  %384 = load i32, i32* %383, align 4
  %385 = and i32 %382, %384
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %387, label %411

387:                                              ; preds = %381
  %388 = load i32*, i32** %5, align 8
  %389 = load i32, i32* %388, align 4
  %390 = load i32, i32* @PP_STATE_MASK, align 4
  %391 = and i32 %389, %390
  %392 = load i32, i32* @PP_STATE_CG, align 4
  %393 = and i32 %391, %392
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %397

395:                                              ; preds = %387
  %396 = load i32, i32* @PPSMC_MSG_EnableClockGatingFeature, align 4
  br label %399

397:                                              ; preds = %387
  %398 = load i32, i32* @PPSMC_MSG_DisableClockGatingFeature, align 4
  br label %399

399:                                              ; preds = %397, %395
  %400 = phi i32 [ %396, %395 ], [ %398, %397 ]
  store i32 %400, i32* %6, align 4
  %401 = load i32, i32* @CG_SYS_DRM_MGCG_MASK, align 4
  store i32 %401, i32* %7, align 4
  %402 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %403 = load i32, i32* %6, align 4
  %404 = load i32, i32* %7, align 4
  %405 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %402, i32 %403, i32 %404)
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %407, label %410

407:                                              ; preds = %399
  %408 = load i32, i32* @EINVAL, align 4
  %409 = sub nsw i32 0, %408
  store i32 %409, i32* %3, align 4
  br label %603

410:                                              ; preds = %399
  br label %411

411:                                              ; preds = %410, %381
  %412 = load i32, i32* @PP_STATE_SUPPORT_LS, align 4
  %413 = load i32*, i32** %5, align 8
  %414 = load i32, i32* %413, align 4
  %415 = and i32 %412, %414
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %441

417:                                              ; preds = %411
  %418 = load i32*, i32** %5, align 8
  %419 = load i32, i32* %418, align 4
  %420 = load i32, i32* @PP_STATE_MASK, align 4
  %421 = and i32 %419, %420
  %422 = load i32, i32* @PP_STATE_LS, align 4
  %423 = and i32 %421, %422
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %425, label %427

425:                                              ; preds = %417
  %426 = load i32, i32* @PPSMC_MSG_EnableClockGatingFeature, align 4
  br label %429

427:                                              ; preds = %417
  %428 = load i32, i32* @PPSMC_MSG_DisableClockGatingFeature, align 4
  br label %429

429:                                              ; preds = %427, %425
  %430 = phi i32 [ %426, %425 ], [ %428, %427 ]
  store i32 %430, i32* %6, align 4
  %431 = load i32, i32* @CG_SYS_DRM_MGLS_MASK, align 4
  store i32 %431, i32* %7, align 4
  %432 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %433 = load i32, i32* %6, align 4
  %434 = load i32, i32* %7, align 4
  %435 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %432, i32 %433, i32 %434)
  %436 = icmp ne i32 %435, 0
  br i1 %436, label %437, label %440

437:                                              ; preds = %429
  %438 = load i32, i32* @EINVAL, align 4
  %439 = sub nsw i32 0, %438
  store i32 %439, i32* %3, align 4
  br label %603

440:                                              ; preds = %429
  br label %441

441:                                              ; preds = %440, %411
  br label %598

442:                                              ; preds = %252
  %443 = load i32, i32* @PP_STATE_SUPPORT_CG, align 4
  %444 = load i32*, i32** %5, align 8
  %445 = load i32, i32* %444, align 4
  %446 = and i32 %443, %445
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %448, label %472

448:                                              ; preds = %442
  %449 = load i32*, i32** %5, align 8
  %450 = load i32, i32* %449, align 4
  %451 = load i32, i32* @PP_STATE_MASK, align 4
  %452 = and i32 %450, %451
  %453 = load i32, i32* @PP_STATE_CG, align 4
  %454 = and i32 %452, %453
  %455 = icmp ne i32 %454, 0
  br i1 %455, label %456, label %458

456:                                              ; preds = %448
  %457 = load i32, i32* @PPSMC_MSG_EnableClockGatingFeature, align 4
  br label %460

458:                                              ; preds = %448
  %459 = load i32, i32* @PPSMC_MSG_DisableClockGatingFeature, align 4
  br label %460

460:                                              ; preds = %458, %456
  %461 = phi i32 [ %457, %456 ], [ %459, %458 ]
  store i32 %461, i32* %6, align 4
  %462 = load i32, i32* @CG_SYS_HDP_MGCG_MASK, align 4
  store i32 %462, i32* %7, align 4
  %463 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %464 = load i32, i32* %6, align 4
  %465 = load i32, i32* %7, align 4
  %466 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %463, i32 %464, i32 %465)
  %467 = icmp ne i32 %466, 0
  br i1 %467, label %468, label %471

468:                                              ; preds = %460
  %469 = load i32, i32* @EINVAL, align 4
  %470 = sub nsw i32 0, %469
  store i32 %470, i32* %3, align 4
  br label %603

471:                                              ; preds = %460
  br label %472

472:                                              ; preds = %471, %442
  %473 = load i32, i32* @PP_STATE_SUPPORT_LS, align 4
  %474 = load i32*, i32** %5, align 8
  %475 = load i32, i32* %474, align 4
  %476 = and i32 %473, %475
  %477 = icmp ne i32 %476, 0
  br i1 %477, label %478, label %502

478:                                              ; preds = %472
  %479 = load i32*, i32** %5, align 8
  %480 = load i32, i32* %479, align 4
  %481 = load i32, i32* @PP_STATE_MASK, align 4
  %482 = and i32 %480, %481
  %483 = load i32, i32* @PP_STATE_LS, align 4
  %484 = and i32 %482, %483
  %485 = icmp ne i32 %484, 0
  br i1 %485, label %486, label %488

486:                                              ; preds = %478
  %487 = load i32, i32* @PPSMC_MSG_EnableClockGatingFeature, align 4
  br label %490

488:                                              ; preds = %478
  %489 = load i32, i32* @PPSMC_MSG_DisableClockGatingFeature, align 4
  br label %490

490:                                              ; preds = %488, %486
  %491 = phi i32 [ %487, %486 ], [ %489, %488 ]
  store i32 %491, i32* %6, align 4
  %492 = load i32, i32* @CG_SYS_HDP_MGLS_MASK, align 4
  store i32 %492, i32* %7, align 4
  %493 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %494 = load i32, i32* %6, align 4
  %495 = load i32, i32* %7, align 4
  %496 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %493, i32 %494, i32 %495)
  %497 = icmp ne i32 %496, 0
  br i1 %497, label %498, label %501

498:                                              ; preds = %490
  %499 = load i32, i32* @EINVAL, align 4
  %500 = sub nsw i32 0, %499
  store i32 %500, i32* %3, align 4
  br label %603

501:                                              ; preds = %490
  br label %502

502:                                              ; preds = %501, %472
  br label %598

503:                                              ; preds = %252
  %504 = load i32, i32* @PP_STATE_SUPPORT_CG, align 4
  %505 = load i32*, i32** %5, align 8
  %506 = load i32, i32* %505, align 4
  %507 = and i32 %504, %506
  %508 = icmp ne i32 %507, 0
  br i1 %508, label %509, label %533

509:                                              ; preds = %503
  %510 = load i32*, i32** %5, align 8
  %511 = load i32, i32* %510, align 4
  %512 = load i32, i32* @PP_STATE_MASK, align 4
  %513 = and i32 %511, %512
  %514 = load i32, i32* @PP_STATE_CG, align 4
  %515 = and i32 %513, %514
  %516 = icmp ne i32 %515, 0
  br i1 %516, label %517, label %519

517:                                              ; preds = %509
  %518 = load i32, i32* @PPSMC_MSG_EnableClockGatingFeature, align 4
  br label %521

519:                                              ; preds = %509
  %520 = load i32, i32* @PPSMC_MSG_DisableClockGatingFeature, align 4
  br label %521

521:                                              ; preds = %519, %517
  %522 = phi i32 [ %518, %517 ], [ %520, %519 ]
  store i32 %522, i32* %6, align 4
  %523 = load i32, i32* @CG_SYS_SDMA_MGCG_MASK, align 4
  store i32 %523, i32* %7, align 4
  %524 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %525 = load i32, i32* %6, align 4
  %526 = load i32, i32* %7, align 4
  %527 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %524, i32 %525, i32 %526)
  %528 = icmp ne i32 %527, 0
  br i1 %528, label %529, label %532

529:                                              ; preds = %521
  %530 = load i32, i32* @EINVAL, align 4
  %531 = sub nsw i32 0, %530
  store i32 %531, i32* %3, align 4
  br label %603

532:                                              ; preds = %521
  br label %533

533:                                              ; preds = %532, %503
  %534 = load i32, i32* @PP_STATE_SUPPORT_LS, align 4
  %535 = load i32*, i32** %5, align 8
  %536 = load i32, i32* %535, align 4
  %537 = and i32 %534, %536
  %538 = icmp ne i32 %537, 0
  br i1 %538, label %539, label %563

539:                                              ; preds = %533
  %540 = load i32*, i32** %5, align 8
  %541 = load i32, i32* %540, align 4
  %542 = load i32, i32* @PP_STATE_MASK, align 4
  %543 = and i32 %541, %542
  %544 = load i32, i32* @PP_STATE_LS, align 4
  %545 = and i32 %543, %544
  %546 = icmp ne i32 %545, 0
  br i1 %546, label %547, label %549

547:                                              ; preds = %539
  %548 = load i32, i32* @PPSMC_MSG_EnableClockGatingFeature, align 4
  br label %551

549:                                              ; preds = %539
  %550 = load i32, i32* @PPSMC_MSG_DisableClockGatingFeature, align 4
  br label %551

551:                                              ; preds = %549, %547
  %552 = phi i32 [ %548, %547 ], [ %550, %549 ]
  store i32 %552, i32* %6, align 4
  %553 = load i32, i32* @CG_SYS_SDMA_MGLS_MASK, align 4
  store i32 %553, i32* %7, align 4
  %554 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %555 = load i32, i32* %6, align 4
  %556 = load i32, i32* %7, align 4
  %557 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %554, i32 %555, i32 %556)
  %558 = icmp ne i32 %557, 0
  br i1 %558, label %559, label %562

559:                                              ; preds = %551
  %560 = load i32, i32* @EINVAL, align 4
  %561 = sub nsw i32 0, %560
  store i32 %561, i32* %3, align 4
  br label %603

562:                                              ; preds = %551
  br label %563

563:                                              ; preds = %562, %533
  br label %598

564:                                              ; preds = %252
  %565 = load i32, i32* @PP_STATE_SUPPORT_CG, align 4
  %566 = load i32*, i32** %5, align 8
  %567 = load i32, i32* %566, align 4
  %568 = and i32 %565, %567
  %569 = icmp ne i32 %568, 0
  br i1 %569, label %570, label %594

570:                                              ; preds = %564
  %571 = load i32*, i32** %5, align 8
  %572 = load i32, i32* %571, align 4
  %573 = load i32, i32* @PP_STATE_MASK, align 4
  %574 = and i32 %572, %573
  %575 = load i32, i32* @PP_STATE_CG, align 4
  %576 = and i32 %574, %575
  %577 = icmp ne i32 %576, 0
  br i1 %577, label %578, label %580

578:                                              ; preds = %570
  %579 = load i32, i32* @PPSMC_MSG_EnableClockGatingFeature, align 4
  br label %582

580:                                              ; preds = %570
  %581 = load i32, i32* @PPSMC_MSG_DisableClockGatingFeature, align 4
  br label %582

582:                                              ; preds = %580, %578
  %583 = phi i32 [ %579, %578 ], [ %581, %580 ]
  store i32 %583, i32* %6, align 4
  %584 = load i32, i32* @CG_SYS_ROM_MASK, align 4
  store i32 %584, i32* %7, align 4
  %585 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %586 = load i32, i32* %6, align 4
  %587 = load i32, i32* %7, align 4
  %588 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %585, i32 %586, i32 %587)
  %589 = icmp ne i32 %588, 0
  br i1 %589, label %590, label %593

590:                                              ; preds = %582
  %591 = load i32, i32* @EINVAL, align 4
  %592 = sub nsw i32 0, %591
  store i32 %592, i32* %3, align 4
  br label %603

593:                                              ; preds = %582
  br label %594

594:                                              ; preds = %593, %564
  br label %598

595:                                              ; preds = %252
  %596 = load i32, i32* @EINVAL, align 4
  %597 = sub nsw i32 0, %596
  store i32 %597, i32* %3, align 4
  br label %603

598:                                              ; preds = %594, %563, %502, %441, %380, %319
  br label %602

599:                                              ; preds = %15
  %600 = load i32, i32* @EINVAL, align 4
  %601 = sub nsw i32 0, %600
  store i32 %601, i32* %3, align 4
  br label %603

602:                                              ; preds = %598, %251
  store i32 0, i32* %3, align 4
  br label %603

603:                                              ; preds = %602, %599, %595, %590, %559, %529, %498, %468, %437, %407, %376, %346, %315, %285, %248, %243, %208, %177, %146, %116, %85, %55, %14
  %604 = load i32, i32* %3, align 4
  ret i32 %604
}

declare dso_local i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

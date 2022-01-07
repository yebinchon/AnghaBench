; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_save_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_save_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dispc_device = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"dispc_save_context\0A\00", align 1
@IRQENABLE = common dso_local global i32 0, align 4
@CONTROL = common dso_local global i32 0, align 4
@CONFIG = common dso_local global i32 0, align 4
@LINE_NUMBER = common dso_local global i32 0, align 4
@FEAT_ALPHA_FIXED_ZORDER = common dso_local global i32 0, align 4
@FEAT_ALPHA_FREE_ZORDER = common dso_local global i32 0, align 4
@GLOBAL_ALPHA = common dso_local global i32 0, align 4
@FEAT_MGR_LCD2 = common dso_local global i32 0, align 4
@CONTROL2 = common dso_local global i32 0, align 4
@CONFIG2 = common dso_local global i32 0, align 4
@FEAT_MGR_LCD3 = common dso_local global i32 0, align 4
@CONTROL3 = common dso_local global i32 0, align 4
@CONFIG3 = common dso_local global i32 0, align 4
@OMAP_DSS_CHANNEL_DIGIT = common dso_local global i32 0, align 4
@FEAT_CPR = common dso_local global i32 0, align 4
@FEAT_PRELOAD = common dso_local global i32 0, align 4
@OMAP_DSS_GFX = common dso_local global i32 0, align 4
@FEAT_FIR_COEF_V = common dso_local global i32 0, align 4
@FEAT_HANDLE_UV_SEPARATE = common dso_local global i32 0, align 4
@FEAT_ATTR2 = common dso_local global i32 0, align 4
@FEAT_CORE_CLK_DIV = common dso_local global i32 0, align 4
@DIVISOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"context saved\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dispc_device*)* @dispc_save_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dispc_save_context(%struct.dispc_device* %0) #0 {
  %2 = alloca %struct.dispc_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.dispc_device* %0, %struct.dispc_device** %2, align 8
  %5 = call i32 @DSSDBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %7 = load i32, i32* @IRQENABLE, align 4
  %8 = call i32 @SR(%struct.dispc_device* %6, i32 %7)
  %9 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %10 = load i32, i32* @CONTROL, align 4
  %11 = call i32 @SR(%struct.dispc_device* %9, i32 %10)
  %12 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %13 = load i32, i32* @CONFIG, align 4
  %14 = call i32 @SR(%struct.dispc_device* %12, i32 %13)
  %15 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %16 = load i32, i32* @LINE_NUMBER, align 4
  %17 = call i32 @SR(%struct.dispc_device* %15, i32 %16)
  %18 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %19 = load i32, i32* @FEAT_ALPHA_FIXED_ZORDER, align 4
  %20 = call i64 @dispc_has_feature(%struct.dispc_device* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %1
  %23 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %24 = load i32, i32* @FEAT_ALPHA_FREE_ZORDER, align 4
  %25 = call i64 @dispc_has_feature(%struct.dispc_device* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22, %1
  %28 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %29 = load i32, i32* @GLOBAL_ALPHA, align 4
  %30 = call i32 @SR(%struct.dispc_device* %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %22
  %32 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %33 = load i32, i32* @FEAT_MGR_LCD2, align 4
  %34 = call i64 @dispc_has_feature(%struct.dispc_device* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %38 = load i32, i32* @CONTROL2, align 4
  %39 = call i32 @SR(%struct.dispc_device* %37, i32 %38)
  %40 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %41 = load i32, i32* @CONFIG2, align 4
  %42 = call i32 @SR(%struct.dispc_device* %40, i32 %41)
  br label %43

43:                                               ; preds = %36, %31
  %44 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %45 = load i32, i32* @FEAT_MGR_LCD3, align 4
  %46 = call i64 @dispc_has_feature(%struct.dispc_device* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %50 = load i32, i32* @CONTROL3, align 4
  %51 = call i32 @SR(%struct.dispc_device* %49, i32 %50)
  %52 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %53 = load i32, i32* @CONFIG3, align 4
  %54 = call i32 @SR(%struct.dispc_device* %52, i32 %53)
  br label %55

55:                                               ; preds = %48, %43
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %125, %55
  %57 = load i32, i32* %3, align 4
  %58 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %59 = call i32 @dispc_get_num_mgrs(%struct.dispc_device* %58)
  %60 = icmp slt i32 %57, %59
  br i1 %60, label %61, label %128

61:                                               ; preds = %56
  %62 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @DEFAULT_COLOR(i32 %63)
  %65 = call i32 @SR(%struct.dispc_device* %62, i32 %64)
  %66 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @TRANS_COLOR(i32 %67)
  %69 = call i32 @SR(%struct.dispc_device* %66, i32 %68)
  %70 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %71 = load i32, i32* %3, align 4
  %72 = call i32 @SIZE_MGR(i32 %71)
  %73 = call i32 @SR(%struct.dispc_device* %70, i32 %72)
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* @OMAP_DSS_CHANNEL_DIGIT, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %61
  br label %125

78:                                               ; preds = %61
  %79 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %80 = load i32, i32* %3, align 4
  %81 = call i32 @TIMING_H(i32 %80)
  %82 = call i32 @SR(%struct.dispc_device* %79, i32 %81)
  %83 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %84 = load i32, i32* %3, align 4
  %85 = call i32 @TIMING_V(i32 %84)
  %86 = call i32 @SR(%struct.dispc_device* %83, i32 %85)
  %87 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %88 = load i32, i32* %3, align 4
  %89 = call i32 @POL_FREQ(i32 %88)
  %90 = call i32 @SR(%struct.dispc_device* %87, i32 %89)
  %91 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %92 = load i32, i32* %3, align 4
  %93 = call i32 @DIVISORo(i32 %92)
  %94 = call i32 @SR(%struct.dispc_device* %91, i32 %93)
  %95 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %96 = load i32, i32* %3, align 4
  %97 = call i32 @DATA_CYCLE1(i32 %96)
  %98 = call i32 @SR(%struct.dispc_device* %95, i32 %97)
  %99 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %100 = load i32, i32* %3, align 4
  %101 = call i32 @DATA_CYCLE2(i32 %100)
  %102 = call i32 @SR(%struct.dispc_device* %99, i32 %101)
  %103 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %104 = load i32, i32* %3, align 4
  %105 = call i32 @DATA_CYCLE3(i32 %104)
  %106 = call i32 @SR(%struct.dispc_device* %103, i32 %105)
  %107 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %108 = load i32, i32* @FEAT_CPR, align 4
  %109 = call i64 @dispc_has_feature(%struct.dispc_device* %107, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %124

111:                                              ; preds = %78
  %112 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %113 = load i32, i32* %3, align 4
  %114 = call i32 @CPR_COEF_R(i32 %113)
  %115 = call i32 @SR(%struct.dispc_device* %112, i32 %114)
  %116 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %117 = load i32, i32* %3, align 4
  %118 = call i32 @CPR_COEF_G(i32 %117)
  %119 = call i32 @SR(%struct.dispc_device* %116, i32 %118)
  %120 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %121 = load i32, i32* %3, align 4
  %122 = call i32 @CPR_COEF_B(i32 %121)
  %123 = call i32 @SR(%struct.dispc_device* %120, i32 %122)
  br label %124

124:                                              ; preds = %111, %78
  br label %125

125:                                              ; preds = %124, %77
  %126 = load i32, i32* %3, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %3, align 4
  br label %56

128:                                              ; preds = %56
  store i32 0, i32* %3, align 4
  br label %129

129:                                              ; preds = %339, %128
  %130 = load i32, i32* %3, align 4
  %131 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %132 = call i32 @dispc_get_num_ovls(%struct.dispc_device* %131)
  %133 = icmp slt i32 %130, %132
  br i1 %133, label %134, label %342

134:                                              ; preds = %129
  %135 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %136 = load i32, i32* %3, align 4
  %137 = call i32 @OVL_BA0(i32 %136)
  %138 = call i32 @SR(%struct.dispc_device* %135, i32 %137)
  %139 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %140 = load i32, i32* %3, align 4
  %141 = call i32 @OVL_BA1(i32 %140)
  %142 = call i32 @SR(%struct.dispc_device* %139, i32 %141)
  %143 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %144 = load i32, i32* %3, align 4
  %145 = call i32 @OVL_POSITION(i32 %144)
  %146 = call i32 @SR(%struct.dispc_device* %143, i32 %145)
  %147 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %148 = load i32, i32* %3, align 4
  %149 = call i32 @OVL_SIZE(i32 %148)
  %150 = call i32 @SR(%struct.dispc_device* %147, i32 %149)
  %151 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %152 = load i32, i32* %3, align 4
  %153 = call i32 @OVL_ATTRIBUTES(i32 %152)
  %154 = call i32 @SR(%struct.dispc_device* %151, i32 %153)
  %155 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %156 = load i32, i32* %3, align 4
  %157 = call i32 @OVL_FIFO_THRESHOLD(i32 %156)
  %158 = call i32 @SR(%struct.dispc_device* %155, i32 %157)
  %159 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %160 = load i32, i32* %3, align 4
  %161 = call i32 @OVL_ROW_INC(i32 %160)
  %162 = call i32 @SR(%struct.dispc_device* %159, i32 %161)
  %163 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %164 = load i32, i32* %3, align 4
  %165 = call i32 @OVL_PIXEL_INC(i32 %164)
  %166 = call i32 @SR(%struct.dispc_device* %163, i32 %165)
  %167 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %168 = load i32, i32* @FEAT_PRELOAD, align 4
  %169 = call i64 @dispc_has_feature(%struct.dispc_device* %167, i32 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %176

171:                                              ; preds = %134
  %172 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %173 = load i32, i32* %3, align 4
  %174 = call i32 @OVL_PRELOAD(i32 %173)
  %175 = call i32 @SR(%struct.dispc_device* %172, i32 %174)
  br label %176

176:                                              ; preds = %171, %134
  %177 = load i32, i32* %3, align 4
  %178 = load i32, i32* @OMAP_DSS_GFX, align 4
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %180, label %189

180:                                              ; preds = %176
  %181 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %182 = load i32, i32* %3, align 4
  %183 = call i32 @OVL_WINDOW_SKIP(i32 %182)
  %184 = call i32 @SR(%struct.dispc_device* %181, i32 %183)
  %185 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %186 = load i32, i32* %3, align 4
  %187 = call i32 @OVL_TABLE_BA(i32 %186)
  %188 = call i32 @SR(%struct.dispc_device* %185, i32 %187)
  br label %339

189:                                              ; preds = %176
  %190 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %191 = load i32, i32* %3, align 4
  %192 = call i32 @OVL_FIR(i32 %191)
  %193 = call i32 @SR(%struct.dispc_device* %190, i32 %192)
  %194 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %195 = load i32, i32* %3, align 4
  %196 = call i32 @OVL_PICTURE_SIZE(i32 %195)
  %197 = call i32 @SR(%struct.dispc_device* %194, i32 %196)
  %198 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %199 = load i32, i32* %3, align 4
  %200 = call i32 @OVL_ACCU0(i32 %199)
  %201 = call i32 @SR(%struct.dispc_device* %198, i32 %200)
  %202 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %203 = load i32, i32* %3, align 4
  %204 = call i32 @OVL_ACCU1(i32 %203)
  %205 = call i32 @SR(%struct.dispc_device* %202, i32 %204)
  store i32 0, i32* %4, align 4
  br label %206

206:                                              ; preds = %215, %189
  %207 = load i32, i32* %4, align 4
  %208 = icmp slt i32 %207, 8
  br i1 %208, label %209, label %218

209:                                              ; preds = %206
  %210 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %211 = load i32, i32* %3, align 4
  %212 = load i32, i32* %4, align 4
  %213 = call i32 @OVL_FIR_COEF_H(i32 %211, i32 %212)
  %214 = call i32 @SR(%struct.dispc_device* %210, i32 %213)
  br label %215

215:                                              ; preds = %209
  %216 = load i32, i32* %4, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %4, align 4
  br label %206

218:                                              ; preds = %206
  store i32 0, i32* %4, align 4
  br label %219

219:                                              ; preds = %228, %218
  %220 = load i32, i32* %4, align 4
  %221 = icmp slt i32 %220, 8
  br i1 %221, label %222, label %231

222:                                              ; preds = %219
  %223 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %224 = load i32, i32* %3, align 4
  %225 = load i32, i32* %4, align 4
  %226 = call i32 @OVL_FIR_COEF_HV(i32 %224, i32 %225)
  %227 = call i32 @SR(%struct.dispc_device* %223, i32 %226)
  br label %228

228:                                              ; preds = %222
  %229 = load i32, i32* %4, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %4, align 4
  br label %219

231:                                              ; preds = %219
  store i32 0, i32* %4, align 4
  br label %232

232:                                              ; preds = %241, %231
  %233 = load i32, i32* %4, align 4
  %234 = icmp slt i32 %233, 5
  br i1 %234, label %235, label %244

235:                                              ; preds = %232
  %236 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %237 = load i32, i32* %3, align 4
  %238 = load i32, i32* %4, align 4
  %239 = call i32 @OVL_CONV_COEF(i32 %237, i32 %238)
  %240 = call i32 @SR(%struct.dispc_device* %236, i32 %239)
  br label %241

241:                                              ; preds = %235
  %242 = load i32, i32* %4, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %4, align 4
  br label %232

244:                                              ; preds = %232
  %245 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %246 = load i32, i32* @FEAT_FIR_COEF_V, align 4
  %247 = call i64 @dispc_has_feature(%struct.dispc_device* %245, i32 %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %263

249:                                              ; preds = %244
  store i32 0, i32* %4, align 4
  br label %250

250:                                              ; preds = %259, %249
  %251 = load i32, i32* %4, align 4
  %252 = icmp slt i32 %251, 8
  br i1 %252, label %253, label %262

253:                                              ; preds = %250
  %254 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %255 = load i32, i32* %3, align 4
  %256 = load i32, i32* %4, align 4
  %257 = call i32 @OVL_FIR_COEF_V(i32 %255, i32 %256)
  %258 = call i32 @SR(%struct.dispc_device* %254, i32 %257)
  br label %259

259:                                              ; preds = %253
  %260 = load i32, i32* %4, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %4, align 4
  br label %250

262:                                              ; preds = %250
  br label %263

263:                                              ; preds = %262, %244
  %264 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %265 = load i32, i32* @FEAT_HANDLE_UV_SEPARATE, align 4
  %266 = call i64 @dispc_has_feature(%struct.dispc_device* %264, i32 %265)
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %328

268:                                              ; preds = %263
  %269 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %270 = load i32, i32* %3, align 4
  %271 = call i32 @OVL_BA0_UV(i32 %270)
  %272 = call i32 @SR(%struct.dispc_device* %269, i32 %271)
  %273 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %274 = load i32, i32* %3, align 4
  %275 = call i32 @OVL_BA1_UV(i32 %274)
  %276 = call i32 @SR(%struct.dispc_device* %273, i32 %275)
  %277 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %278 = load i32, i32* %3, align 4
  %279 = call i32 @OVL_FIR2(i32 %278)
  %280 = call i32 @SR(%struct.dispc_device* %277, i32 %279)
  %281 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %282 = load i32, i32* %3, align 4
  %283 = call i32 @OVL_ACCU2_0(i32 %282)
  %284 = call i32 @SR(%struct.dispc_device* %281, i32 %283)
  %285 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %286 = load i32, i32* %3, align 4
  %287 = call i32 @OVL_ACCU2_1(i32 %286)
  %288 = call i32 @SR(%struct.dispc_device* %285, i32 %287)
  store i32 0, i32* %4, align 4
  br label %289

289:                                              ; preds = %298, %268
  %290 = load i32, i32* %4, align 4
  %291 = icmp slt i32 %290, 8
  br i1 %291, label %292, label %301

292:                                              ; preds = %289
  %293 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %294 = load i32, i32* %3, align 4
  %295 = load i32, i32* %4, align 4
  %296 = call i32 @OVL_FIR_COEF_H2(i32 %294, i32 %295)
  %297 = call i32 @SR(%struct.dispc_device* %293, i32 %296)
  br label %298

298:                                              ; preds = %292
  %299 = load i32, i32* %4, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %4, align 4
  br label %289

301:                                              ; preds = %289
  store i32 0, i32* %4, align 4
  br label %302

302:                                              ; preds = %311, %301
  %303 = load i32, i32* %4, align 4
  %304 = icmp slt i32 %303, 8
  br i1 %304, label %305, label %314

305:                                              ; preds = %302
  %306 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %307 = load i32, i32* %3, align 4
  %308 = load i32, i32* %4, align 4
  %309 = call i32 @OVL_FIR_COEF_HV2(i32 %307, i32 %308)
  %310 = call i32 @SR(%struct.dispc_device* %306, i32 %309)
  br label %311

311:                                              ; preds = %305
  %312 = load i32, i32* %4, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %4, align 4
  br label %302

314:                                              ; preds = %302
  store i32 0, i32* %4, align 4
  br label %315

315:                                              ; preds = %324, %314
  %316 = load i32, i32* %4, align 4
  %317 = icmp slt i32 %316, 8
  br i1 %317, label %318, label %327

318:                                              ; preds = %315
  %319 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %320 = load i32, i32* %3, align 4
  %321 = load i32, i32* %4, align 4
  %322 = call i32 @OVL_FIR_COEF_V2(i32 %320, i32 %321)
  %323 = call i32 @SR(%struct.dispc_device* %319, i32 %322)
  br label %324

324:                                              ; preds = %318
  %325 = load i32, i32* %4, align 4
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* %4, align 4
  br label %315

327:                                              ; preds = %315
  br label %328

328:                                              ; preds = %327, %263
  %329 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %330 = load i32, i32* @FEAT_ATTR2, align 4
  %331 = call i64 @dispc_has_feature(%struct.dispc_device* %329, i32 %330)
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %333, label %338

333:                                              ; preds = %328
  %334 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %335 = load i32, i32* %3, align 4
  %336 = call i32 @OVL_ATTRIBUTES2(i32 %335)
  %337 = call i32 @SR(%struct.dispc_device* %334, i32 %336)
  br label %338

338:                                              ; preds = %333, %328
  br label %339

339:                                              ; preds = %338, %180
  %340 = load i32, i32* %3, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %3, align 4
  br label %129

342:                                              ; preds = %129
  %343 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %344 = load i32, i32* @FEAT_CORE_CLK_DIV, align 4
  %345 = call i64 @dispc_has_feature(%struct.dispc_device* %343, i32 %344)
  %346 = icmp ne i64 %345, 0
  br i1 %346, label %347, label %351

347:                                              ; preds = %342
  %348 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %349 = load i32, i32* @DIVISOR, align 4
  %350 = call i32 @SR(%struct.dispc_device* %348, i32 %349)
  br label %351

351:                                              ; preds = %347, %342
  %352 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %353 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %352, i32 0, i32 0
  store i32 1, i32* %353, align 4
  %354 = call i32 @DSSDBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @DSSDBG(i8*) #1

declare dso_local i32 @SR(%struct.dispc_device*, i32) #1

declare dso_local i64 @dispc_has_feature(%struct.dispc_device*, i32) #1

declare dso_local i32 @dispc_get_num_mgrs(%struct.dispc_device*) #1

declare dso_local i32 @DEFAULT_COLOR(i32) #1

declare dso_local i32 @TRANS_COLOR(i32) #1

declare dso_local i32 @SIZE_MGR(i32) #1

declare dso_local i32 @TIMING_H(i32) #1

declare dso_local i32 @TIMING_V(i32) #1

declare dso_local i32 @POL_FREQ(i32) #1

declare dso_local i32 @DIVISORo(i32) #1

declare dso_local i32 @DATA_CYCLE1(i32) #1

declare dso_local i32 @DATA_CYCLE2(i32) #1

declare dso_local i32 @DATA_CYCLE3(i32) #1

declare dso_local i32 @CPR_COEF_R(i32) #1

declare dso_local i32 @CPR_COEF_G(i32) #1

declare dso_local i32 @CPR_COEF_B(i32) #1

declare dso_local i32 @dispc_get_num_ovls(%struct.dispc_device*) #1

declare dso_local i32 @OVL_BA0(i32) #1

declare dso_local i32 @OVL_BA1(i32) #1

declare dso_local i32 @OVL_POSITION(i32) #1

declare dso_local i32 @OVL_SIZE(i32) #1

declare dso_local i32 @OVL_ATTRIBUTES(i32) #1

declare dso_local i32 @OVL_FIFO_THRESHOLD(i32) #1

declare dso_local i32 @OVL_ROW_INC(i32) #1

declare dso_local i32 @OVL_PIXEL_INC(i32) #1

declare dso_local i32 @OVL_PRELOAD(i32) #1

declare dso_local i32 @OVL_WINDOW_SKIP(i32) #1

declare dso_local i32 @OVL_TABLE_BA(i32) #1

declare dso_local i32 @OVL_FIR(i32) #1

declare dso_local i32 @OVL_PICTURE_SIZE(i32) #1

declare dso_local i32 @OVL_ACCU0(i32) #1

declare dso_local i32 @OVL_ACCU1(i32) #1

declare dso_local i32 @OVL_FIR_COEF_H(i32, i32) #1

declare dso_local i32 @OVL_FIR_COEF_HV(i32, i32) #1

declare dso_local i32 @OVL_CONV_COEF(i32, i32) #1

declare dso_local i32 @OVL_FIR_COEF_V(i32, i32) #1

declare dso_local i32 @OVL_BA0_UV(i32) #1

declare dso_local i32 @OVL_BA1_UV(i32) #1

declare dso_local i32 @OVL_FIR2(i32) #1

declare dso_local i32 @OVL_ACCU2_0(i32) #1

declare dso_local i32 @OVL_ACCU2_1(i32) #1

declare dso_local i32 @OVL_FIR_COEF_H2(i32, i32) #1

declare dso_local i32 @OVL_FIR_COEF_HV2(i32, i32) #1

declare dso_local i32 @OVL_FIR_COEF_V2(i32, i32) #1

declare dso_local i32 @OVL_ATTRIBUTES2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

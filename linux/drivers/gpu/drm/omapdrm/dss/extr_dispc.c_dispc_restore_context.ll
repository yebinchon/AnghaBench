; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_restore_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_restore_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dispc_device = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"dispc_restore_context\0A\00", align 1
@CONFIG = common dso_local global i32 0, align 4
@LINE_NUMBER = common dso_local global i32 0, align 4
@FEAT_ALPHA_FIXED_ZORDER = common dso_local global i32 0, align 4
@FEAT_ALPHA_FREE_ZORDER = common dso_local global i32 0, align 4
@GLOBAL_ALPHA = common dso_local global i32 0, align 4
@FEAT_MGR_LCD2 = common dso_local global i32 0, align 4
@CONFIG2 = common dso_local global i32 0, align 4
@FEAT_MGR_LCD3 = common dso_local global i32 0, align 4
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
@CONTROL = common dso_local global i32 0, align 4
@CONTROL2 = common dso_local global i32 0, align 4
@CONTROL3 = common dso_local global i32 0, align 4
@DISPC_IRQ_SYNC_LOST_DIGIT = common dso_local global i32 0, align 4
@IRQENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"context restored\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dispc_device*)* @dispc_restore_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dispc_restore_context(%struct.dispc_device* %0) #0 {
  %2 = alloca %struct.dispc_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.dispc_device* %0, %struct.dispc_device** %2, align 8
  %5 = call i32 @DSSDBG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %7 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %374

11:                                               ; preds = %1
  %12 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %13 = load i32, i32* @CONFIG, align 4
  %14 = call i32 @RR(%struct.dispc_device* %12, i32 %13)
  %15 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %16 = load i32, i32* @LINE_NUMBER, align 4
  %17 = call i32 @RR(%struct.dispc_device* %15, i32 %16)
  %18 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %19 = load i32, i32* @FEAT_ALPHA_FIXED_ZORDER, align 4
  %20 = call i64 @dispc_has_feature(%struct.dispc_device* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %11
  %23 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %24 = load i32, i32* @FEAT_ALPHA_FREE_ZORDER, align 4
  %25 = call i64 @dispc_has_feature(%struct.dispc_device* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22, %11
  %28 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %29 = load i32, i32* @GLOBAL_ALPHA, align 4
  %30 = call i32 @RR(%struct.dispc_device* %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %22
  %32 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %33 = load i32, i32* @FEAT_MGR_LCD2, align 4
  %34 = call i64 @dispc_has_feature(%struct.dispc_device* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %38 = load i32, i32* @CONFIG2, align 4
  %39 = call i32 @RR(%struct.dispc_device* %37, i32 %38)
  br label %40

40:                                               ; preds = %36, %31
  %41 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %42 = load i32, i32* @FEAT_MGR_LCD3, align 4
  %43 = call i64 @dispc_has_feature(%struct.dispc_device* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %47 = load i32, i32* @CONFIG3, align 4
  %48 = call i32 @RR(%struct.dispc_device* %46, i32 %47)
  br label %49

49:                                               ; preds = %45, %40
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %119, %49
  %51 = load i32, i32* %3, align 4
  %52 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %53 = call i32 @dispc_get_num_mgrs(%struct.dispc_device* %52)
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %55, label %122

55:                                               ; preds = %50
  %56 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @DEFAULT_COLOR(i32 %57)
  %59 = call i32 @RR(%struct.dispc_device* %56, i32 %58)
  %60 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @TRANS_COLOR(i32 %61)
  %63 = call i32 @RR(%struct.dispc_device* %60, i32 %62)
  %64 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @SIZE_MGR(i32 %65)
  %67 = call i32 @RR(%struct.dispc_device* %64, i32 %66)
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* @OMAP_DSS_CHANNEL_DIGIT, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %55
  br label %119

72:                                               ; preds = %55
  %73 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %74 = load i32, i32* %3, align 4
  %75 = call i32 @TIMING_H(i32 %74)
  %76 = call i32 @RR(%struct.dispc_device* %73, i32 %75)
  %77 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %78 = load i32, i32* %3, align 4
  %79 = call i32 @TIMING_V(i32 %78)
  %80 = call i32 @RR(%struct.dispc_device* %77, i32 %79)
  %81 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %82 = load i32, i32* %3, align 4
  %83 = call i32 @POL_FREQ(i32 %82)
  %84 = call i32 @RR(%struct.dispc_device* %81, i32 %83)
  %85 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %86 = load i32, i32* %3, align 4
  %87 = call i32 @DIVISORo(i32 %86)
  %88 = call i32 @RR(%struct.dispc_device* %85, i32 %87)
  %89 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %90 = load i32, i32* %3, align 4
  %91 = call i32 @DATA_CYCLE1(i32 %90)
  %92 = call i32 @RR(%struct.dispc_device* %89, i32 %91)
  %93 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %94 = load i32, i32* %3, align 4
  %95 = call i32 @DATA_CYCLE2(i32 %94)
  %96 = call i32 @RR(%struct.dispc_device* %93, i32 %95)
  %97 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %98 = load i32, i32* %3, align 4
  %99 = call i32 @DATA_CYCLE3(i32 %98)
  %100 = call i32 @RR(%struct.dispc_device* %97, i32 %99)
  %101 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %102 = load i32, i32* @FEAT_CPR, align 4
  %103 = call i64 @dispc_has_feature(%struct.dispc_device* %101, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %118

105:                                              ; preds = %72
  %106 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %107 = load i32, i32* %3, align 4
  %108 = call i32 @CPR_COEF_R(i32 %107)
  %109 = call i32 @RR(%struct.dispc_device* %106, i32 %108)
  %110 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %111 = load i32, i32* %3, align 4
  %112 = call i32 @CPR_COEF_G(i32 %111)
  %113 = call i32 @RR(%struct.dispc_device* %110, i32 %112)
  %114 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %115 = load i32, i32* %3, align 4
  %116 = call i32 @CPR_COEF_B(i32 %115)
  %117 = call i32 @RR(%struct.dispc_device* %114, i32 %116)
  br label %118

118:                                              ; preds = %105, %72
  br label %119

119:                                              ; preds = %118, %71
  %120 = load i32, i32* %3, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %3, align 4
  br label %50

122:                                              ; preds = %50
  store i32 0, i32* %3, align 4
  br label %123

123:                                              ; preds = %333, %122
  %124 = load i32, i32* %3, align 4
  %125 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %126 = call i32 @dispc_get_num_ovls(%struct.dispc_device* %125)
  %127 = icmp slt i32 %124, %126
  br i1 %127, label %128, label %336

128:                                              ; preds = %123
  %129 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %130 = load i32, i32* %3, align 4
  %131 = call i32 @OVL_BA0(i32 %130)
  %132 = call i32 @RR(%struct.dispc_device* %129, i32 %131)
  %133 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %134 = load i32, i32* %3, align 4
  %135 = call i32 @OVL_BA1(i32 %134)
  %136 = call i32 @RR(%struct.dispc_device* %133, i32 %135)
  %137 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %138 = load i32, i32* %3, align 4
  %139 = call i32 @OVL_POSITION(i32 %138)
  %140 = call i32 @RR(%struct.dispc_device* %137, i32 %139)
  %141 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %142 = load i32, i32* %3, align 4
  %143 = call i32 @OVL_SIZE(i32 %142)
  %144 = call i32 @RR(%struct.dispc_device* %141, i32 %143)
  %145 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %146 = load i32, i32* %3, align 4
  %147 = call i32 @OVL_ATTRIBUTES(i32 %146)
  %148 = call i32 @RR(%struct.dispc_device* %145, i32 %147)
  %149 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %150 = load i32, i32* %3, align 4
  %151 = call i32 @OVL_FIFO_THRESHOLD(i32 %150)
  %152 = call i32 @RR(%struct.dispc_device* %149, i32 %151)
  %153 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %154 = load i32, i32* %3, align 4
  %155 = call i32 @OVL_ROW_INC(i32 %154)
  %156 = call i32 @RR(%struct.dispc_device* %153, i32 %155)
  %157 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %158 = load i32, i32* %3, align 4
  %159 = call i32 @OVL_PIXEL_INC(i32 %158)
  %160 = call i32 @RR(%struct.dispc_device* %157, i32 %159)
  %161 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %162 = load i32, i32* @FEAT_PRELOAD, align 4
  %163 = call i64 @dispc_has_feature(%struct.dispc_device* %161, i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %128
  %166 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %167 = load i32, i32* %3, align 4
  %168 = call i32 @OVL_PRELOAD(i32 %167)
  %169 = call i32 @RR(%struct.dispc_device* %166, i32 %168)
  br label %170

170:                                              ; preds = %165, %128
  %171 = load i32, i32* %3, align 4
  %172 = load i32, i32* @OMAP_DSS_GFX, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %174, label %183

174:                                              ; preds = %170
  %175 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %176 = load i32, i32* %3, align 4
  %177 = call i32 @OVL_WINDOW_SKIP(i32 %176)
  %178 = call i32 @RR(%struct.dispc_device* %175, i32 %177)
  %179 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %180 = load i32, i32* %3, align 4
  %181 = call i32 @OVL_TABLE_BA(i32 %180)
  %182 = call i32 @RR(%struct.dispc_device* %179, i32 %181)
  br label %333

183:                                              ; preds = %170
  %184 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %185 = load i32, i32* %3, align 4
  %186 = call i32 @OVL_FIR(i32 %185)
  %187 = call i32 @RR(%struct.dispc_device* %184, i32 %186)
  %188 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %189 = load i32, i32* %3, align 4
  %190 = call i32 @OVL_PICTURE_SIZE(i32 %189)
  %191 = call i32 @RR(%struct.dispc_device* %188, i32 %190)
  %192 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %193 = load i32, i32* %3, align 4
  %194 = call i32 @OVL_ACCU0(i32 %193)
  %195 = call i32 @RR(%struct.dispc_device* %192, i32 %194)
  %196 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %197 = load i32, i32* %3, align 4
  %198 = call i32 @OVL_ACCU1(i32 %197)
  %199 = call i32 @RR(%struct.dispc_device* %196, i32 %198)
  store i32 0, i32* %4, align 4
  br label %200

200:                                              ; preds = %209, %183
  %201 = load i32, i32* %4, align 4
  %202 = icmp slt i32 %201, 8
  br i1 %202, label %203, label %212

203:                                              ; preds = %200
  %204 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %205 = load i32, i32* %3, align 4
  %206 = load i32, i32* %4, align 4
  %207 = call i32 @OVL_FIR_COEF_H(i32 %205, i32 %206)
  %208 = call i32 @RR(%struct.dispc_device* %204, i32 %207)
  br label %209

209:                                              ; preds = %203
  %210 = load i32, i32* %4, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %4, align 4
  br label %200

212:                                              ; preds = %200
  store i32 0, i32* %4, align 4
  br label %213

213:                                              ; preds = %222, %212
  %214 = load i32, i32* %4, align 4
  %215 = icmp slt i32 %214, 8
  br i1 %215, label %216, label %225

216:                                              ; preds = %213
  %217 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %218 = load i32, i32* %3, align 4
  %219 = load i32, i32* %4, align 4
  %220 = call i32 @OVL_FIR_COEF_HV(i32 %218, i32 %219)
  %221 = call i32 @RR(%struct.dispc_device* %217, i32 %220)
  br label %222

222:                                              ; preds = %216
  %223 = load i32, i32* %4, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %4, align 4
  br label %213

225:                                              ; preds = %213
  store i32 0, i32* %4, align 4
  br label %226

226:                                              ; preds = %235, %225
  %227 = load i32, i32* %4, align 4
  %228 = icmp slt i32 %227, 5
  br i1 %228, label %229, label %238

229:                                              ; preds = %226
  %230 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %231 = load i32, i32* %3, align 4
  %232 = load i32, i32* %4, align 4
  %233 = call i32 @OVL_CONV_COEF(i32 %231, i32 %232)
  %234 = call i32 @RR(%struct.dispc_device* %230, i32 %233)
  br label %235

235:                                              ; preds = %229
  %236 = load i32, i32* %4, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %4, align 4
  br label %226

238:                                              ; preds = %226
  %239 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %240 = load i32, i32* @FEAT_FIR_COEF_V, align 4
  %241 = call i64 @dispc_has_feature(%struct.dispc_device* %239, i32 %240)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %257

243:                                              ; preds = %238
  store i32 0, i32* %4, align 4
  br label %244

244:                                              ; preds = %253, %243
  %245 = load i32, i32* %4, align 4
  %246 = icmp slt i32 %245, 8
  br i1 %246, label %247, label %256

247:                                              ; preds = %244
  %248 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %249 = load i32, i32* %3, align 4
  %250 = load i32, i32* %4, align 4
  %251 = call i32 @OVL_FIR_COEF_V(i32 %249, i32 %250)
  %252 = call i32 @RR(%struct.dispc_device* %248, i32 %251)
  br label %253

253:                                              ; preds = %247
  %254 = load i32, i32* %4, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %4, align 4
  br label %244

256:                                              ; preds = %244
  br label %257

257:                                              ; preds = %256, %238
  %258 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %259 = load i32, i32* @FEAT_HANDLE_UV_SEPARATE, align 4
  %260 = call i64 @dispc_has_feature(%struct.dispc_device* %258, i32 %259)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %322

262:                                              ; preds = %257
  %263 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %264 = load i32, i32* %3, align 4
  %265 = call i32 @OVL_BA0_UV(i32 %264)
  %266 = call i32 @RR(%struct.dispc_device* %263, i32 %265)
  %267 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %268 = load i32, i32* %3, align 4
  %269 = call i32 @OVL_BA1_UV(i32 %268)
  %270 = call i32 @RR(%struct.dispc_device* %267, i32 %269)
  %271 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %272 = load i32, i32* %3, align 4
  %273 = call i32 @OVL_FIR2(i32 %272)
  %274 = call i32 @RR(%struct.dispc_device* %271, i32 %273)
  %275 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %276 = load i32, i32* %3, align 4
  %277 = call i32 @OVL_ACCU2_0(i32 %276)
  %278 = call i32 @RR(%struct.dispc_device* %275, i32 %277)
  %279 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %280 = load i32, i32* %3, align 4
  %281 = call i32 @OVL_ACCU2_1(i32 %280)
  %282 = call i32 @RR(%struct.dispc_device* %279, i32 %281)
  store i32 0, i32* %4, align 4
  br label %283

283:                                              ; preds = %292, %262
  %284 = load i32, i32* %4, align 4
  %285 = icmp slt i32 %284, 8
  br i1 %285, label %286, label %295

286:                                              ; preds = %283
  %287 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %288 = load i32, i32* %3, align 4
  %289 = load i32, i32* %4, align 4
  %290 = call i32 @OVL_FIR_COEF_H2(i32 %288, i32 %289)
  %291 = call i32 @RR(%struct.dispc_device* %287, i32 %290)
  br label %292

292:                                              ; preds = %286
  %293 = load i32, i32* %4, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %4, align 4
  br label %283

295:                                              ; preds = %283
  store i32 0, i32* %4, align 4
  br label %296

296:                                              ; preds = %305, %295
  %297 = load i32, i32* %4, align 4
  %298 = icmp slt i32 %297, 8
  br i1 %298, label %299, label %308

299:                                              ; preds = %296
  %300 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %301 = load i32, i32* %3, align 4
  %302 = load i32, i32* %4, align 4
  %303 = call i32 @OVL_FIR_COEF_HV2(i32 %301, i32 %302)
  %304 = call i32 @RR(%struct.dispc_device* %300, i32 %303)
  br label %305

305:                                              ; preds = %299
  %306 = load i32, i32* %4, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %4, align 4
  br label %296

308:                                              ; preds = %296
  store i32 0, i32* %4, align 4
  br label %309

309:                                              ; preds = %318, %308
  %310 = load i32, i32* %4, align 4
  %311 = icmp slt i32 %310, 8
  br i1 %311, label %312, label %321

312:                                              ; preds = %309
  %313 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %314 = load i32, i32* %3, align 4
  %315 = load i32, i32* %4, align 4
  %316 = call i32 @OVL_FIR_COEF_V2(i32 %314, i32 %315)
  %317 = call i32 @RR(%struct.dispc_device* %313, i32 %316)
  br label %318

318:                                              ; preds = %312
  %319 = load i32, i32* %4, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %4, align 4
  br label %309

321:                                              ; preds = %309
  br label %322

322:                                              ; preds = %321, %257
  %323 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %324 = load i32, i32* @FEAT_ATTR2, align 4
  %325 = call i64 @dispc_has_feature(%struct.dispc_device* %323, i32 %324)
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %327, label %332

327:                                              ; preds = %322
  %328 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %329 = load i32, i32* %3, align 4
  %330 = call i32 @OVL_ATTRIBUTES2(i32 %329)
  %331 = call i32 @RR(%struct.dispc_device* %328, i32 %330)
  br label %332

332:                                              ; preds = %327, %322
  br label %333

333:                                              ; preds = %332, %174
  %334 = load i32, i32* %3, align 4
  %335 = add nsw i32 %334, 1
  store i32 %335, i32* %3, align 4
  br label %123

336:                                              ; preds = %123
  %337 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %338 = load i32, i32* @FEAT_CORE_CLK_DIV, align 4
  %339 = call i64 @dispc_has_feature(%struct.dispc_device* %337, i32 %338)
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %341, label %345

341:                                              ; preds = %336
  %342 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %343 = load i32, i32* @DIVISOR, align 4
  %344 = call i32 @RR(%struct.dispc_device* %342, i32 %343)
  br label %345

345:                                              ; preds = %341, %336
  %346 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %347 = load i32, i32* @CONTROL, align 4
  %348 = call i32 @RR(%struct.dispc_device* %346, i32 %347)
  %349 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %350 = load i32, i32* @FEAT_MGR_LCD2, align 4
  %351 = call i64 @dispc_has_feature(%struct.dispc_device* %349, i32 %350)
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %353, label %357

353:                                              ; preds = %345
  %354 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %355 = load i32, i32* @CONTROL2, align 4
  %356 = call i32 @RR(%struct.dispc_device* %354, i32 %355)
  br label %357

357:                                              ; preds = %353, %345
  %358 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %359 = load i32, i32* @FEAT_MGR_LCD3, align 4
  %360 = call i64 @dispc_has_feature(%struct.dispc_device* %358, i32 %359)
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %362, label %366

362:                                              ; preds = %357
  %363 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %364 = load i32, i32* @CONTROL3, align 4
  %365 = call i32 @RR(%struct.dispc_device* %363, i32 %364)
  br label %366

366:                                              ; preds = %362, %357
  %367 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %368 = load i32, i32* @DISPC_IRQ_SYNC_LOST_DIGIT, align 4
  %369 = call i32 @dispc_clear_irqstatus(%struct.dispc_device* %367, i32 %368)
  %370 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %371 = load i32, i32* @IRQENABLE, align 4
  %372 = call i32 @RR(%struct.dispc_device* %370, i32 %371)
  %373 = call i32 @DSSDBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %374

374:                                              ; preds = %366, %10
  ret void
}

declare dso_local i32 @DSSDBG(i8*) #1

declare dso_local i32 @RR(%struct.dispc_device*, i32) #1

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

declare dso_local i32 @dispc_clear_irqstatus(%struct.dispc_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

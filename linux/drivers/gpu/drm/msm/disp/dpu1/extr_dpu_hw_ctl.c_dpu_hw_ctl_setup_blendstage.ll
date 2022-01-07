; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_ctl.c_dpu_hw_ctl_setup_blendstage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_ctl.c_dpu_hw_ctl_setup_blendstage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_hw_ctl = type { %struct.TYPE_2__*, i32, %struct.dpu_hw_blk_reg_map }
%struct.TYPE_2__ = type { i32 }
%struct.dpu_hw_blk_reg_map = type { i32 }
%struct.dpu_hw_stage_cfg = type { i32**, i32** }

@DPU_MIXER_SOURCESPLIT = common dso_local global i32 0, align 4
@PIPES_PER_STAGE = common dso_local global i32 0, align 4
@CTL_MIXER_BORDER_OUT = common dso_local global i32 0, align 4
@DPU_SSPP_RECT_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpu_hw_ctl*, i32, %struct.dpu_hw_stage_cfg*)* @dpu_hw_ctl_setup_blendstage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpu_hw_ctl_setup_blendstage(%struct.dpu_hw_ctl* %0, i32 %1, %struct.dpu_hw_stage_cfg* %2) #0 {
  %4 = alloca %struct.dpu_hw_ctl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dpu_hw_stage_cfg*, align 8
  %7 = alloca %struct.dpu_hw_blk_reg_map*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.dpu_hw_ctl* %0, %struct.dpu_hw_ctl** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.dpu_hw_stage_cfg* %2, %struct.dpu_hw_stage_cfg** %6, align 8
  %19 = load %struct.dpu_hw_ctl*, %struct.dpu_hw_ctl** %4, align 8
  %20 = getelementptr inbounds %struct.dpu_hw_ctl, %struct.dpu_hw_ctl* %19, i32 0, i32 2
  store %struct.dpu_hw_blk_reg_map* %20, %struct.dpu_hw_blk_reg_map** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %21 = load %struct.dpu_hw_ctl*, %struct.dpu_hw_ctl** %4, align 8
  %22 = getelementptr inbounds %struct.dpu_hw_ctl, %struct.dpu_hw_ctl* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load %struct.dpu_hw_ctl*, %struct.dpu_hw_ctl** %4, align 8
  %25 = getelementptr inbounds %struct.dpu_hw_ctl, %struct.dpu_hw_ctl* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @_mixer_stages(%struct.TYPE_2__* %23, i32 %26, i32 %27)
  store i32 %28, i32* %16, align 4
  %29 = load i32, i32* %16, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %3
  br label %338

32:                                               ; preds = %3
  %33 = load i32, i32* @DPU_MIXER_SOURCESPLIT, align 4
  %34 = load %struct.dpu_hw_ctl*, %struct.dpu_hw_ctl** %4, align 8
  %35 = getelementptr inbounds %struct.dpu_hw_ctl, %struct.dpu_hw_ctl* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i64 @test_bit(i32 %33, i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* @PIPES_PER_STAGE, align 4
  store i32 %41, i32* %17, align 4
  br label %43

42:                                               ; preds = %32
  store i32 1, i32* %17, align 4
  br label %43

43:                                               ; preds = %42, %40
  %44 = load i32, i32* @CTL_MIXER_BORDER_OUT, align 4
  store i32 %44, i32* %8, align 4
  %45 = load %struct.dpu_hw_stage_cfg*, %struct.dpu_hw_stage_cfg** %6, align 8
  %46 = icmp ne %struct.dpu_hw_stage_cfg* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  br label %317

48:                                               ; preds = %43
  store i32 0, i32* %14, align 4
  br label %49

49:                                               ; preds = %313, %48
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %16, align 4
  %52 = icmp sle i32 %50, %51
  br i1 %52, label %53, label %316

53:                                               ; preds = %49
  %54 = load i32, i32* %14, align 4
  %55 = add nsw i32 %54, 1
  %56 = and i32 %55, 7
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %14, align 4
  %58 = icmp sge i32 %57, 7
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %11, align 4
  store i32 0, i32* %15, align 4
  br label %60

60:                                               ; preds = %309, %53
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* %17, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %312

64:                                               ; preds = %60
  %65 = load %struct.dpu_hw_stage_cfg*, %struct.dpu_hw_stage_cfg** %6, align 8
  %66 = getelementptr inbounds %struct.dpu_hw_stage_cfg, %struct.dpu_hw_stage_cfg* %65, i32 0, i32 0
  %67 = load i32**, i32*** %66, align 8
  %68 = load i32, i32* %14, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32*, i32** %67, i64 %69
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %15, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %18, align 4
  %76 = load %struct.dpu_hw_stage_cfg*, %struct.dpu_hw_stage_cfg** %6, align 8
  %77 = getelementptr inbounds %struct.dpu_hw_stage_cfg, %struct.dpu_hw_stage_cfg* %76, i32 0, i32 1
  %78 = load i32**, i32*** %77, align 8
  %79 = load i32, i32* %14, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32*, i32** %78, i64 %80
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %15, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  switch i32 %86, label %307 [
    i32 131, label %87
    i32 130, label %108
    i32 129, label %129
    i32 128, label %150
    i32 135, label %171
    i32 134, label %180
    i32 133, label %189
    i32 132, label %198
    i32 139, label %207
    i32 138, label %228
    i32 137, label %249
    i32 136, label %271
    i32 141, label %293
    i32 140, label %300
  ]

87:                                               ; preds = %64
  %88 = load i32, i32* %18, align 4
  %89 = load i32, i32* @DPU_SSPP_RECT_1, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %87
  %92 = load i32, i32* %14, align 4
  %93 = add nsw i32 %92, 1
  %94 = and i32 %93, 15
  %95 = shl i32 %94, 0
  %96 = load i32, i32* %13, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %13, align 4
  br label %107

98:                                               ; preds = %87
  %99 = load i32, i32* %10, align 4
  %100 = shl i32 %99, 0
  %101 = load i32, i32* %8, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %11, align 4
  %104 = shl i32 %103, 0
  %105 = load i32, i32* %9, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %9, align 4
  br label %107

107:                                              ; preds = %98, %91
  br label %308

108:                                              ; preds = %64
  %109 = load i32, i32* %18, align 4
  %110 = load i32, i32* @DPU_SSPP_RECT_1, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %119

112:                                              ; preds = %108
  %113 = load i32, i32* %14, align 4
  %114 = add nsw i32 %113, 1
  %115 = and i32 %114, 15
  %116 = shl i32 %115, 4
  %117 = load i32, i32* %13, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %13, align 4
  br label %128

119:                                              ; preds = %108
  %120 = load i32, i32* %10, align 4
  %121 = shl i32 %120, 3
  %122 = load i32, i32* %8, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %8, align 4
  %124 = load i32, i32* %11, align 4
  %125 = shl i32 %124, 2
  %126 = load i32, i32* %9, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %9, align 4
  br label %128

128:                                              ; preds = %119, %112
  br label %308

129:                                              ; preds = %64
  %130 = load i32, i32* %18, align 4
  %131 = load i32, i32* @DPU_SSPP_RECT_1, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %140

133:                                              ; preds = %129
  %134 = load i32, i32* %14, align 4
  %135 = add nsw i32 %134, 1
  %136 = and i32 %135, 15
  %137 = shl i32 %136, 8
  %138 = load i32, i32* %13, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %13, align 4
  br label %149

140:                                              ; preds = %129
  %141 = load i32, i32* %10, align 4
  %142 = shl i32 %141, 6
  %143 = load i32, i32* %8, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %8, align 4
  %145 = load i32, i32* %11, align 4
  %146 = shl i32 %145, 4
  %147 = load i32, i32* %9, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %9, align 4
  br label %149

149:                                              ; preds = %140, %133
  br label %308

150:                                              ; preds = %64
  %151 = load i32, i32* %18, align 4
  %152 = load i32, i32* @DPU_SSPP_RECT_1, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %161

154:                                              ; preds = %150
  %155 = load i32, i32* %14, align 4
  %156 = add nsw i32 %155, 1
  %157 = and i32 %156, 15
  %158 = shl i32 %157, 12
  %159 = load i32, i32* %13, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %13, align 4
  br label %170

161:                                              ; preds = %150
  %162 = load i32, i32* %10, align 4
  %163 = shl i32 %162, 26
  %164 = load i32, i32* %8, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %8, align 4
  %166 = load i32, i32* %11, align 4
  %167 = shl i32 %166, 6
  %168 = load i32, i32* %9, align 4
  %169 = or i32 %168, %167
  store i32 %169, i32* %9, align 4
  br label %170

170:                                              ; preds = %161, %154
  br label %308

171:                                              ; preds = %64
  %172 = load i32, i32* %10, align 4
  %173 = shl i32 %172, 9
  %174 = load i32, i32* %8, align 4
  %175 = or i32 %174, %173
  store i32 %175, i32* %8, align 4
  %176 = load i32, i32* %11, align 4
  %177 = shl i32 %176, 8
  %178 = load i32, i32* %9, align 4
  %179 = or i32 %178, %177
  store i32 %179, i32* %9, align 4
  br label %308

180:                                              ; preds = %64
  %181 = load i32, i32* %10, align 4
  %182 = shl i32 %181, 12
  %183 = load i32, i32* %8, align 4
  %184 = or i32 %183, %182
  store i32 %184, i32* %8, align 4
  %185 = load i32, i32* %11, align 4
  %186 = shl i32 %185, 10
  %187 = load i32, i32* %9, align 4
  %188 = or i32 %187, %186
  store i32 %188, i32* %9, align 4
  br label %308

189:                                              ; preds = %64
  %190 = load i32, i32* %10, align 4
  %191 = shl i32 %190, 15
  %192 = load i32, i32* %8, align 4
  %193 = or i32 %192, %191
  store i32 %193, i32* %8, align 4
  %194 = load i32, i32* %11, align 4
  %195 = shl i32 %194, 12
  %196 = load i32, i32* %9, align 4
  %197 = or i32 %196, %195
  store i32 %197, i32* %9, align 4
  br label %308

198:                                              ; preds = %64
  %199 = load i32, i32* %10, align 4
  %200 = shl i32 %199, 29
  %201 = load i32, i32* %8, align 4
  %202 = or i32 %201, %200
  store i32 %202, i32* %8, align 4
  %203 = load i32, i32* %11, align 4
  %204 = shl i32 %203, 14
  %205 = load i32, i32* %9, align 4
  %206 = or i32 %205, %204
  store i32 %206, i32* %9, align 4
  br label %308

207:                                              ; preds = %64
  %208 = load i32, i32* %18, align 4
  %209 = load i32, i32* @DPU_SSPP_RECT_1, align 4
  %210 = icmp eq i32 %208, %209
  br i1 %210, label %211, label %218

211:                                              ; preds = %207
  %212 = load i32, i32* %14, align 4
  %213 = add nsw i32 %212, 1
  %214 = and i32 %213, 15
  %215 = shl i32 %214, 8
  %216 = load i32, i32* %12, align 4
  %217 = or i32 %216, %215
  store i32 %217, i32* %12, align 4
  br label %227

218:                                              ; preds = %207
  %219 = load i32, i32* %10, align 4
  %220 = shl i32 %219, 18
  %221 = load i32, i32* %8, align 4
  %222 = or i32 %221, %220
  store i32 %222, i32* %8, align 4
  %223 = load i32, i32* %11, align 4
  %224 = shl i32 %223, 16
  %225 = load i32, i32* %9, align 4
  %226 = or i32 %225, %224
  store i32 %226, i32* %9, align 4
  br label %227

227:                                              ; preds = %218, %211
  br label %308

228:                                              ; preds = %64
  %229 = load i32, i32* %18, align 4
  %230 = load i32, i32* @DPU_SSPP_RECT_1, align 4
  %231 = icmp eq i32 %229, %230
  br i1 %231, label %232, label %239

232:                                              ; preds = %228
  %233 = load i32, i32* %14, align 4
  %234 = add nsw i32 %233, 1
  %235 = and i32 %234, 15
  %236 = shl i32 %235, 12
  %237 = load i32, i32* %12, align 4
  %238 = or i32 %237, %236
  store i32 %238, i32* %12, align 4
  br label %248

239:                                              ; preds = %228
  %240 = load i32, i32* %10, align 4
  %241 = shl i32 %240, 21
  %242 = load i32, i32* %8, align 4
  %243 = or i32 %242, %241
  store i32 %243, i32* %8, align 4
  %244 = load i32, i32* %11, align 4
  %245 = shl i32 %244, 18
  %246 = load i32, i32* %9, align 4
  %247 = or i32 %246, %245
  store i32 %247, i32* %9, align 4
  br label %248

248:                                              ; preds = %239, %232
  br label %308

249:                                              ; preds = %64
  %250 = load i32, i32* %18, align 4
  %251 = load i32, i32* @DPU_SSPP_RECT_1, align 4
  %252 = icmp eq i32 %250, %251
  br i1 %252, label %253, label %260

253:                                              ; preds = %249
  %254 = load i32, i32* %14, align 4
  %255 = add nsw i32 %254, 1
  %256 = and i32 %255, 15
  %257 = shl i32 %256, 16
  %258 = load i32, i32* %12, align 4
  %259 = or i32 %258, %257
  store i32 %259, i32* %12, align 4
  br label %270

260:                                              ; preds = %249
  %261 = load i32, i32* %14, align 4
  %262 = add nsw i32 %261, 1
  %263 = and i32 %262, 15
  %264 = load i32, i32* %10, align 4
  %265 = or i32 %264, %263
  store i32 %265, i32* %10, align 4
  %266 = load i32, i32* %10, align 4
  %267 = shl i32 %266, 0
  %268 = load i32, i32* %12, align 4
  %269 = or i32 %268, %267
  store i32 %269, i32* %12, align 4
  br label %270

270:                                              ; preds = %260, %253
  br label %308

271:                                              ; preds = %64
  %272 = load i32, i32* %18, align 4
  %273 = load i32, i32* @DPU_SSPP_RECT_1, align 4
  %274 = icmp eq i32 %272, %273
  br i1 %274, label %275, label %282

275:                                              ; preds = %271
  %276 = load i32, i32* %14, align 4
  %277 = add nsw i32 %276, 1
  %278 = and i32 %277, 15
  %279 = shl i32 %278, 20
  %280 = load i32, i32* %12, align 4
  %281 = or i32 %280, %279
  store i32 %281, i32* %12, align 4
  br label %292

282:                                              ; preds = %271
  %283 = load i32, i32* %14, align 4
  %284 = add nsw i32 %283, 1
  %285 = and i32 %284, 15
  %286 = load i32, i32* %10, align 4
  %287 = or i32 %286, %285
  store i32 %287, i32* %10, align 4
  %288 = load i32, i32* %10, align 4
  %289 = shl i32 %288, 4
  %290 = load i32, i32* %12, align 4
  %291 = or i32 %290, %289
  store i32 %291, i32* %12, align 4
  br label %292

292:                                              ; preds = %282, %275
  br label %308

293:                                              ; preds = %64
  %294 = load i32, i32* %14, align 4
  %295 = add nsw i32 %294, 1
  %296 = and i32 %295, 15
  %297 = shl i32 %296, 20
  %298 = load i32, i32* %9, align 4
  %299 = or i32 %298, %297
  store i32 %299, i32* %9, align 4
  br label %308

300:                                              ; preds = %64
  %301 = load i32, i32* %14, align 4
  %302 = add nsw i32 %301, 1
  %303 = and i32 %302, 15
  %304 = shl i32 %303, 26
  %305 = load i32, i32* %9, align 4
  %306 = or i32 %305, %304
  store i32 %306, i32* %9, align 4
  br label %308

307:                                              ; preds = %64
  br label %308

308:                                              ; preds = %307, %300, %293, %292, %270, %248, %227, %198, %189, %180, %171, %170, %149, %128, %107
  br label %309

309:                                              ; preds = %308
  %310 = load i32, i32* %15, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %15, align 4
  br label %60

312:                                              ; preds = %60
  br label %313

313:                                              ; preds = %312
  %314 = load i32, i32* %14, align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %14, align 4
  br label %49

316:                                              ; preds = %49
  br label %317

317:                                              ; preds = %316, %47
  %318 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %7, align 8
  %319 = load i32, i32* %5, align 4
  %320 = call i32 @CTL_LAYER(i32 %319)
  %321 = load i32, i32* %8, align 4
  %322 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %318, i32 %320, i32 %321)
  %323 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %7, align 8
  %324 = load i32, i32* %5, align 4
  %325 = call i32 @CTL_LAYER_EXT(i32 %324)
  %326 = load i32, i32* %9, align 4
  %327 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %323, i32 %325, i32 %326)
  %328 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %7, align 8
  %329 = load i32, i32* %5, align 4
  %330 = call i32 @CTL_LAYER_EXT2(i32 %329)
  %331 = load i32, i32* %12, align 4
  %332 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %328, i32 %330, i32 %331)
  %333 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %7, align 8
  %334 = load i32, i32* %5, align 4
  %335 = call i32 @CTL_LAYER_EXT3(i32 %334)
  %336 = load i32, i32* %13, align 4
  %337 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %333, i32 %335, i32 %336)
  br label %338

338:                                              ; preds = %317, %31
  ret void
}

declare dso_local i32 @_mixer_stages(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map*, i32, i32) #1

declare dso_local i32 @CTL_LAYER(i32) #1

declare dso_local i32 @CTL_LAYER_EXT(i32) #1

declare dso_local i32 @CTL_LAYER_EXT2(i32) #1

declare dso_local i32 @CTL_LAYER_EXT3(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_util.c_dpu_hw_setup_scaler3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_util.c_dpu_hw_setup_scaler3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_hw_blk_reg_map = type { i32 }
%struct.dpu_hw_scaler3_cfg = type { i32, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32*, i32*, i32*, i32*, i32, i64, %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.dpu_format = type { i64 }

@QSEED3_PHASE_INIT = common dso_local global i32 0, align 4
@QSEED3_PHASE_INIT_Y_H = common dso_local global i32 0, align 4
@QSEED3_PHASE_INIT_Y_V = common dso_local global i32 0, align 4
@QSEED3_PHASE_INIT_UV_H = common dso_local global i32 0, align 4
@QSEED3_PHASE_INIT_UV_V = common dso_local global i32 0, align 4
@QSEED3_PHASE_STEP_Y_H = common dso_local global i32 0, align 4
@QSEED3_PHASE_STEP_Y_V = common dso_local global i32 0, align 4
@QSEED3_PHASE_STEP_UV_H = common dso_local global i32 0, align 4
@QSEED3_PHASE_STEP_UV_V = common dso_local global i32 0, align 4
@QSEED3_PRELOAD = common dso_local global i32 0, align 4
@QSEED3_SRC_SIZE_Y_RGB_A = common dso_local global i32 0, align 4
@QSEED3_SRC_SIZE_UV = common dso_local global i32 0, align 4
@QSEED3_DST_SIZE = common dso_local global i32 0, align 4
@QSEED3_OP_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dpu_hw_setup_scaler3(%struct.dpu_hw_blk_reg_map* %0, %struct.dpu_hw_scaler3_cfg* %1, i32 %2, i32 %3, %struct.dpu_format* %4) #0 {
  %6 = alloca %struct.dpu_hw_blk_reg_map*, align 8
  %7 = alloca %struct.dpu_hw_scaler3_cfg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dpu_format*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.dpu_hw_blk_reg_map* %0, %struct.dpu_hw_blk_reg_map** %6, align 8
  store %struct.dpu_hw_scaler3_cfg* %1, %struct.dpu_hw_scaler3_cfg** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.dpu_format* %4, %struct.dpu_format** %10, align 8
  store i32 0, i32* %11, align 4
  %17 = load %struct.dpu_hw_scaler3_cfg*, %struct.dpu_hw_scaler3_cfg** %7, align 8
  %18 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, %struct.dpu_hw_scaler3_cfg* %17, i32 0, i32 17
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %5
  br label %317

22:                                               ; preds = %5
  %23 = call i32 @BIT(i32 0)
  %24 = load i32, i32* %11, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %11, align 4
  %26 = load %struct.dpu_hw_scaler3_cfg*, %struct.dpu_hw_scaler3_cfg** %7, align 8
  %27 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, %struct.dpu_hw_scaler3_cfg* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, 3
  %30 = shl i32 %29, 16
  %31 = load i32, i32* %11, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %11, align 4
  %33 = load %struct.dpu_format*, %struct.dpu_format** %10, align 8
  %34 = icmp ne %struct.dpu_format* %33, null
  br i1 %34, label %35, label %50

35:                                               ; preds = %22
  %36 = load %struct.dpu_format*, %struct.dpu_format** %10, align 8
  %37 = call i64 @DPU_FORMAT_IS_YUV(%struct.dpu_format* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %35
  %40 = call i32 @BIT(i32 12)
  %41 = load i32, i32* %11, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %11, align 4
  %43 = load %struct.dpu_hw_scaler3_cfg*, %struct.dpu_hw_scaler3_cfg** %7, align 8
  %44 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, %struct.dpu_hw_scaler3_cfg* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 3
  %47 = shl i32 %46, 24
  %48 = load i32, i32* %11, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %11, align 4
  br label %50

50:                                               ; preds = %39, %35, %22
  %51 = load %struct.dpu_hw_scaler3_cfg*, %struct.dpu_hw_scaler3_cfg** %7, align 8
  %52 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, %struct.dpu_hw_scaler3_cfg* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = and i32 %53, 1
  %55 = shl i32 %54, 31
  %56 = load i32, i32* %11, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %11, align 4
  %58 = load %struct.dpu_hw_scaler3_cfg*, %struct.dpu_hw_scaler3_cfg** %7, align 8
  %59 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, %struct.dpu_hw_scaler3_cfg* %58, i32 0, i32 16
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %50
  %63 = call i32 @BIT(i32 4)
  br label %65

64:                                               ; preds = %50
  br label %65

65:                                               ; preds = %64, %62
  %66 = phi i32 [ %63, %62 ], [ 0, %64 ]
  %67 = load i32, i32* %11, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %11, align 4
  %69 = load %struct.dpu_hw_scaler3_cfg*, %struct.dpu_hw_scaler3_cfg** %7, align 8
  %70 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, %struct.dpu_hw_scaler3_cfg* %69, i32 0, i32 3
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, 127
  %75 = shl i32 %74, 0
  %76 = load %struct.dpu_hw_scaler3_cfg*, %struct.dpu_hw_scaler3_cfg** %7, align 8
  %77 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, %struct.dpu_hw_scaler3_cfg* %76, i32 0, i32 4
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, 127
  %82 = shl i32 %81, 8
  %83 = or i32 %75, %82
  %84 = load %struct.dpu_hw_scaler3_cfg*, %struct.dpu_hw_scaler3_cfg** %7, align 8
  %85 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, %struct.dpu_hw_scaler3_cfg* %84, i32 0, i32 3
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, 127
  %90 = shl i32 %89, 16
  %91 = or i32 %83, %90
  %92 = load %struct.dpu_hw_scaler3_cfg*, %struct.dpu_hw_scaler3_cfg** %7, align 8
  %93 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, %struct.dpu_hw_scaler3_cfg* %92, i32 0, i32 4
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, 127
  %98 = shl i32 %97, 24
  %99 = or i32 %91, %98
  store i32 %99, i32* %13, align 4
  %100 = load %struct.dpu_hw_scaler3_cfg*, %struct.dpu_hw_scaler3_cfg** %7, align 8
  %101 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, %struct.dpu_hw_scaler3_cfg* %100, i32 0, i32 5
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, 131071
  %106 = load %struct.dpu_hw_scaler3_cfg*, %struct.dpu_hw_scaler3_cfg** %7, align 8
  %107 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, %struct.dpu_hw_scaler3_cfg* %106, i32 0, i32 6
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  %110 = load i32, i32* %109, align 4
  %111 = and i32 %110, 131071
  %112 = shl i32 %111, 16
  %113 = or i32 %105, %112
  store i32 %113, i32* %14, align 4
  %114 = load %struct.dpu_hw_scaler3_cfg*, %struct.dpu_hw_scaler3_cfg** %7, align 8
  %115 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, %struct.dpu_hw_scaler3_cfg* %114, i32 0, i32 5
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 1
  %118 = load i32, i32* %117, align 4
  %119 = and i32 %118, 131071
  %120 = load %struct.dpu_hw_scaler3_cfg*, %struct.dpu_hw_scaler3_cfg** %7, align 8
  %121 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, %struct.dpu_hw_scaler3_cfg* %120, i32 0, i32 6
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 1
  %124 = load i32, i32* %123, align 4
  %125 = and i32 %124, 131071
  %126 = shl i32 %125, 16
  %127 = or i32 %119, %126
  store i32 %127, i32* %15, align 4
  %128 = load %struct.dpu_hw_scaler3_cfg*, %struct.dpu_hw_scaler3_cfg** %7, align 8
  %129 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, %struct.dpu_hw_scaler3_cfg* %128, i32 0, i32 7
  %130 = load i32, i32* %129, align 8
  %131 = and i32 %130, 131071
  %132 = load %struct.dpu_hw_scaler3_cfg*, %struct.dpu_hw_scaler3_cfg** %7, align 8
  %133 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, %struct.dpu_hw_scaler3_cfg* %132, i32 0, i32 8
  %134 = load i32, i32* %133, align 4
  %135 = and i32 %134, 131071
  %136 = shl i32 %135, 16
  %137 = or i32 %131, %136
  store i32 %137, i32* %16, align 4
  %138 = load %struct.dpu_hw_scaler3_cfg*, %struct.dpu_hw_scaler3_cfg** %7, align 8
  %139 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, %struct.dpu_hw_scaler3_cfg* %138, i32 0, i32 15
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %152

143:                                              ; preds = %65
  %144 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %6, align 8
  %145 = load %struct.dpu_hw_scaler3_cfg*, %struct.dpu_hw_scaler3_cfg** %7, align 8
  %146 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, %struct.dpu_hw_scaler3_cfg* %145, i32 0, i32 15
  %147 = load i32, i32* %8, align 4
  %148 = call i32 @_dpu_hw_setup_scaler3_de(%struct.dpu_hw_blk_reg_map* %144, %struct.TYPE_2__* %146, i32 %147)
  %149 = call i32 @BIT(i32 8)
  %150 = load i32, i32* %11, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %11, align 4
  br label %152

152:                                              ; preds = %143, %65
  %153 = load %struct.dpu_hw_scaler3_cfg*, %struct.dpu_hw_scaler3_cfg** %7, align 8
  %154 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, %struct.dpu_hw_scaler3_cfg* %153, i32 0, i32 14
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %152
  %158 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %6, align 8
  %159 = load %struct.dpu_hw_scaler3_cfg*, %struct.dpu_hw_scaler3_cfg** %7, align 8
  %160 = load i32, i32* %8, align 4
  %161 = call i32 @_dpu_hw_setup_scaler3_lut(%struct.dpu_hw_blk_reg_map* %158, %struct.dpu_hw_scaler3_cfg* %159, i32 %160)
  br label %162

162:                                              ; preds = %157, %152
  %163 = load i32, i32* %9, align 4
  %164 = icmp eq i32 %163, 4098
  br i1 %164, label %165, label %203

165:                                              ; preds = %162
  %166 = load %struct.dpu_hw_scaler3_cfg*, %struct.dpu_hw_scaler3_cfg** %7, align 8
  %167 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, %struct.dpu_hw_scaler3_cfg* %166, i32 0, i32 9
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 0
  %170 = load i32, i32* %169, align 4
  %171 = and i32 %170, 63
  %172 = shl i32 %171, 0
  %173 = load %struct.dpu_hw_scaler3_cfg*, %struct.dpu_hw_scaler3_cfg** %7, align 8
  %174 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, %struct.dpu_hw_scaler3_cfg* %173, i32 0, i32 10
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 0
  %177 = load i32, i32* %176, align 4
  %178 = and i32 %177, 63
  %179 = shl i32 %178, 8
  %180 = or i32 %172, %179
  %181 = load %struct.dpu_hw_scaler3_cfg*, %struct.dpu_hw_scaler3_cfg** %7, align 8
  %182 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, %struct.dpu_hw_scaler3_cfg* %181, i32 0, i32 9
  %183 = load i32*, i32** %182, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 1
  %185 = load i32, i32* %184, align 4
  %186 = and i32 %185, 63
  %187 = shl i32 %186, 16
  %188 = or i32 %180, %187
  %189 = load %struct.dpu_hw_scaler3_cfg*, %struct.dpu_hw_scaler3_cfg** %7, align 8
  %190 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, %struct.dpu_hw_scaler3_cfg* %189, i32 0, i32 10
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 1
  %193 = load i32, i32* %192, align 4
  %194 = and i32 %193, 63
  %195 = shl i32 %194, 24
  %196 = or i32 %188, %195
  store i32 %196, i32* %12, align 4
  %197 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %6, align 8
  %198 = load i32, i32* @QSEED3_PHASE_INIT, align 4
  %199 = load i32, i32* %8, align 4
  %200 = add nsw i32 %198, %199
  %201 = load i32, i32* %12, align 4
  %202 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %197, i32 %200, i32 %201)
  br label %248

203:                                              ; preds = %162
  %204 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %6, align 8
  %205 = load i32, i32* @QSEED3_PHASE_INIT_Y_H, align 4
  %206 = load i32, i32* %8, align 4
  %207 = add nsw i32 %205, %206
  %208 = load %struct.dpu_hw_scaler3_cfg*, %struct.dpu_hw_scaler3_cfg** %7, align 8
  %209 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, %struct.dpu_hw_scaler3_cfg* %208, i32 0, i32 9
  %210 = load i32*, i32** %209, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 0
  %212 = load i32, i32* %211, align 4
  %213 = and i32 %212, 2097151
  %214 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %204, i32 %207, i32 %213)
  %215 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %6, align 8
  %216 = load i32, i32* @QSEED3_PHASE_INIT_Y_V, align 4
  %217 = load i32, i32* %8, align 4
  %218 = add nsw i32 %216, %217
  %219 = load %struct.dpu_hw_scaler3_cfg*, %struct.dpu_hw_scaler3_cfg** %7, align 8
  %220 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, %struct.dpu_hw_scaler3_cfg* %219, i32 0, i32 10
  %221 = load i32*, i32** %220, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 0
  %223 = load i32, i32* %222, align 4
  %224 = and i32 %223, 2097151
  %225 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %215, i32 %218, i32 %224)
  %226 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %6, align 8
  %227 = load i32, i32* @QSEED3_PHASE_INIT_UV_H, align 4
  %228 = load i32, i32* %8, align 4
  %229 = add nsw i32 %227, %228
  %230 = load %struct.dpu_hw_scaler3_cfg*, %struct.dpu_hw_scaler3_cfg** %7, align 8
  %231 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, %struct.dpu_hw_scaler3_cfg* %230, i32 0, i32 9
  %232 = load i32*, i32** %231, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 1
  %234 = load i32, i32* %233, align 4
  %235 = and i32 %234, 2097151
  %236 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %226, i32 %229, i32 %235)
  %237 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %6, align 8
  %238 = load i32, i32* @QSEED3_PHASE_INIT_UV_V, align 4
  %239 = load i32, i32* %8, align 4
  %240 = add nsw i32 %238, %239
  %241 = load %struct.dpu_hw_scaler3_cfg*, %struct.dpu_hw_scaler3_cfg** %7, align 8
  %242 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, %struct.dpu_hw_scaler3_cfg* %241, i32 0, i32 10
  %243 = load i32*, i32** %242, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 1
  %245 = load i32, i32* %244, align 4
  %246 = and i32 %245, 2097151
  %247 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %237, i32 %240, i32 %246)
  br label %248

248:                                              ; preds = %203, %165
  %249 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %6, align 8
  %250 = load i32, i32* @QSEED3_PHASE_STEP_Y_H, align 4
  %251 = load i32, i32* %8, align 4
  %252 = add nsw i32 %250, %251
  %253 = load %struct.dpu_hw_scaler3_cfg*, %struct.dpu_hw_scaler3_cfg** %7, align 8
  %254 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, %struct.dpu_hw_scaler3_cfg* %253, i32 0, i32 11
  %255 = load i32*, i32** %254, align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 0
  %257 = load i32, i32* %256, align 4
  %258 = and i32 %257, 16777215
  %259 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %249, i32 %252, i32 %258)
  %260 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %6, align 8
  %261 = load i32, i32* @QSEED3_PHASE_STEP_Y_V, align 4
  %262 = load i32, i32* %8, align 4
  %263 = add nsw i32 %261, %262
  %264 = load %struct.dpu_hw_scaler3_cfg*, %struct.dpu_hw_scaler3_cfg** %7, align 8
  %265 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, %struct.dpu_hw_scaler3_cfg* %264, i32 0, i32 12
  %266 = load i32*, i32** %265, align 8
  %267 = getelementptr inbounds i32, i32* %266, i64 0
  %268 = load i32, i32* %267, align 4
  %269 = and i32 %268, 16777215
  %270 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %260, i32 %263, i32 %269)
  %271 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %6, align 8
  %272 = load i32, i32* @QSEED3_PHASE_STEP_UV_H, align 4
  %273 = load i32, i32* %8, align 4
  %274 = add nsw i32 %272, %273
  %275 = load %struct.dpu_hw_scaler3_cfg*, %struct.dpu_hw_scaler3_cfg** %7, align 8
  %276 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, %struct.dpu_hw_scaler3_cfg* %275, i32 0, i32 11
  %277 = load i32*, i32** %276, align 8
  %278 = getelementptr inbounds i32, i32* %277, i64 1
  %279 = load i32, i32* %278, align 4
  %280 = and i32 %279, 16777215
  %281 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %271, i32 %274, i32 %280)
  %282 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %6, align 8
  %283 = load i32, i32* @QSEED3_PHASE_STEP_UV_V, align 4
  %284 = load i32, i32* %8, align 4
  %285 = add nsw i32 %283, %284
  %286 = load %struct.dpu_hw_scaler3_cfg*, %struct.dpu_hw_scaler3_cfg** %7, align 8
  %287 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, %struct.dpu_hw_scaler3_cfg* %286, i32 0, i32 12
  %288 = load i32*, i32** %287, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 1
  %290 = load i32, i32* %289, align 4
  %291 = and i32 %290, 16777215
  %292 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %282, i32 %285, i32 %291)
  %293 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %6, align 8
  %294 = load i32, i32* @QSEED3_PRELOAD, align 4
  %295 = load i32, i32* %8, align 4
  %296 = add nsw i32 %294, %295
  %297 = load i32, i32* %13, align 4
  %298 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %293, i32 %296, i32 %297)
  %299 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %6, align 8
  %300 = load i32, i32* @QSEED3_SRC_SIZE_Y_RGB_A, align 4
  %301 = load i32, i32* %8, align 4
  %302 = add nsw i32 %300, %301
  %303 = load i32, i32* %14, align 4
  %304 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %299, i32 %302, i32 %303)
  %305 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %6, align 8
  %306 = load i32, i32* @QSEED3_SRC_SIZE_UV, align 4
  %307 = load i32, i32* %8, align 4
  %308 = add nsw i32 %306, %307
  %309 = load i32, i32* %15, align 4
  %310 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %305, i32 %308, i32 %309)
  %311 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %6, align 8
  %312 = load i32, i32* @QSEED3_DST_SIZE, align 4
  %313 = load i32, i32* %8, align 4
  %314 = add nsw i32 %312, %313
  %315 = load i32, i32* %16, align 4
  %316 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %311, i32 %314, i32 %315)
  br label %317

317:                                              ; preds = %248, %21
  %318 = load %struct.dpu_format*, %struct.dpu_format** %10, align 8
  %319 = icmp ne %struct.dpu_format* %318, null
  br i1 %319, label %320, label %328

320:                                              ; preds = %317
  %321 = load %struct.dpu_format*, %struct.dpu_format** %10, align 8
  %322 = call i32 @DPU_FORMAT_IS_DX(%struct.dpu_format* %321)
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %328, label %324

324:                                              ; preds = %320
  %325 = call i32 @BIT(i32 14)
  %326 = load i32, i32* %11, align 4
  %327 = or i32 %326, %325
  store i32 %327, i32* %11, align 4
  br label %328

328:                                              ; preds = %324, %320, %317
  %329 = load %struct.dpu_format*, %struct.dpu_format** %10, align 8
  %330 = icmp ne %struct.dpu_format* %329, null
  br i1 %330, label %331, label %359

331:                                              ; preds = %328
  %332 = load %struct.dpu_format*, %struct.dpu_format** %10, align 8
  %333 = getelementptr inbounds %struct.dpu_format, %struct.dpu_format* %332, i32 0, i32 0
  %334 = load i64, i64* %333, align 8
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %336, label %359

336:                                              ; preds = %331
  %337 = call i32 @BIT(i32 10)
  %338 = load i32, i32* %11, align 4
  %339 = or i32 %338, %337
  store i32 %339, i32* %11, align 4
  %340 = load i32, i32* %9, align 4
  %341 = icmp eq i32 %340, 4098
  br i1 %341, label %342, label %350

342:                                              ; preds = %336
  %343 = load %struct.dpu_hw_scaler3_cfg*, %struct.dpu_hw_scaler3_cfg** %7, align 8
  %344 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, %struct.dpu_hw_scaler3_cfg* %343, i32 0, i32 13
  %345 = load i32, i32* %344, align 8
  %346 = and i32 %345, 1
  %347 = shl i32 %346, 30
  %348 = load i32, i32* %11, align 4
  %349 = or i32 %348, %347
  store i32 %349, i32* %11, align 4
  br label %358

350:                                              ; preds = %336
  %351 = load %struct.dpu_hw_scaler3_cfg*, %struct.dpu_hw_scaler3_cfg** %7, align 8
  %352 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, %struct.dpu_hw_scaler3_cfg* %351, i32 0, i32 13
  %353 = load i32, i32* %352, align 8
  %354 = and i32 %353, 3
  %355 = shl i32 %354, 29
  %356 = load i32, i32* %11, align 4
  %357 = or i32 %356, %355
  store i32 %357, i32* %11, align 4
  br label %358

358:                                              ; preds = %350, %342
  br label %359

359:                                              ; preds = %358, %331, %328
  %360 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %6, align 8
  %361 = load i32, i32* @QSEED3_OP_MODE, align 4
  %362 = load i32, i32* %8, align 4
  %363 = add nsw i32 %361, %362
  %364 = load i32, i32* %11, align 4
  %365 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %360, i32 %363, i32 %364)
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @DPU_FORMAT_IS_YUV(%struct.dpu_format*) #1

declare dso_local i32 @_dpu_hw_setup_scaler3_de(%struct.dpu_hw_blk_reg_map*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @_dpu_hw_setup_scaler3_lut(%struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_scaler3_cfg*, i32) #1

declare dso_local i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map*, i32, i32) #1

declare dso_local i32 @DPU_FORMAT_IS_DX(%struct.dpu_format*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

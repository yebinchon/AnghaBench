; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dml/dcn20/extr_display_mode_vba_20.c_CalculatePrefetchSchedule.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dml/dcn20/extr_display_mode_vba_20.c_CalculatePrefetchSchedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.display_mode_lib = type { i32 }

@dm_420 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"DML: VStartup: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"DML: TCalc: %f\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"DML: TWait: %f\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"DML: XFCRemoteSurfaceFlipDelay: %f\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"DML: LineTime: %f\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"DML: Tsetup: %f\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"DML: Tdm: %f\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"DML: DSTYAfterScaler: %f\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"DML: DSTXAfterScaler: %f\0A\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"DML: HTotal: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.display_mode_lib*, double, double, double, double, i32, i32, i32, i32, double, double, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, i32, i32, i32, double, i32, double, double, i32, double, double, double, i32, i32, i32, double, i32, double, i32, i32, double*, double*, double*, double*, double*, double*, double*, double*, double*, i32*, double*, i32*, double*, double*)* @CalculatePrefetchSchedule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CalculatePrefetchSchedule(%struct.display_mode_lib* %0, double %1, double %2, double %3, double %4, i32 %5, i32 %6, i32 %7, i32 %8, double %9, double %10, double %11, double %12, double %13, double %14, i32 %15, i32 %16, i32 %17, i32 %18, i32 %19, i32 %20, i32 %21, i32 %22, i32 %23, i32 %24, i32 %25, i32 %26, double %27, double %28, double %29, i32 %30, i32 %31, i32 %32, double %33, i32 %34, double %35, double %36, i32 %37, double %38, double %39, double %40, i32 %41, i32 %42, i32 %43, double %44, i32 %45, double %46, i32 %47, i32 %48, double* %49, double* %50, double* %51, double* %52, double* %53, double* %54, double* %55, double* %56, double* %57, i32* %58, double* %59, i32* %60, double* %61, double* %62) #0 {
  %64 = alloca i32, align 4
  %65 = alloca %struct.display_mode_lib*, align 8
  %66 = alloca double, align 8
  %67 = alloca double, align 8
  %68 = alloca double, align 8
  %69 = alloca double, align 8
  %70 = alloca i32, align 4
  %71 = alloca i32, align 4
  %72 = alloca i32, align 4
  %73 = alloca i32, align 4
  %74 = alloca double, align 8
  %75 = alloca double, align 8
  %76 = alloca double, align 8
  %77 = alloca double, align 8
  %78 = alloca double, align 8
  %79 = alloca double, align 8
  %80 = alloca i32, align 4
  %81 = alloca i32, align 4
  %82 = alloca i32, align 4
  %83 = alloca i32, align 4
  %84 = alloca i32, align 4
  %85 = alloca i32, align 4
  %86 = alloca i32, align 4
  %87 = alloca i32, align 4
  %88 = alloca i32, align 4
  %89 = alloca i32, align 4
  %90 = alloca i32, align 4
  %91 = alloca i32, align 4
  %92 = alloca double, align 8
  %93 = alloca double, align 8
  %94 = alloca double, align 8
  %95 = alloca i32, align 4
  %96 = alloca i32, align 4
  %97 = alloca i32, align 4
  %98 = alloca double, align 8
  %99 = alloca i32, align 4
  %100 = alloca double, align 8
  %101 = alloca double, align 8
  %102 = alloca i32, align 4
  %103 = alloca double, align 8
  %104 = alloca double, align 8
  %105 = alloca double, align 8
  %106 = alloca i32, align 4
  %107 = alloca i32, align 4
  %108 = alloca i32, align 4
  %109 = alloca double, align 8
  %110 = alloca i32, align 4
  %111 = alloca double, align 8
  %112 = alloca i32, align 4
  %113 = alloca i32, align 4
  %114 = alloca double*, align 8
  %115 = alloca double*, align 8
  %116 = alloca double*, align 8
  %117 = alloca double*, align 8
  %118 = alloca double*, align 8
  %119 = alloca double*, align 8
  %120 = alloca double*, align 8
  %121 = alloca double*, align 8
  %122 = alloca double*, align 8
  %123 = alloca i32*, align 8
  %124 = alloca double*, align 8
  %125 = alloca i32*, align 8
  %126 = alloca double*, align 8
  %127 = alloca double*, align 8
  %128 = alloca i32, align 4
  %129 = alloca i32, align 4
  %130 = alloca i32, align 4
  %131 = alloca double, align 8
  %132 = alloca double, align 8
  %133 = alloca double, align 8
  %134 = alloca double, align 8
  %135 = alloca double, align 8
  %136 = alloca double, align 8
  %137 = alloca double, align 8
  %138 = alloca double, align 8
  %139 = alloca double, align 8
  %140 = alloca double, align 8
  %141 = alloca double, align 8
  %142 = alloca double, align 8
  %143 = alloca double, align 8
  %144 = alloca double, align 8
  %145 = alloca double, align 8
  %146 = alloca double, align 8
  %147 = alloca double, align 8
  %148 = alloca double, align 8
  store %struct.display_mode_lib* %0, %struct.display_mode_lib** %65, align 8
  store double %1, double* %66, align 8
  store double %2, double* %67, align 8
  store double %3, double* %68, align 8
  store double %4, double* %69, align 8
  store i32 %5, i32* %70, align 4
  store i32 %6, i32* %71, align 4
  store i32 %7, i32* %72, align 4
  store i32 %8, i32* %73, align 4
  store double %9, double* %74, align 8
  store double %10, double* %75, align 8
  store double %11, double* %76, align 8
  store double %12, double* %77, align 8
  store double %13, double* %78, align 8
  store double %14, double* %79, align 8
  store i32 %15, i32* %80, align 4
  store i32 %16, i32* %81, align 4
  store i32 %17, i32* %82, align 4
  store i32 %18, i32* %83, align 4
  store i32 %19, i32* %84, align 4
  store i32 %20, i32* %85, align 4
  store i32 %21, i32* %86, align 4
  store i32 %22, i32* %87, align 4
  store i32 %23, i32* %88, align 4
  store i32 %24, i32* %89, align 4
  store i32 %25, i32* %90, align 4
  store i32 %26, i32* %91, align 4
  store double %27, double* %92, align 8
  store double %28, double* %93, align 8
  store double %29, double* %94, align 8
  store i32 %30, i32* %95, align 4
  store i32 %31, i32* %96, align 4
  store i32 %32, i32* %97, align 4
  store double %33, double* %98, align 8
  store i32 %34, i32* %99, align 4
  store double %35, double* %100, align 8
  store double %36, double* %101, align 8
  store i32 %37, i32* %102, align 4
  store double %38, double* %103, align 8
  store double %39, double* %104, align 8
  store double %40, double* %105, align 8
  store i32 %41, i32* %106, align 4
  store i32 %42, i32* %107, align 4
  store i32 %43, i32* %108, align 4
  store double %44, double* %109, align 8
  store i32 %45, i32* %110, align 4
  store double %46, double* %111, align 8
  store i32 %47, i32* %112, align 4
  store i32 %48, i32* %113, align 4
  store double* %49, double** %114, align 8
  store double* %50, double** %115, align 8
  store double* %51, double** %116, align 8
  store double* %52, double** %117, align 8
  store double* %53, double** %118, align 8
  store double* %54, double** %119, align 8
  store double* %55, double** %120, align 8
  store double* %56, double** %121, align 8
  store double* %57, double** %122, align 8
  store i32* %58, i32** %123, align 8
  store double* %59, double** %124, align 8
  store i32* %60, i32** %125, align 8
  store double* %61, double** %126, align 8
  store double* %62, double** %127, align 8
  store i32 0, i32* %128, align 4
  store double 0.000000e+00, double* %143, align 8
  store double 0.000000e+00, double* %144, align 8
  store double 0.000000e+00, double* %145, align 8
  %149 = load i32, i32* %72, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %63
  %152 = load double, double* %74, align 8
  %153 = load double, double* %75, align 8
  %154 = fadd double %152, %153
  %155 = fptoui double %154 to i32
  store i32 %155, i32* %129, align 4
  br label %161

156:                                              ; preds = %63
  %157 = load double, double* %74, align 8
  %158 = load double, double* %76, align 8
  %159 = fadd double %157, %158
  %160 = fptoui double %159 to i32
  store i32 %160, i32* %129, align 4
  br label %161

161:                                              ; preds = %156, %151
  %162 = load i32, i32* %129, align 4
  %163 = uitofp i32 %162 to double
  %164 = load double, double* %77, align 8
  %165 = fadd double %163, %164
  %166 = load i32, i32* %73, align 4
  %167 = uitofp i32 %166 to double
  %168 = load double, double* %78, align 8
  %169 = fmul double %167, %168
  %170 = fadd double %165, %169
  %171 = fptoui double %170 to i32
  store i32 %171, i32* %129, align 4
  %172 = load double, double* %79, align 8
  %173 = fptoui double %172 to i32
  store i32 %173, i32* %130, align 4
  %174 = load double, double* %66, align 8
  %175 = fcmp oeq double %174, 0.000000e+00
  br i1 %175, label %179, label %176

176:                                              ; preds = %161
  %177 = load double, double* %67, align 8
  %178 = fcmp oeq double %177, 0.000000e+00
  br i1 %178, label %179, label %180

179:                                              ; preds = %176, %161
  store i32 1, i32* %64, align 4
  br label %838

180:                                              ; preds = %176
  %181 = load i32, i32* %129, align 4
  %182 = uitofp i32 %181 to double
  %183 = load double, double* %68, align 8
  %184 = fmul double %182, %183
  %185 = load double, double* %66, align 8
  %186 = fdiv double %184, %185
  %187 = load i32, i32* %130, align 4
  %188 = uitofp i32 %187 to double
  %189 = load double, double* %68, align 8
  %190 = fmul double %188, %189
  %191 = load double, double* %67, align 8
  %192 = fdiv double %190, %191
  %193 = fadd double %186, %192
  %194 = load i32, i32* %70, align 4
  %195 = uitofp i32 %194 to double
  %196 = fadd double %193, %195
  %197 = load double*, double** %114, align 8
  store double %196, double* %197, align 8
  %198 = load i32, i32* %71, align 4
  %199 = icmp ugt i32 %198, 1
  br i1 %199, label %200, label %207

200:                                              ; preds = %180
  %201 = load double*, double** %114, align 8
  %202 = load double, double* %201, align 8
  %203 = load i32, i32* %80, align 4
  %204 = uitofp i32 %203 to double
  %205 = fadd double %202, %204
  %206 = load double*, double** %114, align 8
  store double %205, double* %206, align 8
  br label %207

207:                                              ; preds = %200, %180
  %208 = load i32, i32* %81, align 4
  %209 = load i32, i32* @dm_420, align 4
  %210 = icmp eq i32 %208, %209
  br i1 %210, label %217, label %211

211:                                              ; preds = %207
  %212 = load i32, i32* %112, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %219

214:                                              ; preds = %211
  %215 = load i32, i32* %113, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %214, %207
  %218 = load double*, double** %115, align 8
  store double 1.000000e+00, double* %218, align 8
  br label %221

219:                                              ; preds = %214, %211
  %220 = load double*, double** %115, align 8
  store double 0.000000e+00, double* %220, align 8
  br label %221

221:                                              ; preds = %219, %217
  %222 = load double*, double** %115, align 8
  %223 = load double, double* %222, align 8
  %224 = load i32, i32* %83, align 4
  %225 = uitofp i32 %224 to double
  %226 = fmul double %223, %225
  %227 = load double*, double** %114, align 8
  %228 = load double, double* %227, align 8
  %229 = fadd double %226, %228
  store double %229, double* %131, align 8
  %230 = load double, double* %131, align 8
  %231 = load i32, i32* %83, align 4
  %232 = uitofp i32 %231 to double
  %233 = fdiv double %230, %232
  %234 = call double @dml_floor(double %233, i32 1)
  %235 = load double*, double** %115, align 8
  store double %234, double* %235, align 8
  %236 = load double, double* %131, align 8
  %237 = load double*, double** %115, align 8
  %238 = load double, double* %237, align 8
  %239 = load i32, i32* %83, align 4
  %240 = uitofp i32 %239 to double
  %241 = fmul double %238, %240
  %242 = fsub double %236, %241
  %243 = load double*, double** %114, align 8
  store double %242, double* %243, align 8
  %244 = load i32, i32* %83, align 4
  %245 = uitofp i32 %244 to double
  %246 = fdiv double %245, 4.000000e+00
  %247 = call double @dml_ceil(double %246, i32 1)
  %248 = fptoui double %247 to i32
  %249 = load i32*, i32** %125, align 8
  store i32 %248, i32* %249, align 4
  %250 = load i32, i32* %84, align 4
  %251 = uitofp i32 %250 to double
  %252 = load double, double* %66, align 8
  %253 = fdiv double 2.000000e+00, %252
  %254 = load double, double* %67, align 8
  %255 = fdiv double 3.000000e+00, %254
  %256 = fadd double %253, %255
  %257 = fmul double %251, %256
  store double %257, double* %132, align 8
  %258 = load double, double* %69, align 8
  %259 = fdiv double 1.400000e+01, %258
  %260 = load double, double* %66, align 8
  %261 = fdiv double 1.200000e+01, %260
  %262 = fadd double %259, %261
  %263 = load double, double* %132, align 8
  %264 = fadd double %262, %263
  %265 = load double, double* %68, align 8
  %266 = fmul double %264, %265
  %267 = load double*, double** %126, align 8
  store double %266, double* %267, align 8
  %268 = load double, double* %66, align 8
  %269 = fdiv double 1.500000e+02, %268
  %270 = load double, double* %132, align 8
  %271 = load double, double* %69, align 8
  %272 = fdiv double 2.000000e+01, %271
  %273 = fadd double %270, %272
  %274 = load double, double* %66, align 8
  %275 = fdiv double 1.000000e+01, %274
  %276 = fadd double %273, %275
  %277 = call double @dml_max(double %269, double %276)
  %278 = load double, double* %68, align 8
  %279 = fmul double %277, %278
  %280 = load double*, double** %127, align 8
  store double %279, double* %280, align 8
  %281 = load i32*, i32** %125, align 8
  %282 = load i32, i32* %281, align 4
  %283 = uitofp i32 %282 to double
  %284 = load double*, double** %126, align 8
  %285 = load double, double* %284, align 8
  %286 = fadd double %283, %285
  %287 = load double*, double** %127, align 8
  %288 = load double, double* %287, align 8
  %289 = fadd double %286, %288
  %290 = load double, double* %68, align 8
  %291 = fdiv double %289, %290
  store double %291, double* %135, align 8
  %292 = load i32, i32* %83, align 4
  %293 = uitofp i32 %292 to double
  %294 = load double, double* %68, align 8
  %295 = fdiv double %293, %294
  store double %295, double* %134, align 8
  %296 = load i32, i32* %88, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %367

298:                                              ; preds = %221
  %299 = load double, double* %93, align 8
  %300 = load double, double* %94, align 8
  %301 = fsub double %299, %300
  %302 = call double @dml_max(double 0.000000e+00, double %301)
  store double %302, double* %133, align 8
  %303 = load i32, i32* %90, align 4
  %304 = uitofp i32 %303 to double
  %305 = fdiv double %304, 4.000000e+00
  %306 = load double, double* %67, align 8
  %307 = fdiv double %305, %306
  store double %307, double* %146, align 8
  %308 = load double, double* %134, align 8
  store double %308, double* %147, align 8
  %309 = load i32, i32* %89, align 4
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %311, label %317

311:                                              ; preds = %298
  %312 = load i32, i32* %82, align 4
  %313 = uitofp i32 %312 to double
  %314 = load double, double* %134, align 8
  %315 = fmul double %313, %314
  %316 = fdiv double %315, 2.000000e+00
  store double %316, double* %148, align 8
  br label %322

317:                                              ; preds = %298
  %318 = load i32, i32* %89, align 4
  %319 = uitofp i32 %318 to double
  %320 = load double, double* %134, align 8
  %321 = fmul double %319, %320
  store double %321, double* %148, align 8
  br label %322

322:                                              ; preds = %317, %311
  %323 = load i32, i32* %112, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %331

325:                                              ; preds = %322
  %326 = load i32, i32* %113, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %331, label %328

328:                                              ; preds = %325
  %329 = load double, double* %148, align 8
  %330 = fdiv double %329, 2.000000e+00
  store double %330, double* %148, align 8
  br label %331

331:                                              ; preds = %328, %325, %322
  %332 = load i32, i32* %85, align 4
  %333 = uitofp i32 %332 to double
  %334 = load double, double* %134, align 8
  %335 = fmul double %333, %334
  %336 = load double, double* %135, align 8
  %337 = load double, double* %109, align 8
  %338 = fadd double %336, %337
  %339 = load double, double* %93, align 8
  %340 = fadd double %338, %339
  %341 = load double, double* %146, align 8
  %342 = fadd double %340, %341
  %343 = load double, double* %147, align 8
  %344 = fadd double %342, %343
  %345 = load double, double* %148, align 8
  %346 = fadd double %344, %345
  %347 = fcmp olt double %335, %346
  br i1 %347, label %348, label %364

348:                                              ; preds = %331
  store i32 1, i32* %128, align 4
  %349 = load double, double* %135, align 8
  %350 = load double, double* %109, align 8
  %351 = fadd double %349, %350
  %352 = load double, double* %93, align 8
  %353 = fadd double %351, %352
  %354 = load double, double* %146, align 8
  %355 = fadd double %353, %354
  %356 = load double, double* %147, align 8
  %357 = fadd double %355, %356
  %358 = load double, double* %148, align 8
  %359 = fadd double %357, %358
  %360 = load double, double* %134, align 8
  %361 = fdiv double %359, %360
  %362 = fptoui double %361 to i32
  %363 = load i32*, i32** %123, align 8
  store i32 %362, i32* %363, align 4
  br label %366

364:                                              ; preds = %331
  %365 = load i32*, i32** %123, align 8
  store i32 0, i32* %365, align 4
  br label %366

366:                                              ; preds = %364, %348
  br label %368

367:                                              ; preds = %221
  store double 0.000000e+00, double* %133, align 8
  br label %368

368:                                              ; preds = %367, %366
  %369 = load i32, i32* %87, align 4
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %389

371:                                              ; preds = %368
  %372 = load i32, i32* %86, align 4
  %373 = icmp eq i32 %372, 4
  br i1 %373, label %374, label %379

374:                                              ; preds = %371
  %375 = load double, double* %93, align 8
  %376 = load double, double* %92, align 8
  %377 = fadd double %375, %376
  %378 = load double*, double** %124, align 8
  store double %377, double* %378, align 8
  br label %388

379:                                              ; preds = %371
  %380 = load i32, i32* %86, align 4
  %381 = icmp eq i32 %380, 3
  br i1 %381, label %382, label %385

382:                                              ; preds = %379
  %383 = load double, double* %93, align 8
  %384 = load double*, double** %124, align 8
  store double %383, double* %384, align 8
  br label %387

385:                                              ; preds = %379
  %386 = load double*, double** %124, align 8
  store double 0.000000e+00, double* %386, align 8
  br label %387

387:                                              ; preds = %385, %382
  br label %388

388:                                              ; preds = %387, %374
  br label %400

389:                                              ; preds = %368
  %390 = load i32, i32* %91, align 4
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %395

392:                                              ; preds = %389
  %393 = load double, double* %134, align 8
  %394 = load double*, double** %124, align 8
  store double %393, double* %394, align 8
  br label %399

395:                                              ; preds = %389
  %396 = load double, double* %134, align 8
  %397 = fdiv double %396, 4.000000e+00
  %398 = load double*, double** %124, align 8
  store double %397, double* %398, align 8
  br label %399

399:                                              ; preds = %395, %392
  br label %400

400:                                              ; preds = %399, %388
  %401 = load i32, i32* %85, align 4
  %402 = uitofp i32 %401 to double
  %403 = load double, double* %94, align 8
  %404 = load double, double* %109, align 8
  %405 = fadd double %403, %404
  %406 = load double, double* %111, align 8
  %407 = call double @dml_max(double %405, double %406)
  %408 = load double, double* %134, align 8
  %409 = fdiv double %407, %408
  %410 = fsub double %402, %409
  %411 = load double, double* %135, align 8
  %412 = load double, double* %133, align 8
  %413 = fadd double %411, %412
  %414 = load double, double* %134, align 8
  %415 = fdiv double %413, %414
  %416 = fsub double %410, %415
  %417 = load double*, double** %115, align 8
  %418 = load double, double* %417, align 8
  %419 = load double*, double** %114, align 8
  %420 = load double, double* %419, align 8
  %421 = load i32, i32* %83, align 4
  %422 = uitofp i32 %421 to double
  %423 = fdiv double %420, %422
  %424 = fadd double %418, %423
  %425 = fsub double %416, %424
  store double %425, double* %136, align 8
  %426 = load double, double* %98, align 8
  %427 = load double, double* %103, align 8
  %428 = call double @dml_max(double %426, double %427)
  %429 = load double, double* %134, align 8
  %430 = fmul double %428, %429
  store double %430, double* %137, align 8
  %431 = load i32, i32* %96, align 4
  %432 = load i32, i32* %97, align 4
  %433 = add i32 %431, %432
  %434 = uitofp i32 %433 to double
  %435 = load double, double* %98, align 8
  %436 = load i32, i32* %99, align 4
  %437 = uitofp i32 %436 to double
  %438 = fmul double %435, %437
  %439 = load double, double* %100, align 8
  %440 = call double @dml_ceil(double %439, i32 1)
  %441 = fmul double %438, %440
  %442 = fadd double %434, %441
  %443 = load double, double* %103, align 8
  %444 = load i32, i32* %99, align 4
  %445 = uitofp i32 %444 to double
  %446 = fmul double %443, %445
  %447 = fdiv double %446, 2.000000e+00
  %448 = load double, double* %104, align 8
  %449 = call double @dml_ceil(double %448, i32 2)
  %450 = fmul double %447, %449
  %451 = fadd double %442, %450
  %452 = load double, double* %137, align 8
  %453 = fdiv double %451, %452
  store double %453, double* %138, align 8
  %454 = load i32, i32* %87, align 4
  %455 = icmp eq i32 %454, 1
  br i1 %455, label %456, label %475

456:                                              ; preds = %400
  %457 = load double*, double** %124, align 8
  %458 = load double, double* %457, align 8
  %459 = load i32, i32* %95, align 4
  %460 = uitofp i32 %459 to double
  %461 = load double, double* %138, align 8
  %462 = fdiv double %460, %461
  %463 = fadd double %458, %462
  %464 = load double, double* %93, align 8
  %465 = load double, double* %92, align 8
  %466 = load i32, i32* %86, align 4
  %467 = sub i32 %466, 1
  %468 = uitofp i32 %467 to double
  %469 = fmul double %465, %468
  %470 = fadd double %464, %469
  %471 = load double, double* %134, align 8
  %472 = fdiv double %471, 4.000000e+00
  %473 = call double @dml_max(double %470, double %472)
  %474 = call double @dml_max(double %463, double %473)
  store double %474, double* %139, align 8
  br label %478

475:                                              ; preds = %400
  %476 = load double, double* %134, align 8
  %477 = fdiv double %476, 4.000000e+00
  store double %477, double* %139, align 8
  br label %478

478:                                              ; preds = %475, %456
  %479 = load i32, i32* %87, align 4
  %480 = icmp eq i32 %479, 1
  br i1 %480, label %484, label %481

481:                                              ; preds = %478
  %482 = load i32, i32* %91, align 4
  %483 = icmp eq i32 %482, 1
  br i1 %483, label %484, label %500

484:                                              ; preds = %481, %478
  %485 = load i32, i32* %96, align 4
  %486 = load i32, i32* %97, align 4
  %487 = add i32 %485, %486
  %488 = uitofp i32 %487 to double
  %489 = load double, double* %138, align 8
  %490 = fdiv double %488, %489
  %491 = load double, double* %92, align 8
  %492 = load double, double* %134, align 8
  %493 = load double, double* %139, align 8
  %494 = fsub double %492, %493
  %495 = load double, double* %134, align 8
  %496 = fdiv double %495, 4.000000e+00
  %497 = call double @dml_max(double %494, double %496)
  %498 = call double @dml_max(double %491, double %497)
  %499 = call double @dml_max(double %490, double %498)
  store double %499, double* %140, align 8
  br label %504

500:                                              ; preds = %481
  %501 = load double, double* %134, align 8
  %502 = load double, double* %139, align 8
  %503 = fsub double %501, %502
  store double %503, double* %140, align 8
  br label %504

504:                                              ; preds = %500, %484
  %505 = load double, double* %139, align 8
  %506 = load double, double* %140, align 8
  %507 = fadd double %505, %506
  %508 = load double, double* %137, align 8
  %509 = fadd double %507, %508
  store double %509, double* %141, align 8
  %510 = load double, double* %141, align 8
  %511 = load double, double* %134, align 8
  %512 = fdiv double %510, %511
  store double %512, double* %142, align 8
  %513 = load double, double* %142, align 8
  %514 = load double, double* %136, align 8
  %515 = fcmp olt double %513, %514
  br i1 %515, label %516, label %519

516:                                              ; preds = %504
  %517 = load double, double* %142, align 8
  %518 = load double*, double** %116, align 8
  store double %517, double* %518, align 8
  br label %522

519:                                              ; preds = %504
  %520 = load double, double* %136, align 8
  %521 = load double*, double** %116, align 8
  store double %520, double* %521, align 8
  br label %522

522:                                              ; preds = %519, %516
  %523 = load double*, double** %116, align 8
  %524 = load double, double* %523, align 8
  %525 = fadd double %524, 1.250000e-01
  %526 = fmul double 4.000000e+00, %525
  %527 = call double @dml_floor(double %526, i32 1)
  %528 = fdiv double %527, 4.000000e+00
  %529 = load double*, double** %116, align 8
  store double %528, double* %529, align 8
  %530 = load i32, i32* %85, align 4
  %531 = call i32 @dml_print(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %530)
  %532 = load double, double* %94, align 8
  %533 = fptoui double %532 to i32
  %534 = call i32 @dml_print(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %533)
  %535 = load double, double* %109, align 8
  %536 = fptoui double %535 to i32
  %537 = call i32 @dml_print(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %536)
  %538 = load double, double* %111, align 8
  %539 = fptoui double %538 to i32
  %540 = call i32 @dml_print(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %539)
  %541 = load double, double* %134, align 8
  %542 = fptoui double %541 to i32
  %543 = call i32 @dml_print(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %542)
  %544 = load double, double* %135, align 8
  %545 = fptoui double %544 to i32
  %546 = call i32 @dml_print(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %545)
  %547 = load double, double* %133, align 8
  %548 = fptoui double %547 to i32
  %549 = call i32 @dml_print(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %548)
  %550 = load double*, double** %115, align 8
  %551 = load double, double* %550, align 8
  %552 = fptoui double %551 to i32
  %553 = call i32 @dml_print(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %552)
  %554 = load double*, double** %114, align 8
  %555 = load double, double* %554, align 8
  %556 = fptoui double %555 to i32
  %557 = call i32 @dml_print(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i32 %556)
  %558 = load i32, i32* %83, align 4
  %559 = call i32 @dml_print(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32 %558)
  %560 = load double*, double** %117, align 8
  store double 0.000000e+00, double* %560, align 8
  %561 = load double*, double** %118, align 8
  store double 0.000000e+00, double* %561, align 8
  %562 = load double*, double** %119, align 8
  store double 0.000000e+00, double* %562, align 8
  %563 = load double*, double** %120, align 8
  store double 0.000000e+00, double* %563, align 8
  %564 = load double*, double** %121, align 8
  store double 0.000000e+00, double* %564, align 8
  %565 = load double*, double** %122, align 8
  store double 0.000000e+00, double* %565, align 8
  %566 = load double*, double** %116, align 8
  %567 = load double, double* %566, align 8
  %568 = fcmp ogt double %567, 1.000000e+00
  br i1 %568, label %569, label %824

569:                                              ; preds = %522
  %570 = load i32, i32* %95, align 4
  %571 = load i32, i32* %96, align 4
  %572 = mul i32 2, %571
  %573 = add i32 %570, %572
  %574 = load i32, i32* %97, align 4
  %575 = mul i32 2, %574
  %576 = add i32 %573, %575
  %577 = uitofp i32 %576 to double
  %578 = load double, double* %98, align 8
  %579 = load i32, i32* %99, align 4
  %580 = uitofp i32 %579 to double
  %581 = fmul double %578, %580
  %582 = load double, double* %100, align 8
  %583 = call double @dml_ceil(double %582, i32 1)
  %584 = fmul double %581, %583
  %585 = fadd double %577, %584
  %586 = load double, double* %103, align 8
  %587 = load i32, i32* %99, align 4
  %588 = uitofp i32 %587 to double
  %589 = fmul double %586, %588
  %590 = fdiv double %589, 2.000000e+00
  %591 = load double, double* %104, align 8
  %592 = call double @dml_ceil(double %591, i32 2)
  %593 = fmul double %590, %592
  %594 = fadd double %585, %593
  %595 = load double*, double** %116, align 8
  %596 = load double, double* %595, align 8
  %597 = load double, double* %134, align 8
  %598 = fmul double %596, %597
  %599 = load double*, double** %124, align 8
  %600 = load double, double* %599, align 8
  %601 = fsub double %598, %600
  %602 = fdiv double %594, %601
  %603 = load double*, double** %117, align 8
  store double %602, double* %603, align 8
  %604 = load i32, i32* %87, align 4
  %605 = icmp ne i32 %604, 0
  br i1 %605, label %606, label %626

606:                                              ; preds = %569
  %607 = load double*, double** %124, align 8
  %608 = load double, double* %607, align 8
  %609 = load i32, i32* %95, align 4
  %610 = uitofp i32 %609 to double
  %611 = load double*, double** %117, align 8
  %612 = load double, double* %611, align 8
  %613 = fdiv double %610, %612
  %614 = fadd double %608, %613
  %615 = load double, double* %93, align 8
  %616 = load double, double* %92, align 8
  %617 = load i32, i32* %86, align 4
  %618 = sub i32 %617, 1
  %619 = uitofp i32 %618 to double
  %620 = fmul double %616, %619
  %621 = fadd double %615, %620
  %622 = load double, double* %134, align 8
  %623 = fdiv double %622, 4.000000e+00
  %624 = call double @dml_max(double %621, double %623)
  %625 = call double @dml_max(double %614, double %624)
  store double %625, double* %143, align 8
  br label %637

626:                                              ; preds = %569
  %627 = load i32, i32* %73, align 4
  %628 = icmp ugt i32 %627, 0
  br i1 %628, label %632, label %629

629:                                              ; preds = %626
  %630 = load i32, i32* %110, align 4
  %631 = icmp ne i32 %630, 0
  br i1 %631, label %632, label %635

632:                                              ; preds = %629, %626
  %633 = load double, double* %134, align 8
  %634 = fdiv double %633, 4.000000e+00
  store double %634, double* %143, align 8
  br label %636

635:                                              ; preds = %629
  store double 0.000000e+00, double* %143, align 8
  br label %636

636:                                              ; preds = %635, %632
  br label %637

637:                                              ; preds = %636, %606
  %638 = load i32, i32* %87, align 4
  %639 = icmp eq i32 %638, 1
  br i1 %639, label %643, label %640

640:                                              ; preds = %637
  %641 = load i32, i32* %91, align 4
  %642 = icmp eq i32 %641, 1
  br i1 %642, label %643, label %660

643:                                              ; preds = %640, %637
  %644 = load i32, i32* %96, align 4
  %645 = load i32, i32* %97, align 4
  %646 = add i32 %644, %645
  %647 = uitofp i32 %646 to double
  %648 = load double*, double** %117, align 8
  %649 = load double, double* %648, align 8
  %650 = fdiv double %647, %649
  %651 = load double, double* %92, align 8
  %652 = load double, double* %134, align 8
  %653 = load double, double* %143, align 8
  %654 = fsub double %652, %653
  %655 = load double, double* %134, align 8
  %656 = fdiv double %655, 4.000000e+00
  %657 = call double @dml_max(double %654, double %656)
  %658 = call double @dml_max(double %651, double %657)
  %659 = call double @dml_max(double %650, double %658)
  store double %659, double* %144, align 8
  br label %672

660:                                              ; preds = %640
  %661 = load i32, i32* %73, align 4
  %662 = icmp ugt i32 %661, 0
  br i1 %662, label %666, label %663

663:                                              ; preds = %660
  %664 = load i32, i32* %110, align 4
  %665 = icmp ne i32 %664, 0
  br i1 %665, label %666, label %670

666:                                              ; preds = %663, %660
  %667 = load double, double* %134, align 8
  %668 = load double, double* %143, align 8
  %669 = fsub double %667, %668
  store double %669, double* %144, align 8
  br label %671

670:                                              ; preds = %663
  store double 0.000000e+00, double* %144, align 8
  br label %671

671:                                              ; preds = %670, %666
  br label %672

672:                                              ; preds = %671, %643
  %673 = load double, double* %143, align 8
  %674 = load double, double* %134, align 8
  %675 = fdiv double %673, %674
  %676 = fadd double %675, 1.250000e-01
  %677 = fmul double 4.000000e+00, %676
  %678 = call double @dml_floor(double %677, i32 1)
  %679 = fdiv double %678, 4.000000e+00
  %680 = load double*, double** %118, align 8
  store double %679, double* %680, align 8
  %681 = load double, double* %144, align 8
  %682 = load double, double* %134, align 8
  %683 = fdiv double %681, %682
  %684 = fadd double %683, 1.250000e-01
  %685 = fmul double 4.000000e+00, %684
  %686 = call double @dml_floor(double %685, i32 1)
  %687 = fdiv double %686, 4.000000e+00
  %688 = load double*, double** %119, align 8
  store double %687, double* %688, align 8
  %689 = load double*, double** %116, align 8
  %690 = load double, double* %689, align 8
  %691 = load i32, i32* %73, align 4
  %692 = icmp ugt i32 %691, 0
  br i1 %692, label %699, label %693

693:                                              ; preds = %672
  %694 = load i32, i32* %87, align 4
  %695 = icmp ne i32 %694, 0
  br i1 %695, label %699, label %696

696:                                              ; preds = %693
  %697 = load i32, i32* %91, align 4
  %698 = icmp ne i32 %697, 0
  br i1 %698, label %699, label %705

699:                                              ; preds = %696, %693, %672
  %700 = load double*, double** %118, align 8
  %701 = load double, double* %700, align 8
  %702 = load double*, double** %119, align 8
  %703 = load double, double* %702, align 8
  %704 = fadd double %701, %703
  br label %706

705:                                              ; preds = %696
  br label %706

706:                                              ; preds = %705, %699
  %707 = phi double [ %704, %699 ], [ 0.000000e+00, %705 ]
  %708 = fsub double %690, %707
  store double %708, double* %145, align 8
  %709 = load double, double* %145, align 8
  %710 = fcmp ogt double %709, 0.000000e+00
  br i1 %710, label %711, label %819

711:                                              ; preds = %706
  %712 = load double, double* %98, align 8
  %713 = load double, double* %145, align 8
  %714 = fdiv double %712, %713
  %715 = load double*, double** %120, align 8
  store double %714, double* %715, align 8
  %716 = load double*, double** %120, align 8
  %717 = load double, double* %716, align 8
  %718 = call double @dml_max(double %717, double 1.000000e+00)
  %719 = load double*, double** %120, align 8
  store double %718, double* %719, align 8
  %720 = load i32, i32* %107, align 4
  %721 = icmp ugt i32 %720, 4
  br i1 %721, label %722, label %755

722:                                              ; preds = %711
  %723 = load double, double* %101, align 8
  %724 = fcmp ogt double %723, 3.000000e+00
  br i1 %724, label %725, label %755

725:                                              ; preds = %722
  %726 = load double, double* %145, align 8
  %727 = load double, double* %101, align 8
  %728 = fsub double %727, 3.000000e+00
  %729 = fdiv double %728, 2.000000e+00
  %730 = fcmp ogt double %726, %729
  br i1 %730, label %731, label %752

731:                                              ; preds = %725
  %732 = load double, double* %98, align 8
  %733 = load double, double* %145, align 8
  %734 = fdiv double %732, %733
  %735 = load i32, i32* %102, align 4
  %736 = uitofp i32 %735 to double
  %737 = load i32, i32* %107, align 4
  %738 = uitofp i32 %737 to double
  %739 = fmul double %736, %738
  %740 = load double, double* %145, align 8
  %741 = load double, double* %101, align 8
  %742 = fsub double %741, 3.000000e+00
  %743 = fdiv double %742, 2.000000e+00
  %744 = fsub double %740, %743
  %745 = fdiv double %739, %744
  %746 = call double @dml_max(double %734, double %745)
  %747 = load double*, double** %120, align 8
  store double %746, double* %747, align 8
  %748 = load double*, double** %120, align 8
  %749 = load double, double* %748, align 8
  %750 = call double @dml_max(double %749, double 1.000000e+00)
  %751 = load double*, double** %120, align 8
  store double %750, double* %751, align 8
  br label %754

752:                                              ; preds = %725
  store i32 1, i32* %128, align 4
  %753 = load double*, double** %120, align 8
  store double 0.000000e+00, double* %753, align 8
  br label %754

754:                                              ; preds = %752, %731
  br label %755

755:                                              ; preds = %754, %722, %711
  %756 = load double, double* %103, align 8
  %757 = load double, double* %145, align 8
  %758 = fdiv double %756, %757
  %759 = load double*, double** %121, align 8
  store double %758, double* %759, align 8
  %760 = load double*, double** %121, align 8
  %761 = load double, double* %760, align 8
  %762 = call double @dml_max(double %761, double 1.000000e+00)
  %763 = load double*, double** %121, align 8
  store double %762, double* %763, align 8
  %764 = load i32, i32* %108, align 4
  %765 = icmp ugt i32 %764, 4
  br i1 %765, label %766, label %795

766:                                              ; preds = %755
  %767 = load double, double* %145, align 8
  %768 = load double, double* %105, align 8
  %769 = fsub double %768, 3.000000e+00
  %770 = fdiv double %769, 2.000000e+00
  %771 = fcmp ogt double %767, %770
  br i1 %771, label %772, label %792

772:                                              ; preds = %766
  %773 = load double*, double** %121, align 8
  %774 = load double, double* %773, align 8
  %775 = load i32, i32* %106, align 4
  %776 = uitofp i32 %775 to double
  %777 = load i32, i32* %108, align 4
  %778 = uitofp i32 %777 to double
  %779 = fmul double %776, %778
  %780 = load double, double* %145, align 8
  %781 = load double, double* %105, align 8
  %782 = fsub double %781, 3.000000e+00
  %783 = fdiv double %782, 2.000000e+00
  %784 = fsub double %780, %783
  %785 = fdiv double %779, %784
  %786 = call double @dml_max(double %774, double %785)
  %787 = load double*, double** %121, align 8
  store double %786, double* %787, align 8
  %788 = load double*, double** %121, align 8
  %789 = load double, double* %788, align 8
  %790 = call double @dml_max(double %789, double 1.000000e+00)
  %791 = load double*, double** %121, align 8
  store double %790, double* %791, align 8
  br label %794

792:                                              ; preds = %766
  store i32 1, i32* %128, align 4
  %793 = load double*, double** %121, align 8
  store double 0.000000e+00, double* %793, align 8
  br label %794

794:                                              ; preds = %792, %772
  br label %795

795:                                              ; preds = %794, %755
  %796 = load i32, i32* %71, align 4
  %797 = uitofp i32 %796 to double
  %798 = load double, double* %98, align 8
  %799 = load double, double* %145, align 8
  %800 = fdiv double %798, %799
  %801 = load double, double* %100, align 8
  %802 = call double @dml_ceil(double %801, i32 1)
  %803 = fmul double %800, %802
  %804 = load double, double* %103, align 8
  %805 = load double, double* %145, align 8
  %806 = fdiv double %804, %805
  %807 = load double, double* %104, align 8
  %808 = call double @dml_ceil(double %807, i32 2)
  %809 = fmul double %806, %808
  %810 = fdiv double %809, 2.000000e+00
  %811 = fadd double %803, %810
  %812 = fmul double %797, %811
  %813 = load i32, i32* %99, align 4
  %814 = uitofp i32 %813 to double
  %815 = fmul double %812, %814
  %816 = load double, double* %134, align 8
  %817 = fdiv double %815, %816
  %818 = load double*, double** %122, align 8
  store double %817, double* %818, align 8
  br label %823

819:                                              ; preds = %706
  store i32 1, i32* %128, align 4
  %820 = load double*, double** %120, align 8
  store double 0.000000e+00, double* %820, align 8
  %821 = load double*, double** %121, align 8
  store double 0.000000e+00, double* %821, align 8
  %822 = load double*, double** %122, align 8
  store double 0.000000e+00, double* %822, align 8
  br label %823

823:                                              ; preds = %819, %795
  br label %825

824:                                              ; preds = %522
  store i32 1, i32* %128, align 4
  br label %825

825:                                              ; preds = %824, %823
  %826 = load i32, i32* %128, align 4
  %827 = icmp ne i32 %826, 0
  br i1 %827, label %828, label %836

828:                                              ; preds = %825
  %829 = load double*, double** %117, align 8
  store double 0.000000e+00, double* %829, align 8
  store double 0.000000e+00, double* %143, align 8
  store double 0.000000e+00, double* %144, align 8
  %830 = load double*, double** %118, align 8
  store double 0.000000e+00, double* %830, align 8
  %831 = load double*, double** %119, align 8
  store double 0.000000e+00, double* %831, align 8
  %832 = load double*, double** %116, align 8
  store double 0.000000e+00, double* %832, align 8
  store double 0.000000e+00, double* %145, align 8
  %833 = load double*, double** %120, align 8
  store double 0.000000e+00, double* %833, align 8
  %834 = load double*, double** %121, align 8
  store double 0.000000e+00, double* %834, align 8
  %835 = load double*, double** %122, align 8
  store double 0.000000e+00, double* %835, align 8
  br label %836

836:                                              ; preds = %828, %825
  %837 = load i32, i32* %128, align 4
  store i32 %837, i32* %64, align 4
  br label %838

838:                                              ; preds = %836, %179
  %839 = load i32, i32* %64, align 4
  ret i32 %839
}

declare dso_local double @dml_floor(double, i32) #1

declare dso_local double @dml_ceil(double, i32) #1

declare dso_local double @dml_max(double, double) #1

declare dso_local i32 @dml_print(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

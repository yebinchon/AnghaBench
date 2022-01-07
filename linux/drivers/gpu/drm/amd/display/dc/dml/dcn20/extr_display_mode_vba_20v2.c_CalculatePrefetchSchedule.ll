; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dml/dcn20/extr_display_mode_vba_20v2.c_CalculatePrefetchSchedule.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dml/dcn20/extr_display_mode_vba_20v2.c_CalculatePrefetchSchedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.display_mode_lib = type { i32 }

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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.display_mode_lib*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, i32, i32, i32, double, i32, double, double, i32, double, double, double, i32, i32, i32, double, i32, double, i32, i32, double, double, double*, double*, double*, double*, double*, double*, double*, double*, i32*, double*, double*)* @CalculatePrefetchSchedule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CalculatePrefetchSchedule(%struct.display_mode_lib* %0, double %1, double %2, double %3, double %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13, i32 %14, i32 %15, i32 %16, double %17, double %18, double %19, i32 %20, i32 %21, i32 %22, double %23, i32 %24, double %25, double %26, i32 %27, double %28, double %29, double %30, i32 %31, i32 %32, i32 %33, double %34, i32 %35, double %36, i32 %37, i32 %38, double %39, double %40, double* %41, double* %42, double* %43, double* %44, double* %45, double* %46, double* %47, double* %48, i32* %49, double* %50, double* %51) #0 {
  %53 = alloca %struct.display_mode_lib*, align 8
  %54 = alloca double, align 8
  %55 = alloca double, align 8
  %56 = alloca double, align 8
  %57 = alloca double, align 8
  %58 = alloca i32, align 4
  %59 = alloca i32, align 4
  %60 = alloca i32, align 4
  %61 = alloca i32, align 4
  %62 = alloca i32, align 4
  %63 = alloca i32, align 4
  %64 = alloca i32, align 4
  %65 = alloca i32, align 4
  %66 = alloca i32, align 4
  %67 = alloca i32, align 4
  %68 = alloca i32, align 4
  %69 = alloca i32, align 4
  %70 = alloca double, align 8
  %71 = alloca double, align 8
  %72 = alloca double, align 8
  %73 = alloca i32, align 4
  %74 = alloca i32, align 4
  %75 = alloca i32, align 4
  %76 = alloca double, align 8
  %77 = alloca i32, align 4
  %78 = alloca double, align 8
  %79 = alloca double, align 8
  %80 = alloca i32, align 4
  %81 = alloca double, align 8
  %82 = alloca double, align 8
  %83 = alloca double, align 8
  %84 = alloca i32, align 4
  %85 = alloca i32, align 4
  %86 = alloca i32, align 4
  %87 = alloca double, align 8
  %88 = alloca i32, align 4
  %89 = alloca double, align 8
  %90 = alloca i32, align 4
  %91 = alloca i32, align 4
  %92 = alloca double, align 8
  %93 = alloca double, align 8
  %94 = alloca double*, align 8
  %95 = alloca double*, align 8
  %96 = alloca double*, align 8
  %97 = alloca double*, align 8
  %98 = alloca double*, align 8
  %99 = alloca double*, align 8
  %100 = alloca double*, align 8
  %101 = alloca double*, align 8
  %102 = alloca i32*, align 8
  %103 = alloca double*, align 8
  %104 = alloca double*, align 8
  %105 = alloca i32, align 4
  %106 = alloca double, align 8
  %107 = alloca double, align 8
  %108 = alloca double, align 8
  %109 = alloca double, align 8
  %110 = alloca double, align 8
  %111 = alloca double, align 8
  %112 = alloca double, align 8
  %113 = alloca double, align 8
  %114 = alloca double, align 8
  %115 = alloca double, align 8
  %116 = alloca double, align 8
  %117 = alloca double, align 8
  %118 = alloca double, align 8
  %119 = alloca double, align 8
  %120 = alloca double, align 8
  %121 = alloca double, align 8
  %122 = alloca double, align 8
  store %struct.display_mode_lib* %0, %struct.display_mode_lib** %53, align 8
  store double %1, double* %54, align 8
  store double %2, double* %55, align 8
  store double %3, double* %56, align 8
  store double %4, double* %57, align 8
  store i32 %5, i32* %58, align 4
  store i32 %6, i32* %59, align 4
  store i32 %7, i32* %60, align 4
  store i32 %8, i32* %61, align 4
  store i32 %9, i32* %62, align 4
  store i32 %10, i32* %63, align 4
  store i32 %11, i32* %64, align 4
  store i32 %12, i32* %65, align 4
  store i32 %13, i32* %66, align 4
  store i32 %14, i32* %67, align 4
  store i32 %15, i32* %68, align 4
  store i32 %16, i32* %69, align 4
  store double %17, double* %70, align 8
  store double %18, double* %71, align 8
  store double %19, double* %72, align 8
  store i32 %20, i32* %73, align 4
  store i32 %21, i32* %74, align 4
  store i32 %22, i32* %75, align 4
  store double %23, double* %76, align 8
  store i32 %24, i32* %77, align 4
  store double %25, double* %78, align 8
  store double %26, double* %79, align 8
  store i32 %27, i32* %80, align 4
  store double %28, double* %81, align 8
  store double %29, double* %82, align 8
  store double %30, double* %83, align 8
  store i32 %31, i32* %84, align 4
  store i32 %32, i32* %85, align 4
  store i32 %33, i32* %86, align 4
  store double %34, double* %87, align 8
  store i32 %35, i32* %88, align 4
  store double %36, double* %89, align 8
  store i32 %37, i32* %90, align 4
  store i32 %38, i32* %91, align 4
  store double %39, double* %92, align 8
  store double %40, double* %93, align 8
  store double* %41, double** %94, align 8
  store double* %42, double** %95, align 8
  store double* %43, double** %96, align 8
  store double* %44, double** %97, align 8
  store double* %45, double** %98, align 8
  store double* %46, double** %99, align 8
  store double* %47, double** %100, align 8
  store double* %48, double** %101, align 8
  store i32* %49, i32** %102, align 8
  store double* %50, double** %103, align 8
  store double* %51, double** %104, align 8
  store i32 0, i32* %105, align 4
  store double 0.000000e+00, double* %117, align 8
  store double 0.000000e+00, double* %118, align 8
  store double 0.000000e+00, double* %119, align 8
  %123 = load i32, i32* %61, align 4
  %124 = uitofp i32 %123 to double
  %125 = fdiv double %124, 4.000000e+00
  %126 = call double @dml_ceil(double %125, i32 1)
  %127 = fptoui double %126 to i32
  %128 = load i32*, i32** %102, align 8
  store i32 %127, i32* %128, align 4
  %129 = load i32, i32* %62, align 4
  %130 = uitofp i32 %129 to double
  %131 = load double, double* %54, align 8
  %132 = fdiv double 2.000000e+00, %131
  %133 = load double, double* %55, align 8
  %134 = fdiv double 3.000000e+00, %133
  %135 = fadd double %132, %134
  %136 = fmul double %130, %135
  store double %136, double* %106, align 8
  %137 = load double, double* %57, align 8
  %138 = fdiv double 1.400000e+01, %137
  %139 = load double, double* %54, align 8
  %140 = fdiv double 1.200000e+01, %139
  %141 = fadd double %138, %140
  %142 = load double, double* %106, align 8
  %143 = fadd double %141, %142
  %144 = load double, double* %56, align 8
  %145 = fmul double %143, %144
  %146 = load double*, double** %103, align 8
  store double %145, double* %146, align 8
  %147 = load double, double* %54, align 8
  %148 = fdiv double 1.500000e+02, %147
  %149 = load double, double* %106, align 8
  %150 = load double, double* %57, align 8
  %151 = fdiv double 2.000000e+01, %150
  %152 = fadd double %149, %151
  %153 = load double, double* %54, align 8
  %154 = fdiv double 1.000000e+01, %153
  %155 = fadd double %152, %154
  %156 = call double @dml_max(double %148, double %155)
  %157 = load double, double* %56, align 8
  %158 = fmul double %156, %157
  %159 = load double*, double** %104, align 8
  store double %158, double* %159, align 8
  %160 = load i32*, i32** %102, align 8
  %161 = load i32, i32* %160, align 4
  %162 = uitofp i32 %161 to double
  %163 = load double*, double** %103, align 8
  %164 = load double, double* %163, align 8
  %165 = fadd double %162, %164
  %166 = load double*, double** %104, align 8
  %167 = load double, double* %166, align 8
  %168 = fadd double %165, %167
  %169 = load double, double* %56, align 8
  %170 = fdiv double %168, %169
  store double %170, double* %109, align 8
  %171 = load i32, i32* %61, align 4
  %172 = uitofp i32 %171 to double
  %173 = load double, double* %56, align 8
  %174 = fdiv double %172, %173
  store double %174, double* %108, align 8
  %175 = load i32, i32* %66, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %229

177:                                              ; preds = %52
  %178 = load double, double* %71, align 8
  %179 = load double, double* %72, align 8
  %180 = fsub double %178, %179
  %181 = call double @dml_max(double 0.000000e+00, double %180)
  store double %181, double* %107, align 8
  %182 = load i32, i32* %68, align 4
  %183 = uitofp i32 %182 to double
  %184 = fdiv double %183, 4.000000e+00
  %185 = load double, double* %55, align 8
  %186 = fdiv double %184, %185
  store double %186, double* %120, align 8
  %187 = load double, double* %108, align 8
  store double %187, double* %121, align 8
  %188 = load i32, i32* %67, align 4
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %196

190:                                              ; preds = %177
  %191 = load i32, i32* %60, align 4
  %192 = uitofp i32 %191 to double
  %193 = load double, double* %108, align 8
  %194 = fmul double %192, %193
  %195 = fdiv double %194, 2.000000e+00
  store double %195, double* %122, align 8
  br label %201

196:                                              ; preds = %177
  %197 = load i32, i32* %67, align 4
  %198 = uitofp i32 %197 to double
  %199 = load double, double* %108, align 8
  %200 = fmul double %198, %199
  store double %200, double* %122, align 8
  br label %201

201:                                              ; preds = %196, %190
  %202 = load i32, i32* %90, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %210

204:                                              ; preds = %201
  %205 = load i32, i32* %91, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %210, label %207

207:                                              ; preds = %204
  %208 = load double, double* %122, align 8
  %209 = fdiv double %208, 2.000000e+00
  store double %209, double* %122, align 8
  br label %210

210:                                              ; preds = %207, %204, %201
  %211 = load i32, i32* %63, align 4
  %212 = uitofp i32 %211 to double
  %213 = load double, double* %108, align 8
  %214 = fmul double %212, %213
  %215 = load double, double* %109, align 8
  %216 = load double, double* %87, align 8
  %217 = fadd double %215, %216
  %218 = load double, double* %71, align 8
  %219 = fadd double %217, %218
  %220 = load double, double* %120, align 8
  %221 = fadd double %219, %220
  %222 = load double, double* %121, align 8
  %223 = fadd double %221, %222
  %224 = load double, double* %122, align 8
  %225 = fadd double %223, %224
  %226 = fcmp olt double %214, %225
  br i1 %226, label %227, label %228

227:                                              ; preds = %210
  store i32 1, i32* %105, align 4
  br label %228

228:                                              ; preds = %227, %210
  br label %230

229:                                              ; preds = %52
  store double 0.000000e+00, double* %107, align 8
  br label %230

230:                                              ; preds = %229, %228
  %231 = load i32, i32* %65, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %251

233:                                              ; preds = %230
  %234 = load i32, i32* %64, align 4
  %235 = icmp eq i32 %234, 4
  br i1 %235, label %236, label %241

236:                                              ; preds = %233
  %237 = load double, double* %71, align 8
  %238 = load double, double* %70, align 8
  %239 = fadd double %237, %238
  %240 = load double*, double** %101, align 8
  store double %239, double* %240, align 8
  br label %250

241:                                              ; preds = %233
  %242 = load i32, i32* %64, align 4
  %243 = icmp eq i32 %242, 3
  br i1 %243, label %244, label %247

244:                                              ; preds = %241
  %245 = load double, double* %71, align 8
  %246 = load double*, double** %101, align 8
  store double %245, double* %246, align 8
  br label %249

247:                                              ; preds = %241
  %248 = load double*, double** %101, align 8
  store double 0.000000e+00, double* %248, align 8
  br label %249

249:                                              ; preds = %247, %244
  br label %250

250:                                              ; preds = %249, %236
  br label %262

251:                                              ; preds = %230
  %252 = load i32, i32* %69, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %257

254:                                              ; preds = %251
  %255 = load double, double* %108, align 8
  %256 = load double*, double** %101, align 8
  store double %255, double* %256, align 8
  br label %261

257:                                              ; preds = %251
  %258 = load double, double* %108, align 8
  %259 = fdiv double %258, 4.000000e+00
  %260 = load double*, double** %101, align 8
  store double %259, double* %260, align 8
  br label %261

261:                                              ; preds = %257, %254
  br label %262

262:                                              ; preds = %261, %250
  %263 = load i32, i32* %63, align 4
  %264 = uitofp i32 %263 to double
  %265 = load double, double* %72, align 8
  %266 = load double, double* %87, align 8
  %267 = fadd double %265, %266
  %268 = load double, double* %89, align 8
  %269 = call double @dml_max(double %267, double %268)
  %270 = load double, double* %108, align 8
  %271 = fdiv double %269, %270
  %272 = fsub double %264, %271
  %273 = load double, double* %109, align 8
  %274 = load double, double* %107, align 8
  %275 = fadd double %273, %274
  %276 = load double, double* %108, align 8
  %277 = fdiv double %275, %276
  %278 = fsub double %272, %277
  %279 = load double, double* %93, align 8
  %280 = load double, double* %92, align 8
  %281 = load i32, i32* %61, align 4
  %282 = uitofp i32 %281 to double
  %283 = fdiv double %280, %282
  %284 = fadd double %279, %283
  %285 = fsub double %278, %284
  store double %285, double* %110, align 8
  %286 = load double, double* %76, align 8
  %287 = load double, double* %81, align 8
  %288 = call double @dml_max(double %286, double %287)
  %289 = load double, double* %108, align 8
  %290 = fmul double %288, %289
  store double %290, double* %111, align 8
  %291 = load i32, i32* %74, align 4
  %292 = load i32, i32* %75, align 4
  %293 = add i32 %291, %292
  %294 = uitofp i32 %293 to double
  %295 = load double, double* %76, align 8
  %296 = load i32, i32* %77, align 4
  %297 = uitofp i32 %296 to double
  %298 = fmul double %295, %297
  %299 = load double, double* %78, align 8
  %300 = call double @dml_ceil(double %299, i32 1)
  %301 = fmul double %298, %300
  %302 = fadd double %294, %301
  %303 = load double, double* %81, align 8
  %304 = load i32, i32* %77, align 4
  %305 = uitofp i32 %304 to double
  %306 = fmul double %303, %305
  %307 = fdiv double %306, 2.000000e+00
  %308 = load double, double* %82, align 8
  %309 = call double @dml_ceil(double %308, i32 2)
  %310 = fmul double %307, %309
  %311 = fadd double %302, %310
  %312 = load double, double* %111, align 8
  %313 = fdiv double %311, %312
  store double %313, double* %112, align 8
  %314 = load i32, i32* %65, align 4
  %315 = icmp eq i32 %314, 1
  br i1 %315, label %316, label %335

316:                                              ; preds = %262
  %317 = load double*, double** %101, align 8
  %318 = load double, double* %317, align 8
  %319 = load i32, i32* %73, align 4
  %320 = uitofp i32 %319 to double
  %321 = load double, double* %112, align 8
  %322 = fdiv double %320, %321
  %323 = fadd double %318, %322
  %324 = load double, double* %71, align 8
  %325 = load double, double* %70, align 8
  %326 = load i32, i32* %64, align 4
  %327 = sub i32 %326, 1
  %328 = uitofp i32 %327 to double
  %329 = fmul double %325, %328
  %330 = fadd double %324, %329
  %331 = load double, double* %108, align 8
  %332 = fdiv double %331, 4.000000e+00
  %333 = call double @dml_max(double %330, double %332)
  %334 = call double @dml_max(double %323, double %333)
  store double %334, double* %113, align 8
  br label %338

335:                                              ; preds = %262
  %336 = load double, double* %108, align 8
  %337 = fdiv double %336, 4.000000e+00
  store double %337, double* %113, align 8
  br label %338

338:                                              ; preds = %335, %316
  %339 = load i32, i32* %65, align 4
  %340 = icmp eq i32 %339, 1
  br i1 %340, label %344, label %341

341:                                              ; preds = %338
  %342 = load i32, i32* %69, align 4
  %343 = icmp eq i32 %342, 1
  br i1 %343, label %344, label %360

344:                                              ; preds = %341, %338
  %345 = load i32, i32* %74, align 4
  %346 = load i32, i32* %75, align 4
  %347 = add i32 %345, %346
  %348 = uitofp i32 %347 to double
  %349 = load double, double* %112, align 8
  %350 = fdiv double %348, %349
  %351 = load double, double* %70, align 8
  %352 = load double, double* %108, align 8
  %353 = load double, double* %113, align 8
  %354 = fsub double %352, %353
  %355 = load double, double* %108, align 8
  %356 = fdiv double %355, 4.000000e+00
  %357 = call double @dml_max(double %354, double %356)
  %358 = call double @dml_max(double %351, double %357)
  %359 = call double @dml_max(double %350, double %358)
  store double %359, double* %114, align 8
  br label %364

360:                                              ; preds = %341
  %361 = load double, double* %108, align 8
  %362 = load double, double* %113, align 8
  %363 = fsub double %361, %362
  store double %363, double* %114, align 8
  br label %364

364:                                              ; preds = %360, %344
  %365 = load double, double* %113, align 8
  %366 = load double, double* %114, align 8
  %367 = fadd double %365, %366
  %368 = load double, double* %111, align 8
  %369 = fadd double %367, %368
  store double %369, double* %115, align 8
  %370 = load double, double* %115, align 8
  %371 = load double, double* %108, align 8
  %372 = fdiv double %370, %371
  store double %372, double* %116, align 8
  %373 = load double, double* %116, align 8
  %374 = load double, double* %110, align 8
  %375 = fcmp olt double %373, %374
  br i1 %375, label %376, label %379

376:                                              ; preds = %364
  %377 = load double, double* %116, align 8
  %378 = load double*, double** %94, align 8
  store double %377, double* %378, align 8
  br label %382

379:                                              ; preds = %364
  %380 = load double, double* %110, align 8
  %381 = load double*, double** %94, align 8
  store double %380, double* %381, align 8
  br label %382

382:                                              ; preds = %379, %376
  %383 = load double*, double** %94, align 8
  %384 = load double, double* %383, align 8
  %385 = fadd double %384, 1.250000e-01
  %386 = fmul double 4.000000e+00, %385
  %387 = call double @dml_floor(double %386, i32 1)
  %388 = fdiv double %387, 4.000000e+00
  %389 = load double*, double** %94, align 8
  store double %388, double* %389, align 8
  %390 = load i32, i32* %63, align 4
  %391 = call i32 @dml_print(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %390)
  %392 = load double, double* %72, align 8
  %393 = fptoui double %392 to i32
  %394 = call i32 @dml_print(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %393)
  %395 = load double, double* %87, align 8
  %396 = fptoui double %395 to i32
  %397 = call i32 @dml_print(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %396)
  %398 = load double, double* %89, align 8
  %399 = fptoui double %398 to i32
  %400 = call i32 @dml_print(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %399)
  %401 = load double, double* %108, align 8
  %402 = fptoui double %401 to i32
  %403 = call i32 @dml_print(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %402)
  %404 = load double, double* %109, align 8
  %405 = fptoui double %404 to i32
  %406 = call i32 @dml_print(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %405)
  %407 = load double, double* %107, align 8
  %408 = fptoui double %407 to i32
  %409 = call i32 @dml_print(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %408)
  %410 = load double, double* %93, align 8
  %411 = fptoui double %410 to i32
  %412 = call i32 @dml_print(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %411)
  %413 = load double, double* %92, align 8
  %414 = fptoui double %413 to i32
  %415 = call i32 @dml_print(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i32 %414)
  %416 = load i32, i32* %61, align 4
  %417 = call i32 @dml_print(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32 %416)
  %418 = load double*, double** %95, align 8
  store double 0.000000e+00, double* %418, align 8
  %419 = load double*, double** %96, align 8
  store double 0.000000e+00, double* %419, align 8
  %420 = load double*, double** %97, align 8
  store double 0.000000e+00, double* %420, align 8
  %421 = load double*, double** %98, align 8
  store double 0.000000e+00, double* %421, align 8
  %422 = load double*, double** %99, align 8
  store double 0.000000e+00, double* %422, align 8
  %423 = load double*, double** %100, align 8
  store double 0.000000e+00, double* %423, align 8
  %424 = load double*, double** %94, align 8
  %425 = load double, double* %424, align 8
  %426 = fcmp ogt double %425, 1.000000e+00
  br i1 %426, label %427, label %682

427:                                              ; preds = %382
  %428 = load i32, i32* %73, align 4
  %429 = load i32, i32* %74, align 4
  %430 = mul i32 2, %429
  %431 = add i32 %428, %430
  %432 = load i32, i32* %75, align 4
  %433 = mul i32 2, %432
  %434 = add i32 %431, %433
  %435 = uitofp i32 %434 to double
  %436 = load double, double* %76, align 8
  %437 = load i32, i32* %77, align 4
  %438 = uitofp i32 %437 to double
  %439 = fmul double %436, %438
  %440 = load double, double* %78, align 8
  %441 = call double @dml_ceil(double %440, i32 1)
  %442 = fmul double %439, %441
  %443 = fadd double %435, %442
  %444 = load double, double* %81, align 8
  %445 = load i32, i32* %77, align 4
  %446 = uitofp i32 %445 to double
  %447 = fmul double %444, %446
  %448 = fdiv double %447, 2.000000e+00
  %449 = load double, double* %82, align 8
  %450 = call double @dml_ceil(double %449, i32 2)
  %451 = fmul double %448, %450
  %452 = fadd double %443, %451
  %453 = load double*, double** %94, align 8
  %454 = load double, double* %453, align 8
  %455 = load double, double* %108, align 8
  %456 = fmul double %454, %455
  %457 = load double*, double** %101, align 8
  %458 = load double, double* %457, align 8
  %459 = fsub double %456, %458
  %460 = fdiv double %452, %459
  %461 = load double*, double** %95, align 8
  store double %460, double* %461, align 8
  %462 = load i32, i32* %65, align 4
  %463 = icmp ne i32 %462, 0
  br i1 %463, label %464, label %484

464:                                              ; preds = %427
  %465 = load double*, double** %101, align 8
  %466 = load double, double* %465, align 8
  %467 = load i32, i32* %73, align 4
  %468 = uitofp i32 %467 to double
  %469 = load double*, double** %95, align 8
  %470 = load double, double* %469, align 8
  %471 = fdiv double %468, %470
  %472 = fadd double %466, %471
  %473 = load double, double* %71, align 8
  %474 = load double, double* %70, align 8
  %475 = load i32, i32* %64, align 4
  %476 = sub i32 %475, 1
  %477 = uitofp i32 %476 to double
  %478 = fmul double %474, %477
  %479 = fadd double %473, %478
  %480 = load double, double* %108, align 8
  %481 = fdiv double %480, 4.000000e+00
  %482 = call double @dml_max(double %479, double %481)
  %483 = call double @dml_max(double %472, double %482)
  store double %483, double* %117, align 8
  br label %495

484:                                              ; preds = %427
  %485 = load i32, i32* %59, align 4
  %486 = icmp ugt i32 %485, 0
  br i1 %486, label %490, label %487

487:                                              ; preds = %484
  %488 = load i32, i32* %88, align 4
  %489 = icmp ne i32 %488, 0
  br i1 %489, label %490, label %493

490:                                              ; preds = %487, %484
  %491 = load double, double* %108, align 8
  %492 = fdiv double %491, 4.000000e+00
  store double %492, double* %117, align 8
  br label %494

493:                                              ; preds = %487
  store double 0.000000e+00, double* %117, align 8
  br label %494

494:                                              ; preds = %493, %490
  br label %495

495:                                              ; preds = %494, %464
  %496 = load i32, i32* %65, align 4
  %497 = icmp eq i32 %496, 1
  br i1 %497, label %501, label %498

498:                                              ; preds = %495
  %499 = load i32, i32* %69, align 4
  %500 = icmp eq i32 %499, 1
  br i1 %500, label %501, label %518

501:                                              ; preds = %498, %495
  %502 = load i32, i32* %74, align 4
  %503 = load i32, i32* %75, align 4
  %504 = add i32 %502, %503
  %505 = uitofp i32 %504 to double
  %506 = load double*, double** %95, align 8
  %507 = load double, double* %506, align 8
  %508 = fdiv double %505, %507
  %509 = load double, double* %70, align 8
  %510 = load double, double* %108, align 8
  %511 = load double, double* %117, align 8
  %512 = fsub double %510, %511
  %513 = load double, double* %108, align 8
  %514 = fdiv double %513, 4.000000e+00
  %515 = call double @dml_max(double %512, double %514)
  %516 = call double @dml_max(double %509, double %515)
  %517 = call double @dml_max(double %508, double %516)
  store double %517, double* %118, align 8
  br label %530

518:                                              ; preds = %498
  %519 = load i32, i32* %59, align 4
  %520 = icmp ugt i32 %519, 0
  br i1 %520, label %524, label %521

521:                                              ; preds = %518
  %522 = load i32, i32* %88, align 4
  %523 = icmp ne i32 %522, 0
  br i1 %523, label %524, label %528

524:                                              ; preds = %521, %518
  %525 = load double, double* %108, align 8
  %526 = load double, double* %117, align 8
  %527 = fsub double %525, %526
  store double %527, double* %118, align 8
  br label %529

528:                                              ; preds = %521
  store double 0.000000e+00, double* %118, align 8
  br label %529

529:                                              ; preds = %528, %524
  br label %530

530:                                              ; preds = %529, %501
  %531 = load double, double* %117, align 8
  %532 = load double, double* %108, align 8
  %533 = fdiv double %531, %532
  %534 = fadd double %533, 1.250000e-01
  %535 = fmul double 4.000000e+00, %534
  %536 = call double @dml_floor(double %535, i32 1)
  %537 = fdiv double %536, 4.000000e+00
  %538 = load double*, double** %96, align 8
  store double %537, double* %538, align 8
  %539 = load double, double* %118, align 8
  %540 = load double, double* %108, align 8
  %541 = fdiv double %539, %540
  %542 = fadd double %541, 1.250000e-01
  %543 = fmul double 4.000000e+00, %542
  %544 = call double @dml_floor(double %543, i32 1)
  %545 = fdiv double %544, 4.000000e+00
  %546 = load double*, double** %97, align 8
  store double %545, double* %546, align 8
  %547 = load double*, double** %94, align 8
  %548 = load double, double* %547, align 8
  %549 = load i32, i32* %59, align 4
  %550 = icmp ugt i32 %549, 0
  br i1 %550, label %557, label %551

551:                                              ; preds = %530
  %552 = load i32, i32* %65, align 4
  %553 = icmp ne i32 %552, 0
  br i1 %553, label %557, label %554

554:                                              ; preds = %551
  %555 = load i32, i32* %69, align 4
  %556 = icmp ne i32 %555, 0
  br i1 %556, label %557, label %563

557:                                              ; preds = %554, %551, %530
  %558 = load double*, double** %96, align 8
  %559 = load double, double* %558, align 8
  %560 = load double*, double** %97, align 8
  %561 = load double, double* %560, align 8
  %562 = fadd double %559, %561
  br label %564

563:                                              ; preds = %554
  br label %564

564:                                              ; preds = %563, %557
  %565 = phi double [ %562, %557 ], [ 0.000000e+00, %563 ]
  %566 = fsub double %548, %565
  store double %566, double* %119, align 8
  %567 = load double, double* %119, align 8
  %568 = fcmp ogt double %567, 0.000000e+00
  br i1 %568, label %569, label %677

569:                                              ; preds = %564
  %570 = load double, double* %76, align 8
  %571 = load double, double* %119, align 8
  %572 = fdiv double %570, %571
  %573 = load double*, double** %98, align 8
  store double %572, double* %573, align 8
  %574 = load double*, double** %98, align 8
  %575 = load double, double* %574, align 8
  %576 = call double @dml_max(double %575, double 1.000000e+00)
  %577 = load double*, double** %98, align 8
  store double %576, double* %577, align 8
  %578 = load i32, i32* %85, align 4
  %579 = icmp ugt i32 %578, 4
  br i1 %579, label %580, label %613

580:                                              ; preds = %569
  %581 = load double, double* %79, align 8
  %582 = fcmp ogt double %581, 3.000000e+00
  br i1 %582, label %583, label %613

583:                                              ; preds = %580
  %584 = load double, double* %119, align 8
  %585 = load double, double* %79, align 8
  %586 = fsub double %585, 3.000000e+00
  %587 = fdiv double %586, 2.000000e+00
  %588 = fcmp ogt double %584, %587
  br i1 %588, label %589, label %610

589:                                              ; preds = %583
  %590 = load double, double* %76, align 8
  %591 = load double, double* %119, align 8
  %592 = fdiv double %590, %591
  %593 = load i32, i32* %80, align 4
  %594 = uitofp i32 %593 to double
  %595 = load i32, i32* %85, align 4
  %596 = uitofp i32 %595 to double
  %597 = fmul double %594, %596
  %598 = load double, double* %119, align 8
  %599 = load double, double* %79, align 8
  %600 = fsub double %599, 3.000000e+00
  %601 = fdiv double %600, 2.000000e+00
  %602 = fsub double %598, %601
  %603 = fdiv double %597, %602
  %604 = call double @dml_max(double %592, double %603)
  %605 = load double*, double** %98, align 8
  store double %604, double* %605, align 8
  %606 = load double*, double** %98, align 8
  %607 = load double, double* %606, align 8
  %608 = call double @dml_max(double %607, double 1.000000e+00)
  %609 = load double*, double** %98, align 8
  store double %608, double* %609, align 8
  br label %612

610:                                              ; preds = %583
  store i32 1, i32* %105, align 4
  %611 = load double*, double** %98, align 8
  store double 0.000000e+00, double* %611, align 8
  br label %612

612:                                              ; preds = %610, %589
  br label %613

613:                                              ; preds = %612, %580, %569
  %614 = load double, double* %81, align 8
  %615 = load double, double* %119, align 8
  %616 = fdiv double %614, %615
  %617 = load double*, double** %99, align 8
  store double %616, double* %617, align 8
  %618 = load double*, double** %99, align 8
  %619 = load double, double* %618, align 8
  %620 = call double @dml_max(double %619, double 1.000000e+00)
  %621 = load double*, double** %99, align 8
  store double %620, double* %621, align 8
  %622 = load i32, i32* %86, align 4
  %623 = icmp ugt i32 %622, 4
  br i1 %623, label %624, label %653

624:                                              ; preds = %613
  %625 = load double, double* %119, align 8
  %626 = load double, double* %83, align 8
  %627 = fsub double %626, 3.000000e+00
  %628 = fdiv double %627, 2.000000e+00
  %629 = fcmp ogt double %625, %628
  br i1 %629, label %630, label %650

630:                                              ; preds = %624
  %631 = load double*, double** %99, align 8
  %632 = load double, double* %631, align 8
  %633 = load i32, i32* %84, align 4
  %634 = uitofp i32 %633 to double
  %635 = load i32, i32* %86, align 4
  %636 = uitofp i32 %635 to double
  %637 = fmul double %634, %636
  %638 = load double, double* %119, align 8
  %639 = load double, double* %83, align 8
  %640 = fsub double %639, 3.000000e+00
  %641 = fdiv double %640, 2.000000e+00
  %642 = fsub double %638, %641
  %643 = fdiv double %637, %642
  %644 = call double @dml_max(double %632, double %643)
  %645 = load double*, double** %99, align 8
  store double %644, double* %645, align 8
  %646 = load double*, double** %99, align 8
  %647 = load double, double* %646, align 8
  %648 = call double @dml_max(double %647, double 1.000000e+00)
  %649 = load double*, double** %99, align 8
  store double %648, double* %649, align 8
  br label %652

650:                                              ; preds = %624
  store i32 1, i32* %105, align 4
  %651 = load double*, double** %99, align 8
  store double 0.000000e+00, double* %651, align 8
  br label %652

652:                                              ; preds = %650, %630
  br label %653

653:                                              ; preds = %652, %613
  %654 = load i32, i32* %58, align 4
  %655 = uitofp i32 %654 to double
  %656 = load double, double* %76, align 8
  %657 = load double, double* %119, align 8
  %658 = fdiv double %656, %657
  %659 = load double, double* %78, align 8
  %660 = call double @dml_ceil(double %659, i32 1)
  %661 = fmul double %658, %660
  %662 = load double, double* %81, align 8
  %663 = load double, double* %119, align 8
  %664 = fdiv double %662, %663
  %665 = load double, double* %82, align 8
  %666 = call double @dml_ceil(double %665, i32 2)
  %667 = fmul double %664, %666
  %668 = fdiv double %667, 2.000000e+00
  %669 = fadd double %661, %668
  %670 = fmul double %655, %669
  %671 = load i32, i32* %77, align 4
  %672 = uitofp i32 %671 to double
  %673 = fmul double %670, %672
  %674 = load double, double* %108, align 8
  %675 = fdiv double %673, %674
  %676 = load double*, double** %100, align 8
  store double %675, double* %676, align 8
  br label %681

677:                                              ; preds = %564
  store i32 1, i32* %105, align 4
  %678 = load double*, double** %98, align 8
  store double 0.000000e+00, double* %678, align 8
  %679 = load double*, double** %99, align 8
  store double 0.000000e+00, double* %679, align 8
  %680 = load double*, double** %100, align 8
  store double 0.000000e+00, double* %680, align 8
  br label %681

681:                                              ; preds = %677, %653
  br label %683

682:                                              ; preds = %382
  store i32 1, i32* %105, align 4
  br label %683

683:                                              ; preds = %682, %681
  %684 = load i32, i32* %105, align 4
  %685 = icmp ne i32 %684, 0
  br i1 %685, label %686, label %694

686:                                              ; preds = %683
  %687 = load double*, double** %95, align 8
  store double 0.000000e+00, double* %687, align 8
  store double 0.000000e+00, double* %117, align 8
  store double 0.000000e+00, double* %118, align 8
  %688 = load double*, double** %96, align 8
  store double 0.000000e+00, double* %688, align 8
  %689 = load double*, double** %97, align 8
  store double 0.000000e+00, double* %689, align 8
  %690 = load double*, double** %94, align 8
  store double 0.000000e+00, double* %690, align 8
  store double 0.000000e+00, double* %119, align 8
  %691 = load double*, double** %98, align 8
  store double 0.000000e+00, double* %691, align 8
  %692 = load double*, double** %99, align 8
  store double 0.000000e+00, double* %692, align 8
  %693 = load double*, double** %100, align 8
  store double 0.000000e+00, double* %693, align 8
  br label %694

694:                                              ; preds = %686, %683
  %695 = load i32, i32* %105, align 4
  ret i32 %695
}

declare dso_local double @dml_ceil(double, i32) #1

declare dso_local double @dml_max(double, double) #1

declare dso_local double @dml_floor(double, i32) #1

declare dso_local i32 @dml_print(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/extr_gamecon.c_gc_nes_process_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/extr_gamecon.c_gc_nes_process_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gc = type { %struct.gc_pad*, i64* }
%struct.gc_pad = type { i32, %struct.input_dev* }
%struct.input_dev = type { i32 }

@GC_SNESMOUSE_LENGTH = common dso_local global i32 0, align 4
@GC_SNES_LENGTH = common dso_local global i32 0, align 4
@GC_NES_LENGTH = common dso_local global i32 0, align 4
@GC_MAX_DEVICES = common dso_local global i32 0, align 4
@gc_status_bit = common dso_local global i32* null, align 8
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@gc_snes_btn = common dso_local global i32* null, align 8
@gc_nes_bytes = common dso_local global i64* null, align 8
@gc_snes_bytes = common dso_local global i64* null, align 8
@BTN_LEFT = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@REL_X = common dso_local global i32 0, align 4
@REL_Y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gc*)* @gc_nes_process_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gc_nes_process_packet(%struct.gc* %0) #0 {
  %2 = alloca %struct.gc*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.gc_pad*, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  store %struct.gc* %0, %struct.gc** %2, align 8
  %13 = load i32, i32* @GC_SNESMOUSE_LENGTH, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %3, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %4, align 8
  %17 = load %struct.gc*, %struct.gc** %2, align 8
  %18 = getelementptr inbounds %struct.gc, %struct.gc* %17, i32 0, i32 1
  %19 = load i64*, i64** %18, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 128
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* @GC_SNESMOUSE_LENGTH, align 4
  br label %38

25:                                               ; preds = %1
  %26 = load %struct.gc*, %struct.gc** %2, align 8
  %27 = getelementptr inbounds %struct.gc, %struct.gc* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 129
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* @GC_SNES_LENGTH, align 4
  br label %36

34:                                               ; preds = %25
  %35 = load i32, i32* @GC_NES_LENGTH, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  br label %38

38:                                               ; preds = %36, %23
  %39 = phi i32 [ %24, %23 ], [ %37, %36 ]
  store i32 %39, i32* %10, align 4
  %40 = load %struct.gc*, %struct.gc** %2, align 8
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @gc_nes_read_packet(%struct.gc* %40, i32 %41, i8* %16)
  store i32 0, i32* %7, align 4
  br label %43

43:                                               ; preds = %337, %38
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @GC_MAX_DEVICES, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %340

47:                                               ; preds = %43
  %48 = load %struct.gc*, %struct.gc** %2, align 8
  %49 = getelementptr inbounds %struct.gc, %struct.gc* %48, i32 0, i32 0
  %50 = load %struct.gc_pad*, %struct.gc_pad** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.gc_pad, %struct.gc_pad* %50, i64 %52
  store %struct.gc_pad* %53, %struct.gc_pad** %5, align 8
  %54 = load %struct.gc_pad*, %struct.gc_pad** %5, align 8
  %55 = getelementptr inbounds %struct.gc_pad, %struct.gc_pad* %54, i32 0, i32 1
  %56 = load %struct.input_dev*, %struct.input_dev** %55, align 8
  store %struct.input_dev* %56, %struct.input_dev** %6, align 8
  %57 = load i32*, i32** @gc_status_bit, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %9, align 4
  %62 = load %struct.gc_pad*, %struct.gc_pad** %5, align 8
  %63 = getelementptr inbounds %struct.gc_pad, %struct.gc_pad* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  switch i32 %64, label %335 [
    i32 130, label %65
    i32 129, label %133
    i32 128, label %201
  ]

65:                                               ; preds = %47
  %66 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %67 = load i32, i32* @ABS_X, align 4
  %68 = load i32, i32* %9, align 4
  %69 = getelementptr inbounds i8, i8* %16, i64 6
  %70 = load i8, i8* %69, align 2
  %71 = zext i8 %70 to i32
  %72 = and i32 %68, %71
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = load i32, i32* %9, align 4
  %77 = getelementptr inbounds i8, i8* %16, i64 7
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = and i32 %76, %79
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = sub nsw i32 %75, %83
  %85 = call i32 @input_report_abs(%struct.input_dev* %66, i32 %67, i32 %84)
  %86 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %87 = load i32, i32* @ABS_Y, align 4
  %88 = load i32, i32* %9, align 4
  %89 = getelementptr inbounds i8, i8* %16, i64 4
  %90 = load i8, i8* %89, align 4
  %91 = zext i8 %90 to i32
  %92 = and i32 %88, %91
  %93 = icmp ne i32 %92, 0
  %94 = xor i1 %93, true
  %95 = zext i1 %94 to i32
  %96 = load i32, i32* %9, align 4
  %97 = getelementptr inbounds i8, i8* %16, i64 5
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  %100 = and i32 %96, %99
  %101 = icmp ne i32 %100, 0
  %102 = xor i1 %101, true
  %103 = zext i1 %102 to i32
  %104 = sub nsw i32 %95, %103
  %105 = call i32 @input_report_abs(%struct.input_dev* %86, i32 %87, i32 %104)
  store i32 0, i32* %8, align 4
  br label %106

106:                                              ; preds = %127, %65
  %107 = load i32, i32* %8, align 4
  %108 = icmp slt i32 %107, 4
  br i1 %108, label %109, label %130

109:                                              ; preds = %106
  %110 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %111 = load i32*, i32** @gc_snes_btn, align 8
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %9, align 4
  %117 = load i64*, i64** @gc_nes_bytes, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i64, i64* %117, i64 %119
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds i8, i8* %16, i64 %121
  %123 = load i8, i8* %122, align 1
  %124 = zext i8 %123 to i32
  %125 = and i32 %116, %124
  %126 = call i32 @input_report_key(%struct.input_dev* %110, i32 %115, i32 %125)
  br label %127

127:                                              ; preds = %109
  %128 = load i32, i32* %8, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %8, align 4
  br label %106

130:                                              ; preds = %106
  %131 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %132 = call i32 @input_sync(%struct.input_dev* %131)
  br label %336

133:                                              ; preds = %47
  %134 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %135 = load i32, i32* @ABS_X, align 4
  %136 = load i32, i32* %9, align 4
  %137 = getelementptr inbounds i8, i8* %16, i64 6
  %138 = load i8, i8* %137, align 2
  %139 = zext i8 %138 to i32
  %140 = and i32 %136, %139
  %141 = icmp ne i32 %140, 0
  %142 = xor i1 %141, true
  %143 = zext i1 %142 to i32
  %144 = load i32, i32* %9, align 4
  %145 = getelementptr inbounds i8, i8* %16, i64 7
  %146 = load i8, i8* %145, align 1
  %147 = zext i8 %146 to i32
  %148 = and i32 %144, %147
  %149 = icmp ne i32 %148, 0
  %150 = xor i1 %149, true
  %151 = zext i1 %150 to i32
  %152 = sub nsw i32 %143, %151
  %153 = call i32 @input_report_abs(%struct.input_dev* %134, i32 %135, i32 %152)
  %154 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %155 = load i32, i32* @ABS_Y, align 4
  %156 = load i32, i32* %9, align 4
  %157 = getelementptr inbounds i8, i8* %16, i64 4
  %158 = load i8, i8* %157, align 4
  %159 = zext i8 %158 to i32
  %160 = and i32 %156, %159
  %161 = icmp ne i32 %160, 0
  %162 = xor i1 %161, true
  %163 = zext i1 %162 to i32
  %164 = load i32, i32* %9, align 4
  %165 = getelementptr inbounds i8, i8* %16, i64 5
  %166 = load i8, i8* %165, align 1
  %167 = zext i8 %166 to i32
  %168 = and i32 %164, %167
  %169 = icmp ne i32 %168, 0
  %170 = xor i1 %169, true
  %171 = zext i1 %170 to i32
  %172 = sub nsw i32 %163, %171
  %173 = call i32 @input_report_abs(%struct.input_dev* %154, i32 %155, i32 %172)
  store i32 0, i32* %8, align 4
  br label %174

174:                                              ; preds = %195, %133
  %175 = load i32, i32* %8, align 4
  %176 = icmp slt i32 %175, 8
  br i1 %176, label %177, label %198

177:                                              ; preds = %174
  %178 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %179 = load i32*, i32** @gc_snes_btn, align 8
  %180 = load i32, i32* %8, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* %9, align 4
  %185 = load i64*, i64** @gc_snes_bytes, align 8
  %186 = load i32, i32* %8, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i64, i64* %185, i64 %187
  %189 = load i64, i64* %188, align 8
  %190 = getelementptr inbounds i8, i8* %16, i64 %189
  %191 = load i8, i8* %190, align 1
  %192 = zext i8 %191 to i32
  %193 = and i32 %184, %192
  %194 = call i32 @input_report_key(%struct.input_dev* %178, i32 %183, i32 %193)
  br label %195

195:                                              ; preds = %177
  %196 = load i32, i32* %8, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %8, align 4
  br label %174

198:                                              ; preds = %174
  %199 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %200 = call i32 @input_sync(%struct.input_dev* %199)
  br label %336

201:                                              ; preds = %47
  %202 = load i32, i32* %9, align 4
  %203 = getelementptr inbounds i8, i8* %16, i64 12
  %204 = load i8, i8* %203, align 4
  %205 = zext i8 %204 to i32
  %206 = and i32 %202, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %334, label %208

208:                                              ; preds = %201
  %209 = load i32, i32* %9, align 4
  %210 = getelementptr inbounds i8, i8* %16, i64 13
  %211 = load i8, i8* %210, align 1
  %212 = zext i8 %211 to i32
  %213 = and i32 %209, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %334, label %215

215:                                              ; preds = %208
  %216 = load i32, i32* %9, align 4
  %217 = getelementptr inbounds i8, i8* %16, i64 14
  %218 = load i8, i8* %217, align 2
  %219 = zext i8 %218 to i32
  %220 = and i32 %216, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %334, label %222

222:                                              ; preds = %215
  %223 = load i32, i32* %9, align 4
  %224 = getelementptr inbounds i8, i8* %16, i64 15
  %225 = load i8, i8* %224, align 1
  %226 = zext i8 %225 to i32
  %227 = and i32 %223, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %334

229:                                              ; preds = %222
  %230 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %231 = load i32, i32* @BTN_LEFT, align 4
  %232 = load i32, i32* %9, align 4
  %233 = getelementptr inbounds i8, i8* %16, i64 9
  %234 = load i8, i8* %233, align 1
  %235 = zext i8 %234 to i32
  %236 = and i32 %232, %235
  %237 = call i32 @input_report_key(%struct.input_dev* %230, i32 %231, i32 %236)
  %238 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %239 = load i32, i32* @BTN_RIGHT, align 4
  %240 = load i32, i32* %9, align 4
  %241 = getelementptr inbounds i8, i8* %16, i64 8
  %242 = load i8, i8* %241, align 8
  %243 = zext i8 %242 to i32
  %244 = and i32 %240, %243
  %245 = call i32 @input_report_key(%struct.input_dev* %238, i32 %239, i32 %244)
  store i8 0, i8* %12, align 1
  store i8 0, i8* %11, align 1
  store i32 0, i32* %8, align 4
  br label %246

246:                                              ; preds = %288, %229
  %247 = load i32, i32* %8, align 4
  %248 = icmp slt i32 %247, 7
  br i1 %248, label %249, label %291

249:                                              ; preds = %246
  %250 = load i8, i8* %11, align 1
  %251 = sext i8 %250 to i32
  %252 = shl i32 %251, 1
  %253 = trunc i32 %252 to i8
  store i8 %253, i8* %11, align 1
  %254 = load i32, i32* %8, align 4
  %255 = add nsw i32 25, %254
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i8, i8* %16, i64 %256
  %258 = load i8, i8* %257, align 1
  %259 = zext i8 %258 to i32
  %260 = load i32, i32* %9, align 4
  %261 = and i32 %259, %260
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %268

263:                                              ; preds = %249
  %264 = load i8, i8* %11, align 1
  %265 = sext i8 %264 to i32
  %266 = or i32 %265, 1
  %267 = trunc i32 %266 to i8
  store i8 %267, i8* %11, align 1
  br label %268

268:                                              ; preds = %263, %249
  %269 = load i8, i8* %12, align 1
  %270 = sext i8 %269 to i32
  %271 = shl i32 %270, 1
  %272 = trunc i32 %271 to i8
  store i8 %272, i8* %12, align 1
  %273 = load i32, i32* %8, align 4
  %274 = add nsw i32 17, %273
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i8, i8* %16, i64 %275
  %277 = load i8, i8* %276, align 1
  %278 = zext i8 %277 to i32
  %279 = load i32, i32* %9, align 4
  %280 = and i32 %278, %279
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %287

282:                                              ; preds = %268
  %283 = load i8, i8* %12, align 1
  %284 = sext i8 %283 to i32
  %285 = or i32 %284, 1
  %286 = trunc i32 %285 to i8
  store i8 %286, i8* %12, align 1
  br label %287

287:                                              ; preds = %282, %268
  br label %288

288:                                              ; preds = %287
  %289 = load i32, i32* %8, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %8, align 4
  br label %246

291:                                              ; preds = %246
  %292 = load i8, i8* %11, align 1
  %293 = icmp ne i8 %292, 0
  br i1 %293, label %294, label %311

294:                                              ; preds = %291
  %295 = getelementptr inbounds i8, i8* %16, i64 24
  %296 = load i8, i8* %295, align 8
  %297 = zext i8 %296 to i32
  %298 = load i32, i32* %9, align 4
  %299 = and i32 %297, %298
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %306

301:                                              ; preds = %294
  %302 = load i8, i8* %11, align 1
  %303 = sext i8 %302 to i32
  %304 = sub nsw i32 0, %303
  %305 = trunc i32 %304 to i8
  store i8 %305, i8* %11, align 1
  br label %306

306:                                              ; preds = %301, %294
  %307 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %308 = load i32, i32* @REL_X, align 4
  %309 = load i8, i8* %11, align 1
  %310 = call i32 @input_report_rel(%struct.input_dev* %307, i32 %308, i8 signext %309)
  br label %311

311:                                              ; preds = %306, %291
  %312 = load i8, i8* %12, align 1
  %313 = icmp ne i8 %312, 0
  br i1 %313, label %314, label %331

314:                                              ; preds = %311
  %315 = getelementptr inbounds i8, i8* %16, i64 16
  %316 = load i8, i8* %315, align 16
  %317 = zext i8 %316 to i32
  %318 = load i32, i32* %9, align 4
  %319 = and i32 %317, %318
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %326

321:                                              ; preds = %314
  %322 = load i8, i8* %12, align 1
  %323 = sext i8 %322 to i32
  %324 = sub nsw i32 0, %323
  %325 = trunc i32 %324 to i8
  store i8 %325, i8* %12, align 1
  br label %326

326:                                              ; preds = %321, %314
  %327 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %328 = load i32, i32* @REL_Y, align 4
  %329 = load i8, i8* %12, align 1
  %330 = call i32 @input_report_rel(%struct.input_dev* %327, i32 %328, i8 signext %329)
  br label %331

331:                                              ; preds = %326, %311
  %332 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %333 = call i32 @input_sync(%struct.input_dev* %332)
  br label %334

334:                                              ; preds = %331, %222, %215, %208, %201
  br label %336

335:                                              ; preds = %47
  br label %336

336:                                              ; preds = %335, %334, %198, %130
  br label %337

337:                                              ; preds = %336
  %338 = load i32, i32* %7, align 4
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* %7, align 4
  br label %43

340:                                              ; preds = %43
  %341 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %341)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @gc_nes_read_packet(%struct.gc*, i32, i8*) #2

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #2

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #2

declare dso_local i32 @input_sync(%struct.input_dev*) #2

declare dso_local i32 @input_report_rel(%struct.input_dev*, i32, i8 signext) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

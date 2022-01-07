; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/extr_db9.c_db9_saturn_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/extr_db9.c_db9_saturn_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }

@db9_abs = common dso_local global i32* null, align 8
@db9_cd32_btn = common dso_local global i32* null, align 8
@db9_saturn_byte = common dso_local global i32* null, align 8
@db9_saturn_mask = common dso_local global i8* null, align 8
@BTN_A = common dso_local global i32 0, align 4
@BTN_START = common dso_local global i32 0, align 4
@BTN_C = common dso_local global i32 0, align 4
@BTN_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8, i8*, %struct.input_dev**, i32, i32)* @db9_saturn_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db9_saturn_report(i8 zeroext %0, i8* %1, %struct.input_dev** %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca %struct.input_dev**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.input_dev*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8 %0, i8* %6, align 1
  store i8* %1, i8** %7, align 8
  store %struct.input_dev** %2, %struct.input_dev*** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load i8, i8* %6, align 1
  %16 = zext i8 %15 to i32
  %17 = icmp eq i32 %16, 65
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 60, i32 10
  store i32 %19, i32* %12, align 4
  store i32 0, i32* %14, align 4
  br label %20

20:                                               ; preds = %482, %5
  %21 = load i32, i32* %14, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp slt i32 %25, %26
  br label %28

28:                                               ; preds = %24, %20
  %29 = phi i1 [ false, %20 ], [ %27, %24 ]
  br i1 %29, label %30, label %487

30:                                               ; preds = %28
  %31 = load %struct.input_dev**, %struct.input_dev*** %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.input_dev*, %struct.input_dev** %31, i64 %33
  %35 = load %struct.input_dev*, %struct.input_dev** %34, align 8
  store %struct.input_dev* %35, %struct.input_dev** %11, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load i32, i32* %14, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  switch i32 %41, label %455 [
    i32 22, label %42
    i32 21, label %55
    i32 19, label %80
    i32 52, label %93
    i32 2, label %93
    i32 25, label %186
    i32 211, label %351
    i32 227, label %377
    i32 255, label %454
  ]

42:                                               ; preds = %30
  %43 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %44 = load i32*, i32** @db9_abs, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 5
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %7, align 8
  %48 = load i32, i32* %14, align 4
  %49 = add nsw i32 %48, 6
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %47, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = call i32 @input_report_abs(%struct.input_dev* %43, i32 %46, i32 %53)
  br label %55

55:                                               ; preds = %30, %42
  %56 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %57 = load i32*, i32** @db9_abs, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 3
  %59 = load i32, i32* %58, align 4
  %60 = load i8*, i8** %7, align 8
  %61 = load i32, i32* %14, align 4
  %62 = add nsw i32 %61, 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %60, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = call i32 @input_report_abs(%struct.input_dev* %56, i32 %59, i32 %66)
  %68 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %69 = load i32*, i32** @db9_abs, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 4
  %71 = load i32, i32* %70, align 4
  %72 = load i8*, i8** %7, align 8
  %73 = load i32, i32* %14, align 4
  %74 = add nsw i32 %73, 5
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %72, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = call i32 @input_report_abs(%struct.input_dev* %68, i32 %71, i32 %78)
  br label %80

80:                                               ; preds = %30, %55
  %81 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %82 = load i32*, i32** @db9_abs, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 2
  %84 = load i32, i32* %83, align 4
  %85 = load i8*, i8** %7, align 8
  %86 = load i32, i32* %14, align 4
  %87 = add nsw i32 %86, 3
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %85, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = call i32 @input_report_abs(%struct.input_dev* %81, i32 %84, i32 %91)
  br label %93

93:                                               ; preds = %30, %30, %80
  %94 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %95 = load i32*, i32** @db9_abs, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = load i8*, i8** %7, align 8
  %99 = load i32, i32* %14, align 4
  %100 = add nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %98, i64 %101
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = and i32 %104, 128
  %106 = icmp ne i32 %105, 0
  %107 = xor i1 %106, true
  %108 = zext i1 %107 to i32
  %109 = load i8*, i8** %7, align 8
  %110 = load i32, i32* %14, align 4
  %111 = add nsw i32 %110, 1
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %109, i64 %112
  %114 = load i8, i8* %113, align 1
  %115 = zext i8 %114 to i32
  %116 = and i32 %115, 64
  %117 = icmp ne i32 %116, 0
  %118 = xor i1 %117, true
  %119 = zext i1 %118 to i32
  %120 = sub nsw i32 %108, %119
  %121 = call i32 @input_report_abs(%struct.input_dev* %94, i32 %97, i32 %120)
  %122 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %123 = load i32*, i32** @db9_abs, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 1
  %125 = load i32, i32* %124, align 4
  %126 = load i8*, i8** %7, align 8
  %127 = load i32, i32* %14, align 4
  %128 = add nsw i32 %127, 1
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %126, i64 %129
  %131 = load i8, i8* %130, align 1
  %132 = zext i8 %131 to i32
  %133 = and i32 %132, 32
  %134 = icmp ne i32 %133, 0
  %135 = xor i1 %134, true
  %136 = zext i1 %135 to i32
  %137 = load i8*, i8** %7, align 8
  %138 = load i32, i32* %14, align 4
  %139 = add nsw i32 %138, 1
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %137, i64 %140
  %142 = load i8, i8* %141, align 1
  %143 = zext i8 %142 to i32
  %144 = and i32 %143, 16
  %145 = icmp ne i32 %144, 0
  %146 = xor i1 %145, true
  %147 = zext i1 %146 to i32
  %148 = sub nsw i32 %136, %147
  %149 = call i32 @input_report_abs(%struct.input_dev* %122, i32 %125, i32 %148)
  store i32 0, i32* %13, align 4
  br label %150

150:                                              ; preds = %182, %93
  %151 = load i32, i32* %13, align 4
  %152 = icmp slt i32 %151, 9
  br i1 %152, label %153, label %185

153:                                              ; preds = %150
  %154 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %155 = load i32*, i32** @db9_cd32_btn, align 8
  %156 = load i32, i32* %13, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = load i8*, i8** %7, align 8
  %161 = load i32, i32* %14, align 4
  %162 = load i32*, i32** @db9_saturn_byte, align 8
  %163 = load i32, i32* %13, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = add nsw i32 %161, %166
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8, i8* %160, i64 %168
  %170 = load i8, i8* %169, align 1
  %171 = zext i8 %170 to i32
  %172 = xor i32 %171, -1
  %173 = load i8*, i8** @db9_saturn_mask, align 8
  %174 = load i32, i32* %13, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8, i8* %173, i64 %175
  %177 = load i8, i8* %176, align 1
  %178 = zext i8 %177 to i32
  %179 = and i32 %172, %178
  %180 = trunc i32 %179 to i8
  %181 = call i32 @input_report_key(%struct.input_dev* %154, i32 %159, i8 zeroext %180)
  br label %182

182:                                              ; preds = %153
  %183 = load i32, i32* %13, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %13, align 4
  br label %150

185:                                              ; preds = %150
  br label %481

186:                                              ; preds = %30
  %187 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %188 = load i32*, i32** @db9_abs, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 0
  %190 = load i32, i32* %189, align 4
  %191 = load i8*, i8** %7, align 8
  %192 = load i32, i32* %14, align 4
  %193 = add nsw i32 %192, 1
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8, i8* %191, i64 %194
  %196 = load i8, i8* %195, align 1
  %197 = zext i8 %196 to i32
  %198 = and i32 %197, 128
  %199 = icmp ne i32 %198, 0
  %200 = xor i1 %199, true
  %201 = zext i1 %200 to i32
  %202 = load i8*, i8** %7, align 8
  %203 = load i32, i32* %14, align 4
  %204 = add nsw i32 %203, 1
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i8, i8* %202, i64 %205
  %207 = load i8, i8* %206, align 1
  %208 = zext i8 %207 to i32
  %209 = and i32 %208, 64
  %210 = icmp ne i32 %209, 0
  %211 = xor i1 %210, true
  %212 = zext i1 %211 to i32
  %213 = sub nsw i32 %201, %212
  %214 = call i32 @input_report_abs(%struct.input_dev* %187, i32 %190, i32 %213)
  %215 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %216 = load i32*, i32** @db9_abs, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 1
  %218 = load i32, i32* %217, align 4
  %219 = load i8*, i8** %7, align 8
  %220 = load i32, i32* %14, align 4
  %221 = add nsw i32 %220, 1
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i8, i8* %219, i64 %222
  %224 = load i8, i8* %223, align 1
  %225 = zext i8 %224 to i32
  %226 = and i32 %225, 32
  %227 = icmp ne i32 %226, 0
  %228 = xor i1 %227, true
  %229 = zext i1 %228 to i32
  %230 = load i8*, i8** %7, align 8
  %231 = load i32, i32* %14, align 4
  %232 = add nsw i32 %231, 1
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i8, i8* %230, i64 %233
  %235 = load i8, i8* %234, align 1
  %236 = zext i8 %235 to i32
  %237 = and i32 %236, 16
  %238 = icmp ne i32 %237, 0
  %239 = xor i1 %238, true
  %240 = zext i1 %239 to i32
  %241 = sub nsw i32 %229, %240
  %242 = call i32 @input_report_abs(%struct.input_dev* %215, i32 %218, i32 %241)
  store i32 0, i32* %13, align 4
  br label %243

243:                                              ; preds = %275, %186
  %244 = load i32, i32* %13, align 4
  %245 = icmp slt i32 %244, 9
  br i1 %245, label %246, label %278

246:                                              ; preds = %243
  %247 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %248 = load i32*, i32** @db9_cd32_btn, align 8
  %249 = load i32, i32* %13, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %248, i64 %250
  %252 = load i32, i32* %251, align 4
  %253 = load i8*, i8** %7, align 8
  %254 = load i32, i32* %14, align 4
  %255 = load i32*, i32** @db9_saturn_byte, align 8
  %256 = load i32, i32* %13, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %255, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = add nsw i32 %254, %259
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i8, i8* %253, i64 %261
  %263 = load i8, i8* %262, align 1
  %264 = zext i8 %263 to i32
  %265 = xor i32 %264, -1
  %266 = load i8*, i8** @db9_saturn_mask, align 8
  %267 = load i32, i32* %13, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i8, i8* %266, i64 %268
  %270 = load i8, i8* %269, align 1
  %271 = zext i8 %270 to i32
  %272 = and i32 %265, %271
  %273 = trunc i32 %272 to i8
  %274 = call i32 @input_report_key(%struct.input_dev* %247, i32 %252, i8 zeroext %273)
  br label %275

275:                                              ; preds = %246
  %276 = load i32, i32* %13, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %13, align 4
  br label %243

278:                                              ; preds = %243
  %279 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %280 = load i32*, i32** @db9_abs, align 8
  %281 = getelementptr inbounds i32, i32* %280, i64 2
  %282 = load i32, i32* %281, align 4
  %283 = load i8*, i8** %7, align 8
  %284 = load i32, i32* %14, align 4
  %285 = add nsw i32 %284, 3
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i8, i8* %283, i64 %286
  %288 = load i8, i8* %287, align 1
  %289 = zext i8 %288 to i32
  %290 = call i32 @input_report_abs(%struct.input_dev* %279, i32 %282, i32 %289)
  %291 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %292 = load i32*, i32** @db9_abs, align 8
  %293 = getelementptr inbounds i32, i32* %292, i64 3
  %294 = load i32, i32* %293, align 4
  %295 = load i8*, i8** %7, align 8
  %296 = load i32, i32* %14, align 4
  %297 = add nsw i32 %296, 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i8, i8* %295, i64 %298
  %300 = load i8, i8* %299, align 1
  %301 = zext i8 %300 to i32
  %302 = call i32 @input_report_abs(%struct.input_dev* %291, i32 %294, i32 %301)
  %303 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %304 = load i32*, i32** @db9_abs, align 8
  %305 = getelementptr inbounds i32, i32* %304, i64 4
  %306 = load i32, i32* %305, align 4
  %307 = load i8*, i8** %7, align 8
  %308 = load i32, i32* %14, align 4
  %309 = add nsw i32 %308, 5
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i8, i8* %307, i64 %310
  %312 = load i8, i8* %311, align 1
  %313 = zext i8 %312 to i32
  %314 = call i32 @input_report_abs(%struct.input_dev* %303, i32 %306, i32 %313)
  %315 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %316 = load i32*, i32** @db9_abs, align 8
  %317 = getelementptr inbounds i32, i32* %316, i64 6
  %318 = load i32, i32* %317, align 4
  %319 = load i8*, i8** %7, align 8
  %320 = load i32, i32* %14, align 4
  %321 = add nsw i32 %320, 7
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i8, i8* %319, i64 %322
  %324 = load i8, i8* %323, align 1
  %325 = zext i8 %324 to i32
  %326 = call i32 @input_report_abs(%struct.input_dev* %315, i32 %318, i32 %325)
  %327 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %328 = load i32*, i32** @db9_abs, align 8
  %329 = getelementptr inbounds i32, i32* %328, i64 7
  %330 = load i32, i32* %329, align 4
  %331 = load i8*, i8** %7, align 8
  %332 = load i32, i32* %14, align 4
  %333 = add nsw i32 %332, 8
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i8, i8* %331, i64 %334
  %336 = load i8, i8* %335, align 1
  %337 = zext i8 %336 to i32
  %338 = call i32 @input_report_abs(%struct.input_dev* %327, i32 %330, i32 %337)
  %339 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %340 = load i32*, i32** @db9_abs, align 8
  %341 = getelementptr inbounds i32, i32* %340, i64 5
  %342 = load i32, i32* %341, align 4
  %343 = load i8*, i8** %7, align 8
  %344 = load i32, i32* %14, align 4
  %345 = add nsw i32 %344, 9
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i8, i8* %343, i64 %346
  %348 = load i8, i8* %347, align 1
  %349 = zext i8 %348 to i32
  %350 = call i32 @input_report_abs(%struct.input_dev* %339, i32 %342, i32 %349)
  br label %481

351:                                              ; preds = %30
  %352 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %353 = load i32, i32* @BTN_A, align 4
  %354 = load i8*, i8** %7, align 8
  %355 = load i32, i32* %14, align 4
  %356 = add nsw i32 %355, 3
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds i8, i8* %354, i64 %357
  %359 = load i8, i8* %358, align 1
  %360 = zext i8 %359 to i32
  %361 = and i32 %360, 128
  %362 = trunc i32 %361 to i8
  %363 = call i32 @input_report_key(%struct.input_dev* %352, i32 %353, i8 zeroext %362)
  %364 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %365 = load i32*, i32** @db9_abs, align 8
  %366 = getelementptr inbounds i32, i32* %365, i64 2
  %367 = load i32, i32* %366, align 4
  %368 = load i8*, i8** %7, align 8
  %369 = load i32, i32* %14, align 4
  %370 = add nsw i32 %369, 3
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i8, i8* %368, i64 %371
  %373 = load i8, i8* %372, align 1
  %374 = zext i8 %373 to i32
  %375 = and i32 %374, 127
  %376 = call i32 @input_report_abs(%struct.input_dev* %364, i32 %367, i32 %375)
  br label %481

377:                                              ; preds = %30
  %378 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %379 = load i32, i32* @BTN_START, align 4
  %380 = load i8*, i8** %7, align 8
  %381 = load i32, i32* %14, align 4
  %382 = add nsw i32 %381, 1
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds i8, i8* %380, i64 %383
  %385 = load i8, i8* %384, align 1
  %386 = zext i8 %385 to i32
  %387 = and i32 %386, 8
  %388 = trunc i32 %387 to i8
  %389 = call i32 @input_report_key(%struct.input_dev* %378, i32 %379, i8 zeroext %388)
  %390 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %391 = load i32, i32* @BTN_A, align 4
  %392 = load i8*, i8** %7, align 8
  %393 = load i32, i32* %14, align 4
  %394 = add nsw i32 %393, 1
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds i8, i8* %392, i64 %395
  %397 = load i8, i8* %396, align 1
  %398 = zext i8 %397 to i32
  %399 = and i32 %398, 4
  %400 = trunc i32 %399 to i8
  %401 = call i32 @input_report_key(%struct.input_dev* %390, i32 %391, i8 zeroext %400)
  %402 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %403 = load i32, i32* @BTN_C, align 4
  %404 = load i8*, i8** %7, align 8
  %405 = load i32, i32* %14, align 4
  %406 = add nsw i32 %405, 1
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds i8, i8* %404, i64 %407
  %409 = load i8, i8* %408, align 1
  %410 = zext i8 %409 to i32
  %411 = and i32 %410, 2
  %412 = trunc i32 %411 to i8
  %413 = call i32 @input_report_key(%struct.input_dev* %402, i32 %403, i8 zeroext %412)
  %414 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %415 = load i32, i32* @BTN_B, align 4
  %416 = load i8*, i8** %7, align 8
  %417 = load i32, i32* %14, align 4
  %418 = add nsw i32 %417, 1
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds i8, i8* %416, i64 %419
  %421 = load i8, i8* %420, align 1
  %422 = zext i8 %421 to i32
  %423 = and i32 %422, 1
  %424 = trunc i32 %423 to i8
  %425 = call i32 @input_report_key(%struct.input_dev* %414, i32 %415, i8 zeroext %424)
  %426 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %427 = load i32*, i32** @db9_abs, align 8
  %428 = getelementptr inbounds i32, i32* %427, i64 2
  %429 = load i32, i32* %428, align 4
  %430 = load i8*, i8** %7, align 8
  %431 = load i32, i32* %14, align 4
  %432 = add nsw i32 %431, 2
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds i8, i8* %430, i64 %433
  %435 = load i8, i8* %434, align 1
  %436 = zext i8 %435 to i32
  %437 = xor i32 %436, 128
  %438 = call i32 @input_report_abs(%struct.input_dev* %426, i32 %429, i32 %437)
  %439 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %440 = load i32*, i32** @db9_abs, align 8
  %441 = getelementptr inbounds i32, i32* %440, i64 3
  %442 = load i32, i32* %441, align 4
  %443 = load i8*, i8** %7, align 8
  %444 = load i32, i32* %14, align 4
  %445 = add nsw i32 %444, 3
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds i8, i8* %443, i64 %446
  %448 = load i8, i8* %447, align 1
  %449 = zext i8 %448 to i32
  %450 = xor i32 %449, 128
  %451 = sub nsw i32 255, %450
  %452 = add nsw i32 %451, 1
  %453 = call i32 @input_report_abs(%struct.input_dev* %439, i32 %442, i32 %452)
  br label %481

454:                                              ; preds = %30
  br label %455

455:                                              ; preds = %30, %454
  %456 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %457 = load i32*, i32** @db9_abs, align 8
  %458 = getelementptr inbounds i32, i32* %457, i64 0
  %459 = load i32, i32* %458, align 4
  %460 = call i32 @input_report_abs(%struct.input_dev* %456, i32 %459, i32 0)
  %461 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %462 = load i32*, i32** @db9_abs, align 8
  %463 = getelementptr inbounds i32, i32* %462, i64 1
  %464 = load i32, i32* %463, align 4
  %465 = call i32 @input_report_abs(%struct.input_dev* %461, i32 %464, i32 0)
  store i32 0, i32* %13, align 4
  br label %466

466:                                              ; preds = %477, %455
  %467 = load i32, i32* %13, align 4
  %468 = icmp slt i32 %467, 9
  br i1 %468, label %469, label %480

469:                                              ; preds = %466
  %470 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %471 = load i32*, i32** @db9_cd32_btn, align 8
  %472 = load i32, i32* %13, align 4
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds i32, i32* %471, i64 %473
  %475 = load i32, i32* %474, align 4
  %476 = call i32 @input_report_key(%struct.input_dev* %470, i32 %475, i8 zeroext 0)
  br label %477

477:                                              ; preds = %469
  %478 = load i32, i32* %13, align 4
  %479 = add nsw i32 %478, 1
  store i32 %479, i32* %13, align 4
  br label %466

480:                                              ; preds = %466
  br label %481

481:                                              ; preds = %480, %377, %351, %278, %185
  br label %482

482:                                              ; preds = %481
  %483 = load i32, i32* %14, align 4
  %484 = add nsw i32 %483, 10
  store i32 %484, i32* %14, align 4
  %485 = load i32, i32* %9, align 4
  %486 = add nsw i32 %485, 1
  store i32 %486, i32* %9, align 4
  br label %20

487:                                              ; preds = %28
  %488 = load i32, i32* %9, align 4
  ret i32 %488
}

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

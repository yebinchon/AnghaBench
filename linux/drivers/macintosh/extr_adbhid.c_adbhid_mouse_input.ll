; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_adbhid.c_adbhid_mouse_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_adbhid.c_adbhid_mouse_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@adbhid = common dso_local global %struct.TYPE_2__** null, align 8
@.str = private unnamed_addr constant [37 x i8] c"ADB HID on ID %d not yet registered\0A\00", align 1
@BTN_LEFT = common dso_local global i32 0, align 4
@BTN_MIDDLE = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@REL_X = common dso_local global i32 0, align 4
@REL_Y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32)* @adbhid_mouse_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adbhid_mouse_input(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  %10 = load i8, i8* %9, align 1
  %11 = zext i8 %10 to i32
  %12 = ashr i32 %11, 4
  %13 = and i32 %12, 15
  store i32 %13, i32* %7, align 4
  %14 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @adbhid, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %14, i64 %16
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = icmp ne %struct.TYPE_2__* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %360

23:                                               ; preds = %3
  %24 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @adbhid, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %24, i64 %26
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %222 [
    i32 128, label %31
    i32 131, label %59
    i32 129, label %111
    i32 130, label %164
    i32 132, label %204
  ]

31:                                               ; preds = %23
  %32 = load i8*, i8** %4, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = and i32 %35, 127
  %37 = load i8*, i8** %4, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = load i8*, i8** %4, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 2
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = and i32 %40, %44
  %46 = and i32 %45, 128
  %47 = or i32 %36, %46
  %48 = trunc i32 %47 to i8
  %49 = load i8*, i8** %4, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  store i8 %48, i8* %50, align 1
  %51 = load i8*, i8** %4, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 2
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = or i32 %54, 128
  %56 = trunc i32 %55 to i8
  %57 = load i8*, i8** %4, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 2
  store i8 %56, i8* %58, align 1
  br label %222

59:                                               ; preds = %23
  %60 = load i8*, i8** %4, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 1
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = and i32 %63, 127
  %65 = load i8*, i8** %4, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 3
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = and i32 %68, 1
  %70 = shl i32 %69, 7
  %71 = or i32 %64, %70
  %72 = trunc i32 %71 to i8
  %73 = load i8*, i8** %4, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 1
  store i8 %72, i8* %74, align 1
  %75 = load i8*, i8** %4, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 2
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = and i32 %78, 127
  %80 = load i8*, i8** %4, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 3
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = and i32 %83, 2
  %85 = shl i32 %84, 6
  %86 = or i32 %79, %85
  %87 = trunc i32 %86 to i8
  %88 = load i8*, i8** %4, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 2
  store i8 %87, i8* %89, align 1
  %90 = load i8*, i8** %4, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 3
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = and i32 %93, 119
  %95 = load i8*, i8** %4, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 3
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  %99 = and i32 %98, 4
  %100 = shl i32 %99, 5
  %101 = or i32 %94, %100
  %102 = load i8*, i8** %4, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 3
  %104 = load i8, i8* %103, align 1
  %105 = zext i8 %104 to i32
  %106 = and i32 %105, 8
  %107 = or i32 %101, %106
  %108 = trunc i32 %107 to i8
  %109 = load i8*, i8** %4, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 3
  store i8 %108, i8* %110, align 1
  br label %222

111:                                              ; preds = %23
  %112 = load i8*, i8** %4, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 1
  %114 = load i8, i8* %113, align 1
  %115 = zext i8 %114 to i32
  %116 = and i32 %115, 127
  %117 = load i8*, i8** %4, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 3
  %119 = load i8, i8* %118, align 1
  %120 = zext i8 %119 to i32
  %121 = and i32 %120, 4
  %122 = shl i32 %121, 5
  %123 = load i8*, i8** %4, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 3
  %125 = load i8, i8* %124, align 1
  %126 = zext i8 %125 to i32
  %127 = and i32 %126, 8
  %128 = shl i32 %127, 4
  %129 = and i32 %122, %128
  %130 = or i32 %116, %129
  %131 = trunc i32 %130 to i8
  %132 = load i8*, i8** %4, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 1
  store i8 %131, i8* %133, align 1
  %134 = load i8*, i8** %4, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 2
  %136 = load i8, i8* %135, align 1
  %137 = zext i8 %136 to i32
  %138 = and i32 %137, 127
  %139 = load i8*, i8** %4, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 3
  %141 = load i8, i8* %140, align 1
  %142 = zext i8 %141 to i32
  %143 = and i32 %142, 1
  %144 = shl i32 %143, 7
  %145 = or i32 %138, %144
  %146 = trunc i32 %145 to i8
  %147 = load i8*, i8** %4, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 2
  store i8 %146, i8* %148, align 1
  %149 = load i8*, i8** %4, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 3
  %151 = load i8, i8* %150, align 1
  %152 = zext i8 %151 to i32
  %153 = and i32 %152, 119
  %154 = load i8*, i8** %4, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 3
  %156 = load i8, i8* %155, align 1
  %157 = zext i8 %156 to i32
  %158 = and i32 %157, 2
  %159 = shl i32 %158, 6
  %160 = or i32 %153, %159
  %161 = trunc i32 %160 to i8
  %162 = load i8*, i8** %4, align 8
  %163 = getelementptr inbounds i8, i8* %162, i64 3
  store i8 %161, i8* %163, align 1
  br label %222

164:                                              ; preds = %23
  %165 = load i8*, i8** %4, align 8
  %166 = getelementptr inbounds i8, i8* %165, i64 1
  %167 = load i8, i8* %166, align 1
  %168 = zext i8 %167 to i32
  %169 = and i32 %168, 127
  %170 = load i8*, i8** %4, align 8
  %171 = getelementptr inbounds i8, i8* %170, i64 3
  %172 = load i8, i8* %171, align 1
  %173 = zext i8 %172 to i32
  %174 = and i32 %173, 1
  %175 = shl i32 %174, 7
  %176 = or i32 %169, %175
  %177 = trunc i32 %176 to i8
  %178 = load i8*, i8** %4, align 8
  %179 = getelementptr inbounds i8, i8* %178, i64 1
  store i8 %177, i8* %179, align 1
  %180 = load i8*, i8** %4, align 8
  %181 = getelementptr inbounds i8, i8* %180, i64 2
  %182 = load i8, i8* %181, align 1
  %183 = zext i8 %182 to i32
  %184 = and i32 %183, 127
  %185 = load i8*, i8** %4, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 3
  %187 = load i8, i8* %186, align 1
  %188 = zext i8 %187 to i32
  %189 = and i32 %188, 2
  %190 = shl i32 %189, 6
  %191 = or i32 %184, %190
  %192 = trunc i32 %191 to i8
  %193 = load i8*, i8** %4, align 8
  %194 = getelementptr inbounds i8, i8* %193, i64 2
  store i8 %192, i8* %194, align 1
  %195 = load i8*, i8** %4, align 8
  %196 = getelementptr inbounds i8, i8* %195, i64 3
  %197 = load i8, i8* %196, align 1
  %198 = zext i8 %197 to i32
  %199 = and i32 %198, 4
  %200 = shl i32 %199, 5
  %201 = trunc i32 %200 to i8
  %202 = load i8*, i8** %4, align 8
  %203 = getelementptr inbounds i8, i8* %202, i64 3
  store i8 %201, i8* %203, align 1
  br label %222

204:                                              ; preds = %23
  %205 = load i8*, i8** %4, align 8
  %206 = getelementptr inbounds i8, i8* %205, i64 2
  %207 = load i8, i8* %206, align 1
  %208 = zext i8 %207 to i32
  %209 = and i32 %208, 128
  %210 = icmp ne i32 %209, 0
  %211 = zext i1 %210 to i64
  %212 = select i1 %210, i32 128, i32 0
  %213 = trunc i32 %212 to i8
  %214 = load i8*, i8** %4, align 8
  %215 = getelementptr inbounds i8, i8* %214, i64 3
  store i8 %213, i8* %215, align 1
  %216 = load i8*, i8** %4, align 8
  %217 = getelementptr inbounds i8, i8* %216, i64 2
  %218 = load i8, i8* %217, align 1
  %219 = zext i8 %218 to i32
  %220 = or i32 %219, 128
  %221 = trunc i32 %220 to i8
  store i8 %221, i8* %217, align 1
  store i32 4, i32* %5, align 4
  br label %222

222:                                              ; preds = %23, %204, %164, %111, %59, %31
  %223 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @adbhid, align 8
  %224 = load i32, i32* %7, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %223, i64 %225
  %227 = load %struct.TYPE_2__*, %struct.TYPE_2__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* @BTN_LEFT, align 4
  %231 = load i8*, i8** %4, align 8
  %232 = getelementptr inbounds i8, i8* %231, i64 1
  %233 = load i8, i8* %232, align 1
  %234 = zext i8 %233 to i32
  %235 = ashr i32 %234, 7
  %236 = and i32 %235, 1
  %237 = icmp ne i32 %236, 0
  %238 = xor i1 %237, true
  %239 = zext i1 %238 to i32
  %240 = call i32 @input_report_key(i32 %229, i32 %230, i32 %239)
  %241 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @adbhid, align 8
  %242 = load i32, i32* %7, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %241, i64 %243
  %245 = load %struct.TYPE_2__*, %struct.TYPE_2__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* @BTN_MIDDLE, align 4
  %249 = load i8*, i8** %4, align 8
  %250 = getelementptr inbounds i8, i8* %249, i64 2
  %251 = load i8, i8* %250, align 1
  %252 = zext i8 %251 to i32
  %253 = ashr i32 %252, 7
  %254 = and i32 %253, 1
  %255 = icmp ne i32 %254, 0
  %256 = xor i1 %255, true
  %257 = zext i1 %256 to i32
  %258 = call i32 @input_report_key(i32 %247, i32 %248, i32 %257)
  %259 = load i32, i32* %5, align 4
  %260 = icmp sge i32 %259, 4
  br i1 %260, label %261, label %289

261:                                              ; preds = %222
  %262 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @adbhid, align 8
  %263 = load i32, i32* %7, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %262, i64 %264
  %266 = load %struct.TYPE_2__*, %struct.TYPE_2__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = icmp ne i32 %268, 128
  br i1 %269, label %270, label %289

270:                                              ; preds = %261
  %271 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @adbhid, align 8
  %272 = load i32, i32* %7, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %271, i64 %273
  %275 = load %struct.TYPE_2__*, %struct.TYPE_2__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = load i32, i32* @BTN_RIGHT, align 4
  %279 = load i8*, i8** %4, align 8
  %280 = getelementptr inbounds i8, i8* %279, i64 3
  %281 = load i8, i8* %280, align 1
  %282 = zext i8 %281 to i32
  %283 = ashr i32 %282, 7
  %284 = and i32 %283, 1
  %285 = icmp ne i32 %284, 0
  %286 = xor i1 %285, true
  %287 = zext i1 %286 to i32
  %288 = call i32 @input_report_key(i32 %277, i32 %278, i32 %287)
  br label %289

289:                                              ; preds = %270, %261, %222
  %290 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @adbhid, align 8
  %291 = load i32, i32* %7, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %290, i64 %292
  %294 = load %struct.TYPE_2__*, %struct.TYPE_2__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = load i32, i32* @REL_X, align 4
  %298 = load i8*, i8** %4, align 8
  %299 = getelementptr inbounds i8, i8* %298, i64 2
  %300 = load i8, i8* %299, align 1
  %301 = zext i8 %300 to i32
  %302 = and i32 %301, 127
  %303 = icmp slt i32 %302, 64
  br i1 %303, label %304, label %310

304:                                              ; preds = %289
  %305 = load i8*, i8** %4, align 8
  %306 = getelementptr inbounds i8, i8* %305, i64 2
  %307 = load i8, i8* %306, align 1
  %308 = zext i8 %307 to i32
  %309 = and i32 %308, 127
  br label %317

310:                                              ; preds = %289
  %311 = load i8*, i8** %4, align 8
  %312 = getelementptr inbounds i8, i8* %311, i64 2
  %313 = load i8, i8* %312, align 1
  %314 = zext i8 %313 to i32
  %315 = and i32 %314, 127
  %316 = sub nsw i32 %315, 128
  br label %317

317:                                              ; preds = %310, %304
  %318 = phi i32 [ %309, %304 ], [ %316, %310 ]
  %319 = trunc i32 %318 to i8
  %320 = call i32 @input_report_rel(i32 %296, i32 %297, i8 zeroext %319)
  %321 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @adbhid, align 8
  %322 = load i32, i32* %7, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %321, i64 %323
  %325 = load %struct.TYPE_2__*, %struct.TYPE_2__** %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %325, i32 0, i32 1
  %327 = load i32, i32* %326, align 4
  %328 = load i32, i32* @REL_Y, align 4
  %329 = load i8*, i8** %4, align 8
  %330 = getelementptr inbounds i8, i8* %329, i64 1
  %331 = load i8, i8* %330, align 1
  %332 = zext i8 %331 to i32
  %333 = and i32 %332, 127
  %334 = icmp slt i32 %333, 64
  br i1 %334, label %335, label %341

335:                                              ; preds = %317
  %336 = load i8*, i8** %4, align 8
  %337 = getelementptr inbounds i8, i8* %336, i64 1
  %338 = load i8, i8* %337, align 1
  %339 = zext i8 %338 to i32
  %340 = and i32 %339, 127
  br label %348

341:                                              ; preds = %317
  %342 = load i8*, i8** %4, align 8
  %343 = getelementptr inbounds i8, i8* %342, i64 1
  %344 = load i8, i8* %343, align 1
  %345 = zext i8 %344 to i32
  %346 = and i32 %345, 127
  %347 = sub nsw i32 %346, 128
  br label %348

348:                                              ; preds = %341, %335
  %349 = phi i32 [ %340, %335 ], [ %347, %341 ]
  %350 = trunc i32 %349 to i8
  %351 = call i32 @input_report_rel(i32 %327, i32 %328, i8 zeroext %350)
  %352 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @adbhid, align 8
  %353 = load i32, i32* %7, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %352, i64 %354
  %356 = load %struct.TYPE_2__*, %struct.TYPE_2__** %355, align 8
  %357 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %356, i32 0, i32 1
  %358 = load i32, i32* %357, align 4
  %359 = call i32 @input_sync(i32 %358)
  br label %360

360:                                              ; preds = %348, %20
  ret void
}

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_report_rel(i32, i32, i8 zeroext) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

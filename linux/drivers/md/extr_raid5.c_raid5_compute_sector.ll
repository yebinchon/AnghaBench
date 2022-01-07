; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_raid5_compute_sector.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_raid5_compute_sector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r5conf = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stripe_head = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @raid5_compute_sector(%struct.r5conf* %0, i32 %1, i32 %2, i32* %3, %struct.stripe_head* %4) #0 {
  %6 = alloca %struct.r5conf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.stripe_head*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.r5conf* %0, %struct.r5conf** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store %struct.stripe_head* %4, %struct.stripe_head** %10, align 8
  store i32 0, i32* %17, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %5
  %26 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %27 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  br label %33

29:                                               ; preds = %5
  %30 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %31 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  br label %33

33:                                               ; preds = %29, %25
  %34 = phi i32 [ %28, %25 ], [ %32, %29 ]
  store i32 %34, i32* %19, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %39 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  br label %45

41:                                               ; preds = %33
  %42 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %43 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  br label %45

45:                                               ; preds = %41, %37
  %46 = phi i32 [ %40, %37 ], [ %44, %41 ]
  store i32 %46, i32* %20, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %51 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  br label %57

53:                                               ; preds = %45
  %54 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %55 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  br label %57

57:                                               ; preds = %53, %49
  %58 = phi i32 [ %52, %49 ], [ %56, %53 ]
  store i32 %58, i32* %21, align 4
  %59 = load i32, i32* %21, align 4
  %60 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %61 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 %59, %62
  store i32 %63, i32* %22, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %20, align 4
  %66 = call i32 @sector_div(i32 %64, i32 %65)
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %22, align 4
  %71 = call i32 @sector_div(i32 %69, i32 %70)
  %72 = load i32*, i32** %9, align 8
  store i32 %71, i32* %72, align 4
  %73 = load i32, i32* %11, align 4
  store i32 %73, i32* %12, align 4
  store i32 -1, i32* %16, align 4
  store i32 -1, i32* %15, align 4
  %74 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %75 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %74, i32 0, i32 7
  %76 = load i32, i32* %75, align 4
  switch i32 %76, label %395 [
    i32 4, label %77
    i32 5, label %79
    i32 6, label %144
  ]

77:                                               ; preds = %57
  %78 = load i32, i32* %22, align 4
  store i32 %78, i32* %15, align 4
  br label %395

79:                                               ; preds = %57
  %80 = load i32, i32* %19, align 4
  switch i32 %80, label %141 [
    i32 141, label %81
    i32 134, label %96
    i32 139, label %109
    i32 132, label %123
    i32 137, label %135
    i32 135, label %139
  ]

81:                                               ; preds = %79
  %82 = load i32, i32* %22, align 4
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* %21, align 4
  %85 = call i32 @sector_div(i32 %83, i32 %84)
  %86 = sub nsw i32 %82, %85
  store i32 %86, i32* %15, align 4
  %87 = load i32*, i32** %9, align 8
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %15, align 4
  %90 = icmp sge i32 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %81
  %92 = load i32*, i32** %9, align 8
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 4
  br label %95

95:                                               ; preds = %91, %81
  br label %143

96:                                               ; preds = %79
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* %21, align 4
  %99 = call i32 @sector_div(i32 %97, i32 %98)
  store i32 %99, i32* %15, align 4
  %100 = load i32*, i32** %9, align 8
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %15, align 4
  %103 = icmp sge i32 %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %96
  %105 = load i32*, i32** %9, align 8
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %104, %96
  br label %143

109:                                              ; preds = %79
  %110 = load i32, i32* %22, align 4
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* %21, align 4
  %113 = call i32 @sector_div(i32 %111, i32 %112)
  %114 = sub nsw i32 %110, %113
  store i32 %114, i32* %15, align 4
  %115 = load i32, i32* %15, align 4
  %116 = add nsw i32 %115, 1
  %117 = load i32*, i32** %9, align 8
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %116, %118
  %120 = load i32, i32* %21, align 4
  %121 = srem i32 %119, %120
  %122 = load i32*, i32** %9, align 8
  store i32 %121, i32* %122, align 4
  br label %143

123:                                              ; preds = %79
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* %21, align 4
  %126 = call i32 @sector_div(i32 %124, i32 %125)
  store i32 %126, i32* %15, align 4
  %127 = load i32, i32* %15, align 4
  %128 = add nsw i32 %127, 1
  %129 = load i32*, i32** %9, align 8
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %128, %130
  %132 = load i32, i32* %21, align 4
  %133 = srem i32 %131, %132
  %134 = load i32*, i32** %9, align 8
  store i32 %133, i32* %134, align 4
  br label %143

135:                                              ; preds = %79
  store i32 0, i32* %15, align 4
  %136 = load i32*, i32** %9, align 8
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %136, align 4
  br label %143

139:                                              ; preds = %79
  %140 = load i32, i32* %22, align 4
  store i32 %140, i32* %15, align 4
  br label %143

141:                                              ; preds = %79
  %142 = call i32 (...) @BUG()
  br label %143

143:                                              ; preds = %141, %139, %135, %123, %109, %108, %95
  br label %395

144:                                              ; preds = %57
  %145 = load i32, i32* %19, align 4
  switch i32 %145, label %392 [
    i32 141, label %146
    i32 134, label %174
    i32 139, label %199
    i32 132, label %218
    i32 137, label %234
    i32 135, label %238
    i32 128, label %242
    i32 129, label %267
    i32 130, label %297
    i32 140, label %318
    i32 133, label %336
    i32 138, label %352
    i32 131, label %370
    i32 136, label %386
  ]

146:                                              ; preds = %144
  %147 = load i32, i32* %21, align 4
  %148 = sub nsw i32 %147, 1
  %149 = load i32, i32* %12, align 4
  %150 = load i32, i32* %21, align 4
  %151 = call i32 @sector_div(i32 %149, i32 %150)
  %152 = sub nsw i32 %148, %151
  store i32 %152, i32* %15, align 4
  %153 = load i32, i32* %15, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %16, align 4
  %155 = load i32, i32* %15, align 4
  %156 = load i32, i32* %21, align 4
  %157 = sub nsw i32 %156, 1
  %158 = icmp eq i32 %155, %157
  br i1 %158, label %159, label %163

159:                                              ; preds = %146
  %160 = load i32*, i32** %9, align 8
  %161 = load i32, i32* %160, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %160, align 4
  store i32 0, i32* %16, align 4
  br label %173

163:                                              ; preds = %146
  %164 = load i32*, i32** %9, align 8
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* %15, align 4
  %167 = icmp sge i32 %165, %166
  br i1 %167, label %168, label %172

168:                                              ; preds = %163
  %169 = load i32*, i32** %9, align 8
  %170 = load i32, i32* %169, align 4
  %171 = add nsw i32 %170, 2
  store i32 %171, i32* %169, align 4
  br label %172

172:                                              ; preds = %168, %163
  br label %173

173:                                              ; preds = %172, %159
  br label %394

174:                                              ; preds = %144
  %175 = load i32, i32* %12, align 4
  %176 = load i32, i32* %21, align 4
  %177 = call i32 @sector_div(i32 %175, i32 %176)
  store i32 %177, i32* %15, align 4
  %178 = load i32, i32* %15, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %16, align 4
  %180 = load i32, i32* %15, align 4
  %181 = load i32, i32* %21, align 4
  %182 = sub nsw i32 %181, 1
  %183 = icmp eq i32 %180, %182
  br i1 %183, label %184, label %188

184:                                              ; preds = %174
  %185 = load i32*, i32** %9, align 8
  %186 = load i32, i32* %185, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %185, align 4
  store i32 0, i32* %16, align 4
  br label %198

188:                                              ; preds = %174
  %189 = load i32*, i32** %9, align 8
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* %15, align 4
  %192 = icmp sge i32 %190, %191
  br i1 %192, label %193, label %197

193:                                              ; preds = %188
  %194 = load i32*, i32** %9, align 8
  %195 = load i32, i32* %194, align 4
  %196 = add nsw i32 %195, 2
  store i32 %196, i32* %194, align 4
  br label %197

197:                                              ; preds = %193, %188
  br label %198

198:                                              ; preds = %197, %184
  br label %394

199:                                              ; preds = %144
  %200 = load i32, i32* %21, align 4
  %201 = sub nsw i32 %200, 1
  %202 = load i32, i32* %12, align 4
  %203 = load i32, i32* %21, align 4
  %204 = call i32 @sector_div(i32 %202, i32 %203)
  %205 = sub nsw i32 %201, %204
  store i32 %205, i32* %15, align 4
  %206 = load i32, i32* %15, align 4
  %207 = add nsw i32 %206, 1
  %208 = load i32, i32* %21, align 4
  %209 = srem i32 %207, %208
  store i32 %209, i32* %16, align 4
  %210 = load i32, i32* %15, align 4
  %211 = add nsw i32 %210, 2
  %212 = load i32*, i32** %9, align 8
  %213 = load i32, i32* %212, align 4
  %214 = add nsw i32 %211, %213
  %215 = load i32, i32* %21, align 4
  %216 = srem i32 %214, %215
  %217 = load i32*, i32** %9, align 8
  store i32 %216, i32* %217, align 4
  br label %394

218:                                              ; preds = %144
  %219 = load i32, i32* %12, align 4
  %220 = load i32, i32* %21, align 4
  %221 = call i32 @sector_div(i32 %219, i32 %220)
  store i32 %221, i32* %15, align 4
  %222 = load i32, i32* %15, align 4
  %223 = add nsw i32 %222, 1
  %224 = load i32, i32* %21, align 4
  %225 = srem i32 %223, %224
  store i32 %225, i32* %16, align 4
  %226 = load i32, i32* %15, align 4
  %227 = add nsw i32 %226, 2
  %228 = load i32*, i32** %9, align 8
  %229 = load i32, i32* %228, align 4
  %230 = add nsw i32 %227, %229
  %231 = load i32, i32* %21, align 4
  %232 = srem i32 %230, %231
  %233 = load i32*, i32** %9, align 8
  store i32 %232, i32* %233, align 4
  br label %394

234:                                              ; preds = %144
  store i32 0, i32* %15, align 4
  store i32 1, i32* %16, align 4
  %235 = load i32*, i32** %9, align 8
  %236 = load i32, i32* %235, align 4
  %237 = add nsw i32 %236, 2
  store i32 %237, i32* %235, align 4
  br label %394

238:                                              ; preds = %144
  %239 = load i32, i32* %22, align 4
  store i32 %239, i32* %15, align 4
  %240 = load i32, i32* %22, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %16, align 4
  br label %394

242:                                              ; preds = %144
  %243 = load i32, i32* %12, align 4
  %244 = load i32, i32* %21, align 4
  %245 = call i32 @sector_div(i32 %243, i32 %244)
  store i32 %245, i32* %15, align 4
  %246 = load i32, i32* %15, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %16, align 4
  %248 = load i32, i32* %15, align 4
  %249 = load i32, i32* %21, align 4
  %250 = sub nsw i32 %249, 1
  %251 = icmp eq i32 %248, %250
  br i1 %251, label %252, label %256

252:                                              ; preds = %242
  %253 = load i32*, i32** %9, align 8
  %254 = load i32, i32* %253, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %253, align 4
  store i32 0, i32* %16, align 4
  br label %266

256:                                              ; preds = %242
  %257 = load i32*, i32** %9, align 8
  %258 = load i32, i32* %257, align 4
  %259 = load i32, i32* %15, align 4
  %260 = icmp sge i32 %258, %259
  br i1 %260, label %261, label %265

261:                                              ; preds = %256
  %262 = load i32*, i32** %9, align 8
  %263 = load i32, i32* %262, align 4
  %264 = add nsw i32 %263, 2
  store i32 %264, i32* %262, align 4
  br label %265

265:                                              ; preds = %261, %256
  br label %266

266:                                              ; preds = %265, %252
  store i32 1, i32* %17, align 4
  br label %394

267:                                              ; preds = %144
  %268 = load i32, i32* %12, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %12, align 4
  %270 = load i32, i32* %21, align 4
  %271 = sub nsw i32 %270, 1
  %272 = load i32, i32* %12, align 4
  %273 = load i32, i32* %21, align 4
  %274 = call i32 @sector_div(i32 %272, i32 %273)
  %275 = sub nsw i32 %271, %274
  store i32 %275, i32* %15, align 4
  %276 = load i32, i32* %15, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %16, align 4
  %278 = load i32, i32* %15, align 4
  %279 = load i32, i32* %21, align 4
  %280 = sub nsw i32 %279, 1
  %281 = icmp eq i32 %278, %280
  br i1 %281, label %282, label %286

282:                                              ; preds = %267
  %283 = load i32*, i32** %9, align 8
  %284 = load i32, i32* %283, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %283, align 4
  store i32 0, i32* %16, align 4
  br label %296

286:                                              ; preds = %267
  %287 = load i32*, i32** %9, align 8
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* %15, align 4
  %290 = icmp sge i32 %288, %289
  br i1 %290, label %291, label %295

291:                                              ; preds = %286
  %292 = load i32*, i32** %9, align 8
  %293 = load i32, i32* %292, align 4
  %294 = add nsw i32 %293, 2
  store i32 %294, i32* %292, align 4
  br label %295

295:                                              ; preds = %291, %286
  br label %296

296:                                              ; preds = %295, %282
  store i32 1, i32* %17, align 4
  br label %394

297:                                              ; preds = %144
  %298 = load i32, i32* %21, align 4
  %299 = sub nsw i32 %298, 1
  %300 = load i32, i32* %12, align 4
  %301 = load i32, i32* %21, align 4
  %302 = call i32 @sector_div(i32 %300, i32 %301)
  %303 = sub nsw i32 %299, %302
  store i32 %303, i32* %15, align 4
  %304 = load i32, i32* %15, align 4
  %305 = load i32, i32* %21, align 4
  %306 = add nsw i32 %304, %305
  %307 = sub nsw i32 %306, 1
  %308 = load i32, i32* %21, align 4
  %309 = srem i32 %307, %308
  store i32 %309, i32* %16, align 4
  %310 = load i32, i32* %15, align 4
  %311 = add nsw i32 %310, 1
  %312 = load i32*, i32** %9, align 8
  %313 = load i32, i32* %312, align 4
  %314 = add nsw i32 %311, %313
  %315 = load i32, i32* %21, align 4
  %316 = srem i32 %314, %315
  %317 = load i32*, i32** %9, align 8
  store i32 %316, i32* %317, align 4
  store i32 1, i32* %17, align 4
  br label %394

318:                                              ; preds = %144
  %319 = load i32, i32* %22, align 4
  %320 = load i32, i32* %12, align 4
  %321 = load i32, i32* %21, align 4
  %322 = sub nsw i32 %321, 1
  %323 = call i32 @sector_div(i32 %320, i32 %322)
  %324 = sub nsw i32 %319, %323
  store i32 %324, i32* %15, align 4
  %325 = load i32*, i32** %9, align 8
  %326 = load i32, i32* %325, align 4
  %327 = load i32, i32* %15, align 4
  %328 = icmp sge i32 %326, %327
  br i1 %328, label %329, label %333

329:                                              ; preds = %318
  %330 = load i32*, i32** %9, align 8
  %331 = load i32, i32* %330, align 4
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %330, align 4
  br label %333

333:                                              ; preds = %329, %318
  %334 = load i32, i32* %21, align 4
  %335 = sub nsw i32 %334, 1
  store i32 %335, i32* %16, align 4
  br label %394

336:                                              ; preds = %144
  %337 = load i32, i32* %12, align 4
  %338 = load i32, i32* %21, align 4
  %339 = sub nsw i32 %338, 1
  %340 = call i32 @sector_div(i32 %337, i32 %339)
  store i32 %340, i32* %15, align 4
  %341 = load i32*, i32** %9, align 8
  %342 = load i32, i32* %341, align 4
  %343 = load i32, i32* %15, align 4
  %344 = icmp sge i32 %342, %343
  br i1 %344, label %345, label %349

345:                                              ; preds = %336
  %346 = load i32*, i32** %9, align 8
  %347 = load i32, i32* %346, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %346, align 4
  br label %349

349:                                              ; preds = %345, %336
  %350 = load i32, i32* %21, align 4
  %351 = sub nsw i32 %350, 1
  store i32 %351, i32* %16, align 4
  br label %394

352:                                              ; preds = %144
  %353 = load i32, i32* %22, align 4
  %354 = load i32, i32* %12, align 4
  %355 = load i32, i32* %21, align 4
  %356 = sub nsw i32 %355, 1
  %357 = call i32 @sector_div(i32 %354, i32 %356)
  %358 = sub nsw i32 %353, %357
  store i32 %358, i32* %15, align 4
  %359 = load i32, i32* %15, align 4
  %360 = add nsw i32 %359, 1
  %361 = load i32*, i32** %9, align 8
  %362 = load i32, i32* %361, align 4
  %363 = add nsw i32 %360, %362
  %364 = load i32, i32* %21, align 4
  %365 = sub nsw i32 %364, 1
  %366 = srem i32 %363, %365
  %367 = load i32*, i32** %9, align 8
  store i32 %366, i32* %367, align 4
  %368 = load i32, i32* %21, align 4
  %369 = sub nsw i32 %368, 1
  store i32 %369, i32* %16, align 4
  br label %394

370:                                              ; preds = %144
  %371 = load i32, i32* %12, align 4
  %372 = load i32, i32* %21, align 4
  %373 = sub nsw i32 %372, 1
  %374 = call i32 @sector_div(i32 %371, i32 %373)
  store i32 %374, i32* %15, align 4
  %375 = load i32, i32* %15, align 4
  %376 = add nsw i32 %375, 1
  %377 = load i32*, i32** %9, align 8
  %378 = load i32, i32* %377, align 4
  %379 = add nsw i32 %376, %378
  %380 = load i32, i32* %21, align 4
  %381 = sub nsw i32 %380, 1
  %382 = srem i32 %379, %381
  %383 = load i32*, i32** %9, align 8
  store i32 %382, i32* %383, align 4
  %384 = load i32, i32* %21, align 4
  %385 = sub nsw i32 %384, 1
  store i32 %385, i32* %16, align 4
  br label %394

386:                                              ; preds = %144
  store i32 0, i32* %15, align 4
  %387 = load i32*, i32** %9, align 8
  %388 = load i32, i32* %387, align 4
  %389 = add nsw i32 %388, 1
  store i32 %389, i32* %387, align 4
  %390 = load i32, i32* %21, align 4
  %391 = sub nsw i32 %390, 1
  store i32 %391, i32* %16, align 4
  br label %394

392:                                              ; preds = %144
  %393 = call i32 (...) @BUG()
  br label %394

394:                                              ; preds = %392, %386, %370, %352, %349, %333, %297, %296, %266, %238, %234, %218, %199, %198, %173
  br label %395

395:                                              ; preds = %57, %394, %143, %77
  %396 = load %struct.stripe_head*, %struct.stripe_head** %10, align 8
  %397 = icmp ne %struct.stripe_head* %396, null
  br i1 %397, label %398, label %408

398:                                              ; preds = %395
  %399 = load i32, i32* %15, align 4
  %400 = load %struct.stripe_head*, %struct.stripe_head** %10, align 8
  %401 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %400, i32 0, i32 0
  store i32 %399, i32* %401, align 4
  %402 = load i32, i32* %16, align 4
  %403 = load %struct.stripe_head*, %struct.stripe_head** %10, align 8
  %404 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %403, i32 0, i32 1
  store i32 %402, i32* %404, align 4
  %405 = load i32, i32* %17, align 4
  %406 = load %struct.stripe_head*, %struct.stripe_head** %10, align 8
  %407 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %406, i32 0, i32 2
  store i32 %405, i32* %407, align 4
  br label %408

408:                                              ; preds = %398, %395
  %409 = load i32, i32* %11, align 4
  %410 = load i32, i32* %20, align 4
  %411 = mul nsw i32 %409, %410
  %412 = load i32, i32* %14, align 4
  %413 = add i32 %411, %412
  store i32 %413, i32* %18, align 4
  %414 = load i32, i32* %18, align 4
  ret i32 %414
}

declare dso_local i32 @sector_div(i32, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

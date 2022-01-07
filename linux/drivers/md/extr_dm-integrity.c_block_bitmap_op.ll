; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_block_bitmap_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_block_bitmap_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_integrity_c = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.page_list = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"invalid bitmap access (%llx,%llx,%d,%d,%d)\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@BITMAP_OP_TEST_ALL_SET = common dso_local global i32 0, align 4
@BITS_PER_LONG = common dso_local global i64 0, align 8
@BITMAP_OP_TEST_ALL_CLEAR = common dso_local global i32 0, align 4
@BITMAP_OP_SET = common dso_local global i32 0, align 4
@BITMAP_OP_CLEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_integrity_c*, %struct.page_list*, i32, i32, i32)* @block_bitmap_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @block_bitmap_op(%struct.dm_integrity_c* %0, %struct.page_list* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dm_integrity_c*, align 8
  %8 = alloca %struct.page_list*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64*, align 8
  store %struct.dm_integrity_c* %0, %struct.dm_integrity_c** %7, align 8
  store %struct.page_list* %1, %struct.page_list** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %10, align 4
  %20 = or i32 %18, %19
  %21 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %7, align 8
  %22 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 1, %25
  %27 = sub nsw i32 %26, 1
  %28 = and i32 %20, %27
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %5
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %7, align 8
  %39 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %7, align 8
  %44 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @DMCRIT(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %35, i64 %37, i32 %42, i32 %45, i32 %46)
  %48 = call i32 (...) @BUG()
  br label %49

49:                                               ; preds = %33, %5
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i64 @unlikely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  store i32 1, i32* %6, align 4
  br label %350

57:                                               ; preds = %49
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %7, align 8
  %60 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %7, align 8
  %65 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %63, %66
  %68 = ashr i32 %58, %67
  %69 = sext i32 %68 to i64
  store i64 %69, i64* %12, align 8
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %70, %71
  %73 = sub nsw i32 %72, 1
  %74 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %7, align 8
  %75 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %74, i32 0, i32 1
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %7, align 8
  %80 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %78, %81
  %83 = ashr i32 %73, %82
  %84 = sext i32 %83 to i64
  store i64 %84, i64* %13, align 8
  %85 = load i64, i64* %12, align 8
  %86 = load i32, i32* @PAGE_SIZE, align 4
  %87 = mul nsw i32 %86, 8
  %88 = sext i32 %87 to i64
  %89 = udiv i64 %85, %88
  store i64 %89, i64* %15, align 8
  %90 = load i32, i32* @PAGE_SIZE, align 4
  %91 = mul nsw i32 %90, 8
  %92 = sext i32 %91 to i64
  %93 = load i64, i64* %12, align 8
  %94 = urem i64 %93, %92
  store i64 %94, i64* %12, align 8
  %95 = load i64, i64* %13, align 8
  %96 = load i32, i32* @PAGE_SIZE, align 4
  %97 = mul nsw i32 %96, 8
  %98 = sext i32 %97 to i64
  %99 = udiv i64 %95, %98
  store i64 %99, i64* %16, align 8
  %100 = load i32, i32* @PAGE_SIZE, align 4
  %101 = mul nsw i32 %100, 8
  %102 = sext i32 %101 to i64
  %103 = load i64, i64* %13, align 8
  %104 = urem i64 %103, %102
  store i64 %104, i64* %13, align 8
  br label %105

105:                                              ; preds = %346, %57
  %106 = load i64, i64* %15, align 8
  %107 = load i64, i64* %16, align 8
  %108 = icmp ult i64 %106, %107
  br i1 %108, label %109, label %114

109:                                              ; preds = %105
  %110 = load i32, i32* @PAGE_SIZE, align 4
  %111 = mul nsw i32 %110, 8
  %112 = sub nsw i32 %111, 1
  %113 = sext i32 %112 to i64
  store i64 %113, i64* %14, align 8
  br label %116

114:                                              ; preds = %105
  %115 = load i64, i64* %13, align 8
  store i64 %115, i64* %14, align 8
  br label %116

116:                                              ; preds = %114, %109
  %117 = load %struct.page_list*, %struct.page_list** %8, align 8
  %118 = load i64, i64* %15, align 8
  %119 = getelementptr inbounds %struct.page_list, %struct.page_list* %117, i64 %118
  %120 = getelementptr inbounds %struct.page_list, %struct.page_list* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i64* @lowmem_page_address(i32 %121)
  store i64* %122, i64** %17, align 8
  %123 = load i32, i32* %11, align 4
  %124 = load i32, i32* @BITMAP_OP_TEST_ALL_SET, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %175

126:                                              ; preds = %116
  br label %127

127:                                              ; preds = %171, %164, %126
  %128 = load i64, i64* %12, align 8
  %129 = load i64, i64* %14, align 8
  %130 = icmp ule i64 %128, %129
  br i1 %130, label %131, label %174

131:                                              ; preds = %127
  %132 = load i64, i64* %12, align 8
  %133 = load i64, i64* @BITS_PER_LONG, align 8
  %134 = urem i64 %132, %133
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %165, label %136

136:                                              ; preds = %131
  %137 = load i64, i64* %14, align 8
  %138 = load i64, i64* %12, align 8
  %139 = load i64, i64* @BITS_PER_LONG, align 8
  %140 = add i64 %138, %139
  %141 = sub i64 %140, 1
  %142 = icmp uge i64 %137, %141
  br i1 %142, label %143, label %165

143:                                              ; preds = %136
  br label %144

144:                                              ; preds = %157, %143
  %145 = load i64*, i64** %17, align 8
  %146 = load i64, i64* %12, align 8
  %147 = load i64, i64* @BITS_PER_LONG, align 8
  %148 = udiv i64 %146, %147
  %149 = getelementptr inbounds i64, i64* %145, i64 %148
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, -1
  br i1 %151, label %152, label %153

152:                                              ; preds = %144
  store i32 0, i32* %6, align 4
  br label %350

153:                                              ; preds = %144
  %154 = load i64, i64* @BITS_PER_LONG, align 8
  %155 = load i64, i64* %12, align 8
  %156 = add i64 %155, %154
  store i64 %156, i64* %12, align 8
  br label %157

157:                                              ; preds = %153
  %158 = load i64, i64* %14, align 8
  %159 = load i64, i64* %12, align 8
  %160 = load i64, i64* @BITS_PER_LONG, align 8
  %161 = add i64 %159, %160
  %162 = sub i64 %161, 1
  %163 = icmp uge i64 %158, %162
  br i1 %163, label %144, label %164

164:                                              ; preds = %157
  br label %127

165:                                              ; preds = %136, %131
  %166 = load i64, i64* %12, align 8
  %167 = load i64*, i64** %17, align 8
  %168 = call i64 @test_bit(i64 %166, i64* %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %171, label %170

170:                                              ; preds = %165
  store i32 0, i32* %6, align 4
  br label %350

171:                                              ; preds = %165
  %172 = load i64, i64* %12, align 8
  %173 = add i64 %172, 1
  store i64 %173, i64* %12, align 8
  br label %127

174:                                              ; preds = %127
  br label %339

175:                                              ; preds = %116
  %176 = load i32, i32* %11, align 4
  %177 = load i32, i32* @BITMAP_OP_TEST_ALL_CLEAR, align 4
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %179, label %228

179:                                              ; preds = %175
  br label %180

180:                                              ; preds = %224, %217, %179
  %181 = load i64, i64* %12, align 8
  %182 = load i64, i64* %14, align 8
  %183 = icmp ule i64 %181, %182
  br i1 %183, label %184, label %227

184:                                              ; preds = %180
  %185 = load i64, i64* %12, align 8
  %186 = load i64, i64* @BITS_PER_LONG, align 8
  %187 = urem i64 %185, %186
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %218, label %189

189:                                              ; preds = %184
  %190 = load i64, i64* %14, align 8
  %191 = load i64, i64* %12, align 8
  %192 = load i64, i64* @BITS_PER_LONG, align 8
  %193 = add i64 %191, %192
  %194 = sub i64 %193, 1
  %195 = icmp uge i64 %190, %194
  br i1 %195, label %196, label %218

196:                                              ; preds = %189
  br label %197

197:                                              ; preds = %210, %196
  %198 = load i64*, i64** %17, align 8
  %199 = load i64, i64* %12, align 8
  %200 = load i64, i64* @BITS_PER_LONG, align 8
  %201 = udiv i64 %199, %200
  %202 = getelementptr inbounds i64, i64* %198, i64 %201
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %197
  store i32 0, i32* %6, align 4
  br label %350

206:                                              ; preds = %197
  %207 = load i64, i64* @BITS_PER_LONG, align 8
  %208 = load i64, i64* %12, align 8
  %209 = add i64 %208, %207
  store i64 %209, i64* %12, align 8
  br label %210

210:                                              ; preds = %206
  %211 = load i64, i64* %14, align 8
  %212 = load i64, i64* %12, align 8
  %213 = load i64, i64* @BITS_PER_LONG, align 8
  %214 = add i64 %212, %213
  %215 = sub i64 %214, 1
  %216 = icmp uge i64 %211, %215
  br i1 %216, label %197, label %217

217:                                              ; preds = %210
  br label %180

218:                                              ; preds = %189, %184
  %219 = load i64, i64* %12, align 8
  %220 = load i64*, i64** %17, align 8
  %221 = call i64 @test_bit(i64 %219, i64* %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %218
  store i32 0, i32* %6, align 4
  br label %350

224:                                              ; preds = %218
  %225 = load i64, i64* %12, align 8
  %226 = add i64 %225, 1
  store i64 %226, i64* %12, align 8
  br label %180

227:                                              ; preds = %180
  br label %338

228:                                              ; preds = %175
  %229 = load i32, i32* %11, align 4
  %230 = load i32, i32* @BITMAP_OP_SET, align 4
  %231 = icmp eq i32 %229, %230
  br i1 %231, label %232, label %274

232:                                              ; preds = %228
  br label %233

233:                                              ; preds = %267, %266, %232
  %234 = load i64, i64* %12, align 8
  %235 = load i64, i64* %14, align 8
  %236 = icmp ule i64 %234, %235
  br i1 %236, label %237, label %273

237:                                              ; preds = %233
  %238 = load i64, i64* %12, align 8
  %239 = load i64, i64* @BITS_PER_LONG, align 8
  %240 = urem i64 %238, %239
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %267, label %242

242:                                              ; preds = %237
  %243 = load i64, i64* %14, align 8
  %244 = load i64, i64* %12, align 8
  %245 = load i64, i64* @BITS_PER_LONG, align 8
  %246 = add i64 %244, %245
  %247 = sub i64 %246, 1
  %248 = icmp uge i64 %243, %247
  br i1 %248, label %249, label %267

249:                                              ; preds = %242
  br label %250

250:                                              ; preds = %259, %249
  %251 = load i64*, i64** %17, align 8
  %252 = load i64, i64* %12, align 8
  %253 = load i64, i64* @BITS_PER_LONG, align 8
  %254 = udiv i64 %252, %253
  %255 = getelementptr inbounds i64, i64* %251, i64 %254
  store i64 -1, i64* %255, align 8
  %256 = load i64, i64* @BITS_PER_LONG, align 8
  %257 = load i64, i64* %12, align 8
  %258 = add i64 %257, %256
  store i64 %258, i64* %12, align 8
  br label %259

259:                                              ; preds = %250
  %260 = load i64, i64* %14, align 8
  %261 = load i64, i64* %12, align 8
  %262 = load i64, i64* @BITS_PER_LONG, align 8
  %263 = add i64 %261, %262
  %264 = sub i64 %263, 1
  %265 = icmp uge i64 %260, %264
  br i1 %265, label %250, label %266

266:                                              ; preds = %259
  br label %233

267:                                              ; preds = %242, %237
  %268 = load i64, i64* %12, align 8
  %269 = load i64*, i64** %17, align 8
  %270 = call i32 @__set_bit(i64 %268, i64* %269)
  %271 = load i64, i64* %12, align 8
  %272 = add i64 %271, 1
  store i64 %272, i64* %12, align 8
  br label %233

273:                                              ; preds = %233
  br label %337

274:                                              ; preds = %228
  %275 = load i32, i32* %11, align 4
  %276 = load i32, i32* @BITMAP_OP_CLEAR, align 4
  %277 = icmp eq i32 %275, %276
  br i1 %277, label %278, label %334

278:                                              ; preds = %274
  %279 = load i64, i64* %12, align 8
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %291, label %281

281:                                              ; preds = %278
  %282 = load i64, i64* %14, align 8
  %283 = load i32, i32* @PAGE_SIZE, align 4
  %284 = mul nsw i32 %283, 8
  %285 = sub nsw i32 %284, 1
  %286 = sext i32 %285 to i64
  %287 = icmp eq i64 %282, %286
  br i1 %287, label %288, label %291

288:                                              ; preds = %281
  %289 = load i64*, i64** %17, align 8
  %290 = call i32 @clear_page(i64* %289)
  br label %333

291:                                              ; preds = %281, %278
  br label %292

292:                                              ; preds = %326, %325, %291
  %293 = load i64, i64* %12, align 8
  %294 = load i64, i64* %14, align 8
  %295 = icmp ule i64 %293, %294
  br i1 %295, label %296, label %332

296:                                              ; preds = %292
  %297 = load i64, i64* %12, align 8
  %298 = load i64, i64* @BITS_PER_LONG, align 8
  %299 = urem i64 %297, %298
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %326, label %301

301:                                              ; preds = %296
  %302 = load i64, i64* %14, align 8
  %303 = load i64, i64* %12, align 8
  %304 = load i64, i64* @BITS_PER_LONG, align 8
  %305 = add i64 %303, %304
  %306 = sub i64 %305, 1
  %307 = icmp uge i64 %302, %306
  br i1 %307, label %308, label %326

308:                                              ; preds = %301
  br label %309

309:                                              ; preds = %318, %308
  %310 = load i64*, i64** %17, align 8
  %311 = load i64, i64* %12, align 8
  %312 = load i64, i64* @BITS_PER_LONG, align 8
  %313 = udiv i64 %311, %312
  %314 = getelementptr inbounds i64, i64* %310, i64 %313
  store i64 0, i64* %314, align 8
  %315 = load i64, i64* @BITS_PER_LONG, align 8
  %316 = load i64, i64* %12, align 8
  %317 = add i64 %316, %315
  store i64 %317, i64* %12, align 8
  br label %318

318:                                              ; preds = %309
  %319 = load i64, i64* %14, align 8
  %320 = load i64, i64* %12, align 8
  %321 = load i64, i64* @BITS_PER_LONG, align 8
  %322 = add i64 %320, %321
  %323 = sub i64 %322, 1
  %324 = icmp uge i64 %319, %323
  br i1 %324, label %309, label %325

325:                                              ; preds = %318
  br label %292

326:                                              ; preds = %301, %296
  %327 = load i64, i64* %12, align 8
  %328 = load i64*, i64** %17, align 8
  %329 = call i32 @__clear_bit(i64 %327, i64* %328)
  %330 = load i64, i64* %12, align 8
  %331 = add i64 %330, 1
  store i64 %331, i64* %12, align 8
  br label %292

332:                                              ; preds = %292
  br label %333

333:                                              ; preds = %332, %288
  br label %336

334:                                              ; preds = %274
  %335 = call i32 (...) @BUG()
  br label %336

336:                                              ; preds = %334, %333
  br label %337

337:                                              ; preds = %336, %273
  br label %338

338:                                              ; preds = %337, %227
  br label %339

339:                                              ; preds = %338, %174
  %340 = load i64, i64* %15, align 8
  %341 = load i64, i64* %16, align 8
  %342 = icmp ult i64 %340, %341
  %343 = zext i1 %342 to i32
  %344 = call i64 @unlikely(i32 %343)
  %345 = icmp ne i64 %344, 0
  br i1 %345, label %346, label %349

346:                                              ; preds = %339
  store i64 0, i64* %12, align 8
  %347 = load i64, i64* %15, align 8
  %348 = add i64 %347, 1
  store i64 %348, i64* %15, align 8
  br label %105

349:                                              ; preds = %339
  store i32 1, i32* %6, align 4
  br label %350

350:                                              ; preds = %349, %223, %205, %170, %152, %56
  %351 = load i32, i32* %6, align 4
  ret i32 %351
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @DMCRIT(i8*, i64, i64, i32, i32, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i64* @lowmem_page_address(i32) #1

declare dso_local i64 @test_bit(i64, i64*) #1

declare dso_local i32 @__set_bit(i64, i64*) #1

declare dso_local i32 @clear_page(i64*) #1

declare dso_local i32 @__clear_bit(i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gf100.c_gf100_gr_oneinit_tiles.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gf100.c_gf100_gr_oneinit_tiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gf100_gr = type { i32, i32, i32, i32*, i32, i32* }

@gf100_gr_oneinit_tiles.primes = internal constant [17 x i32] [i32 3, i32 5, i32 7, i32 11, i32 13, i32 17, i32 19, i32 23, i32 29, i32 31, i32 37, i32 41, i32 43, i32 47, i32 53, i32 59, i32 61], align 16
@GPC_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gf100_gr_oneinit_tiles(%struct.gf100_gr* %0) #0 {
  %2 = alloca %struct.gf100_gr*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.gf100_gr* %0, %struct.gf100_gr** %2, align 8
  %14 = load i32, i32* @GPC_MAX, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %3, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %4, align 8
  %18 = load i32, i32* @GPC_MAX, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %5, align 8
  %21 = load i32, i32* @GPC_MAX, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %6, align 8
  %24 = load i32, i32* @GPC_MAX, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %11, align 8
  %27 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %28 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %54 [
    i32 15, label %30
    i32 14, label %33
    i32 13, label %36
    i32 11, label %39
    i32 10, label %42
    i32 7, label %45
    i32 5, label %45
    i32 3, label %48
    i32 2, label %51
    i32 1, label %51
  ]

30:                                               ; preds = %1
  %31 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %32 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %31, i32 0, i32 1
  store i32 6, i32* %32, align 4
  br label %83

33:                                               ; preds = %1
  %34 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %35 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %34, i32 0, i32 1
  store i32 5, i32* %35, align 4
  br label %83

36:                                               ; preds = %1
  %37 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %38 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %37, i32 0, i32 1
  store i32 2, i32* %38, align 4
  br label %83

39:                                               ; preds = %1
  %40 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %41 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %40, i32 0, i32 1
  store i32 7, i32* %41, align 4
  br label %83

42:                                               ; preds = %1
  %43 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %44 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %43, i32 0, i32 1
  store i32 6, i32* %44, align 4
  br label %83

45:                                               ; preds = %1, %1
  %46 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %47 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %46, i32 0, i32 1
  store i32 1, i32* %47, align 4
  br label %83

48:                                               ; preds = %1
  %49 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %50 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %49, i32 0, i32 1
  store i32 2, i32* %50, align 4
  br label %83

51:                                               ; preds = %1, %1
  %52 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %53 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %52, i32 0, i32 1
  store i32 1, i32* %53, align 4
  br label %83

54:                                               ; preds = %1
  %55 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %56 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %55, i32 0, i32 1
  store i32 3, i32* %56, align 4
  store i32 0, i32* %7, align 4
  br label %57

57:                                               ; preds = %79, %54
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([17 x i32], [17 x i32]* @gf100_gr_oneinit_tiles.primes, i64 0, i64 0))
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %82

61:                                               ; preds = %57
  %62 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %63 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [17 x i32], [17 x i32]* @gf100_gr_oneinit_tiles.primes, i64 0, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = srem i32 %64, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %61
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [17 x i32], [17 x i32]* @gf100_gr_oneinit_tiles.primes, i64 0, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %77 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  br label %82

78:                                               ; preds = %61
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %7, align 4
  br label %57

82:                                               ; preds = %71, %57
  br label %83

83:                                               ; preds = %82, %51, %48, %45, %42, %39, %36, %33, %30
  store i32 0, i32* %7, align 4
  br label %84

84:                                               ; preds = %95, %83
  %85 = load i32, i32* %7, align 4
  %86 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %87 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = icmp slt i32 %85, %88
  br i1 %89, label %90, label %98

90:                                               ; preds = %84
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %26, i64 %93
  store i32 %91, i32* %94, align 4
  br label %95

95:                                               ; preds = %90
  %96 = load i32, i32* %7, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %7, align 4
  br label %84

98:                                               ; preds = %84
  store i32 0, i32* %12, align 4
  br label %99

99:                                               ; preds = %158, %98
  %100 = load i32, i32* %12, align 4
  %101 = icmp ne i32 %100, 0
  %102 = xor i1 %101, true
  br i1 %102, label %103, label %159

103:                                              ; preds = %99
  store i32 1, i32* %12, align 4
  store i32 0, i32* %7, align 4
  br label %104

104:                                              ; preds = %155, %103
  %105 = load i32, i32* %7, align 4
  %106 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %107 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = sub nsw i32 %108, 1
  %110 = icmp slt i32 %105, %109
  br i1 %110, label %111, label %158

111:                                              ; preds = %104
  %112 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %113 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %112, i32 0, i32 3
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %7, align 4
  %116 = add nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %26, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %114, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %124 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %123, i32 0, i32 3
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %7, align 4
  %127 = add nsw i32 %126, 0
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %26, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %125, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = icmp sgt i32 %122, %133
  br i1 %134, label %135, label %154

135:                                              ; preds = %111
  %136 = load i32, i32* %7, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %26, i64 %137
  %139 = load i32, i32* %138, align 4
  store i32 %139, i32* %13, align 4
  %140 = load i32, i32* %7, align 4
  %141 = add nsw i32 %140, 1
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %26, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %7, align 4
  %146 = add nsw i32 %145, 0
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %26, i64 %147
  store i32 %144, i32* %148, align 4
  %149 = load i32, i32* %13, align 4
  %150 = load i32, i32* %7, align 4
  %151 = add nsw i32 %150, 1
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %26, i64 %152
  store i32 %149, i32* %153, align 4
  store i32 0, i32* %12, align 4
  br label %154

154:                                              ; preds = %135, %111
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %7, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %7, align 4
  br label %104

158:                                              ; preds = %104
  br label %99

159:                                              ; preds = %99
  %160 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %161 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %164 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 8
  %166 = mul nsw i32 %162, %165
  store i32 %166, i32* %9, align 4
  %167 = load i32, i32* %9, align 4
  %168 = and i32 %167, 1
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %159
  store i32 2, i32* %9, align 4
  br label %172

171:                                              ; preds = %159
  store i32 1, i32* %9, align 4
  br label %172

172:                                              ; preds = %171, %170
  %173 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %174 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %177 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 8
  %179 = mul nsw i32 %175, %178
  %180 = load i32, i32* %9, align 4
  %181 = mul nsw i32 %179, %180
  store i32 %181, i32* %10, align 4
  store i32 0, i32* %7, align 4
  br label %182

182:                                              ; preds = %233, %172
  %183 = load i32, i32* %7, align 4
  %184 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %185 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = icmp slt i32 %183, %186
  br i1 %187, label %188, label %236

188:                                              ; preds = %182
  %189 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %190 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %189, i32 0, i32 3
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* %7, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %26, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %191, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %200 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = mul nsw i32 %198, %201
  %203 = load i32, i32* %9, align 4
  %204 = mul nsw i32 %202, %203
  %205 = load i32, i32* %7, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %17, i64 %206
  store i32 %204, i32* %207, align 4
  %208 = load i32, i32* %7, align 4
  %209 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %210 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %209, i32 0, i32 4
  %211 = load i32, i32* %210, align 8
  %212 = mul nsw i32 %208, %211
  %213 = load i32, i32* %9, align 4
  %214 = mul nsw i32 %212, %213
  %215 = load i32, i32* %10, align 4
  %216 = sdiv i32 %215, 2
  %217 = sub nsw i32 %214, %216
  %218 = load i32, i32* %7, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %20, i64 %219
  store i32 %217, i32* %220, align 4
  %221 = load i32, i32* %7, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %17, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* %7, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %20, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = add nsw i32 %224, %228
  %230 = load i32, i32* %7, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %23, i64 %231
  store i32 %229, i32* %232, align 4
  br label %233

233:                                              ; preds = %188
  %234 = load i32, i32* %7, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %7, align 4
  br label %182

236:                                              ; preds = %182
  store i32 0, i32* %7, align 4
  br label %237

237:                                              ; preds = %295, %236
  %238 = load i32, i32* %7, align 4
  %239 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %240 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = icmp slt i32 %238, %241
  br i1 %242, label %243, label %296

243:                                              ; preds = %237
  store i32 0, i32* %8, align 4
  br label %244

244:                                              ; preds = %292, %243
  %245 = load i32, i32* %8, align 4
  %246 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %247 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 8
  %249 = icmp slt i32 %245, %248
  br i1 %249, label %250, label %295

250:                                              ; preds = %244
  %251 = load i32, i32* %8, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %23, i64 %252
  %254 = load i32, i32* %253, align 4
  %255 = mul nsw i32 %254, 2
  %256 = load i32, i32* %10, align 4
  %257 = icmp sge i32 %255, %256
  br i1 %257, label %258, label %281

258:                                              ; preds = %250
  %259 = load i32, i32* %8, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %26, i64 %260
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %264 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %263, i32 0, i32 5
  %265 = load i32*, i32** %264, align 8
  %266 = load i32, i32* %7, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %7, align 4
  %268 = sext i32 %266 to i64
  %269 = getelementptr inbounds i32, i32* %265, i64 %268
  store i32 %262, i32* %269, align 4
  %270 = load i32, i32* %8, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %17, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = load i32, i32* %10, align 4
  %275 = sub nsw i32 %273, %274
  %276 = load i32, i32* %8, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %23, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = add nsw i32 %279, %275
  store i32 %280, i32* %278, align 4
  br label %291

281:                                              ; preds = %250
  %282 = load i32, i32* %8, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i32, i32* %17, i64 %283
  %285 = load i32, i32* %284, align 4
  %286 = load i32, i32* %8, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, i32* %23, i64 %287
  %289 = load i32, i32* %288, align 4
  %290 = add nsw i32 %289, %285
  store i32 %290, i32* %288, align 4
  br label %291

291:                                              ; preds = %281, %258
  br label %292

292:                                              ; preds = %291
  %293 = load i32, i32* %8, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %8, align 4
  br label %244

295:                                              ; preds = %244
  br label %237

296:                                              ; preds = %237
  %297 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %297)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ARRAY_SIZE(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_pllnv04.c_getMNP_double.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_pllnv04.c_getMNP_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_subdev = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.nvbios_pll = type { i32, i32, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@INT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_subdev*, %struct.nvbios_pll*, i32, i32*, i32*, i32*, i32*, i32*)* @getMNP_double to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getMNP_double(%struct.nvkm_subdev* %0, %struct.nvbios_pll* %1, i32 %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.nvkm_subdev*, align 8
  %11 = alloca %struct.nvbios_pll*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  store %struct.nvkm_subdev* %0, %struct.nvkm_subdev** %10, align 8
  store %struct.nvbios_pll* %1, %struct.nvbios_pll** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %51 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %10, align 8
  %52 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %51, i32 0, i32 0
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %18, align 4
  %59 = load %struct.nvbios_pll*, %struct.nvbios_pll** %11, align 8
  %60 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %19, align 4
  %63 = load %struct.nvbios_pll*, %struct.nvbios_pll** %11, align 8
  %64 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %20, align 4
  %67 = load %struct.nvbios_pll*, %struct.nvbios_pll** %11, align 8
  %68 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %21, align 4
  %71 = load %struct.nvbios_pll*, %struct.nvbios_pll** %11, align 8
  %72 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %22, align 4
  %75 = load %struct.nvbios_pll*, %struct.nvbios_pll** %11, align 8
  %76 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %23, align 4
  %79 = load %struct.nvbios_pll*, %struct.nvbios_pll** %11, align 8
  %80 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %24, align 4
  %83 = load %struct.nvbios_pll*, %struct.nvbios_pll** %11, align 8
  %84 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %25, align 4
  %87 = load %struct.nvbios_pll*, %struct.nvbios_pll** %11, align 8
  %88 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %26, align 4
  %91 = load %struct.nvbios_pll*, %struct.nvbios_pll** %11, align 8
  %92 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %27, align 4
  %95 = load %struct.nvbios_pll*, %struct.nvbios_pll** %11, align 8
  %96 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %28, align 4
  %99 = load %struct.nvbios_pll*, %struct.nvbios_pll** %11, align 8
  %100 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 6
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %29, align 4
  %103 = load %struct.nvbios_pll*, %struct.nvbios_pll** %11, align 8
  %104 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 7
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %30, align 4
  %107 = load %struct.nvbios_pll*, %struct.nvbios_pll** %11, align 8
  %108 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %31, align 4
  %111 = load %struct.nvbios_pll*, %struct.nvbios_pll** %11, align 8
  %112 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %32, align 4
  %115 = load %struct.nvbios_pll*, %struct.nvbios_pll** %11, align 8
  %116 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 6
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %33, align 4
  %119 = load %struct.nvbios_pll*, %struct.nvbios_pll** %11, align 8
  %120 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 7
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %34, align 4
  %123 = load %struct.nvbios_pll*, %struct.nvbios_pll** %11, align 8
  %124 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  store i32 %125, i32* %35, align 4
  %126 = load %struct.nvbios_pll*, %struct.nvbios_pll** %11, align 8
  %127 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %36, align 4
  %129 = load i32, i32* %31, align 4
  %130 = load i32, i32* %32, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %136

132:                                              ; preds = %8
  %133 = load i32, i32* %33, align 4
  %134 = load i32, i32* %34, align 4
  %135 = icmp eq i32 %133, %134
  br label %136

136:                                              ; preds = %132, %8
  %137 = phi i1 [ false, %8 ], [ %135, %132 ]
  %138 = zext i1 %137 to i32
  store i32 %138, i32* %37, align 4
  %139 = load i32, i32* @INT_MAX, align 4
  store i32 %139, i32* %48, align 4
  store i32 0, i32* %49, align 4
  %140 = load i32, i32* %22, align 4
  %141 = load i32, i32* %22, align 4
  %142 = sdiv i32 %141, 200
  %143 = sub nsw i32 %140, %142
  %144 = sdiv i32 %143, 2
  store i32 %144, i32* %50, align 4
  store i32 0, i32* %42, align 4
  br label %145

145:                                              ; preds = %161, %136
  %146 = load i32, i32* %12, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %158

148:                                              ; preds = %145
  %149 = load i32, i32* %42, align 4
  %150 = load i32, i32* %35, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %158

152:                                              ; preds = %148
  %153 = load i32, i32* %12, align 4
  %154 = load i32, i32* %50, align 4
  %155 = load i32, i32* %42, align 4
  %156 = ashr i32 %154, %155
  %157 = icmp sle i32 %153, %156
  br label %158

158:                                              ; preds = %152, %148, %145
  %159 = phi i1 [ false, %148 ], [ false, %145 ], [ %157, %152 ]
  br i1 %159, label %160, label %164

160:                                              ; preds = %158
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %42, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %42, align 4
  br label %145

164:                                              ; preds = %158
  %165 = load i32, i32* %12, align 4
  %166 = load i32, i32* %42, align 4
  %167 = shl i32 %165, %166
  store i32 %167, i32* %43, align 4
  %168 = load i32, i32* %22, align 4
  %169 = load i32, i32* %12, align 4
  %170 = load i32, i32* %12, align 4
  %171 = sdiv i32 %170, 200
  %172 = add nsw i32 %169, %171
  %173 = icmp slt i32 %168, %172
  br i1 %173, label %174, label %179

174:                                              ; preds = %164
  %175 = load i32, i32* %12, align 4
  %176 = load i32, i32* %12, align 4
  %177 = sdiv i32 %176, 200
  %178 = add nsw i32 %175, %177
  store i32 %178, i32* %22, align 4
  br label %179

179:                                              ; preds = %174, %164
  %180 = load i32, i32* %27, align 4
  store i32 %180, i32* %38, align 4
  br label %181

181:                                              ; preds = %333, %179
  %182 = load i32, i32* %38, align 4
  %183 = load i32, i32* %28, align 4
  %184 = icmp sle i32 %182, %183
  br i1 %184, label %185, label %336

185:                                              ; preds = %181
  %186 = load i32, i32* %36, align 4
  %187 = load i32, i32* %38, align 4
  %188 = sdiv i32 %186, %187
  %189 = load i32, i32* %23, align 4
  %190 = icmp slt i32 %188, %189
  br i1 %190, label %191, label %193

191:                                              ; preds = %185
  %192 = load i32, i32* %49, align 4
  store i32 %192, i32* %9, align 4
  br label %338

193:                                              ; preds = %185
  %194 = load i32, i32* %36, align 4
  %195 = load i32, i32* %38, align 4
  %196 = sdiv i32 %194, %195
  %197 = load i32, i32* %25, align 4
  %198 = icmp sgt i32 %196, %197
  br i1 %198, label %199, label %200

199:                                              ; preds = %193
  br label %333

200:                                              ; preds = %193
  %201 = load i32, i32* %29, align 4
  store i32 %201, i32* %39, align 4
  br label %202

202:                                              ; preds = %329, %200
  %203 = load i32, i32* %39, align 4
  %204 = load i32, i32* %30, align 4
  %205 = icmp sle i32 %203, %204
  br i1 %205, label %206, label %332

206:                                              ; preds = %202
  %207 = load i32, i32* %36, align 4
  %208 = load i32, i32* %39, align 4
  %209 = mul nsw i32 %207, %208
  %210 = load i32, i32* %38, align 4
  %211 = sdiv i32 %209, %210
  store i32 %211, i32* %44, align 4
  %212 = load i32, i32* %44, align 4
  %213 = load i32, i32* %19, align 4
  %214 = icmp slt i32 %212, %213
  br i1 %214, label %215, label %216

215:                                              ; preds = %206
  br label %329

216:                                              ; preds = %206
  %217 = load i32, i32* %44, align 4
  %218 = load i32, i32* %20, align 4
  %219 = icmp sgt i32 %217, %218
  br i1 %219, label %220, label %221

220:                                              ; preds = %216
  br label %332

221:                                              ; preds = %216
  %222 = load i32, i32* %31, align 4
  store i32 %222, i32* %40, align 4
  br label %223

223:                                              ; preds = %325, %221
  %224 = load i32, i32* %40, align 4
  %225 = load i32, i32* %32, align 4
  %226 = icmp sle i32 %224, %225
  br i1 %226, label %227, label %328

227:                                              ; preds = %223
  %228 = load i32, i32* %44, align 4
  %229 = load i32, i32* %40, align 4
  %230 = sdiv i32 %228, %229
  %231 = load i32, i32* %24, align 4
  %232 = icmp slt i32 %230, %231
  br i1 %232, label %233, label %234

233:                                              ; preds = %227
  br label %328

234:                                              ; preds = %227
  %235 = load i32, i32* %44, align 4
  %236 = load i32, i32* %40, align 4
  %237 = sdiv i32 %235, %236
  %238 = load i32, i32* %26, align 4
  %239 = icmp sgt i32 %237, %238
  br i1 %239, label %240, label %241

240:                                              ; preds = %234
  br label %325

241:                                              ; preds = %234
  %242 = load i32, i32* %43, align 4
  %243 = load i32, i32* %40, align 4
  %244 = mul nsw i32 %242, %243
  %245 = load i32, i32* %44, align 4
  %246 = sdiv i32 %245, 2
  %247 = add nsw i32 %244, %246
  %248 = load i32, i32* %44, align 4
  %249 = sdiv i32 %247, %248
  store i32 %249, i32* %41, align 4
  %250 = load i32, i32* %41, align 4
  %251 = load i32, i32* %33, align 4
  %252 = icmp slt i32 %250, %251
  br i1 %252, label %253, label %254

253:                                              ; preds = %241
  br label %325

254:                                              ; preds = %241
  %255 = load i32, i32* %41, align 4
  %256 = load i32, i32* %34, align 4
  %257 = icmp sgt i32 %255, %256
  br i1 %257, label %258, label %259

258:                                              ; preds = %254
  br label %328

259:                                              ; preds = %254
  %260 = load i32, i32* %37, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %293, label %262

262:                                              ; preds = %259
  %263 = load i32, i32* %18, align 4
  %264 = icmp slt i32 %263, 96
  br i1 %264, label %265, label %277

265:                                              ; preds = %262
  %266 = load i32, i32* %41, align 4
  %267 = load i32, i32* %40, align 4
  %268 = sdiv i32 %266, %267
  %269 = icmp slt i32 %268, 4
  br i1 %269, label %275, label %270

270:                                              ; preds = %265
  %271 = load i32, i32* %41, align 4
  %272 = load i32, i32* %40, align 4
  %273 = sdiv i32 %271, %272
  %274 = icmp sgt i32 %273, 10
  br i1 %274, label %275, label %276

275:                                              ; preds = %270, %265
  br label %325

276:                                              ; preds = %270
  br label %277

277:                                              ; preds = %276, %262
  %278 = load i32, i32* %44, align 4
  %279 = load i32, i32* %41, align 4
  %280 = mul nsw i32 %278, %279
  %281 = load i32, i32* %40, align 4
  %282 = sdiv i32 %280, %281
  store i32 %282, i32* %45, align 4
  %283 = load i32, i32* %45, align 4
  %284 = load i32, i32* %21, align 4
  %285 = icmp slt i32 %283, %284
  br i1 %285, label %286, label %287

286:                                              ; preds = %277
  br label %328

287:                                              ; preds = %277
  %288 = load i32, i32* %45, align 4
  %289 = load i32, i32* %22, align 4
  %290 = icmp sgt i32 %288, %289
  br i1 %290, label %291, label %292

291:                                              ; preds = %287
  br label %325

292:                                              ; preds = %287
  br label %295

293:                                              ; preds = %259
  %294 = load i32, i32* %44, align 4
  store i32 %294, i32* %45, align 4
  br label %295

295:                                              ; preds = %293, %292
  %296 = load i32, i32* %45, align 4
  %297 = load i32, i32* %42, align 4
  %298 = ashr i32 %296, %297
  store i32 %298, i32* %46, align 4
  %299 = load i32, i32* %46, align 4
  %300 = load i32, i32* %12, align 4
  %301 = sub nsw i32 %299, %300
  %302 = call i32 @abs(i32 %301) #2
  store i32 %302, i32* %47, align 4
  %303 = load i32, i32* %47, align 4
  %304 = load i32, i32* %48, align 4
  %305 = icmp slt i32 %303, %304
  br i1 %305, label %306, label %324

306:                                              ; preds = %295
  %307 = load i32, i32* %47, align 4
  store i32 %307, i32* %48, align 4
  %308 = load i32, i32* %46, align 4
  store i32 %308, i32* %49, align 4
  %309 = load i32, i32* %39, align 4
  %310 = load i32*, i32** %13, align 8
  store i32 %309, i32* %310, align 4
  %311 = load i32, i32* %38, align 4
  %312 = load i32*, i32** %14, align 8
  store i32 %311, i32* %312, align 4
  %313 = load i32, i32* %41, align 4
  %314 = load i32*, i32** %15, align 8
  store i32 %313, i32* %314, align 4
  %315 = load i32, i32* %40, align 4
  %316 = load i32*, i32** %16, align 8
  store i32 %315, i32* %316, align 4
  %317 = load i32, i32* %42, align 4
  %318 = load i32*, i32** %17, align 8
  store i32 %317, i32* %318, align 4
  %319 = load i32, i32* %47, align 4
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %321, label %323

321:                                              ; preds = %306
  %322 = load i32, i32* %49, align 4
  store i32 %322, i32* %9, align 4
  br label %338

323:                                              ; preds = %306
  br label %324

324:                                              ; preds = %323, %295
  br label %325

325:                                              ; preds = %324, %291, %275, %253, %240
  %326 = load i32, i32* %40, align 4
  %327 = add nsw i32 %326, 1
  store i32 %327, i32* %40, align 4
  br label %223

328:                                              ; preds = %286, %258, %233, %223
  br label %329

329:                                              ; preds = %328, %215
  %330 = load i32, i32* %39, align 4
  %331 = add nsw i32 %330, 1
  store i32 %331, i32* %39, align 4
  br label %202

332:                                              ; preds = %220, %202
  br label %333

333:                                              ; preds = %332, %199
  %334 = load i32, i32* %38, align 4
  %335 = add nsw i32 %334, 1
  store i32 %335, i32* %38, align 4
  br label %181

336:                                              ; preds = %181
  %337 = load i32, i32* %49, align 4
  store i32 %337, i32* %9, align 4
  br label %338

338:                                              ; preds = %336, %321, %191
  %339 = load i32, i32* %9, align 4
  ret i32 %339
}

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

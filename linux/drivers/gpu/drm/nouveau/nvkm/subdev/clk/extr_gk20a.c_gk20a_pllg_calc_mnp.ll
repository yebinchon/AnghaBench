; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gk20a.c_gk20a_pllg_calc_mnp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gk20a.c_gk20a_pllg_calc_mnp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gk20a_clk = type { i64, i32 (i32)*, i32 (i32)*, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { i32 }
%struct.gk20a_pll = type { i32, i32, i32 }

@KHZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"low_PL %d(div%d), high_PL %d(div%d)\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"no best match for target @ %dMHz on gpc_pll\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"actual target freq %d KHz, M %d, N %d, PL %d(div%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gk20a_pllg_calc_mnp(%struct.gk20a_clk* %0, i64 %1, %struct.gk20a_pll* %2) #0 {
  %4 = alloca %struct.gk20a_clk*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.gk20a_pll*, align 8
  %7 = alloca %struct.nvkm_subdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
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
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.gk20a_clk* %0, %struct.gk20a_clk** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.gk20a_pll* %2, %struct.gk20a_pll** %6, align 8
  %28 = load %struct.gk20a_clk*, %struct.gk20a_clk** %4, align 8
  %29 = getelementptr inbounds %struct.gk20a_clk, %struct.gk20a_clk* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store %struct.nvkm_subdev* %30, %struct.nvkm_subdev** %7, align 8
  store i32 -1, i32* %19, align 4
  %31 = load i64, i64* %5, align 8
  %32 = mul i64 %31, 2
  %33 = load i64, i64* @KHZ, align 8
  %34 = udiv i64 %32, %33
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %8, align 4
  %36 = load %struct.gk20a_clk*, %struct.gk20a_clk** %4, align 8
  %37 = getelementptr inbounds %struct.gk20a_clk, %struct.gk20a_clk* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @KHZ, align 8
  %40 = udiv i64 %38, %39
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = sdiv i32 %43, 50
  %45 = add nsw i32 %42, %44
  store i32 %45, i32* %16, align 4
  %46 = load %struct.gk20a_clk*, %struct.gk20a_clk** %4, align 8
  %47 = getelementptr inbounds %struct.gk20a_clk, %struct.gk20a_clk* %46, i32 0, i32 3
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %16, align 4
  %52 = call i32 @max(i32 %50, i32 %51)
  store i32 %52, i32* %12, align 4
  %53 = load %struct.gk20a_clk*, %struct.gk20a_clk** %4, align 8
  %54 = getelementptr inbounds %struct.gk20a_clk, %struct.gk20a_clk* %53, i32 0, i32 3
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %11, align 4
  %58 = load %struct.gk20a_clk*, %struct.gk20a_clk** %4, align 8
  %59 = getelementptr inbounds %struct.gk20a_clk, %struct.gk20a_clk* %58, i32 0, i32 3
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %17, align 4
  %63 = load %struct.gk20a_clk*, %struct.gk20a_clk** %4, align 8
  %64 = getelementptr inbounds %struct.gk20a_clk, %struct.gk20a_clk* %63, i32 0, i32 3
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %18, align 4
  %68 = load %struct.gk20a_clk*, %struct.gk20a_clk** %4, align 8
  %69 = getelementptr inbounds %struct.gk20a_clk, %struct.gk20a_clk* %68, i32 0, i32 3
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %15, align 4
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %16, align 4
  %75 = add nsw i32 %73, %74
  %76 = sub nsw i32 %75, 1
  %77 = load i32, i32* %16, align 4
  %78 = sdiv i32 %76, %77
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %14, align 4
  %80 = load %struct.gk20a_clk*, %struct.gk20a_clk** %4, align 8
  %81 = getelementptr inbounds %struct.gk20a_clk, %struct.gk20a_clk* %80, i32 0, i32 3
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 9
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @min(i32 %79, i32 %84)
  store i32 %85, i32* %14, align 4
  %86 = load i32, i32* %14, align 4
  %87 = load %struct.gk20a_clk*, %struct.gk20a_clk** %4, align 8
  %88 = getelementptr inbounds %struct.gk20a_clk, %struct.gk20a_clk* %87, i32 0, i32 3
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @max(i32 %86, i32 %91)
  store i32 %92, i32* %14, align 4
  %93 = load %struct.gk20a_clk*, %struct.gk20a_clk** %4, align 8
  %94 = getelementptr inbounds %struct.gk20a_clk, %struct.gk20a_clk* %93, i32 0, i32 1
  %95 = load i32 (i32)*, i32 (i32)** %94, align 8
  %96 = load i32, i32* %14, align 4
  %97 = call i32 %95(i32 %96)
  store i32 %97, i32* %14, align 4
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %16, align 4
  %100 = sdiv i32 %98, %99
  store i32 %100, i32* %13, align 4
  %101 = load i32, i32* %13, align 4
  %102 = load %struct.gk20a_clk*, %struct.gk20a_clk** %4, align 8
  %103 = getelementptr inbounds %struct.gk20a_clk, %struct.gk20a_clk* %102, i32 0, i32 3
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 9
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @min(i32 %101, i32 %106)
  store i32 %107, i32* %13, align 4
  %108 = load i32, i32* %13, align 4
  %109 = load %struct.gk20a_clk*, %struct.gk20a_clk** %4, align 8
  %110 = getelementptr inbounds %struct.gk20a_clk, %struct.gk20a_clk* %109, i32 0, i32 3
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @max(i32 %108, i32 %113)
  store i32 %114, i32* %13, align 4
  %115 = load %struct.gk20a_clk*, %struct.gk20a_clk** %4, align 8
  %116 = getelementptr inbounds %struct.gk20a_clk, %struct.gk20a_clk* %115, i32 0, i32 1
  %117 = load i32 (i32)*, i32 (i32)** %116, align 8
  %118 = load i32, i32* %13, align 4
  %119 = call i32 %117(i32 %118)
  store i32 %119, i32* %13, align 4
  %120 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %7, align 8
  %121 = load i32, i32* %13, align 4
  %122 = load %struct.gk20a_clk*, %struct.gk20a_clk** %4, align 8
  %123 = getelementptr inbounds %struct.gk20a_clk, %struct.gk20a_clk* %122, i32 0, i32 2
  %124 = load i32 (i32)*, i32 (i32)** %123, align 8
  %125 = load i32, i32* %13, align 4
  %126 = call i32 %124(i32 %125)
  %127 = load i32, i32* %14, align 4
  %128 = load %struct.gk20a_clk*, %struct.gk20a_clk** %4, align 8
  %129 = getelementptr inbounds %struct.gk20a_clk, %struct.gk20a_clk* %128, i32 0, i32 2
  %130 = load i32 (i32)*, i32 (i32)** %129, align 8
  %131 = load i32, i32* %14, align 4
  %132 = call i32 %130(i32 %131)
  %133 = call i32 (%struct.nvkm_subdev*, i8*, i32, ...) @nvkm_debug(%struct.nvkm_subdev* %120, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %121, i32 %126, i32 %127, i32 %132)
  %134 = load i32, i32* %13, align 4
  store i32 %134, i32* %20, align 4
  br label %135

135:                                              ; preds = %280, %3
  %136 = load i32, i32* %20, align 4
  %137 = load i32, i32* %14, align 4
  %138 = icmp sle i32 %136, %137
  br i1 %138, label %139, label %283

139:                                              ; preds = %135
  %140 = load i32, i32* %8, align 4
  %141 = load %struct.gk20a_clk*, %struct.gk20a_clk** %4, align 8
  %142 = getelementptr inbounds %struct.gk20a_clk, %struct.gk20a_clk* %141, i32 0, i32 2
  %143 = load i32 (i32)*, i32 (i32)** %142, align 8
  %144 = load i32, i32* %20, align 4
  %145 = call i32 %143(i32 %144)
  %146 = mul nsw i32 %140, %145
  store i32 %146, i32* %16, align 4
  %147 = load %struct.gk20a_clk*, %struct.gk20a_clk** %4, align 8
  %148 = getelementptr inbounds %struct.gk20a_clk, %struct.gk20a_clk* %147, i32 0, i32 3
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 4
  store i32 %151, i32* %21, align 4
  br label %152

152:                                              ; preds = %276, %139
  %153 = load i32, i32* %21, align 4
  %154 = load %struct.gk20a_clk*, %struct.gk20a_clk** %4, align 8
  %155 = getelementptr inbounds %struct.gk20a_clk, %struct.gk20a_clk* %154, i32 0, i32 3
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = icmp sle i32 %153, %158
  br i1 %159, label %160, label %279

160:                                              ; preds = %152
  %161 = load i32, i32* %9, align 4
  %162 = load i32, i32* %21, align 4
  %163 = sdiv i32 %161, %162
  store i32 %163, i32* %24, align 4
  %164 = load i32, i32* %24, align 4
  %165 = load %struct.gk20a_clk*, %struct.gk20a_clk** %4, align 8
  %166 = getelementptr inbounds %struct.gk20a_clk, %struct.gk20a_clk* %165, i32 0, i32 3
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 6
  %169 = load i32, i32* %168, align 4
  %170 = icmp slt i32 %164, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %160
  br label %279

172:                                              ; preds = %160
  %173 = load i32, i32* %24, align 4
  %174 = load %struct.gk20a_clk*, %struct.gk20a_clk** %4, align 8
  %175 = getelementptr inbounds %struct.gk20a_clk, %struct.gk20a_clk* %174, i32 0, i32 3
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 7
  %178 = load i32, i32* %177, align 4
  %179 = icmp sgt i32 %173, %178
  br i1 %179, label %180, label %181

180:                                              ; preds = %172
  br label %276

181:                                              ; preds = %172
  %182 = load i32, i32* %16, align 4
  %183 = load i32, i32* %21, align 4
  %184 = mul nsw i32 %182, %183
  %185 = load i32, i32* %9, align 4
  %186 = sdiv i32 %184, %185
  store i32 %186, i32* %22, align 4
  %187 = load i32, i32* %16, align 4
  %188 = load i32, i32* %21, align 4
  %189 = mul nsw i32 %187, %188
  %190 = load i32, i32* %9, align 4
  %191 = sub nsw i32 %190, 1
  %192 = add nsw i32 %189, %191
  %193 = load i32, i32* %9, align 4
  %194 = sdiv i32 %192, %193
  store i32 %194, i32* %23, align 4
  %195 = load i32, i32* %22, align 4
  %196 = load %struct.gk20a_clk*, %struct.gk20a_clk** %4, align 8
  %197 = getelementptr inbounds %struct.gk20a_clk, %struct.gk20a_clk* %196, i32 0, i32 3
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 8
  %200 = load i32, i32* %199, align 4
  %201 = icmp sgt i32 %195, %200
  br i1 %201, label %202, label %203

202:                                              ; preds = %181
  br label %279

203:                                              ; preds = %181
  br label %204

204:                                              ; preds = %272, %203
  %205 = load i32, i32* %22, align 4
  %206 = load i32, i32* %23, align 4
  %207 = icmp sle i32 %205, %206
  br i1 %207, label %208, label %275

208:                                              ; preds = %204
  %209 = load i32, i32* %22, align 4
  %210 = load %struct.gk20a_clk*, %struct.gk20a_clk** %4, align 8
  %211 = getelementptr inbounds %struct.gk20a_clk, %struct.gk20a_clk* %210, i32 0, i32 3
  %212 = load %struct.TYPE_4__*, %struct.TYPE_4__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 4
  %215 = icmp slt i32 %209, %214
  br i1 %215, label %216, label %217

216:                                              ; preds = %208
  br label %272

217:                                              ; preds = %208
  %218 = load i32, i32* %22, align 4
  %219 = load %struct.gk20a_clk*, %struct.gk20a_clk** %4, align 8
  %220 = getelementptr inbounds %struct.gk20a_clk, %struct.gk20a_clk* %219, i32 0, i32 3
  %221 = load %struct.TYPE_4__*, %struct.TYPE_4__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 8
  %223 = load i32, i32* %222, align 4
  %224 = icmp sgt i32 %218, %223
  br i1 %224, label %225, label %226

225:                                              ; preds = %217
  br label %275

226:                                              ; preds = %217
  %227 = load i32, i32* %9, align 4
  %228 = load i32, i32* %22, align 4
  %229 = mul nsw i32 %227, %228
  %230 = load i32, i32* %21, align 4
  %231 = sdiv i32 %229, %230
  store i32 %231, i32* %25, align 4
  %232 = load i32, i32* %25, align 4
  %233 = load i32, i32* %11, align 4
  %234 = icmp sge i32 %232, %233
  br i1 %234, label %235, label %271

235:                                              ; preds = %226
  %236 = load i32, i32* %25, align 4
  %237 = load i32, i32* %12, align 4
  %238 = icmp sle i32 %236, %237
  br i1 %238, label %239, label %271

239:                                              ; preds = %235
  %240 = load i32, i32* %25, align 4
  %241 = load %struct.gk20a_clk*, %struct.gk20a_clk** %4, align 8
  %242 = getelementptr inbounds %struct.gk20a_clk, %struct.gk20a_clk* %241, i32 0, i32 2
  %243 = load i32 (i32)*, i32 (i32)** %242, align 8
  %244 = load i32, i32* %20, align 4
  %245 = call i32 %243(i32 %244)
  %246 = sdiv i32 %245, 2
  %247 = add nsw i32 %240, %246
  %248 = load %struct.gk20a_clk*, %struct.gk20a_clk** %4, align 8
  %249 = getelementptr inbounds %struct.gk20a_clk, %struct.gk20a_clk* %248, i32 0, i32 2
  %250 = load i32 (i32)*, i32 (i32)** %249, align 8
  %251 = load i32, i32* %20, align 4
  %252 = call i32 %250(i32 %251)
  %253 = sdiv i32 %247, %252
  store i32 %253, i32* %27, align 4
  %254 = load i32, i32* %27, align 4
  %255 = load i32, i32* %8, align 4
  %256 = sub nsw i32 %254, %255
  %257 = call i32 @abs(i32 %256) #3
  store i32 %257, i32* %26, align 4
  %258 = load i32, i32* %26, align 4
  %259 = load i32, i32* %19, align 4
  %260 = icmp slt i32 %258, %259
  br i1 %260, label %261, label %270

261:                                              ; preds = %239
  %262 = load i32, i32* %26, align 4
  store i32 %262, i32* %19, align 4
  %263 = load i32, i32* %21, align 4
  store i32 %263, i32* %17, align 4
  %264 = load i32, i32* %22, align 4
  store i32 %264, i32* %18, align 4
  %265 = load i32, i32* %20, align 4
  store i32 %265, i32* %15, align 4
  %266 = load i32, i32* %19, align 4
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %268, label %269

268:                                              ; preds = %261
  br label %284

269:                                              ; preds = %261
  br label %270

270:                                              ; preds = %269, %239
  br label %271

271:                                              ; preds = %270, %235, %226
  br label %272

272:                                              ; preds = %271, %216
  %273 = load i32, i32* %22, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %22, align 4
  br label %204

275:                                              ; preds = %225, %204
  br label %276

276:                                              ; preds = %275, %180
  %277 = load i32, i32* %21, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %21, align 4
  br label %152

279:                                              ; preds = %202, %171, %152
  br label %280

280:                                              ; preds = %279
  %281 = load i32, i32* %20, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %20, align 4
  br label %135

283:                                              ; preds = %135
  br label %284

284:                                              ; preds = %283, %268
  %285 = load i32, i32* %19, align 4
  %286 = icmp eq i32 %285, -1
  %287 = zext i1 %286 to i32
  %288 = call i32 @WARN_ON(i32 %287)
  %289 = load i32, i32* %19, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %299

291:                                              ; preds = %284
  %292 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %7, align 8
  %293 = load i32, i32* %8, align 4
  %294 = sext i32 %293 to i64
  %295 = load i64, i64* @KHZ, align 8
  %296 = udiv i64 %294, %295
  %297 = trunc i64 %296 to i32
  %298 = call i32 (%struct.nvkm_subdev*, i8*, i32, ...) @nvkm_debug(%struct.nvkm_subdev* %292, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %297)
  br label %299

299:                                              ; preds = %291, %284
  %300 = load i32, i32* %17, align 4
  %301 = load %struct.gk20a_pll*, %struct.gk20a_pll** %6, align 8
  %302 = getelementptr inbounds %struct.gk20a_pll, %struct.gk20a_pll* %301, i32 0, i32 0
  store i32 %300, i32* %302, align 4
  %303 = load i32, i32* %18, align 4
  %304 = load %struct.gk20a_pll*, %struct.gk20a_pll** %6, align 8
  %305 = getelementptr inbounds %struct.gk20a_pll, %struct.gk20a_pll* %304, i32 0, i32 1
  store i32 %303, i32* %305, align 4
  %306 = load i32, i32* %15, align 4
  %307 = load %struct.gk20a_pll*, %struct.gk20a_pll** %6, align 8
  %308 = getelementptr inbounds %struct.gk20a_pll, %struct.gk20a_pll* %307, i32 0, i32 2
  store i32 %306, i32* %308, align 4
  %309 = load %struct.gk20a_clk*, %struct.gk20a_clk** %4, align 8
  %310 = load %struct.gk20a_pll*, %struct.gk20a_pll** %6, align 8
  %311 = call i32 @gk20a_pllg_calc_rate(%struct.gk20a_clk* %309, %struct.gk20a_pll* %310)
  store i32 %311, i32* %10, align 4
  %312 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %7, align 8
  %313 = load i32, i32* %10, align 4
  %314 = sext i32 %313 to i64
  %315 = load i64, i64* @KHZ, align 8
  %316 = udiv i64 %314, %315
  %317 = trunc i64 %316 to i32
  %318 = load %struct.gk20a_pll*, %struct.gk20a_pll** %6, align 8
  %319 = getelementptr inbounds %struct.gk20a_pll, %struct.gk20a_pll* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 4
  %321 = load %struct.gk20a_pll*, %struct.gk20a_pll** %6, align 8
  %322 = getelementptr inbounds %struct.gk20a_pll, %struct.gk20a_pll* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 4
  %324 = load %struct.gk20a_pll*, %struct.gk20a_pll** %6, align 8
  %325 = getelementptr inbounds %struct.gk20a_pll, %struct.gk20a_pll* %324, i32 0, i32 2
  %326 = load i32, i32* %325, align 4
  %327 = load %struct.gk20a_clk*, %struct.gk20a_clk** %4, align 8
  %328 = getelementptr inbounds %struct.gk20a_clk, %struct.gk20a_clk* %327, i32 0, i32 2
  %329 = load i32 (i32)*, i32 (i32)** %328, align 8
  %330 = load %struct.gk20a_pll*, %struct.gk20a_pll** %6, align 8
  %331 = getelementptr inbounds %struct.gk20a_pll, %struct.gk20a_pll* %330, i32 0, i32 2
  %332 = load i32, i32* %331, align 4
  %333 = call i32 %329(i32 %332)
  %334 = call i32 (%struct.nvkm_subdev*, i8*, i32, ...) @nvkm_debug(%struct.nvkm_subdev* %312, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %317, i32 %320, i32 %323, i32 %326, i32 %333)
  ret i32 0
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @nvkm_debug(%struct.nvkm_subdev*, i8*, i32, ...) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @gk20a_pllg_calc_rate(%struct.gk20a_clk*, %struct.gk20a_pll*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

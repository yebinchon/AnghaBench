; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_resource.c_adjust_vp_and_init_for_seamless_clip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_resource.c_adjust_vp_and_init_for_seamless_clip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fixed31_32 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32, %struct.fixed31_32*, i32*, i32*)* @adjust_vp_and_init_for_seamless_clip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adjust_vp_and_init_for_seamless_clip(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.fixed31_32* %5, i32* %6, i32* %7) #0 {
  %9 = alloca %struct.fixed31_32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.fixed31_32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.fixed31_32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.fixed31_32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.fixed31_32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.fixed31_32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.fixed31_32, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.fixed31_32, align 4
  %31 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %9, i32 0, i32 0
  store i32 %4, i32* %31, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store %struct.fixed31_32* %5, %struct.fixed31_32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %166, label %34

34:                                               ; preds = %8
  %35 = load i32*, i32** %15, align 8
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %16, align 8
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %36, %38
  %40 = load i32, i32* %12, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %79

42:                                               ; preds = %34
  %43 = load i32, i32* %12, align 4
  %44 = load i32*, i32** %16, align 8
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 %43, %45
  %47 = load i32*, i32** %15, align 8
  %48 = load i32, i32* %47, align 4
  %49 = sub nsw i32 %46, %48
  store i32 %49, i32* %17, align 4
  %50 = load %struct.fixed31_32*, %struct.fixed31_32** %14, align 8
  %51 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %9, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @dc_fixpt_sub(i32 %52, i32 %54)
  %56 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %19, i32 0, i32 0
  store i32 %55, i32* %56, align 4
  %57 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %19, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @dc_fixpt_floor(i32 %58)
  store i32 %59, i32* %18, align 4
  %60 = load i32, i32* %18, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %42
  %63 = load i32, i32* %18, align 4
  br label %65

64:                                               ; preds = %42
  br label %65

65:                                               ; preds = %64, %62
  %66 = phi i32 [ %63, %62 ], [ 0, %64 ]
  store i32 %66, i32* %18, align 4
  %67 = load i32, i32* %18, align 4
  %68 = load i32, i32* %17, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, i32* %18, align 4
  br label %74

72:                                               ; preds = %65
  %73 = load i32, i32* %17, align 4
  br label %74

74:                                               ; preds = %72, %70
  %75 = phi i32 [ %71, %70 ], [ %73, %72 ]
  %76 = load i32*, i32** %16, align 8
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, %75
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %74, %34
  %80 = load i32*, i32** %15, align 8
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %165

83:                                               ; preds = %79
  %84 = load %struct.fixed31_32*, %struct.fixed31_32** %14, align 8
  %85 = load %struct.fixed31_32*, %struct.fixed31_32** %14, align 8
  %86 = load i32, i32* %11, align 4
  %87 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %9, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @dc_fixpt_mul_int(i32 %88, i32 %86)
  %90 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %85, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @dc_fixpt_add(i32 %91, i32 %89)
  %93 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %21, i32 0, i32 0
  store i32 %92, i32* %93, align 4
  %94 = bitcast %struct.fixed31_32* %84 to i8*
  %95 = bitcast %struct.fixed31_32* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %94, i8* align 4 %95, i64 4, i1 false)
  %96 = load %struct.fixed31_32*, %struct.fixed31_32** %14, align 8
  %97 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @dc_fixpt_floor(i32 %98)
  %100 = load i32*, i32** %15, align 8
  %101 = load i32, i32* %100, align 4
  %102 = sub nsw i32 %99, %101
  store i32 %102, i32* %20, align 4
  %103 = load i32, i32* %20, align 4
  %104 = load i32, i32* %13, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %133

106:                                              ; preds = %83
  %107 = load i32*, i32** %15, align 8
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %13, align 4
  %110 = load i32, i32* %20, align 4
  %111 = sub nsw i32 %109, %110
  %112 = icmp sge i32 %108, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %106
  %114 = load i32, i32* %13, align 4
  %115 = load i32, i32* %20, align 4
  %116 = sub nsw i32 %114, %115
  br label %120

117:                                              ; preds = %106
  %118 = load i32*, i32** %15, align 8
  %119 = load i32, i32* %118, align 4
  br label %120

120:                                              ; preds = %117, %113
  %121 = phi i32 [ %116, %113 ], [ %119, %117 ]
  store i32 %121, i32* %22, align 4
  %122 = load i32, i32* %22, align 4
  %123 = load i32*, i32** %15, align 8
  %124 = load i32, i32* %123, align 4
  %125 = sub nsw i32 %124, %122
  store i32 %125, i32* %123, align 4
  %126 = load i32, i32* %22, align 4
  %127 = load i32*, i32** %16, align 8
  %128 = load i32, i32* %127, align 4
  %129 = add nsw i32 %128, %126
  store i32 %129, i32* %127, align 4
  %130 = load i32, i32* %22, align 4
  %131 = load i32, i32* %20, align 4
  %132 = add nsw i32 %131, %130
  store i32 %132, i32* %20, align 4
  br label %152

133:                                              ; preds = %83
  %134 = load i32, i32* %20, align 4
  %135 = load i32, i32* %13, align 4
  %136 = icmp sgt i32 %134, %135
  br i1 %136, label %137, label %151

137:                                              ; preds = %133
  %138 = load i32, i32* %20, align 4
  %139 = load i32, i32* %13, align 4
  %140 = sub nsw i32 %138, %139
  %141 = load i32*, i32** %15, align 8
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %142, %140
  store i32 %143, i32* %141, align 4
  %144 = load i32, i32* %20, align 4
  %145 = load i32, i32* %13, align 4
  %146 = sub nsw i32 %144, %145
  %147 = load i32*, i32** %16, align 8
  %148 = load i32, i32* %147, align 4
  %149 = sub nsw i32 %148, %146
  store i32 %149, i32* %147, align 4
  %150 = load i32, i32* %13, align 4
  store i32 %150, i32* %20, align 4
  br label %151

151:                                              ; preds = %137, %133
  br label %152

152:                                              ; preds = %151, %120
  %153 = load %struct.fixed31_32*, %struct.fixed31_32** %14, align 8
  %154 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  store i32 %155, i32* %154, align 4
  %156 = load %struct.fixed31_32*, %struct.fixed31_32** %14, align 8
  %157 = load %struct.fixed31_32*, %struct.fixed31_32** %14, align 8
  %158 = load i32, i32* %20, align 4
  %159 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %157, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @dc_fixpt_add_int(i32 %160, i32 %158)
  %162 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %23, i32 0, i32 0
  store i32 %161, i32* %162, align 4
  %163 = bitcast %struct.fixed31_32* %156 to i8*
  %164 = bitcast %struct.fixed31_32* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %163, i8* align 4 %164, i64 4, i1 false)
  br label %165

165:                                              ; preds = %152, %79
  br label %301

166:                                              ; preds = %8
  %167 = load i32*, i32** %15, align 8
  %168 = load i32, i32* %167, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %216

170:                                              ; preds = %166
  %171 = load %struct.fixed31_32*, %struct.fixed31_32** %14, align 8
  %172 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %9, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @dc_fixpt_sub(i32 %173, i32 %175)
  %177 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %25, i32 0, i32 0
  store i32 %176, i32* %177, align 4
  %178 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %25, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @dc_fixpt_floor(i32 %179)
  store i32 %180, i32* %24, align 4
  %181 = load i32, i32* %24, align 4
  %182 = icmp sgt i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %170
  %184 = load i32, i32* %24, align 4
  br label %186

185:                                              ; preds = %170
  br label %186

186:                                              ; preds = %185, %183
  %187 = phi i32 [ %184, %183 ], [ 0, %185 ]
  store i32 %187, i32* %24, align 4
  %188 = load i32, i32* %24, align 4
  %189 = load i32*, i32** %15, align 8
  %190 = load i32, i32* %189, align 4
  %191 = icmp slt i32 %188, %190
  br i1 %191, label %192, label %194

192:                                              ; preds = %186
  %193 = load i32, i32* %24, align 4
  br label %197

194:                                              ; preds = %186
  %195 = load i32*, i32** %15, align 8
  %196 = load i32, i32* %195, align 4
  br label %197

197:                                              ; preds = %194, %192
  %198 = phi i32 [ %193, %192 ], [ %196, %194 ]
  %199 = load i32*, i32** %16, align 8
  %200 = load i32, i32* %199, align 4
  %201 = add nsw i32 %200, %198
  store i32 %201, i32* %199, align 4
  %202 = load i32, i32* %24, align 4
  %203 = load i32*, i32** %15, align 8
  %204 = load i32, i32* %203, align 4
  %205 = icmp slt i32 %202, %204
  br i1 %205, label %206, label %208

206:                                              ; preds = %197
  %207 = load i32, i32* %24, align 4
  br label %211

208:                                              ; preds = %197
  %209 = load i32*, i32** %15, align 8
  %210 = load i32, i32* %209, align 4
  br label %211

211:                                              ; preds = %208, %206
  %212 = phi i32 [ %207, %206 ], [ %210, %208 ]
  %213 = load i32*, i32** %15, align 8
  %214 = load i32, i32* %213, align 4
  %215 = sub nsw i32 %214, %212
  store i32 %215, i32* %213, align 4
  br label %216

216:                                              ; preds = %211, %166
  %217 = load i32*, i32** %15, align 8
  %218 = load i32, i32* %217, align 4
  %219 = load i32*, i32** %16, align 8
  %220 = load i32, i32* %219, align 4
  %221 = add nsw i32 %218, %220
  %222 = load i32, i32* %12, align 4
  %223 = icmp slt i32 %221, %222
  br i1 %223, label %224, label %300

224:                                              ; preds = %216
  %225 = load i32, i32* %12, align 4
  %226 = load i32*, i32** %15, align 8
  %227 = load i32, i32* %226, align 4
  %228 = sub nsw i32 %225, %227
  %229 = load i32*, i32** %16, align 8
  %230 = load i32, i32* %229, align 4
  %231 = sub nsw i32 %228, %230
  store i32 %231, i32* %27, align 4
  %232 = load %struct.fixed31_32*, %struct.fixed31_32** %14, align 8
  %233 = load %struct.fixed31_32*, %struct.fixed31_32** %14, align 8
  %234 = load i32, i32* %11, align 4
  %235 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %9, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @dc_fixpt_mul_int(i32 %236, i32 %234)
  %238 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %233, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @dc_fixpt_add(i32 %239, i32 %237)
  %241 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %28, i32 0, i32 0
  store i32 %240, i32* %241, align 4
  %242 = bitcast %struct.fixed31_32* %232 to i8*
  %243 = bitcast %struct.fixed31_32* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %242, i8* align 4 %243, i64 4, i1 false)
  %244 = load %struct.fixed31_32*, %struct.fixed31_32** %14, align 8
  %245 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = call i32 @dc_fixpt_floor(i32 %246)
  %248 = load i32, i32* %27, align 4
  %249 = sub nsw i32 %247, %248
  store i32 %249, i32* %26, align 4
  %250 = load i32, i32* %26, align 4
  %251 = load i32, i32* %13, align 4
  %252 = icmp slt i32 %250, %251
  br i1 %252, label %253, label %274

253:                                              ; preds = %224
  %254 = load i32, i32* %27, align 4
  %255 = load i32, i32* %13, align 4
  %256 = load i32, i32* %26, align 4
  %257 = sub nsw i32 %255, %256
  %258 = icmp sge i32 %254, %257
  br i1 %258, label %259, label %263

259:                                              ; preds = %253
  %260 = load i32, i32* %13, align 4
  %261 = load i32, i32* %26, align 4
  %262 = sub nsw i32 %260, %261
  br label %265

263:                                              ; preds = %253
  %264 = load i32, i32* %27, align 4
  br label %265

265:                                              ; preds = %263, %259
  %266 = phi i32 [ %262, %259 ], [ %264, %263 ]
  store i32 %266, i32* %29, align 4
  %267 = load i32, i32* %29, align 4
  %268 = load i32*, i32** %16, align 8
  %269 = load i32, i32* %268, align 4
  %270 = add nsw i32 %269, %267
  store i32 %270, i32* %268, align 4
  %271 = load i32, i32* %29, align 4
  %272 = load i32, i32* %26, align 4
  %273 = add nsw i32 %272, %271
  store i32 %273, i32* %26, align 4
  br label %287

274:                                              ; preds = %224
  %275 = load i32, i32* %26, align 4
  %276 = load i32, i32* %13, align 4
  %277 = icmp sgt i32 %275, %276
  br i1 %277, label %278, label %286

278:                                              ; preds = %274
  %279 = load i32, i32* %26, align 4
  %280 = load i32, i32* %13, align 4
  %281 = sub nsw i32 %279, %280
  %282 = load i32*, i32** %16, align 8
  %283 = load i32, i32* %282, align 4
  %284 = add nsw i32 %283, %281
  store i32 %284, i32* %282, align 4
  %285 = load i32, i32* %13, align 4
  store i32 %285, i32* %26, align 4
  br label %286

286:                                              ; preds = %278, %274
  br label %287

287:                                              ; preds = %286, %265
  %288 = load %struct.fixed31_32*, %struct.fixed31_32** %14, align 8
  %289 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 4
  store i32 %290, i32* %289, align 4
  %291 = load %struct.fixed31_32*, %struct.fixed31_32** %14, align 8
  %292 = load %struct.fixed31_32*, %struct.fixed31_32** %14, align 8
  %293 = load i32, i32* %26, align 4
  %294 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %292, i32 0, i32 0
  %295 = load i32, i32* %294, align 4
  %296 = call i32 @dc_fixpt_add_int(i32 %295, i32 %293)
  %297 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %30, i32 0, i32 0
  store i32 %296, i32* %297, align 4
  %298 = bitcast %struct.fixed31_32* %291 to i8*
  %299 = bitcast %struct.fixed31_32* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %298, i8* align 4 %299, i64 4, i1 false)
  br label %300

300:                                              ; preds = %287, %216
  br label %301

301:                                              ; preds = %300, %165
  ret void
}

declare dso_local i32 @dc_fixpt_floor(i32) #1

declare dso_local i32 @dc_fixpt_sub(i32, i32) #1

declare dso_local i32 @dc_fixpt_add(i32, i32) #1

declare dso_local i32 @dc_fixpt_mul_int(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dc_fixpt_add_int(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

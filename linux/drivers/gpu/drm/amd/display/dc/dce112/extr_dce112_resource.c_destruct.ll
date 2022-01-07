; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce112/extr_dce112_resource.c_destruct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce112/extr_dce112_resource.c_destruct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce110_resource_pool = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32*, i32*, i32*, i32**, i32*, i32**, i32**, i32**, i32**, i32**, %struct.TYPE_3__*, i32**, i32**, i32**, i32**, i32** }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dce110_resource_pool*)* @destruct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destruct(%struct.dce110_resource_pool* %0) #0 {
  %2 = alloca %struct.dce110_resource_pool*, align 8
  %3 = alloca i32, align 4
  store %struct.dce110_resource_pool* %0, %struct.dce110_resource_pool** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %125, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %2, align 8
  %7 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ult i32 %5, %9
  br i1 %10, label %11, label %128

11:                                               ; preds = %4
  %12 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %2, align 8
  %13 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 19
  %15 = load i32**, i32*** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i32*, i32** %15, i64 %17
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %11
  %22 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %2, align 8
  %23 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 19
  %25 = load i32**, i32*** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32*, i32** %25, i64 %27
  %29 = call i32 @dce110_opp_destroy(i32** %28)
  br label %30

30:                                               ; preds = %21, %11
  %31 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %2, align 8
  %32 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 18
  %34 = load i32**, i32*** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32*, i32** %34, i64 %36
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %49

40:                                               ; preds = %30
  %41 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %2, align 8
  %42 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 18
  %44 = load i32**, i32*** %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32*, i32** %44, i64 %46
  %48 = call i32 @dce112_transform_destroy(i32** %47)
  br label %49

49:                                               ; preds = %40, %30
  %50 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %2, align 8
  %51 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 17
  %53 = load i32**, i32*** %52, align 8
  %54 = load i32, i32* %3, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32*, i32** %53, i64 %55
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %68

59:                                               ; preds = %49
  %60 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %2, align 8
  %61 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 17
  %63 = load i32**, i32*** %62, align 8
  %64 = load i32, i32* %3, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i32*, i32** %63, i64 %65
  %67 = call i32 @dce_ipp_destroy(i32** %66)
  br label %68

68:                                               ; preds = %59, %49
  %69 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %2, align 8
  %70 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 16
  %72 = load i32**, i32*** %71, align 8
  %73 = load i32, i32* %3, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i32*, i32** %72, i64 %74
  %76 = load i32*, i32** %75, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %96

78:                                               ; preds = %68
  %79 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %2, align 8
  %80 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 16
  %82 = load i32**, i32*** %81, align 8
  %83 = load i32, i32* %3, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i32*, i32** %82, i64 %84
  %86 = load i32*, i32** %85, align 8
  %87 = call i32* @TO_DCE_MEM_INPUT(i32* %86)
  %88 = call i32 @kfree(i32* %87)
  %89 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %2, align 8
  %90 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 16
  %92 = load i32**, i32*** %91, align 8
  %93 = load i32, i32* %3, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i32*, i32** %92, i64 %94
  store i32* null, i32** %95, align 8
  br label %96

96:                                               ; preds = %78, %68
  %97 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %2, align 8
  %98 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 15
  %100 = load i32**, i32*** %99, align 8
  %101 = load i32, i32* %3, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i32*, i32** %100, i64 %102
  %104 = load i32*, i32** %103, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %106, label %124

106:                                              ; preds = %96
  %107 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %2, align 8
  %108 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 15
  %110 = load i32**, i32*** %109, align 8
  %111 = load i32, i32* %3, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds i32*, i32** %110, i64 %112
  %114 = load i32*, i32** %113, align 8
  %115 = call i32* @DCE110TG_FROM_TG(i32* %114)
  %116 = call i32 @kfree(i32* %115)
  %117 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %2, align 8
  %118 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 15
  %120 = load i32**, i32*** %119, align 8
  %121 = load i32, i32* %3, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i32*, i32** %120, i64 %122
  store i32* null, i32** %123, align 8
  br label %124

124:                                              ; preds = %106, %96
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %3, align 4
  %127 = add i32 %126, 1
  store i32 %127, i32* %3, align 4
  br label %4

128:                                              ; preds = %4
  store i32 0, i32* %3, align 4
  br label %129

129:                                              ; preds = %212, %128
  %130 = load i32, i32* %3, align 4
  %131 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %2, align 8
  %132 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 14
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = icmp ult i32 %130, %136
  br i1 %137, label %138, label %215

138:                                              ; preds = %129
  %139 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %2, align 8
  %140 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 13
  %142 = load i32**, i32*** %141, align 8
  %143 = load i32, i32* %3, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds i32*, i32** %142, i64 %144
  %146 = load i32*, i32** %145, align 8
  %147 = icmp ne i32* %146, null
  br i1 %147, label %148, label %157

148:                                              ; preds = %138
  %149 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %2, align 8
  %150 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 13
  %152 = load i32**, i32*** %151, align 8
  %153 = load i32, i32* %3, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds i32*, i32** %152, i64 %154
  %156 = call i32 @dce110_engine_destroy(i32** %155)
  br label %157

157:                                              ; preds = %148, %138
  %158 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %2, align 8
  %159 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 12
  %161 = load i32**, i32*** %160, align 8
  %162 = load i32, i32* %3, align 4
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds i32*, i32** %161, i64 %163
  %165 = load i32*, i32** %164, align 8
  %166 = icmp ne i32* %165, null
  br i1 %166, label %167, label %184

167:                                              ; preds = %157
  %168 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %2, align 8
  %169 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 12
  %171 = load i32**, i32*** %170, align 8
  %172 = load i32, i32* %3, align 4
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds i32*, i32** %171, i64 %173
  %175 = load i32*, i32** %174, align 8
  %176 = call i32 @kfree(i32* %175)
  %177 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %2, align 8
  %178 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 12
  %180 = load i32**, i32*** %179, align 8
  %181 = load i32, i32* %3, align 4
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds i32*, i32** %180, i64 %182
  store i32* null, i32** %183, align 8
  br label %184

184:                                              ; preds = %167, %157
  %185 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %2, align 8
  %186 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 11
  %188 = load i32**, i32*** %187, align 8
  %189 = load i32, i32* %3, align 4
  %190 = zext i32 %189 to i64
  %191 = getelementptr inbounds i32*, i32** %188, i64 %190
  %192 = load i32*, i32** %191, align 8
  %193 = icmp ne i32* %192, null
  br i1 %193, label %194, label %211

194:                                              ; preds = %184
  %195 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %2, align 8
  %196 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 11
  %198 = load i32**, i32*** %197, align 8
  %199 = load i32, i32* %3, align 4
  %200 = zext i32 %199 to i64
  %201 = getelementptr inbounds i32*, i32** %198, i64 %200
  %202 = load i32*, i32** %201, align 8
  %203 = call i32 @kfree(i32* %202)
  %204 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %2, align 8
  %205 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 11
  %207 = load i32**, i32*** %206, align 8
  %208 = load i32, i32* %3, align 4
  %209 = zext i32 %208 to i64
  %210 = getelementptr inbounds i32*, i32** %207, i64 %209
  store i32* null, i32** %210, align 8
  br label %211

211:                                              ; preds = %194, %184
  br label %212

212:                                              ; preds = %211
  %213 = load i32, i32* %3, align 4
  %214 = add i32 %213, 1
  store i32 %214, i32* %3, align 4
  br label %129

215:                                              ; preds = %129
  store i32 0, i32* %3, align 4
  br label %216

216:                                              ; preds = %245, %215
  %217 = load i32, i32* %3, align 4
  %218 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %2, align 8
  %219 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = icmp ult i32 %217, %221
  br i1 %222, label %223, label %248

223:                                              ; preds = %216
  %224 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %2, align 8
  %225 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 10
  %227 = load i32**, i32*** %226, align 8
  %228 = load i32, i32* %3, align 4
  %229 = zext i32 %228 to i64
  %230 = getelementptr inbounds i32*, i32** %227, i64 %229
  %231 = load i32*, i32** %230, align 8
  %232 = icmp ne i32* %231, null
  br i1 %232, label %233, label %244

233:                                              ; preds = %223
  %234 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %2, align 8
  %235 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 10
  %237 = load i32**, i32*** %236, align 8
  %238 = load i32, i32* %3, align 4
  %239 = zext i32 %238 to i64
  %240 = getelementptr inbounds i32*, i32** %237, i64 %239
  %241 = load i32*, i32** %240, align 8
  %242 = call i32* @DCE110STRENC_FROM_STRENC(i32* %241)
  %243 = call i32 @kfree(i32* %242)
  br label %244

244:                                              ; preds = %233, %223
  br label %245

245:                                              ; preds = %244
  %246 = load i32, i32* %3, align 4
  %247 = add i32 %246, 1
  store i32 %247, i32* %3, align 4
  br label %216

248:                                              ; preds = %216
  store i32 0, i32* %3, align 4
  br label %249

249:                                              ; preds = %276, %248
  %250 = load i32, i32* %3, align 4
  %251 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %2, align 8
  %252 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 8
  %255 = icmp ult i32 %250, %254
  br i1 %255, label %256, label %279

256:                                              ; preds = %249
  %257 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %2, align 8
  %258 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %258, i32 0, i32 9
  %260 = load i32**, i32*** %259, align 8
  %261 = load i32, i32* %3, align 4
  %262 = zext i32 %261 to i64
  %263 = getelementptr inbounds i32*, i32** %260, i64 %262
  %264 = load i32*, i32** %263, align 8
  %265 = icmp ne i32* %264, null
  br i1 %265, label %266, label %275

266:                                              ; preds = %256
  %267 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %2, align 8
  %268 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %268, i32 0, i32 9
  %270 = load i32**, i32*** %269, align 8
  %271 = load i32, i32* %3, align 4
  %272 = zext i32 %271 to i64
  %273 = getelementptr inbounds i32*, i32** %270, i64 %272
  %274 = call i32 @dce112_clock_source_destroy(i32** %273)
  br label %275

275:                                              ; preds = %266, %256
  br label %276

276:                                              ; preds = %275
  %277 = load i32, i32* %3, align 4
  %278 = add i32 %277, 1
  store i32 %278, i32* %3, align 4
  br label %249

279:                                              ; preds = %249
  %280 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %2, align 8
  %281 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %281, i32 0, i32 8
  %283 = load i32*, i32** %282, align 8
  %284 = icmp ne i32* %283, null
  br i1 %284, label %285, label %290

285:                                              ; preds = %279
  %286 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %2, align 8
  %287 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %287, i32 0, i32 8
  %289 = call i32 @dce112_clock_source_destroy(i32** %288)
  br label %290

290:                                              ; preds = %285, %279
  store i32 0, i32* %3, align 4
  br label %291

291:                                              ; preds = %318, %290
  %292 = load i32, i32* %3, align 4
  %293 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %2, align 8
  %294 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %294, i32 0, i32 3
  %296 = load i32, i32* %295, align 4
  %297 = icmp ult i32 %292, %296
  br i1 %297, label %298, label %321

298:                                              ; preds = %291
  %299 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %2, align 8
  %300 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %300, i32 0, i32 7
  %302 = load i32**, i32*** %301, align 8
  %303 = load i32, i32* %3, align 4
  %304 = zext i32 %303 to i64
  %305 = getelementptr inbounds i32*, i32** %302, i64 %304
  %306 = load i32*, i32** %305, align 8
  %307 = icmp ne i32* %306, null
  br i1 %307, label %308, label %317

308:                                              ; preds = %298
  %309 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %2, align 8
  %310 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %310, i32 0, i32 7
  %312 = load i32**, i32*** %311, align 8
  %313 = load i32, i32* %3, align 4
  %314 = zext i32 %313 to i64
  %315 = getelementptr inbounds i32*, i32** %312, i64 %314
  %316 = call i32 @dce_aud_destroy(i32** %315)
  br label %317

317:                                              ; preds = %308, %298
  br label %318

318:                                              ; preds = %317
  %319 = load i32, i32* %3, align 4
  %320 = add i32 %319, 1
  store i32 %320, i32* %3, align 4
  br label %291

321:                                              ; preds = %291
  %322 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %2, align 8
  %323 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %322, i32 0, i32 0
  %324 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %323, i32 0, i32 6
  %325 = load i32*, i32** %324, align 8
  %326 = icmp ne i32* %325, null
  br i1 %326, label %327, label %332

327:                                              ; preds = %321
  %328 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %2, align 8
  %329 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %328, i32 0, i32 0
  %330 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %329, i32 0, i32 6
  %331 = call i32 @dce_abm_destroy(i32** %330)
  br label %332

332:                                              ; preds = %327, %321
  %333 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %2, align 8
  %334 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %333, i32 0, i32 0
  %335 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %334, i32 0, i32 5
  %336 = load i32*, i32** %335, align 8
  %337 = icmp ne i32* %336, null
  br i1 %337, label %338, label %343

338:                                              ; preds = %332
  %339 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %2, align 8
  %340 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %339, i32 0, i32 0
  %341 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %340, i32 0, i32 5
  %342 = call i32 @dce_dmcu_destroy(i32** %341)
  br label %343

343:                                              ; preds = %338, %332
  %344 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %2, align 8
  %345 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %344, i32 0, i32 0
  %346 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %345, i32 0, i32 4
  %347 = load i32*, i32** %346, align 8
  %348 = icmp ne i32* %347, null
  br i1 %348, label %349, label %354

349:                                              ; preds = %343
  %350 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %2, align 8
  %351 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %350, i32 0, i32 0
  %352 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %351, i32 0, i32 4
  %353 = call i32 @dal_irq_service_destroy(i32** %352)
  br label %354

354:                                              ; preds = %349, %343
  ret void
}

declare dso_local i32 @dce110_opp_destroy(i32**) #1

declare dso_local i32 @dce112_transform_destroy(i32**) #1

declare dso_local i32 @dce_ipp_destroy(i32**) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32* @TO_DCE_MEM_INPUT(i32*) #1

declare dso_local i32* @DCE110TG_FROM_TG(i32*) #1

declare dso_local i32 @dce110_engine_destroy(i32**) #1

declare dso_local i32* @DCE110STRENC_FROM_STRENC(i32*) #1

declare dso_local i32 @dce112_clock_source_destroy(i32**) #1

declare dso_local i32 @dce_aud_destroy(i32**) #1

declare dso_local i32 @dce_abm_destroy(i32**) #1

declare dso_local i32 @dce_dmcu_destroy(i32**) #1

declare dso_local i32 @dal_irq_service_destroy(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

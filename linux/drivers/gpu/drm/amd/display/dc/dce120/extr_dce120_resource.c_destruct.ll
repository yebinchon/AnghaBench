; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce120/extr_dce120_resource.c_destruct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce120/extr_dce120_resource.c_destruct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce110_resource_pool = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32*, i32*, i32*, i32**, i32**, i64*, i32**, i32**, i32**, %struct.TYPE_3__*, i32**, i32*, i32**, i32**, i32**, i32** }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dce110_resource_pool*)* @destruct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destruct(%struct.dce110_resource_pool* %0) #0 {
  %2 = alloca %struct.dce110_resource_pool*, align 8
  %3 = alloca i32, align 4
  store %struct.dce110_resource_pool* %0, %struct.dce110_resource_pool** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %136, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %2, align 8
  %7 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ult i32 %5, %9
  br i1 %10, label %11, label %139

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
  %48 = call i32 @dce120_transform_destroy(i32** %47)
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
  %100 = load i32*, i32** %99, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %107

102:                                              ; preds = %96
  %103 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %2, align 8
  %104 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 15
  %106 = call i32 @dal_irq_service_destroy(i32** %105)
  br label %107

107:                                              ; preds = %102, %96
  %108 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %2, align 8
  %109 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 14
  %111 = load i32**, i32*** %110, align 8
  %112 = load i32, i32* %3, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds i32*, i32** %111, i64 %113
  %115 = load i32*, i32** %114, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %135

117:                                              ; preds = %107
  %118 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %2, align 8
  %119 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 14
  %121 = load i32**, i32*** %120, align 8
  %122 = load i32, i32* %3, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds i32*, i32** %121, i64 %123
  %125 = load i32*, i32** %124, align 8
  %126 = call i32* @DCE110TG_FROM_TG(i32* %125)
  %127 = call i32 @kfree(i32* %126)
  %128 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %2, align 8
  %129 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 14
  %131 = load i32**, i32*** %130, align 8
  %132 = load i32, i32* %3, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds i32*, i32** %131, i64 %133
  store i32* null, i32** %134, align 8
  br label %135

135:                                              ; preds = %117, %107
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %3, align 4
  %138 = add i32 %137, 1
  store i32 %138, i32* %3, align 4
  br label %4

139:                                              ; preds = %4
  store i32 0, i32* %3, align 4
  br label %140

140:                                              ; preds = %223, %139
  %141 = load i32, i32* %3, align 4
  %142 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %2, align 8
  %143 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 13
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = icmp ult i32 %141, %147
  br i1 %148, label %149, label %226

149:                                              ; preds = %140
  %150 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %2, align 8
  %151 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 12
  %153 = load i32**, i32*** %152, align 8
  %154 = load i32, i32* %3, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds i32*, i32** %153, i64 %155
  %157 = load i32*, i32** %156, align 8
  %158 = icmp ne i32* %157, null
  br i1 %158, label %159, label %168

159:                                              ; preds = %149
  %160 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %2, align 8
  %161 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 12
  %163 = load i32**, i32*** %162, align 8
  %164 = load i32, i32* %3, align 4
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds i32*, i32** %163, i64 %165
  %167 = call i32 @dce110_engine_destroy(i32** %166)
  br label %168

168:                                              ; preds = %159, %149
  %169 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %2, align 8
  %170 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 11
  %172 = load i32**, i32*** %171, align 8
  %173 = load i32, i32* %3, align 4
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds i32*, i32** %172, i64 %174
  %176 = load i32*, i32** %175, align 8
  %177 = icmp ne i32* %176, null
  br i1 %177, label %178, label %195

178:                                              ; preds = %168
  %179 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %2, align 8
  %180 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 11
  %182 = load i32**, i32*** %181, align 8
  %183 = load i32, i32* %3, align 4
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds i32*, i32** %182, i64 %184
  %186 = load i32*, i32** %185, align 8
  %187 = call i32 @kfree(i32* %186)
  %188 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %2, align 8
  %189 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 11
  %191 = load i32**, i32*** %190, align 8
  %192 = load i32, i32* %3, align 4
  %193 = zext i32 %192 to i64
  %194 = getelementptr inbounds i32*, i32** %191, i64 %193
  store i32* null, i32** %194, align 8
  br label %195

195:                                              ; preds = %178, %168
  %196 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %2, align 8
  %197 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 10
  %199 = load i32**, i32*** %198, align 8
  %200 = load i32, i32* %3, align 4
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds i32*, i32** %199, i64 %201
  %203 = load i32*, i32** %202, align 8
  %204 = icmp ne i32* %203, null
  br i1 %204, label %205, label %222

205:                                              ; preds = %195
  %206 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %2, align 8
  %207 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 10
  %209 = load i32**, i32*** %208, align 8
  %210 = load i32, i32* %3, align 4
  %211 = zext i32 %210 to i64
  %212 = getelementptr inbounds i32*, i32** %209, i64 %211
  %213 = load i32*, i32** %212, align 8
  %214 = call i32 @kfree(i32* %213)
  %215 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %2, align 8
  %216 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 10
  %218 = load i32**, i32*** %217, align 8
  %219 = load i32, i32* %3, align 4
  %220 = zext i32 %219 to i64
  %221 = getelementptr inbounds i32*, i32** %218, i64 %220
  store i32* null, i32** %221, align 8
  br label %222

222:                                              ; preds = %205, %195
  br label %223

223:                                              ; preds = %222
  %224 = load i32, i32* %3, align 4
  %225 = add i32 %224, 1
  store i32 %225, i32* %3, align 4
  br label %140

226:                                              ; preds = %140
  store i32 0, i32* %3, align 4
  br label %227

227:                                              ; preds = %254, %226
  %228 = load i32, i32* %3, align 4
  %229 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %2, align 8
  %230 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = icmp ult i32 %228, %232
  br i1 %233, label %234, label %257

234:                                              ; preds = %227
  %235 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %2, align 8
  %236 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 9
  %238 = load i64*, i64** %237, align 8
  %239 = load i32, i32* %3, align 4
  %240 = zext i32 %239 to i64
  %241 = getelementptr inbounds i64, i64* %238, i64 %240
  %242 = load i64, i64* %241, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %253

244:                                              ; preds = %234
  %245 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %2, align 8
  %246 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %246, i32 0, i32 9
  %248 = load i64*, i64** %247, align 8
  %249 = load i32, i32* %3, align 4
  %250 = zext i32 %249 to i64
  %251 = getelementptr inbounds i64, i64* %248, i64 %250
  %252 = call i32 @dce_aud_destroy(i64* %251)
  br label %253

253:                                              ; preds = %244, %234
  br label %254

254:                                              ; preds = %253
  %255 = load i32, i32* %3, align 4
  %256 = add i32 %255, 1
  store i32 %256, i32* %3, align 4
  br label %227

257:                                              ; preds = %227
  store i32 0, i32* %3, align 4
  br label %258

258:                                              ; preds = %287, %257
  %259 = load i32, i32* %3, align 4
  %260 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %2, align 8
  %261 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 8
  %264 = icmp ult i32 %259, %263
  br i1 %264, label %265, label %290

265:                                              ; preds = %258
  %266 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %2, align 8
  %267 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %267, i32 0, i32 8
  %269 = load i32**, i32*** %268, align 8
  %270 = load i32, i32* %3, align 4
  %271 = zext i32 %270 to i64
  %272 = getelementptr inbounds i32*, i32** %269, i64 %271
  %273 = load i32*, i32** %272, align 8
  %274 = icmp ne i32* %273, null
  br i1 %274, label %275, label %286

275:                                              ; preds = %265
  %276 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %2, align 8
  %277 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %277, i32 0, i32 8
  %279 = load i32**, i32*** %278, align 8
  %280 = load i32, i32* %3, align 4
  %281 = zext i32 %280 to i64
  %282 = getelementptr inbounds i32*, i32** %279, i64 %281
  %283 = load i32*, i32** %282, align 8
  %284 = call i32* @DCE110STRENC_FROM_STRENC(i32* %283)
  %285 = call i32 @kfree(i32* %284)
  br label %286

286:                                              ; preds = %275, %265
  br label %287

287:                                              ; preds = %286
  %288 = load i32, i32* %3, align 4
  %289 = add i32 %288, 1
  store i32 %289, i32* %3, align 4
  br label %258

290:                                              ; preds = %258
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
  %316 = call i32 @dce120_clock_source_destroy(i32** %315)
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
  %331 = call i32 @dce120_clock_source_destroy(i32** %330)
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
  %342 = call i32 @dce_abm_destroy(i32** %341)
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
  %353 = call i32 @dce_dmcu_destroy(i32** %352)
  br label %354

354:                                              ; preds = %349, %343
  ret void
}

declare dso_local i32 @dce110_opp_destroy(i32**) #1

declare dso_local i32 @dce120_transform_destroy(i32**) #1

declare dso_local i32 @dce_ipp_destroy(i32**) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32* @TO_DCE_MEM_INPUT(i32*) #1

declare dso_local i32 @dal_irq_service_destroy(i32**) #1

declare dso_local i32* @DCE110TG_FROM_TG(i32*) #1

declare dso_local i32 @dce110_engine_destroy(i32**) #1

declare dso_local i32 @dce_aud_destroy(i64*) #1

declare dso_local i32* @DCE110STRENC_FROM_STRENC(i32*) #1

declare dso_local i32 @dce120_clock_source_destroy(i32**) #1

declare dso_local i32 @dce_abm_destroy(i32**) #1

declare dso_local i32 @dce_dmcu_destroy(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

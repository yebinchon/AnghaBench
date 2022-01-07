; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.c_sdma_map_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.c_sdma_map_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32, i32, i32, i32, i32* }
%struct.sdma_vl_map = type { i32, i32, i32, i32*, i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32, i32** }

@OPA_MAX_VLS = common dso_local global i32 0, align 4
@HFI1_HAS_SEND_DMA = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@TXE_NUM_SDMA_ENGINES = common dso_local global i32 0, align 4
@sdma_map_rcu_callback = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdma_map_init(%struct.hfi1_devdata* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hfi1_devdata*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.sdma_vl_map*, align 8
  %18 = alloca %struct.sdma_vl_map*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %14, align 4
  %22 = load i32, i32* @OPA_MAX_VLS, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %15, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %16, align 8
  %26 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %27 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @HFI1_HAS_SEND_DMA, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %290

33:                                               ; preds = %4
  %34 = load i32*, i32** %9, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %69, label %36

36:                                               ; preds = %33
  %37 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %38 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %8, align 4
  %41 = sdiv i32 %39, %40
  store i32 %41, i32* %13, align 4
  %42 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %43 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %8, align 4
  %46 = srem i32 %44, %45
  store i32 %46, i32* %12, align 4
  store i32* %25, i32** %9, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sub nsw i32 %47, 1
  store i32 %48, i32* %10, align 4
  br label %49

49:                                               ; preds = %63, %36
  %50 = load i32, i32* %10, align 4
  %51 = icmp sge i32 %50, 0
  br i1 %51, label %52, label %68

52:                                               ; preds = %49
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp sgt i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 1, i32 0
  %58 = add nsw i32 %53, %57
  %59 = load i32*, i32** %9, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 %58, i32* %62, align 4
  br label %63

63:                                               ; preds = %52
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %12, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %12, align 4
  br label %49

68:                                               ; preds = %49
  br label %69

69:                                               ; preds = %68, %33
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @roundup_pow_of_two(i32 %70)
  %72 = sext i32 %71 to i64
  %73 = mul i64 %72, 8
  %74 = add i64 40, %73
  %75 = trunc i64 %74 to i32
  %76 = load i32, i32* @GFP_KERNEL, align 4
  %77 = call i8* @kzalloc(i32 %75, i32 %76)
  %78 = bitcast i8* %77 to %struct.sdma_vl_map*
  store %struct.sdma_vl_map* %78, %struct.sdma_vl_map** %18, align 8
  %79 = load %struct.sdma_vl_map*, %struct.sdma_vl_map** %18, align 8
  %80 = icmp ne %struct.sdma_vl_map* %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %69
  br label %285

82:                                               ; preds = %69
  %83 = load i32, i32* %8, align 4
  %84 = load %struct.sdma_vl_map*, %struct.sdma_vl_map** %18, align 8
  %85 = getelementptr inbounds %struct.sdma_vl_map, %struct.sdma_vl_map* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @roundup_pow_of_two(i32 %86)
  %88 = load %struct.sdma_vl_map*, %struct.sdma_vl_map** %18, align 8
  %89 = getelementptr inbounds %struct.sdma_vl_map, %struct.sdma_vl_map* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load %struct.sdma_vl_map*, %struct.sdma_vl_map** %18, align 8
  %91 = getelementptr inbounds %struct.sdma_vl_map, %struct.sdma_vl_map* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @ilog2(i32 %92)
  %94 = shl i32 1, %93
  %95 = sub nsw i32 %94, 1
  %96 = load %struct.sdma_vl_map*, %struct.sdma_vl_map** %18, align 8
  %97 = getelementptr inbounds %struct.sdma_vl_map, %struct.sdma_vl_map* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 8
  store i32 0, i32* %10, align 4
  br label %98

98:                                               ; preds = %109, %82
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* @TXE_NUM_SDMA_ENGINES, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %112

102:                                              ; preds = %98
  %103 = load %struct.sdma_vl_map*, %struct.sdma_vl_map** %18, align 8
  %104 = getelementptr inbounds %struct.sdma_vl_map, %struct.sdma_vl_map* %103, i32 0, i32 3
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %10, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  store i32 -1, i32* %108, align 4
  br label %109

109:                                              ; preds = %102
  %110 = load i32, i32* %10, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %10, align 4
  br label %98

112:                                              ; preds = %98
  store i32 0, i32* %10, align 4
  br label %113

113:                                              ; preds = %255, %112
  %114 = load i32, i32* %10, align 4
  %115 = load %struct.sdma_vl_map*, %struct.sdma_vl_map** %18, align 8
  %116 = getelementptr inbounds %struct.sdma_vl_map, %struct.sdma_vl_map* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = icmp slt i32 %114, %117
  br i1 %118, label %119, label %258

119:                                              ; preds = %113
  %120 = load i32, i32* %14, align 4
  store i32 %120, i32* %20, align 4
  %121 = load i32, i32* %10, align 4
  %122 = load %struct.sdma_vl_map*, %struct.sdma_vl_map** %18, align 8
  %123 = getelementptr inbounds %struct.sdma_vl_map, %struct.sdma_vl_map* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp slt i32 %121, %124
  br i1 %125, label %126, label %231

126:                                              ; preds = %119
  %127 = load i32*, i32** %9, align 8
  %128 = load i32, i32* %10, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @roundup_pow_of_two(i32 %131)
  store i32 %132, i32* %21, align 4
  %133 = load i32, i32* %21, align 4
  %134 = sext i32 %133 to i64
  %135 = mul i64 %134, 8
  %136 = add i64 4, %135
  %137 = trunc i64 %136 to i32
  %138 = load i32, i32* @GFP_KERNEL, align 4
  %139 = call i8* @kzalloc(i32 %137, i32 %138)
  %140 = bitcast i8* %139 to %struct.TYPE_2__*
  %141 = load %struct.sdma_vl_map*, %struct.sdma_vl_map** %18, align 8
  %142 = getelementptr inbounds %struct.sdma_vl_map, %struct.sdma_vl_map* %141, i32 0, i32 5
  %143 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %142, align 8
  %144 = load i32, i32* %10, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %143, i64 %145
  store %struct.TYPE_2__* %140, %struct.TYPE_2__** %146, align 8
  %147 = load %struct.sdma_vl_map*, %struct.sdma_vl_map** %18, align 8
  %148 = getelementptr inbounds %struct.sdma_vl_map, %struct.sdma_vl_map* %147, i32 0, i32 5
  %149 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %148, align 8
  %150 = load i32, i32* %10, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %149, i64 %151
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** %152, align 8
  %154 = icmp ne %struct.TYPE_2__* %153, null
  br i1 %154, label %156, label %155

155:                                              ; preds = %126
  br label %285

156:                                              ; preds = %126
  %157 = load i32, i32* %21, align 4
  %158 = call i32 @ilog2(i32 %157)
  %159 = shl i32 1, %158
  %160 = sub nsw i32 %159, 1
  %161 = load %struct.sdma_vl_map*, %struct.sdma_vl_map** %18, align 8
  %162 = getelementptr inbounds %struct.sdma_vl_map, %struct.sdma_vl_map* %161, i32 0, i32 5
  %163 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %162, align 8
  %164 = load i32, i32* %10, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %163, i64 %165
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 0
  store i32 %160, i32* %168, align 8
  store i32 0, i32* %11, align 4
  br label %169

169:                                              ; preds = %205, %156
  %170 = load i32, i32* %11, align 4
  %171 = load i32, i32* %21, align 4
  %172 = icmp slt i32 %170, %171
  br i1 %172, label %173, label %208

173:                                              ; preds = %169
  %174 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %175 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %174, i32 0, i32 4
  %176 = load i32*, i32** %175, align 8
  %177 = load i32, i32* %14, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  %180 = load %struct.sdma_vl_map*, %struct.sdma_vl_map** %18, align 8
  %181 = getelementptr inbounds %struct.sdma_vl_map, %struct.sdma_vl_map* %180, i32 0, i32 5
  %182 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %181, align 8
  %183 = load i32, i32* %10, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %182, i64 %184
  %186 = load %struct.TYPE_2__*, %struct.TYPE_2__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 1
  %188 = load i32**, i32*** %187, align 8
  %189 = load i32, i32* %11, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32*, i32** %188, i64 %190
  store i32* %179, i32** %191, align 8
  %192 = load i32, i32* %14, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %14, align 4
  %194 = load i32, i32* %20, align 4
  %195 = load i32*, i32** %9, align 8
  %196 = load i32, i32* %10, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = add nsw i32 %194, %199
  %201 = icmp sge i32 %193, %200
  br i1 %201, label %202, label %204

202:                                              ; preds = %173
  %203 = load i32, i32* %20, align 4
  store i32 %203, i32* %14, align 4
  br label %204

204:                                              ; preds = %202, %173
  br label %205

205:                                              ; preds = %204
  %206 = load i32, i32* %11, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %11, align 4
  br label %169

208:                                              ; preds = %169
  store i32 0, i32* %11, align 4
  br label %209

209:                                              ; preds = %227, %208
  %210 = load i32, i32* %11, align 4
  %211 = load i32*, i32** %9, align 8
  %212 = load i32, i32* %10, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = icmp slt i32 %210, %215
  br i1 %216, label %217, label %230

217:                                              ; preds = %209
  %218 = load i32, i32* %10, align 4
  %219 = load %struct.sdma_vl_map*, %struct.sdma_vl_map** %18, align 8
  %220 = getelementptr inbounds %struct.sdma_vl_map, %struct.sdma_vl_map* %219, i32 0, i32 3
  %221 = load i32*, i32** %220, align 8
  %222 = load i32, i32* %20, align 4
  %223 = load i32, i32* %11, align 4
  %224 = add nsw i32 %222, %223
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %221, i64 %225
  store i32 %218, i32* %226, align 4
  br label %227

227:                                              ; preds = %217
  %228 = load i32, i32* %11, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %11, align 4
  br label %209

230:                                              ; preds = %209
  br label %247

231:                                              ; preds = %119
  %232 = load %struct.sdma_vl_map*, %struct.sdma_vl_map** %18, align 8
  %233 = getelementptr inbounds %struct.sdma_vl_map, %struct.sdma_vl_map* %232, i32 0, i32 5
  %234 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %233, align 8
  %235 = load i32, i32* %10, align 4
  %236 = load i32, i32* %8, align 4
  %237 = srem i32 %235, %236
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %234, i64 %238
  %240 = load %struct.TYPE_2__*, %struct.TYPE_2__** %239, align 8
  %241 = load %struct.sdma_vl_map*, %struct.sdma_vl_map** %18, align 8
  %242 = getelementptr inbounds %struct.sdma_vl_map, %struct.sdma_vl_map* %241, i32 0, i32 5
  %243 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %242, align 8
  %244 = load i32, i32* %10, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %243, i64 %245
  store %struct.TYPE_2__* %240, %struct.TYPE_2__** %246, align 8
  br label %247

247:                                              ; preds = %231, %230
  %248 = load i32, i32* %20, align 4
  %249 = load i32*, i32** %9, align 8
  %250 = load i32, i32* %10, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %249, i64 %251
  %253 = load i32, i32* %252, align 4
  %254 = add nsw i32 %248, %253
  store i32 %254, i32* %14, align 4
  br label %255

255:                                              ; preds = %247
  %256 = load i32, i32* %10, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %10, align 4
  br label %113

258:                                              ; preds = %113
  %259 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %260 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %259, i32 0, i32 2
  %261 = call i32 @spin_lock_irq(i32* %260)
  %262 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %263 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %262, i32 0, i32 3
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %266 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %265, i32 0, i32 2
  %267 = call i32 @lockdep_is_held(i32* %266)
  %268 = call %struct.sdma_vl_map* @rcu_dereference_protected(i32 %264, i32 %267)
  store %struct.sdma_vl_map* %268, %struct.sdma_vl_map** %17, align 8
  %269 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %270 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %269, i32 0, i32 3
  %271 = load i32, i32* %270, align 4
  %272 = load %struct.sdma_vl_map*, %struct.sdma_vl_map** %18, align 8
  %273 = call i32 @rcu_assign_pointer(i32 %271, %struct.sdma_vl_map* %272)
  %274 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %275 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %274, i32 0, i32 2
  %276 = call i32 @spin_unlock_irq(i32* %275)
  %277 = load %struct.sdma_vl_map*, %struct.sdma_vl_map** %17, align 8
  %278 = icmp ne %struct.sdma_vl_map* %277, null
  br i1 %278, label %279, label %284

279:                                              ; preds = %258
  %280 = load %struct.sdma_vl_map*, %struct.sdma_vl_map** %17, align 8
  %281 = getelementptr inbounds %struct.sdma_vl_map, %struct.sdma_vl_map* %280, i32 0, i32 4
  %282 = load i32, i32* @sdma_map_rcu_callback, align 4
  %283 = call i32 @call_rcu(i32* %281, i32 %282)
  br label %284

284:                                              ; preds = %279, %258
  store i32 0, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %290

285:                                              ; preds = %155, %81
  %286 = load %struct.sdma_vl_map*, %struct.sdma_vl_map** %18, align 8
  %287 = call i32 @sdma_map_free(%struct.sdma_vl_map* %286)
  %288 = load i32, i32* @ENOMEM, align 4
  %289 = sub nsw i32 0, %288
  store i32 %289, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %290

290:                                              ; preds = %285, %284, %32
  %291 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %291)
  %292 = load i32, i32* %5, align 4
  ret i32 %292
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @kzalloc(i32, i32) #2

declare dso_local i32 @roundup_pow_of_two(i32) #2

declare dso_local i32 @ilog2(i32) #2

declare dso_local i32 @spin_lock_irq(i32*) #2

declare dso_local %struct.sdma_vl_map* @rcu_dereference_protected(i32, i32) #2

declare dso_local i32 @lockdep_is_held(i32*) #2

declare dso_local i32 @rcu_assign_pointer(i32, %struct.sdma_vl_map*) #2

declare dso_local i32 @spin_unlock_irq(i32*) #2

declare dso_local i32 @call_rcu(i32*, i32) #2

declare dso_local i32 @sdma_map_free(%struct.sdma_vl_map*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

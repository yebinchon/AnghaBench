; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_pio.c_pio_map_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_pio.c_pio_map_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32, i32, i32, i64*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.pio_vl_map = type { i32, i32, i32, i32, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i32, i64* }

@OPA_MAX_VLS = common dso_local global i32 0, align 4
@SC_KERNEL = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@pio_map_rcu_callback = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pio_map_init(%struct.hfi1_devdata* %0, i32 %1, i32 %2, i32* %3) #0 {
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
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.pio_vl_map*, align 8
  %19 = alloca %struct.pio_vl_map*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 1, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %23 = load i32, i32* @OPA_MAX_VLS, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %16, align 8
  %26 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %17, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %83, label %29

29:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %30

30:                                               ; preds = %51, %29
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %33 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %54

36:                                               ; preds = %30
  %37 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %38 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %37, i32 0, i32 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @SC_KERNEL, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %36
  %48 = load i32, i32* %15, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %15, align 4
  br label %50

50:                                               ; preds = %47, %36
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %10, align 4
  br label %30

54:                                               ; preds = %30
  %55 = load i32, i32* %15, align 4
  %56 = load i32, i32* %8, align 4
  %57 = sdiv i32 %55, %56
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* %8, align 4
  %60 = srem i32 %58, %59
  store i32 %60, i32* %12, align 4
  store i32* %26, i32** %9, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sub nsw i32 %61, 1
  store i32 %62, i32* %10, align 4
  br label %63

63:                                               ; preds = %77, %54
  %64 = load i32, i32* %10, align 4
  %65 = icmp sge i32 %64, 0
  br i1 %65, label %66, label %82

66:                                               ; preds = %63
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* %12, align 4
  %69 = icmp sgt i32 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i32 1, i32 0
  %72 = add nsw i32 %67, %71
  %73 = load i32*, i32** %9, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 %72, i32* %76, align 4
  br label %77

77:                                               ; preds = %66
  %78 = load i32, i32* %10, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %12, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %12, align 4
  br label %63

82:                                               ; preds = %63
  br label %83

83:                                               ; preds = %82, %4
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @roundup_pow_of_two(i32 %84)
  %86 = sext i32 %85 to i64
  %87 = mul i64 %86, 8
  %88 = add i64 24, %87
  %89 = trunc i64 %88 to i32
  %90 = load i32, i32* @GFP_KERNEL, align 4
  %91 = call i8* @kzalloc(i32 %89, i32 %90)
  %92 = bitcast i8* %91 to %struct.pio_vl_map*
  store %struct.pio_vl_map* %92, %struct.pio_vl_map** %19, align 8
  %93 = load %struct.pio_vl_map*, %struct.pio_vl_map** %19, align 8
  %94 = icmp ne %struct.pio_vl_map* %93, null
  br i1 %94, label %96, label %95

95:                                               ; preds = %83
  br label %277

96:                                               ; preds = %83
  %97 = load i32, i32* %8, align 4
  %98 = load %struct.pio_vl_map*, %struct.pio_vl_map** %19, align 8
  %99 = getelementptr inbounds %struct.pio_vl_map, %struct.pio_vl_map* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @roundup_pow_of_two(i32 %100)
  %102 = load %struct.pio_vl_map*, %struct.pio_vl_map** %19, align 8
  %103 = getelementptr inbounds %struct.pio_vl_map, %struct.pio_vl_map* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load %struct.pio_vl_map*, %struct.pio_vl_map** %19, align 8
  %105 = getelementptr inbounds %struct.pio_vl_map, %struct.pio_vl_map* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @ilog2(i32 %106)
  %108 = shl i32 1, %107
  %109 = sub nsw i32 %108, 1
  %110 = load %struct.pio_vl_map*, %struct.pio_vl_map** %19, align 8
  %111 = getelementptr inbounds %struct.pio_vl_map, %struct.pio_vl_map* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 8
  store i32 0, i32* %10, align 4
  br label %112

112:                                              ; preds = %247, %96
  %113 = load i32, i32* %10, align 4
  %114 = load %struct.pio_vl_map*, %struct.pio_vl_map** %19, align 8
  %115 = getelementptr inbounds %struct.pio_vl_map, %struct.pio_vl_map* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = icmp slt i32 %113, %116
  br i1 %117, label %118, label %250

118:                                              ; preds = %112
  %119 = load i32, i32* %14, align 4
  store i32 %119, i32* %20, align 4
  %120 = load i32, i32* %10, align 4
  %121 = load %struct.pio_vl_map*, %struct.pio_vl_map** %19, align 8
  %122 = getelementptr inbounds %struct.pio_vl_map, %struct.pio_vl_map* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp slt i32 %120, %123
  br i1 %124, label %125, label %223

125:                                              ; preds = %118
  %126 = load i32*, i32** %9, align 8
  %127 = load i32, i32* %10, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @roundup_pow_of_two(i32 %130)
  store i32 %131, i32* %21, align 4
  %132 = load i32, i32* %21, align 4
  %133 = sext i32 %132 to i64
  %134 = mul i64 %133, 8
  %135 = add i64 16, %134
  %136 = trunc i64 %135 to i32
  %137 = load i32, i32* @GFP_KERNEL, align 4
  %138 = call i8* @kzalloc(i32 %136, i32 %137)
  %139 = bitcast i8* %138 to %struct.TYPE_4__*
  %140 = load %struct.pio_vl_map*, %struct.pio_vl_map** %19, align 8
  %141 = getelementptr inbounds %struct.pio_vl_map, %struct.pio_vl_map* %140, i32 0, i32 4
  %142 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %141, align 8
  %143 = load i32, i32* %10, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %142, i64 %144
  store %struct.TYPE_4__* %139, %struct.TYPE_4__** %145, align 8
  %146 = load %struct.pio_vl_map*, %struct.pio_vl_map** %19, align 8
  %147 = getelementptr inbounds %struct.pio_vl_map, %struct.pio_vl_map* %146, i32 0, i32 4
  %148 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %147, align 8
  %149 = load i32, i32* %10, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %148, i64 %150
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %151, align 8
  %153 = icmp ne %struct.TYPE_4__* %152, null
  br i1 %153, label %155, label %154

154:                                              ; preds = %125
  br label %277

155:                                              ; preds = %125
  %156 = load i32, i32* %21, align 4
  %157 = call i32 @ilog2(i32 %156)
  %158 = shl i32 1, %157
  %159 = sub nsw i32 %158, 1
  %160 = load %struct.pio_vl_map*, %struct.pio_vl_map** %19, align 8
  %161 = getelementptr inbounds %struct.pio_vl_map, %struct.pio_vl_map* %160, i32 0, i32 4
  %162 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %161, align 8
  %163 = load i32, i32* %10, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %162, i64 %164
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  store i32 %159, i32* %167, align 8
  store i32 0, i32* %11, align 4
  br label %168

168:                                              ; preds = %219, %155
  %169 = load i32, i32* %11, align 4
  %170 = load i32, i32* %21, align 4
  %171 = icmp slt i32 %169, %170
  br i1 %171, label %172, label %222

172:                                              ; preds = %168
  %173 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %174 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %173, i32 0, i32 3
  %175 = load i64*, i64** %174, align 8
  %176 = load i32, i32* %14, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i64, i64* %175, i64 %177
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %205

181:                                              ; preds = %172
  %182 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %183 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %182, i32 0, i32 3
  %184 = load i64*, i64** %183, align 8
  %185 = load i32, i32* %14, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i64, i64* %184, i64 %186
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.pio_vl_map*, %struct.pio_vl_map** %19, align 8
  %190 = getelementptr inbounds %struct.pio_vl_map, %struct.pio_vl_map* %189, i32 0, i32 4
  %191 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %190, align 8
  %192 = load i32, i32* %10, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %191, i64 %193
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 1
  %197 = load i64*, i64** %196, align 8
  %198 = load i32, i32* %11, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i64, i64* %197, i64 %199
  store i64 %188, i64* %200, align 8
  %201 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %202 = load i32, i32* %14, align 4
  %203 = load i32, i32* %10, align 4
  %204 = call i32 @set_threshold(%struct.hfi1_devdata* %201, i32 %202, i32 %203)
  br label %205

205:                                              ; preds = %181, %172
  %206 = load i32, i32* %14, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %14, align 4
  %208 = load i32, i32* %20, align 4
  %209 = load i32*, i32** %9, align 8
  %210 = load i32, i32* %10, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = add nsw i32 %208, %213
  %215 = icmp sge i32 %207, %214
  br i1 %215, label %216, label %218

216:                                              ; preds = %205
  %217 = load i32, i32* %20, align 4
  store i32 %217, i32* %14, align 4
  br label %218

218:                                              ; preds = %216, %205
  br label %219

219:                                              ; preds = %218
  %220 = load i32, i32* %11, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %11, align 4
  br label %168

222:                                              ; preds = %168
  br label %239

223:                                              ; preds = %118
  %224 = load %struct.pio_vl_map*, %struct.pio_vl_map** %19, align 8
  %225 = getelementptr inbounds %struct.pio_vl_map, %struct.pio_vl_map* %224, i32 0, i32 4
  %226 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %225, align 8
  %227 = load i32, i32* %10, align 4
  %228 = load i32, i32* %8, align 4
  %229 = srem i32 %227, %228
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %226, i64 %230
  %232 = load %struct.TYPE_4__*, %struct.TYPE_4__** %231, align 8
  %233 = load %struct.pio_vl_map*, %struct.pio_vl_map** %19, align 8
  %234 = getelementptr inbounds %struct.pio_vl_map, %struct.pio_vl_map* %233, i32 0, i32 4
  %235 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %234, align 8
  %236 = load i32, i32* %10, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %235, i64 %237
  store %struct.TYPE_4__* %232, %struct.TYPE_4__** %238, align 8
  br label %239

239:                                              ; preds = %223, %222
  %240 = load i32, i32* %20, align 4
  %241 = load i32*, i32** %9, align 8
  %242 = load i32, i32* %10, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %241, i64 %243
  %245 = load i32, i32* %244, align 4
  %246 = add nsw i32 %240, %245
  store i32 %246, i32* %14, align 4
  br label %247

247:                                              ; preds = %239
  %248 = load i32, i32* %10, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %10, align 4
  br label %112

250:                                              ; preds = %112
  %251 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %252 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %251, i32 0, i32 1
  %253 = call i32 @spin_lock_irq(i32* %252)
  %254 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %255 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %254, i32 0, i32 2
  %256 = load i32, i32* %255, align 8
  %257 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %258 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %257, i32 0, i32 1
  %259 = call i32 @lockdep_is_held(i32* %258)
  %260 = call %struct.pio_vl_map* @rcu_dereference_protected(i32 %256, i32 %259)
  store %struct.pio_vl_map* %260, %struct.pio_vl_map** %18, align 8
  %261 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %262 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 8
  %264 = load %struct.pio_vl_map*, %struct.pio_vl_map** %19, align 8
  %265 = call i32 @rcu_assign_pointer(i32 %263, %struct.pio_vl_map* %264)
  %266 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %267 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %266, i32 0, i32 1
  %268 = call i32 @spin_unlock_irq(i32* %267)
  %269 = load %struct.pio_vl_map*, %struct.pio_vl_map** %18, align 8
  %270 = icmp ne %struct.pio_vl_map* %269, null
  br i1 %270, label %271, label %276

271:                                              ; preds = %250
  %272 = load %struct.pio_vl_map*, %struct.pio_vl_map** %18, align 8
  %273 = getelementptr inbounds %struct.pio_vl_map, %struct.pio_vl_map* %272, i32 0, i32 3
  %274 = load i32, i32* @pio_map_rcu_callback, align 4
  %275 = call i32 @call_rcu(i32* %273, i32 %274)
  br label %276

276:                                              ; preds = %271, %250
  store i32 0, i32* %5, align 4
  store i32 1, i32* %22, align 4
  br label %282

277:                                              ; preds = %154, %95
  %278 = load %struct.pio_vl_map*, %struct.pio_vl_map** %19, align 8
  %279 = call i32 @pio_map_free(%struct.pio_vl_map* %278)
  %280 = load i32, i32* @ENOMEM, align 4
  %281 = sub nsw i32 0, %280
  store i32 %281, i32* %5, align 4
  store i32 1, i32* %22, align 4
  br label %282

282:                                              ; preds = %277, %276
  %283 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %283)
  %284 = load i32, i32* %5, align 4
  ret i32 %284
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @kzalloc(i32, i32) #2

declare dso_local i32 @roundup_pow_of_two(i32) #2

declare dso_local i32 @ilog2(i32) #2

declare dso_local i32 @set_threshold(%struct.hfi1_devdata*, i32, i32) #2

declare dso_local i32 @spin_lock_irq(i32*) #2

declare dso_local %struct.pio_vl_map* @rcu_dereference_protected(i32, i32) #2

declare dso_local i32 @lockdep_is_held(i32*) #2

declare dso_local i32 @rcu_assign_pointer(i32, %struct.pio_vl_map*) #2

declare dso_local i32 @spin_unlock_irq(i32*) #2

declare dso_local i32 @call_rcu(i32*, i32) #2

declare dso_local i32 @pio_map_free(%struct.pio_vl_map*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

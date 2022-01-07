; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_packer.c_ib_pack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_packer.c_ib_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_field = type { i32, i32, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [56 x i8] c"Structure field %s of size %d bits is not byte-aligned\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ib_pack(%struct.ib_field* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.ib_field*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store %struct.ib_field* %0, %struct.ib_field** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %298, %4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %301

22:                                               ; preds = %18
  %23 = load %struct.ib_field*, %struct.ib_field** %5, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %23, i64 %25
  %27 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp sle i32 %28, 32
  br i1 %29, label %30, label %106

30:                                               ; preds = %22
  %31 = load %struct.ib_field*, %struct.ib_field** %5, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %31, i64 %33
  %35 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 32, %36
  %38 = load %struct.ib_field*, %struct.ib_field** %5, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %38, i64 %40
  %42 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sub nsw i32 %37, %43
  store i32 %44, i32* %10, align 4
  %45 = load %struct.ib_field*, %struct.ib_field** %5, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %45, i64 %47
  %49 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %70

52:                                               ; preds = %30
  %53 = load %struct.ib_field*, %struct.ib_field** %5, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %53, i64 %55
  %57 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.ib_field*, %struct.ib_field** %5, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %59, i64 %61
  %63 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = call i32 @value_read(i32 %58, i64 %64, i8* %65)
  %67 = load i32, i32* %10, align 4
  %68 = shl i32 %66, %67
  %69 = sext i32 %68 to i64
  store i64 %69, i64* %11, align 8
  br label %71

70:                                               ; preds = %30
  store i64 0, i64* %11, align 8
  br label %71

71:                                               ; preds = %70, %52
  %72 = load %struct.ib_field*, %struct.ib_field** %5, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %72, i64 %74
  %76 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = zext i32 %77 to i64
  %79 = shl i64 1, %78
  %80 = sub i64 %79, 1
  %81 = load i32, i32* %10, align 4
  %82 = zext i32 %81 to i64
  %83 = shl i64 %80, %82
  %84 = call i32 @cpu_to_be32(i64 %83)
  store i32 %84, i32* %12, align 4
  %85 = load i8*, i8** %8, align 8
  %86 = bitcast i8* %85 to i32*
  %87 = load %struct.ib_field*, %struct.ib_field** %5, align 8
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %87, i64 %89
  %91 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %86, i64 %93
  store i32* %94, i32** %13, align 8
  %95 = load i32*, i32** %13, align 8
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %12, align 4
  %98 = xor i32 %97, -1
  %99 = and i32 %96, %98
  %100 = load i64, i64* %11, align 8
  %101 = call i32 @cpu_to_be32(i64 %100)
  %102 = load i32, i32* %12, align 4
  %103 = and i32 %101, %102
  %104 = or i32 %99, %103
  %105 = load i32*, i32** %13, align 8
  store i32 %104, i32* %105, align 4
  br label %297

106:                                              ; preds = %22
  %107 = load %struct.ib_field*, %struct.ib_field** %5, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %107, i64 %109
  %111 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp sle i32 %112, 64
  br i1 %113, label %114, label %190

114:                                              ; preds = %106
  %115 = load %struct.ib_field*, %struct.ib_field** %5, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %115, i64 %117
  %119 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = sub nsw i32 64, %120
  %122 = load %struct.ib_field*, %struct.ib_field** %5, align 8
  %123 = load i32, i32* %9, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %122, i64 %124
  %126 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = sub nsw i32 %121, %127
  store i32 %128, i32* %14, align 4
  %129 = load %struct.ib_field*, %struct.ib_field** %5, align 8
  %130 = load i32, i32* %9, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %129, i64 %131
  %133 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %132, i32 0, i32 4
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %154

136:                                              ; preds = %114
  %137 = load %struct.ib_field*, %struct.ib_field** %5, align 8
  %138 = load i32, i32* %9, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %137, i64 %139
  %141 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.ib_field*, %struct.ib_field** %5, align 8
  %144 = load i32, i32* %9, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %143, i64 %145
  %147 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %146, i32 0, i32 4
  %148 = load i64, i64* %147, align 8
  %149 = load i8*, i8** %7, align 8
  %150 = call i32 @value_read(i32 %142, i64 %148, i8* %149)
  %151 = load i32, i32* %14, align 4
  %152 = shl i32 %150, %151
  %153 = sext i32 %152 to i64
  store i64 %153, i64* %15, align 8
  br label %155

154:                                              ; preds = %114
  store i64 0, i64* %15, align 8
  br label %155

155:                                              ; preds = %154, %136
  %156 = load %struct.ib_field*, %struct.ib_field** %5, align 8
  %157 = load i32, i32* %9, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %156, i64 %158
  %160 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = sub nsw i32 64, %161
  %163 = zext i32 %162 to i64
  %164 = lshr i64 -1, %163
  %165 = load i32, i32* %14, align 4
  %166 = zext i32 %165 to i64
  %167 = shl i64 %164, %166
  %168 = call i32 @cpu_to_be64(i64 %167)
  store i32 %168, i32* %16, align 4
  %169 = load i8*, i8** %8, align 8
  %170 = bitcast i8* %169 to i32*
  %171 = load %struct.ib_field*, %struct.ib_field** %5, align 8
  %172 = load i32, i32* %9, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %171, i64 %173
  %175 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %170, i64 %177
  store i32* %178, i32** %17, align 8
  %179 = load i32*, i32** %17, align 8
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* %16, align 4
  %182 = xor i32 %181, -1
  %183 = and i32 %180, %182
  %184 = load i64, i64* %15, align 8
  %185 = call i32 @cpu_to_be64(i64 %184)
  %186 = load i32, i32* %16, align 4
  %187 = and i32 %185, %186
  %188 = or i32 %183, %187
  %189 = load i32*, i32** %17, align 8
  store i32 %188, i32* %189, align 4
  br label %296

190:                                              ; preds = %106
  %191 = load %struct.ib_field*, %struct.ib_field** %5, align 8
  %192 = load i32, i32* %9, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %191, i64 %193
  %195 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = srem i32 %196, 8
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %208, label %199

199:                                              ; preds = %190
  %200 = load %struct.ib_field*, %struct.ib_field** %5, align 8
  %201 = load i32, i32* %9, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %200, i64 %202
  %204 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = srem i32 %205, 8
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %222

208:                                              ; preds = %199, %190
  %209 = load %struct.ib_field*, %struct.ib_field** %5, align 8
  %210 = load i32, i32* %9, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %209, i64 %211
  %213 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %212, i32 0, i32 5
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.ib_field*, %struct.ib_field** %5, align 8
  %216 = load i32, i32* %9, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %215, i64 %217
  %219 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = call i32 @pr_warn(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %214, i32 %220)
  br label %222

222:                                              ; preds = %208, %199
  %223 = load %struct.ib_field*, %struct.ib_field** %5, align 8
  %224 = load i32, i32* %9, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %223, i64 %225
  %227 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %226, i32 0, i32 4
  %228 = load i64, i64* %227, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %267

230:                                              ; preds = %222
  %231 = load i8*, i8** %8, align 8
  %232 = load %struct.ib_field*, %struct.ib_field** %5, align 8
  %233 = load i32, i32* %9, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %232, i64 %234
  %236 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 4
  %238 = mul nsw i32 %237, 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr i8, i8* %231, i64 %239
  %241 = load %struct.ib_field*, %struct.ib_field** %5, align 8
  %242 = load i32, i32* %9, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %241, i64 %243
  %245 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = sdiv i32 %246, 8
  %248 = sext i32 %247 to i64
  %249 = getelementptr i8, i8* %240, i64 %248
  %250 = load i8*, i8** %7, align 8
  %251 = load %struct.ib_field*, %struct.ib_field** %5, align 8
  %252 = load i32, i32* %9, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %251, i64 %253
  %255 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %254, i32 0, i32 2
  %256 = load i32, i32* %255, align 8
  %257 = sext i32 %256 to i64
  %258 = getelementptr i8, i8* %250, i64 %257
  %259 = load %struct.ib_field*, %struct.ib_field** %5, align 8
  %260 = load i32, i32* %9, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %259, i64 %261
  %263 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = sdiv i32 %264, 8
  %266 = call i32 @memcpy(i8* %249, i8* %258, i32 %265)
  br label %295

267:                                              ; preds = %222
  %268 = load i8*, i8** %8, align 8
  %269 = load %struct.ib_field*, %struct.ib_field** %5, align 8
  %270 = load i32, i32* %9, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %269, i64 %271
  %273 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %272, i32 0, i32 3
  %274 = load i32, i32* %273, align 4
  %275 = mul nsw i32 %274, 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr i8, i8* %268, i64 %276
  %278 = load %struct.ib_field*, %struct.ib_field** %5, align 8
  %279 = load i32, i32* %9, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %278, i64 %280
  %282 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  %284 = sdiv i32 %283, 8
  %285 = sext i32 %284 to i64
  %286 = getelementptr i8, i8* %277, i64 %285
  %287 = load %struct.ib_field*, %struct.ib_field** %5, align 8
  %288 = load i32, i32* %9, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %287, i64 %289
  %291 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = sdiv i32 %292, 8
  %294 = call i32 @memset(i8* %286, i32 0, i32 %293)
  br label %295

295:                                              ; preds = %267, %230
  br label %296

296:                                              ; preds = %295, %155
  br label %297

297:                                              ; preds = %296, %71
  br label %298

298:                                              ; preds = %297
  %299 = load i32, i32* %9, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %9, align 4
  br label %18

301:                                              ; preds = %18
  ret void
}

declare dso_local i32 @value_read(i32, i64, i8*) #1

declare dso_local i32 @cpu_to_be32(i64) #1

declare dso_local i32 @cpu_to_be64(i64) #1

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

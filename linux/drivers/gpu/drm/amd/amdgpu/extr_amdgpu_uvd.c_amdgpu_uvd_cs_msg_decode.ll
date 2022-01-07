; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_uvd.c_amdgpu_uvd_cs_msg_decode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_uvd.c_amdgpu_uvd_cs_msg_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"UVD codec not handled %d!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Invalid UVD decoding target pitch!\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Invalid dpb_size in UVD message (%d / %d)!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, i32*, i32*)* @amdgpu_uvd_cs_msg_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_uvd_cs_msg_decode(%struct.amdgpu_device* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
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
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 4
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %8, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 6
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %9, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 7
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %10, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 9
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %11, align 4
  %34 = load i32*, i32** %6, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 28
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %12, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 57
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %9, align 4
  %41 = udiv i32 %40, 16
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %10, align 4
  %43 = udiv i32 %42, 16
  %44 = call i32 @ALIGN(i32 %43, i32 2)
  store i32 %44, i32* %15, align 4
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* %15, align 4
  %47 = mul i32 %45, %46
  store i32 %47, i32* %16, align 4
  store i32 -1, i32* %21, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %10, align 4
  %50 = mul i32 %48, %49
  store i32 %50, i32* %17, align 4
  %51 = load i32, i32* %17, align 4
  %52 = udiv i32 %51, 2
  %53 = load i32, i32* %17, align 4
  %54 = add i32 %53, %52
  store i32 %54, i32* %17, align 4
  %55 = load i32, i32* %17, align 4
  %56 = call i32 @ALIGN(i32 %55, i32 1024)
  store i32 %56, i32* %17, align 4
  %57 = load i32, i32* %8, align 4
  switch i32 %57, label %248 [
    i32 0, label %58
    i32 1, label %108
    i32 3, label %134
    i32 4, label %137
    i32 7, label %153
    i32 8, label %217
    i32 16, label %218
  ]

58:                                               ; preds = %3
  %59 = load i32, i32* %13, align 4
  switch i32 %59, label %81 [
    i32 30, label %60
    i32 31, label %63
    i32 32, label %66
    i32 41, label %69
    i32 42, label %72
    i32 50, label %75
    i32 51, label %78
  ]

60:                                               ; preds = %58
  %61 = load i32, i32* %16, align 4
  %62 = udiv i32 8100, %61
  store i32 %62, i32* %20, align 4
  br label %84

63:                                               ; preds = %58
  %64 = load i32, i32* %16, align 4
  %65 = udiv i32 18000, %64
  store i32 %65, i32* %20, align 4
  br label %84

66:                                               ; preds = %58
  %67 = load i32, i32* %16, align 4
  %68 = udiv i32 20480, %67
  store i32 %68, i32* %20, align 4
  br label %84

69:                                               ; preds = %58
  %70 = load i32, i32* %16, align 4
  %71 = udiv i32 32768, %70
  store i32 %71, i32* %20, align 4
  br label %84

72:                                               ; preds = %58
  %73 = load i32, i32* %16, align 4
  %74 = udiv i32 34816, %73
  store i32 %74, i32* %20, align 4
  br label %84

75:                                               ; preds = %58
  %76 = load i32, i32* %16, align 4
  %77 = udiv i32 110400, %76
  store i32 %77, i32* %20, align 4
  br label %84

78:                                               ; preds = %58
  %79 = load i32, i32* %16, align 4
  %80 = udiv i32 184320, %79
  store i32 %80, i32* %20, align 4
  br label %84

81:                                               ; preds = %58
  %82 = load i32, i32* %16, align 4
  %83 = udiv i32 184320, %82
  store i32 %83, i32* %20, align 4
  br label %84

84:                                               ; preds = %81, %78, %75, %72, %69, %66, %63, %60
  %85 = load i32, i32* %20, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %20, align 4
  %87 = load i32, i32* %20, align 4
  %88 = icmp ugt i32 %87, 17
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  store i32 17, i32* %20, align 4
  br label %90

90:                                               ; preds = %89, %84
  %91 = load i32, i32* %17, align 4
  %92 = load i32, i32* %20, align 4
  %93 = mul i32 %91, %92
  store i32 %93, i32* %19, align 4
  %94 = load i32, i32* %14, align 4
  %95 = load i32, i32* %15, align 4
  %96 = mul i32 %94, %95
  %97 = load i32, i32* %20, align 4
  %98 = mul i32 %96, %97
  %99 = mul i32 %98, 192
  %100 = load i32, i32* %19, align 4
  %101 = add i32 %100, %99
  store i32 %101, i32* %19, align 4
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* %15, align 4
  %104 = mul i32 %102, %103
  %105 = mul i32 %104, 32
  %106 = load i32, i32* %19, align 4
  %107 = add i32 %106, %105
  store i32 %107, i32* %19, align 4
  br label %253

108:                                              ; preds = %3
  %109 = load i32, i32* %17, align 4
  %110 = mul i32 %109, 3
  store i32 %110, i32* %19, align 4
  %111 = load i32, i32* %14, align 4
  %112 = load i32, i32* %15, align 4
  %113 = mul i32 %111, %112
  %114 = mul i32 %113, 128
  %115 = load i32, i32* %19, align 4
  %116 = add i32 %115, %114
  store i32 %116, i32* %19, align 4
  %117 = load i32, i32* %14, align 4
  %118 = mul i32 %117, 64
  %119 = load i32, i32* %19, align 4
  %120 = add i32 %119, %118
  store i32 %120, i32* %19, align 4
  %121 = load i32, i32* %14, align 4
  %122 = mul i32 %121, 128
  %123 = load i32, i32* %19, align 4
  %124 = add i32 %123, %122
  store i32 %124, i32* %19, align 4
  %125 = load i32, i32* %14, align 4
  %126 = load i32, i32* %15, align 4
  %127 = call i32 @max(i32 %125, i32 %126)
  store i32 %127, i32* %18, align 4
  %128 = load i32, i32* %18, align 4
  %129 = mul i32 %128, 7
  %130 = mul i32 %129, 16
  %131 = call i32 @ALIGN(i32 %130, i32 64)
  %132 = load i32, i32* %19, align 4
  %133 = add i32 %132, %131
  store i32 %133, i32* %19, align 4
  br label %253

134:                                              ; preds = %3
  %135 = load i32, i32* %17, align 4
  %136 = mul i32 %135, 3
  store i32 %136, i32* %19, align 4
  br label %253

137:                                              ; preds = %3
  %138 = load i32, i32* %17, align 4
  %139 = mul i32 %138, 3
  store i32 %139, i32* %19, align 4
  %140 = load i32, i32* %14, align 4
  %141 = load i32, i32* %15, align 4
  %142 = mul i32 %140, %141
  %143 = mul i32 %142, 64
  %144 = load i32, i32* %19, align 4
  %145 = add i32 %144, %143
  store i32 %145, i32* %19, align 4
  %146 = load i32, i32* %14, align 4
  %147 = load i32, i32* %15, align 4
  %148 = mul i32 %146, %147
  %149 = mul i32 %148, 32
  %150 = call i32 @ALIGN(i32 %149, i32 64)
  %151 = load i32, i32* %19, align 4
  %152 = add i32 %151, %150
  store i32 %152, i32* %19, align 4
  br label %253

153:                                              ; preds = %3
  %154 = load i32, i32* %13, align 4
  switch i32 %154, label %176 [
    i32 30, label %155
    i32 31, label %158
    i32 32, label %161
    i32 41, label %164
    i32 42, label %167
    i32 50, label %170
    i32 51, label %173
  ]

155:                                              ; preds = %153
  %156 = load i32, i32* %16, align 4
  %157 = udiv i32 8100, %156
  store i32 %157, i32* %20, align 4
  br label %179

158:                                              ; preds = %153
  %159 = load i32, i32* %16, align 4
  %160 = udiv i32 18000, %159
  store i32 %160, i32* %20, align 4
  br label %179

161:                                              ; preds = %153
  %162 = load i32, i32* %16, align 4
  %163 = udiv i32 20480, %162
  store i32 %163, i32* %20, align 4
  br label %179

164:                                              ; preds = %153
  %165 = load i32, i32* %16, align 4
  %166 = udiv i32 32768, %165
  store i32 %166, i32* %20, align 4
  br label %179

167:                                              ; preds = %153
  %168 = load i32, i32* %16, align 4
  %169 = udiv i32 34816, %168
  store i32 %169, i32* %20, align 4
  br label %179

170:                                              ; preds = %153
  %171 = load i32, i32* %16, align 4
  %172 = udiv i32 110400, %171
  store i32 %172, i32* %20, align 4
  br label %179

173:                                              ; preds = %153
  %174 = load i32, i32* %16, align 4
  %175 = udiv i32 184320, %174
  store i32 %175, i32* %20, align 4
  br label %179

176:                                              ; preds = %153
  %177 = load i32, i32* %16, align 4
  %178 = udiv i32 184320, %177
  store i32 %178, i32* %20, align 4
  br label %179

179:                                              ; preds = %176, %173, %170, %167, %164, %161, %158, %155
  %180 = load i32, i32* %20, align 4
  %181 = add i32 %180, 1
  store i32 %181, i32* %20, align 4
  %182 = load i32, i32* %20, align 4
  %183 = icmp ugt i32 %182, 17
  br i1 %183, label %184, label %185

184:                                              ; preds = %179
  store i32 17, i32* %20, align 4
  br label %185

185:                                              ; preds = %184, %179
  %186 = load i32, i32* %17, align 4
  %187 = load i32, i32* %20, align 4
  %188 = mul i32 %186, %187
  store i32 %188, i32* %19, align 4
  %189 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %190 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %209, label %194

194:                                              ; preds = %185
  %195 = load i32, i32* %14, align 4
  %196 = load i32, i32* %15, align 4
  %197 = mul i32 %195, %196
  %198 = load i32, i32* %20, align 4
  %199 = mul i32 %197, %198
  %200 = mul i32 %199, 192
  %201 = load i32, i32* %19, align 4
  %202 = add i32 %201, %200
  store i32 %202, i32* %19, align 4
  %203 = load i32, i32* %14, align 4
  %204 = load i32, i32* %15, align 4
  %205 = mul i32 %203, %204
  %206 = mul i32 %205, 32
  %207 = load i32, i32* %19, align 4
  %208 = add i32 %207, %206
  store i32 %208, i32* %19, align 4
  br label %216

209:                                              ; preds = %185
  %210 = load i32, i32* %14, align 4
  %211 = load i32, i32* %15, align 4
  %212 = mul i32 %210, %211
  %213 = load i32, i32* %20, align 4
  %214 = mul i32 %212, %213
  %215 = mul i32 %214, 192
  store i32 %215, i32* %21, align 4
  br label %216

216:                                              ; preds = %209, %194
  br label %253

217:                                              ; preds = %3
  store i32 0, i32* %19, align 4
  br label %253

218:                                              ; preds = %3
  %219 = load i32, i32* %9, align 4
  %220 = call i32 @ALIGN(i32 %219, i32 16)
  %221 = load i32, i32* %10, align 4
  %222 = call i32 @ALIGN(i32 %221, i32 16)
  %223 = mul nsw i32 %220, %222
  %224 = mul nsw i32 %223, 3
  %225 = sdiv i32 %224, 2
  store i32 %225, i32* %17, align 4
  %226 = load i32, i32* %17, align 4
  %227 = call i32 @ALIGN(i32 %226, i32 256)
  store i32 %227, i32* %17, align 4
  %228 = load i32*, i32** %6, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 59
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @le32_to_cpu(i32 %230)
  %232 = and i32 %231, 255
  %233 = add nsw i32 %232, 2
  store i32 %233, i32* %20, align 4
  %234 = load i32, i32* %17, align 4
  %235 = load i32, i32* %20, align 4
  %236 = mul i32 %234, %235
  store i32 %236, i32* %19, align 4
  %237 = load i32, i32* %9, align 4
  %238 = add i32 %237, 255
  %239 = udiv i32 %238, 16
  %240 = load i32, i32* %10, align 4
  %241 = add i32 %240, 255
  %242 = udiv i32 %241, 16
  %243 = mul i32 %239, %242
  %244 = mul i32 %243, 16
  %245 = load i32, i32* %20, align 4
  %246 = mul i32 %244, %245
  %247 = add i32 %246, 53248
  store i32 %247, i32* %21, align 4
  br label %253

248:                                              ; preds = %3
  %249 = load i32, i32* %8, align 4
  %250 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %249)
  %251 = load i32, i32* @EINVAL, align 4
  %252 = sub nsw i32 0, %251
  store i32 %252, i32* %4, align 4
  br label %285

253:                                              ; preds = %218, %217, %216, %137, %134, %108, %90
  %254 = load i32, i32* %9, align 4
  %255 = load i32, i32* %12, align 4
  %256 = icmp ugt i32 %254, %255
  br i1 %256, label %257, label %261

257:                                              ; preds = %253
  %258 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %259 = load i32, i32* @EINVAL, align 4
  %260 = sub nsw i32 0, %259
  store i32 %260, i32* %4, align 4
  br label %285

261:                                              ; preds = %253
  %262 = load i32, i32* %11, align 4
  %263 = load i32, i32* %19, align 4
  %264 = icmp ult i32 %262, %263
  br i1 %264, label %265, label %271

265:                                              ; preds = %261
  %266 = load i32, i32* %11, align 4
  %267 = load i32, i32* %19, align 4
  %268 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %266, i32 %267)
  %269 = load i32, i32* @EINVAL, align 4
  %270 = sub nsw i32 0, %269
  store i32 %270, i32* %4, align 4
  br label %285

271:                                              ; preds = %261
  %272 = load i32, i32* %11, align 4
  %273 = load i32*, i32** %7, align 8
  %274 = getelementptr inbounds i32, i32* %273, i64 1
  store i32 %272, i32* %274, align 4
  %275 = load i32, i32* %17, align 4
  %276 = load i32*, i32** %7, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 2
  store i32 %275, i32* %277, align 4
  %278 = load i32, i32* %21, align 4
  %279 = load i32*, i32** %7, align 8
  %280 = getelementptr inbounds i32, i32* %279, i64 4
  store i32 %278, i32* %280, align 4
  %281 = load i32, i32* %9, align 4
  %282 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %283 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %283, i32 0, i32 0
  store i32 %281, i32* %284, align 4
  store i32 0, i32* %4, align 4
  br label %285

285:                                              ; preds = %271, %265, %257, %248
  %286 = load i32, i32* %4, align 4
  ret i32 %286
}

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

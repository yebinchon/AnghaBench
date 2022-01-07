; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_viu.c_meson_viu_set_osd_lut.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_viu.c_meson_viu_set_osd_lut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_drm = type { i64 }

@VIU_LUT_OSD_EOTF = common dso_local global i32 0, align 4
@VIU_OSD1_EOTF_LUT_ADDR_PORT = common dso_local global i32 0, align 4
@VIU_OSD1_EOTF_LUT_DATA_PORT = common dso_local global i32 0, align 4
@VIU_OSD1_EOTF_CTL = common dso_local global i32 0, align 4
@VIU_LUT_OSD_OETF = common dso_local global i32 0, align 4
@VIU_OSD1_OETF_LUT_ADDR_PORT = common dso_local global i32 0, align 4
@VIU_OSD1_OETF_LUT_DATA_PORT = common dso_local global i32 0, align 4
@VIU_OSD1_OETF_CTL = common dso_local global i32 0, align 4
@OSD_OETF_LUT_SIZE = common dso_local global i32 0, align 4
@OSD_EOTF_LUT_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.meson_drm*, i32, i32*, i32*, i32*, i32)* @meson_viu_set_osd_lut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meson_viu_set_osd_lut(%struct.meson_drm* %0, i32 %1, i32* %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca %struct.meson_drm*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.meson_drm* %0, %struct.meson_drm** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @VIU_LUT_OSD_EOTF, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %6
  %21 = load i32, i32* @VIU_OSD1_EOTF_LUT_ADDR_PORT, align 4
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* @VIU_OSD1_EOTF_LUT_DATA_PORT, align 4
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* @VIU_OSD1_EOTF_CTL, align 4
  store i32 %23, i32* %15, align 4
  br label %34

24:                                               ; preds = %6
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @VIU_LUT_OSD_OETF, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32, i32* @VIU_OSD1_OETF_LUT_ADDR_PORT, align 4
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* @VIU_OSD1_OETF_LUT_DATA_PORT, align 4
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* @VIU_OSD1_OETF_CTL, align 4
  store i32 %31, i32* %15, align 4
  br label %33

32:                                               ; preds = %24
  br label %362

33:                                               ; preds = %28
  br label %34

34:                                               ; preds = %33, %20
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @VIU_LUT_OSD_OETF, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %193

38:                                               ; preds = %34
  %39 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %40 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %13, align 4
  %43 = call i64 @_REG(i32 %42)
  %44 = add nsw i64 %41, %43
  %45 = call i32 @writel(i32 0, i64 %44)
  store i32 0, i32* %16, align 4
  br label %46

46:                                               ; preds = %74, %38
  %47 = load i32, i32* %16, align 4
  %48 = load i32, i32* @OSD_OETF_LUT_SIZE, align 4
  %49 = sdiv i32 %48, 2
  %50 = icmp slt i32 %47, %49
  br i1 %50, label %51, label %77

51:                                               ; preds = %46
  %52 = load i32*, i32** %9, align 8
  %53 = load i32, i32* %16, align 4
  %54 = mul nsw i32 %53, 2
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %9, align 8
  %59 = load i32, i32* %16, align 4
  %60 = mul nsw i32 %59, 2
  %61 = add nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %58, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = shl i32 %64, 16
  %66 = or i32 %57, %65
  %67 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %68 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* %14, align 4
  %71 = call i64 @_REG(i32 %70)
  %72 = add nsw i64 %69, %71
  %73 = call i32 @writel(i32 %66, i64 %72)
  br label %74

74:                                               ; preds = %51
  %75 = load i32, i32* %16, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %16, align 4
  br label %46

77:                                               ; preds = %46
  %78 = load i32*, i32** %9, align 8
  %79 = load i32, i32* @OSD_OETF_LUT_SIZE, align 4
  %80 = sub nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %78, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** %10, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  %86 = load i32, i32* %85, align 4
  %87 = shl i32 %86, 16
  %88 = or i32 %83, %87
  %89 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %90 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* %14, align 4
  %93 = call i64 @_REG(i32 %92)
  %94 = add nsw i64 %91, %93
  %95 = call i32 @writel(i32 %88, i64 %94)
  store i32 0, i32* %16, align 4
  br label %96

96:                                               ; preds = %125, %77
  %97 = load i32, i32* %16, align 4
  %98 = load i32, i32* @OSD_OETF_LUT_SIZE, align 4
  %99 = sdiv i32 %98, 2
  %100 = icmp slt i32 %97, %99
  br i1 %100, label %101, label %128

101:                                              ; preds = %96
  %102 = load i32*, i32** %10, align 8
  %103 = load i32, i32* %16, align 4
  %104 = mul nsw i32 %103, 2
  %105 = add nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %102, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load i32*, i32** %10, align 8
  %110 = load i32, i32* %16, align 4
  %111 = mul nsw i32 %110, 2
  %112 = add nsw i32 %111, 2
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %109, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = shl i32 %115, 16
  %117 = or i32 %108, %116
  %118 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %119 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i32, i32* %14, align 4
  %122 = call i64 @_REG(i32 %121)
  %123 = add nsw i64 %120, %122
  %124 = call i32 @writel(i32 %117, i64 %123)
  br label %125

125:                                              ; preds = %101
  %126 = load i32, i32* %16, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %16, align 4
  br label %96

128:                                              ; preds = %96
  store i32 0, i32* %16, align 4
  br label %129

129:                                              ; preds = %157, %128
  %130 = load i32, i32* %16, align 4
  %131 = load i32, i32* @OSD_OETF_LUT_SIZE, align 4
  %132 = sdiv i32 %131, 2
  %133 = icmp slt i32 %130, %132
  br i1 %133, label %134, label %160

134:                                              ; preds = %129
  %135 = load i32*, i32** %11, align 8
  %136 = load i32, i32* %16, align 4
  %137 = mul nsw i32 %136, 2
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %135, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = load i32*, i32** %11, align 8
  %142 = load i32, i32* %16, align 4
  %143 = mul nsw i32 %142, 2
  %144 = add nsw i32 %143, 1
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %141, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = shl i32 %147, 16
  %149 = or i32 %140, %148
  %150 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %151 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i32, i32* %14, align 4
  %154 = call i64 @_REG(i32 %153)
  %155 = add nsw i64 %152, %154
  %156 = call i32 @writel(i32 %149, i64 %155)
  br label %157

157:                                              ; preds = %134
  %158 = load i32, i32* %16, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %16, align 4
  br label %129

160:                                              ; preds = %129
  %161 = load i32*, i32** %11, align 8
  %162 = load i32, i32* @OSD_OETF_LUT_SIZE, align 4
  %163 = sub nsw i32 %162, 1
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %161, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %168 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i32, i32* %14, align 4
  %171 = call i64 @_REG(i32 %170)
  %172 = add nsw i64 %169, %171
  %173 = call i32 @writel(i32 %166, i64 %172)
  %174 = load i32, i32* %12, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %184

176:                                              ; preds = %160
  %177 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %178 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i32, i32* %15, align 4
  %181 = call i64 @_REG(i32 %180)
  %182 = add nsw i64 %179, %181
  %183 = call i32 @writel_bits_relaxed(i32 -536870912, i32 -536870912, i64 %182)
  br label %192

184:                                              ; preds = %160
  %185 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %186 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i32, i32* %15, align 4
  %189 = call i64 @_REG(i32 %188)
  %190 = add nsw i64 %187, %189
  %191 = call i32 @writel_bits_relaxed(i32 -536870912, i32 0, i64 %190)
  br label %192

192:                                              ; preds = %184, %176
  br label %362

193:                                              ; preds = %34
  %194 = load i32, i32* %8, align 4
  %195 = load i32, i32* @VIU_LUT_OSD_EOTF, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %197, label %361

197:                                              ; preds = %193
  %198 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %199 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load i32, i32* %13, align 4
  %202 = call i64 @_REG(i32 %201)
  %203 = add nsw i64 %200, %202
  %204 = call i32 @writel(i32 0, i64 %203)
  store i32 0, i32* %16, align 4
  br label %205

205:                                              ; preds = %233, %197
  %206 = load i32, i32* %16, align 4
  %207 = load i32, i32* @OSD_EOTF_LUT_SIZE, align 4
  %208 = sdiv i32 %207, 2
  %209 = icmp slt i32 %206, %208
  br i1 %209, label %210, label %236

210:                                              ; preds = %205
  %211 = load i32*, i32** %9, align 8
  %212 = load i32, i32* %16, align 4
  %213 = mul nsw i32 %212, 2
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %211, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = load i32*, i32** %9, align 8
  %218 = load i32, i32* %16, align 4
  %219 = mul nsw i32 %218, 2
  %220 = add nsw i32 %219, 1
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %217, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = shl i32 %223, 16
  %225 = or i32 %216, %224
  %226 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %227 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = load i32, i32* %14, align 4
  %230 = call i64 @_REG(i32 %229)
  %231 = add nsw i64 %228, %230
  %232 = call i32 @writel(i32 %225, i64 %231)
  br label %233

233:                                              ; preds = %210
  %234 = load i32, i32* %16, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %16, align 4
  br label %205

236:                                              ; preds = %205
  %237 = load i32*, i32** %9, align 8
  %238 = load i32, i32* @OSD_EOTF_LUT_SIZE, align 4
  %239 = sub nsw i32 %238, 1
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %237, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = load i32*, i32** %10, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 0
  %245 = load i32, i32* %244, align 4
  %246 = shl i32 %245, 16
  %247 = or i32 %242, %246
  %248 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %249 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = load i32, i32* %14, align 4
  %252 = call i64 @_REG(i32 %251)
  %253 = add nsw i64 %250, %252
  %254 = call i32 @writel(i32 %247, i64 %253)
  store i32 0, i32* %16, align 4
  br label %255

255:                                              ; preds = %284, %236
  %256 = load i32, i32* %16, align 4
  %257 = load i32, i32* @OSD_EOTF_LUT_SIZE, align 4
  %258 = sdiv i32 %257, 2
  %259 = icmp slt i32 %256, %258
  br i1 %259, label %260, label %287

260:                                              ; preds = %255
  %261 = load i32*, i32** %10, align 8
  %262 = load i32, i32* %16, align 4
  %263 = mul nsw i32 %262, 2
  %264 = add nsw i32 %263, 1
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %261, i64 %265
  %267 = load i32, i32* %266, align 4
  %268 = load i32*, i32** %10, align 8
  %269 = load i32, i32* %16, align 4
  %270 = mul nsw i32 %269, 2
  %271 = add nsw i32 %270, 2
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %268, i64 %272
  %274 = load i32, i32* %273, align 4
  %275 = shl i32 %274, 16
  %276 = or i32 %267, %275
  %277 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %278 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = load i32, i32* %14, align 4
  %281 = call i64 @_REG(i32 %280)
  %282 = add nsw i64 %279, %281
  %283 = call i32 @writel(i32 %276, i64 %282)
  br label %284

284:                                              ; preds = %260
  %285 = load i32, i32* %16, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %16, align 4
  br label %255

287:                                              ; preds = %255
  store i32 0, i32* %16, align 4
  br label %288

288:                                              ; preds = %316, %287
  %289 = load i32, i32* %16, align 4
  %290 = load i32, i32* @OSD_EOTF_LUT_SIZE, align 4
  %291 = sdiv i32 %290, 2
  %292 = icmp slt i32 %289, %291
  br i1 %292, label %293, label %319

293:                                              ; preds = %288
  %294 = load i32*, i32** %11, align 8
  %295 = load i32, i32* %16, align 4
  %296 = mul nsw i32 %295, 2
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32, i32* %294, i64 %297
  %299 = load i32, i32* %298, align 4
  %300 = load i32*, i32** %11, align 8
  %301 = load i32, i32* %16, align 4
  %302 = mul nsw i32 %301, 2
  %303 = add nsw i32 %302, 1
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i32, i32* %300, i64 %304
  %306 = load i32, i32* %305, align 4
  %307 = shl i32 %306, 16
  %308 = or i32 %299, %307
  %309 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %310 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %309, i32 0, i32 0
  %311 = load i64, i64* %310, align 8
  %312 = load i32, i32* %14, align 4
  %313 = call i64 @_REG(i32 %312)
  %314 = add nsw i64 %311, %313
  %315 = call i32 @writel(i32 %308, i64 %314)
  br label %316

316:                                              ; preds = %293
  %317 = load i32, i32* %16, align 4
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %16, align 4
  br label %288

319:                                              ; preds = %288
  %320 = load i32*, i32** %11, align 8
  %321 = load i32, i32* @OSD_EOTF_LUT_SIZE, align 4
  %322 = sub nsw i32 %321, 1
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i32, i32* %320, i64 %323
  %325 = load i32, i32* %324, align 4
  %326 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %327 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %326, i32 0, i32 0
  %328 = load i64, i64* %327, align 8
  %329 = load i32, i32* %14, align 4
  %330 = call i64 @_REG(i32 %329)
  %331 = add nsw i64 %328, %330
  %332 = call i32 @writel(i32 %325, i64 %331)
  %333 = load i32, i32* %12, align 4
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %343

335:                                              ; preds = %319
  %336 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %337 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %336, i32 0, i32 0
  %338 = load i64, i64* %337, align 8
  %339 = load i32, i32* %15, align 4
  %340 = call i64 @_REG(i32 %339)
  %341 = add nsw i64 %338, %340
  %342 = call i32 @writel_bits_relaxed(i32 939524096, i32 939524096, i64 %341)
  br label %351

343:                                              ; preds = %319
  %344 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %345 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %344, i32 0, i32 0
  %346 = load i64, i64* %345, align 8
  %347 = load i32, i32* %15, align 4
  %348 = call i64 @_REG(i32 %347)
  %349 = add nsw i64 %346, %348
  %350 = call i32 @writel_bits_relaxed(i32 939524096, i32 0, i64 %349)
  br label %351

351:                                              ; preds = %343, %335
  %352 = call i32 @BIT(i32 31)
  %353 = call i32 @BIT(i32 31)
  %354 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %355 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %354, i32 0, i32 0
  %356 = load i64, i64* %355, align 8
  %357 = load i32, i32* %15, align 4
  %358 = call i64 @_REG(i32 %357)
  %359 = add nsw i64 %356, %358
  %360 = call i32 @writel_bits_relaxed(i32 %352, i32 %353, i64 %359)
  br label %361

361:                                              ; preds = %351, %193
  br label %362

362:                                              ; preds = %32, %361, %192
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @_REG(i32) #1

declare dso_local i32 @writel_bits_relaxed(i32, i32, i64) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

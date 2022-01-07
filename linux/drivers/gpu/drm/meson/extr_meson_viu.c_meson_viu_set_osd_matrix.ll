; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_viu.c_meson_viu_set_osd_matrix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_viu.c_meson_viu_set_osd_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_drm = type { i64 }

@VIU_MATRIX_OSD = common dso_local global i32 0, align 4
@VIU_OSD1_MATRIX_PRE_OFFSET0_1 = common dso_local global i64 0, align 8
@VIU_OSD1_MATRIX_PRE_OFFSET2 = common dso_local global i64 0, align 8
@VIU_OSD1_MATRIX_COEF00_01 = common dso_local global i64 0, align 8
@VIU_OSD1_MATRIX_COEF02_10 = common dso_local global i64 0, align 8
@VIU_OSD1_MATRIX_COEF11_12 = common dso_local global i64 0, align 8
@VIU_OSD1_MATRIX_COEF20_21 = common dso_local global i64 0, align 8
@VIU_OSD1_MATRIX_COEF22_30 = common dso_local global i64 0, align 8
@VIU_OSD1_MATRIX_COEF31_32 = common dso_local global i64 0, align 8
@VIU_OSD1_MATRIX_COEF40_41 = common dso_local global i64 0, align 8
@VIU_OSD1_MATRIX_COLMOD_COEF42 = common dso_local global i64 0, align 8
@VIU_OSD1_MATRIX_OFFSET0_1 = common dso_local global i64 0, align 8
@VIU_OSD1_MATRIX_OFFSET2 = common dso_local global i64 0, align 8
@VIU_OSD1_MATRIX_CTRL = common dso_local global i64 0, align 8
@VIU_MATRIX_OSD_EOTF = common dso_local global i32 0, align 4
@VIU_OSD1_EOTF_CTL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.meson_drm*, i32, i32*, i32)* @meson_viu_set_osd_matrix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meson_viu_set_osd_matrix(%struct.meson_drm* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.meson_drm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.meson_drm* %0, %struct.meson_drm** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @VIU_MATRIX_OSD, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %264

13:                                               ; preds = %4
  %14 = load i32*, i32** %7, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 4095
  %18 = shl i32 %17, 16
  %19 = load i32*, i32** %7, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 4095
  %23 = or i32 %18, %22
  %24 = load %struct.meson_drm*, %struct.meson_drm** %5, align 8
  %25 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @VIU_OSD1_MATRIX_PRE_OFFSET0_1, align 8
  %28 = call i64 @_REG(i64 %27)
  %29 = add nsw i64 %26, %28
  %30 = call i32 @writel(i32 %23, i64 %29)
  %31 = load i32*, i32** %7, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 4095
  %35 = load %struct.meson_drm*, %struct.meson_drm** %5, align 8
  %36 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @VIU_OSD1_MATRIX_PRE_OFFSET2, align 8
  %39 = call i64 @_REG(i64 %38)
  %40 = add nsw i64 %37, %39
  %41 = call i32 @writel(i32 %34, i64 %40)
  %42 = load i32*, i32** %7, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 3
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 8191
  %46 = shl i32 %45, 16
  %47 = load i32*, i32** %7, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 4
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 8191
  %51 = or i32 %46, %50
  %52 = load %struct.meson_drm*, %struct.meson_drm** %5, align 8
  %53 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @VIU_OSD1_MATRIX_COEF00_01, align 8
  %56 = call i64 @_REG(i64 %55)
  %57 = add nsw i64 %54, %56
  %58 = call i32 @writel(i32 %51, i64 %57)
  %59 = load i32*, i32** %7, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 5
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, 8191
  %63 = shl i32 %62, 16
  %64 = load i32*, i32** %7, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 6
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, 8191
  %68 = or i32 %63, %67
  %69 = load %struct.meson_drm*, %struct.meson_drm** %5, align 8
  %70 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @VIU_OSD1_MATRIX_COEF02_10, align 8
  %73 = call i64 @_REG(i64 %72)
  %74 = add nsw i64 %71, %73
  %75 = call i32 @writel(i32 %68, i64 %74)
  %76 = load i32*, i32** %7, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 7
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, 8191
  %80 = shl i32 %79, 16
  %81 = load i32*, i32** %7, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 8
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %83, 8191
  %85 = or i32 %80, %84
  %86 = load %struct.meson_drm*, %struct.meson_drm** %5, align 8
  %87 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @VIU_OSD1_MATRIX_COEF11_12, align 8
  %90 = call i64 @_REG(i64 %89)
  %91 = add nsw i64 %88, %90
  %92 = call i32 @writel(i32 %85, i64 %91)
  %93 = load i32*, i32** %7, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 9
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %95, 8191
  %97 = shl i32 %96, 16
  %98 = load i32*, i32** %7, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 10
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %100, 8191
  %102 = or i32 %97, %101
  %103 = load %struct.meson_drm*, %struct.meson_drm** %5, align 8
  %104 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @VIU_OSD1_MATRIX_COEF20_21, align 8
  %107 = call i64 @_REG(i64 %106)
  %108 = add nsw i64 %105, %107
  %109 = call i32 @writel(i32 %102, i64 %108)
  %110 = load i32*, i32** %7, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 21
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %177

114:                                              ; preds = %13
  %115 = load i32*, i32** %7, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 11
  %117 = load i32, i32* %116, align 4
  %118 = and i32 %117, 8191
  %119 = shl i32 %118, 16
  %120 = load i32*, i32** %7, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 12
  %122 = load i32, i32* %121, align 4
  %123 = and i32 %122, 8191
  %124 = or i32 %119, %123
  %125 = load %struct.meson_drm*, %struct.meson_drm** %5, align 8
  %126 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @VIU_OSD1_MATRIX_COEF22_30, align 8
  %129 = call i64 @_REG(i64 %128)
  %130 = add nsw i64 %127, %129
  %131 = call i32 @writel(i32 %124, i64 %130)
  %132 = load i32*, i32** %7, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 13
  %134 = load i32, i32* %133, align 4
  %135 = and i32 %134, 8191
  %136 = shl i32 %135, 16
  %137 = load i32*, i32** %7, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 14
  %139 = load i32, i32* %138, align 4
  %140 = and i32 %139, 8191
  %141 = or i32 %136, %140
  %142 = load %struct.meson_drm*, %struct.meson_drm** %5, align 8
  %143 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @VIU_OSD1_MATRIX_COEF31_32, align 8
  %146 = call i64 @_REG(i64 %145)
  %147 = add nsw i64 %144, %146
  %148 = call i32 @writel(i32 %141, i64 %147)
  %149 = load i32*, i32** %7, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 15
  %151 = load i32, i32* %150, align 4
  %152 = and i32 %151, 8191
  %153 = shl i32 %152, 16
  %154 = load i32*, i32** %7, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 16
  %156 = load i32, i32* %155, align 4
  %157 = and i32 %156, 8191
  %158 = or i32 %153, %157
  %159 = load %struct.meson_drm*, %struct.meson_drm** %5, align 8
  %160 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @VIU_OSD1_MATRIX_COEF40_41, align 8
  %163 = call i64 @_REG(i64 %162)
  %164 = add nsw i64 %161, %163
  %165 = call i32 @writel(i32 %158, i64 %164)
  %166 = load i32*, i32** %7, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 17
  %168 = load i32, i32* %167, align 4
  %169 = and i32 %168, 8191
  %170 = load %struct.meson_drm*, %struct.meson_drm** %5, align 8
  %171 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @VIU_OSD1_MATRIX_COLMOD_COEF42, align 8
  %174 = call i64 @_REG(i64 %173)
  %175 = add nsw i64 %172, %174
  %176 = call i32 @writel(i32 %169, i64 %175)
  br label %190

177:                                              ; preds = %13
  %178 = load i32*, i32** %7, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 11
  %180 = load i32, i32* %179, align 4
  %181 = and i32 %180, 8191
  %182 = shl i32 %181, 16
  %183 = load %struct.meson_drm*, %struct.meson_drm** %5, align 8
  %184 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @VIU_OSD1_MATRIX_COEF22_30, align 8
  %187 = call i64 @_REG(i64 %186)
  %188 = add nsw i64 %185, %187
  %189 = call i32 @writel(i32 %182, i64 %188)
  br label %190

190:                                              ; preds = %177, %114
  %191 = load i32*, i32** %7, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 18
  %193 = load i32, i32* %192, align 4
  %194 = and i32 %193, 4095
  %195 = shl i32 %194, 16
  %196 = load i32*, i32** %7, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 19
  %198 = load i32, i32* %197, align 4
  %199 = and i32 %198, 4095
  %200 = or i32 %195, %199
  %201 = load %struct.meson_drm*, %struct.meson_drm** %5, align 8
  %202 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @VIU_OSD1_MATRIX_OFFSET0_1, align 8
  %205 = call i64 @_REG(i64 %204)
  %206 = add nsw i64 %203, %205
  %207 = call i32 @writel(i32 %200, i64 %206)
  %208 = load i32*, i32** %7, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 20
  %210 = load i32, i32* %209, align 4
  %211 = and i32 %210, 4095
  %212 = load %struct.meson_drm*, %struct.meson_drm** %5, align 8
  %213 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @VIU_OSD1_MATRIX_OFFSET2, align 8
  %216 = call i64 @_REG(i64 %215)
  %217 = add nsw i64 %214, %216
  %218 = call i32 @writel(i32 %211, i64 %217)
  %219 = load i32*, i32** %7, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 21
  %221 = load i32, i32* %220, align 4
  %222 = shl i32 %221, 30
  %223 = load %struct.meson_drm*, %struct.meson_drm** %5, align 8
  %224 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* @VIU_OSD1_MATRIX_COLMOD_COEF42, align 8
  %227 = call i64 @_REG(i64 %226)
  %228 = add nsw i64 %225, %227
  %229 = call i32 @writel_bits_relaxed(i32 -1073741824, i32 %222, i64 %228)
  %230 = load i32*, i32** %7, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 22
  %232 = load i32, i32* %231, align 4
  %233 = shl i32 %232, 16
  %234 = load %struct.meson_drm*, %struct.meson_drm** %5, align 8
  %235 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = load i64, i64* @VIU_OSD1_MATRIX_COLMOD_COEF42, align 8
  %238 = call i64 @_REG(i64 %237)
  %239 = add nsw i64 %236, %238
  %240 = call i32 @writel_bits_relaxed(i32 458752, i32 %233, i64 %239)
  %241 = call i32 @BIT(i32 0)
  %242 = load i32, i32* %8, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %246

244:                                              ; preds = %190
  %245 = call i32 @BIT(i32 0)
  br label %247

246:                                              ; preds = %190
  br label %247

247:                                              ; preds = %246, %244
  %248 = phi i32 [ %245, %244 ], [ 0, %246 ]
  %249 = load %struct.meson_drm*, %struct.meson_drm** %5, align 8
  %250 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = load i64, i64* @VIU_OSD1_MATRIX_CTRL, align 8
  %253 = call i64 @_REG(i64 %252)
  %254 = add nsw i64 %251, %253
  %255 = call i32 @writel_bits_relaxed(i32 %241, i32 %248, i64 %254)
  %256 = call i32 @BIT(i32 1)
  %257 = load %struct.meson_drm*, %struct.meson_drm** %5, align 8
  %258 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = load i64, i64* @VIU_OSD1_MATRIX_CTRL, align 8
  %261 = call i64 @_REG(i64 %260)
  %262 = add nsw i64 %259, %261
  %263 = call i32 @writel_bits_relaxed(i32 %256, i32 0, i64 %262)
  br label %336

264:                                              ; preds = %4
  %265 = load i32, i32* %6, align 4
  %266 = load i32, i32* @VIU_MATRIX_OSD_EOTF, align 4
  %267 = icmp eq i32 %265, %266
  br i1 %267, label %268, label %335

268:                                              ; preds = %264
  store i32 0, i32* %9, align 4
  br label %269

269:                                              ; preds = %301, %268
  %270 = load i32, i32* %9, align 4
  %271 = icmp slt i32 %270, 5
  br i1 %271, label %272, label %304

272:                                              ; preds = %269
  %273 = load i32*, i32** %7, align 8
  %274 = load i32, i32* %9, align 4
  %275 = mul nsw i32 %274, 2
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i32, i32* %273, i64 %276
  %278 = load i32, i32* %277, align 4
  %279 = and i32 %278, 8191
  %280 = shl i32 %279, 16
  %281 = load i32*, i32** %7, align 8
  %282 = load i32, i32* %9, align 4
  %283 = mul nsw i32 %282, 2
  %284 = add nsw i32 %283, 1
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i32, i32* %281, i64 %285
  %287 = load i32, i32* %286, align 4
  %288 = and i32 %287, 8191
  %289 = or i32 %280, %288
  %290 = load %struct.meson_drm*, %struct.meson_drm** %5, align 8
  %291 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %290, i32 0, i32 0
  %292 = load i64, i64* %291, align 8
  %293 = load i64, i64* @VIU_OSD1_EOTF_CTL, align 8
  %294 = load i32, i32* %9, align 4
  %295 = sext i32 %294 to i64
  %296 = add nsw i64 %293, %295
  %297 = add nsw i64 %296, 1
  %298 = call i64 @_REG(i64 %297)
  %299 = add nsw i64 %292, %298
  %300 = call i32 @writel(i32 %289, i64 %299)
  br label %301

301:                                              ; preds = %272
  %302 = load i32, i32* %9, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %9, align 4
  br label %269

304:                                              ; preds = %269
  %305 = call i32 @BIT(i32 30)
  %306 = load i32, i32* %8, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %310

308:                                              ; preds = %304
  %309 = call i32 @BIT(i32 30)
  br label %311

310:                                              ; preds = %304
  br label %311

311:                                              ; preds = %310, %308
  %312 = phi i32 [ %309, %308 ], [ 0, %310 ]
  %313 = load %struct.meson_drm*, %struct.meson_drm** %5, align 8
  %314 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %313, i32 0, i32 0
  %315 = load i64, i64* %314, align 8
  %316 = load i64, i64* @VIU_OSD1_EOTF_CTL, align 8
  %317 = call i64 @_REG(i64 %316)
  %318 = add nsw i64 %315, %317
  %319 = call i32 @writel_bits_relaxed(i32 %305, i32 %312, i64 %318)
  %320 = call i32 @BIT(i32 31)
  %321 = load i32, i32* %8, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %325

323:                                              ; preds = %311
  %324 = call i32 @BIT(i32 31)
  br label %326

325:                                              ; preds = %311
  br label %326

326:                                              ; preds = %325, %323
  %327 = phi i32 [ %324, %323 ], [ 0, %325 ]
  %328 = load %struct.meson_drm*, %struct.meson_drm** %5, align 8
  %329 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %328, i32 0, i32 0
  %330 = load i64, i64* %329, align 8
  %331 = load i64, i64* @VIU_OSD1_EOTF_CTL, align 8
  %332 = call i64 @_REG(i64 %331)
  %333 = add nsw i64 %330, %332
  %334 = call i32 @writel_bits_relaxed(i32 %320, i32 %327, i64 %333)
  br label %335

335:                                              ; preds = %326, %264
  br label %336

336:                                              ; preds = %335, %247
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @_REG(i64) #1

declare dso_local i32 @writel_bits_relaxed(i32, i32, i64) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

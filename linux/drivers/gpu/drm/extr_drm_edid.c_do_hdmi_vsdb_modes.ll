; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_do_hdmi_vsdb_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_do_hdmi_vsdb_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.drm_display_info }
%struct.drm_display_info = type { i32 }
%struct.drm_display_mode = type { i32 }

@DRM_MODE_FLAG_3D_FRAME_PACKING = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_3D_TOP_AND_BOTTOM = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_3D_SIDE_BY_SIDE_HALF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, i32*, i32, i32*, i32)* @do_hdmi_vsdb_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_hdmi_vsdb_modes(%struct.drm_connector* %0, i32* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.drm_connector*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.drm_display_info*, align 8
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
  %23 = alloca %struct.drm_display_mode*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %26 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %27 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %26, i32 0, i32 0
  store %struct.drm_display_info* %27, %struct.drm_display_info** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %18, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 8
  br i1 %29, label %30, label %31

30:                                               ; preds = %5
  br label %334

31:                                               ; preds = %5
  %32 = load i32*, i32** %7, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 8
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %31
  br label %334

38:                                               ; preds = %31
  %39 = load i32*, i32** %7, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 8
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 128
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* %13, align 4
  %46 = add nsw i32 %45, 2
  store i32 %46, i32* %13, align 4
  br label %47

47:                                               ; preds = %44, %38
  %48 = load i32*, i32** %7, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 8
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, 64
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i32, i32* %13, align 4
  %55 = add nsw i32 %54, 2
  store i32 %55, i32* %13, align 4
  br label %56

56:                                               ; preds = %53, %47
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %13, align 4
  %59 = add nsw i32 8, %58
  %60 = add nsw i32 %59, 2
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %334

63:                                               ; preds = %56
  %64 = load i32, i32* %13, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %13, align 4
  %66 = load i32*, i32** %7, align 8
  %67 = load i32, i32* %13, align 4
  %68 = add nsw i32 8, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, 128
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %89

74:                                               ; preds = %63
  %75 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %76 = call i64 @add_hdmi_mandatory_stereo_modes(%struct.drm_connector* %75)
  %77 = load i32, i32* %12, align 4
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %78, %76
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %12, align 4
  %81 = load i32*, i32** %7, align 8
  %82 = load i32, i32* %13, align 4
  %83 = add nsw i32 8, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %81, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, 96
  %88 = ashr i32 %87, 5
  store i32 %88, i32* %15, align 4
  br label %89

89:                                               ; preds = %74, %63
  %90 = load i32, i32* %13, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %13, align 4
  %92 = load i32*, i32** %7, align 8
  %93 = load i32, i32* %13, align 4
  %94 = add nsw i32 8, %93
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %92, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = ashr i32 %97, 5
  store i32 %98, i32* %17, align 4
  %99 = load i32*, i32** %7, align 8
  %100 = load i32, i32* %13, align 4
  %101 = add nsw i32 8, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %99, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, 31
  store i32 %105, i32* %18, align 4
  store i32 0, i32* %14, align 4
  br label %106

106:                                              ; preds = %135, %89
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* %17, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %117

110:                                              ; preds = %106
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* %13, align 4
  %113 = add nsw i32 9, %112
  %114 = load i32, i32* %14, align 4
  %115 = add nsw i32 %113, %114
  %116 = icmp sge i32 %111, %115
  br label %117

117:                                              ; preds = %110, %106
  %118 = phi i1 [ false, %106 ], [ %116, %110 ]
  br i1 %118, label %119, label %138

119:                                              ; preds = %117
  %120 = load i32*, i32** %7, align 8
  %121 = load i32, i32* %13, align 4
  %122 = add nsw i32 9, %121
  %123 = load i32, i32* %14, align 4
  %124 = add nsw i32 %122, %123
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %120, i64 %125
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %21, align 4
  %128 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %129 = load i32, i32* %21, align 4
  %130 = call i64 @add_hdmi_mode(%struct.drm_connector* %128, i32 %129)
  %131 = load i32, i32* %12, align 4
  %132 = sext i32 %131 to i64
  %133 = add nsw i64 %132, %130
  %134 = trunc i64 %133 to i32
  store i32 %134, i32* %12, align 4
  br label %135

135:                                              ; preds = %119
  %136 = load i32, i32* %14, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %14, align 4
  br label %106

138:                                              ; preds = %117
  %139 = load i32, i32* %17, align 4
  %140 = add nsw i32 1, %139
  %141 = load i32, i32* %13, align 4
  %142 = add nsw i32 %141, %140
  store i32 %142, i32* %13, align 4
  %143 = load i32, i32* %15, align 4
  %144 = icmp eq i32 %143, 1
  br i1 %144, label %145, label %146

145:                                              ; preds = %138
  store i32 2, i32* %16, align 4
  br label %152

146:                                              ; preds = %138
  %147 = load i32, i32* %15, align 4
  %148 = icmp eq i32 %147, 2
  br i1 %148, label %149, label %150

149:                                              ; preds = %146
  store i32 4, i32* %16, align 4
  br label %151

150:                                              ; preds = %146
  store i32 0, i32* %16, align 4
  br label %151

151:                                              ; preds = %150, %149
  br label %152

152:                                              ; preds = %151, %145
  %153 = load i32, i32* %8, align 4
  %154 = load i32, i32* %13, align 4
  %155 = add nsw i32 8, %154
  %156 = load i32, i32* %18, align 4
  %157 = add nsw i32 %155, %156
  %158 = sub nsw i32 %157, 1
  %159 = icmp slt i32 %153, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %152
  br label %334

161:                                              ; preds = %152
  %162 = load i32, i32* %18, align 4
  %163 = load i32, i32* %16, align 4
  %164 = icmp slt i32 %162, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %161
  br label %334

166:                                              ; preds = %161
  %167 = load i32, i32* %15, align 4
  %168 = icmp eq i32 %167, 1
  br i1 %168, label %172, label %169

169:                                              ; preds = %166
  %170 = load i32, i32* %15, align 4
  %171 = icmp eq i32 %170, 2
  br i1 %171, label %172, label %231

172:                                              ; preds = %169, %166
  %173 = load i32*, i32** %7, align 8
  %174 = load i32, i32* %13, align 4
  %175 = add nsw i32 8, %174
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %173, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = shl i32 %178, 8
  %180 = load i32*, i32** %7, align 8
  %181 = load i32, i32* %13, align 4
  %182 = add nsw i32 9, %181
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %180, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = or i32 %179, %185
  store i32 %186, i32* %20, align 4
  %187 = load i32, i32* %15, align 4
  %188 = icmp eq i32 %187, 2
  br i1 %188, label %189, label %204

189:                                              ; preds = %172
  %190 = load i32*, i32** %7, align 8
  %191 = load i32, i32* %13, align 4
  %192 = add nsw i32 10, %191
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %190, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = shl i32 %195, 8
  %197 = load i32*, i32** %7, align 8
  %198 = load i32, i32* %13, align 4
  %199 = add nsw i32 11, %198
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %197, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = or i32 %196, %202
  store i32 %203, i32* %19, align 4
  br label %205

204:                                              ; preds = %172
  store i32 65535, i32* %19, align 4
  br label %205

205:                                              ; preds = %204, %189
  store i32 0, i32* %14, align 4
  br label %206

206:                                              ; preds = %227, %205
  %207 = load i32, i32* %14, align 4
  %208 = icmp slt i32 %207, 16
  br i1 %208, label %209, label %230

209:                                              ; preds = %206
  %210 = load i32, i32* %19, align 4
  %211 = load i32, i32* %14, align 4
  %212 = shl i32 1, %211
  %213 = and i32 %210, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %226

215:                                              ; preds = %209
  %216 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %217 = load i32, i32* %20, align 4
  %218 = load i32*, i32** %9, align 8
  %219 = load i32, i32* %10, align 4
  %220 = load i32, i32* %14, align 4
  %221 = call i64 @add_3d_struct_modes(%struct.drm_connector* %216, i32 %217, i32* %218, i32 %219, i32 %220)
  %222 = load i32, i32* %12, align 4
  %223 = sext i32 %222 to i64
  %224 = add nsw i64 %223, %221
  %225 = trunc i64 %224 to i32
  store i32 %225, i32* %12, align 4
  br label %226

226:                                              ; preds = %215, %209
  br label %227

227:                                              ; preds = %226
  %228 = load i32, i32* %14, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %14, align 4
  br label %206

230:                                              ; preds = %206
  br label %231

231:                                              ; preds = %230, %169
  %232 = load i32, i32* %16, align 4
  %233 = load i32, i32* %13, align 4
  %234 = add nsw i32 %233, %232
  store i32 %234, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %235

235:                                              ; preds = %330, %231
  %236 = load i32, i32* %14, align 4
  %237 = load i32, i32* %18, align 4
  %238 = load i32, i32* %16, align 4
  %239 = sub nsw i32 %237, %238
  %240 = icmp slt i32 %236, %239
  br i1 %240, label %241, label %333

241:                                              ; preds = %235
  store %struct.drm_display_mode* null, %struct.drm_display_mode** %23, align 8
  store i32 0, i32* %24, align 4
  %242 = load i32*, i32** %7, align 8
  %243 = load i32, i32* %13, align 4
  %244 = add nsw i32 8, %243
  %245 = load i32, i32* %14, align 4
  %246 = add nsw i32 %244, %245
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %242, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = and i32 %249, 15
  %251 = icmp sgt i32 %250, 7
  %252 = zext i1 %251 to i32
  store i32 %252, i32* %25, align 4
  %253 = load i32, i32* %25, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %263

255:                                              ; preds = %241
  %256 = load i32, i32* %14, align 4
  %257 = add nsw i32 %256, 1
  %258 = load i32, i32* %18, align 4
  %259 = load i32, i32* %16, align 4
  %260 = sub nsw i32 %258, %259
  %261 = icmp eq i32 %257, %260
  br i1 %261, label %262, label %263

262:                                              ; preds = %255
  br label %333

263:                                              ; preds = %255, %241
  %264 = load i32*, i32** %7, align 8
  %265 = load i32, i32* %13, align 4
  %266 = add nsw i32 8, %265
  %267 = load i32, i32* %14, align 4
  %268 = add nsw i32 %266, %267
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i32, i32* %264, i64 %269
  %271 = load i32, i32* %270, align 4
  %272 = ashr i32 %271, 4
  store i32 %272, i32* %22, align 4
  %273 = load i32*, i32** %7, align 8
  %274 = load i32, i32* %13, align 4
  %275 = add nsw i32 8, %274
  %276 = load i32, i32* %14, align 4
  %277 = add nsw i32 %275, %276
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32, i32* %273, i64 %278
  %280 = load i32, i32* %279, align 4
  %281 = and i32 %280, 15
  switch i32 %281, label %300 [
    i32 0, label %282
    i32 6, label %284
    i32 8, label %286
  ]

282:                                              ; preds = %263
  %283 = load i32, i32* @DRM_MODE_FLAG_3D_FRAME_PACKING, align 4
  store i32 %283, i32* %24, align 4
  br label %300

284:                                              ; preds = %263
  %285 = load i32, i32* @DRM_MODE_FLAG_3D_TOP_AND_BOTTOM, align 4
  store i32 %285, i32* %24, align 4
  br label %300

286:                                              ; preds = %263
  %287 = load i32*, i32** %7, align 8
  %288 = load i32, i32* %13, align 4
  %289 = add nsw i32 9, %288
  %290 = load i32, i32* %14, align 4
  %291 = add nsw i32 %289, %290
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i32, i32* %287, i64 %292
  %294 = load i32, i32* %293, align 4
  %295 = ashr i32 %294, 4
  %296 = icmp eq i32 %295, 1
  br i1 %296, label %297, label %299

297:                                              ; preds = %286
  %298 = load i32, i32* @DRM_MODE_FLAG_3D_SIDE_BY_SIDE_HALF, align 4
  store i32 %298, i32* %24, align 4
  br label %299

299:                                              ; preds = %297, %286
  br label %300

300:                                              ; preds = %263, %299, %284, %282
  %301 = load i32, i32* %24, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %323

303:                                              ; preds = %300
  %304 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %305 = load i32*, i32** %9, align 8
  %306 = load i32, i32* %10, align 4
  %307 = load i32, i32* %22, align 4
  %308 = call %struct.drm_display_mode* @drm_display_mode_from_vic_index(%struct.drm_connector* %304, i32* %305, i32 %306, i32 %307)
  store %struct.drm_display_mode* %308, %struct.drm_display_mode** %23, align 8
  %309 = load %struct.drm_display_mode*, %struct.drm_display_mode** %23, align 8
  %310 = icmp ne %struct.drm_display_mode* %309, null
  br i1 %310, label %311, label %322

311:                                              ; preds = %303
  %312 = load i32, i32* %24, align 4
  %313 = load %struct.drm_display_mode*, %struct.drm_display_mode** %23, align 8
  %314 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 4
  %316 = or i32 %315, %312
  store i32 %316, i32* %314, align 4
  %317 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %318 = load %struct.drm_display_mode*, %struct.drm_display_mode** %23, align 8
  %319 = call i32 @drm_mode_probed_add(%struct.drm_connector* %317, %struct.drm_display_mode* %318)
  %320 = load i32, i32* %12, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %12, align 4
  br label %322

322:                                              ; preds = %311, %303
  br label %323

323:                                              ; preds = %322, %300
  %324 = load i32, i32* %25, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %329

326:                                              ; preds = %323
  %327 = load i32, i32* %14, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %14, align 4
  br label %329

329:                                              ; preds = %326, %323
  br label %330

330:                                              ; preds = %329
  %331 = load i32, i32* %14, align 4
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %14, align 4
  br label %235

333:                                              ; preds = %262, %235
  br label %334

334:                                              ; preds = %333, %165, %160, %62, %37, %30
  %335 = load i32, i32* %12, align 4
  %336 = icmp sgt i32 %335, 0
  br i1 %336, label %337, label %340

337:                                              ; preds = %334
  %338 = load %struct.drm_display_info*, %struct.drm_display_info** %11, align 8
  %339 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %338, i32 0, i32 0
  store i32 1, i32* %339, align 4
  br label %340

340:                                              ; preds = %337, %334
  %341 = load i32, i32* %12, align 4
  ret i32 %341
}

declare dso_local i64 @add_hdmi_mandatory_stereo_modes(%struct.drm_connector*) #1

declare dso_local i64 @add_hdmi_mode(%struct.drm_connector*, i32) #1

declare dso_local i64 @add_3d_struct_modes(%struct.drm_connector*, i32, i32*, i32, i32) #1

declare dso_local %struct.drm_display_mode* @drm_display_mode_from_vic_index(%struct.drm_connector*, i32*, i32, i32) #1

declare dso_local i32 @drm_mode_probed_add(%struct.drm_connector*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

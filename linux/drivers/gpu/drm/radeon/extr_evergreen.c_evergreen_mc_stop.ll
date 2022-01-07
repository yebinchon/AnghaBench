; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_mc_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_mc_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i32 }
%struct.evergreen_mc_save = type { i32, i32, i32* }

@VGA_RENDER_CONTROL = common dso_local global i64 0, align 8
@VGA_HDP_CONTROL = common dso_local global i64 0, align 8
@EVERGREEN_CRTC_CONTROL = common dso_local global i64 0, align 8
@crtc_offsets = common dso_local global i64* null, align 8
@EVERGREEN_CRTC_MASTER_EN = common dso_local global i32 0, align 4
@EVERGREEN_CRTC_BLANK_CONTROL = common dso_local global i64 0, align 8
@EVERGREEN_CRTC_BLANK_DATA_EN = common dso_local global i32 0, align 4
@EVERGREEN_CRTC_UPDATE_LOCK = common dso_local global i64 0, align 8
@EVERGREEN_CRTC_DISP_READ_REQUEST_DISABLE = common dso_local global i32 0, align 4
@MC_SHARED_BLACKOUT_CNTL = common dso_local global i64 0, align 8
@BLACKOUT_MODE_MASK = common dso_local global i32 0, align 4
@BIF_FB_EN = common dso_local global i64 0, align 8
@EVERGREEN_GRPH_UPDATE = common dso_local global i64 0, align 8
@EVERGREEN_GRPH_UPDATE_LOCK = common dso_local global i32 0, align 4
@EVERGREEN_MASTER_UPDATE_LOCK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evergreen_mc_stop(%struct.radeon_device* %0, %struct.evergreen_mc_save* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.evergreen_mc_save*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.evergreen_mc_save* %1, %struct.evergreen_mc_save** %4, align 8
  %12 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %13 = call i32 @ASIC_IS_NODCE(%struct.radeon_device* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %2
  %16 = load i64, i64* @VGA_RENDER_CONTROL, align 8
  %17 = call i32 @RREG32(i64 %16)
  %18 = load %struct.evergreen_mc_save*, %struct.evergreen_mc_save** %4, align 8
  %19 = getelementptr inbounds %struct.evergreen_mc_save, %struct.evergreen_mc_save* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load i64, i64* @VGA_HDP_CONTROL, align 8
  %21 = call i32 @RREG32(i64 %20)
  %22 = load %struct.evergreen_mc_save*, %struct.evergreen_mc_save** %4, align 8
  %23 = getelementptr inbounds %struct.evergreen_mc_save, %struct.evergreen_mc_save* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i64, i64* @VGA_RENDER_CONTROL, align 8
  %25 = call i32 @WREG32(i64 %24, i32 0)
  br label %26

26:                                               ; preds = %15, %2
  store i32 0, i32* %9, align 4
  br label %27

27:                                               ; preds = %235, %26
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %30 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %238

33:                                               ; preds = %27
  %34 = load i64, i64* @EVERGREEN_CRTC_CONTROL, align 8
  %35 = load i64*, i64** @crtc_offsets, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %34, %39
  %41 = call i32 @RREG32(i64 %40)
  %42 = load i32, i32* @EVERGREEN_CRTC_MASTER_EN, align 4
  %43 = and i32 %41, %42
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %227

46:                                               ; preds = %33
  %47 = load %struct.evergreen_mc_save*, %struct.evergreen_mc_save** %4, align 8
  %48 = getelementptr inbounds %struct.evergreen_mc_save, %struct.evergreen_mc_save* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32 1, i32* %52, align 4
  %53 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %54 = call i64 @ASIC_IS_DCE6(%struct.radeon_device* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %102

56:                                               ; preds = %46
  %57 = load i64, i64* @EVERGREEN_CRTC_BLANK_CONTROL, align 8
  %58 = load i64*, i64** @crtc_offsets, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %57, %62
  %64 = call i32 @RREG32(i64 %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @EVERGREEN_CRTC_BLANK_DATA_EN, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %101, label %69

69:                                               ; preds = %56
  %70 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @radeon_wait_for_vblank(%struct.radeon_device* %70, i32 %71)
  %73 = load i64, i64* @EVERGREEN_CRTC_UPDATE_LOCK, align 8
  %74 = load i64*, i64** @crtc_offsets, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %73, %78
  %80 = call i32 @WREG32(i64 %79, i32 1)
  %81 = load i32, i32* @EVERGREEN_CRTC_BLANK_DATA_EN, align 4
  %82 = load i32, i32* %6, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %6, align 4
  %84 = load i64, i64* @EVERGREEN_CRTC_BLANK_CONTROL, align 8
  %85 = load i64*, i64** @crtc_offsets, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %85, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %84, %89
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @WREG32(i64 %90, i32 %91)
  %93 = load i64, i64* @EVERGREEN_CRTC_UPDATE_LOCK, align 8
  %94 = load i64*, i64** @crtc_offsets, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %94, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %93, %98
  %100 = call i32 @WREG32(i64 %99, i32 0)
  br label %101

101:                                              ; preds = %69, %56
  br label %148

102:                                              ; preds = %46
  %103 = load i64, i64* @EVERGREEN_CRTC_CONTROL, align 8
  %104 = load i64*, i64** @crtc_offsets, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %104, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %103, %108
  %110 = call i32 @RREG32(i64 %109)
  store i32 %110, i32* %6, align 4
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* @EVERGREEN_CRTC_DISP_READ_REQUEST_DISABLE, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %147, label %115

115:                                              ; preds = %102
  %116 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %117 = load i32, i32* %9, align 4
  %118 = call i32 @radeon_wait_for_vblank(%struct.radeon_device* %116, i32 %117)
  %119 = load i64, i64* @EVERGREEN_CRTC_UPDATE_LOCK, align 8
  %120 = load i64*, i64** @crtc_offsets, align 8
  %121 = load i32, i32* %9, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i64, i64* %120, i64 %122
  %124 = load i64, i64* %123, align 8
  %125 = add nsw i64 %119, %124
  %126 = call i32 @WREG32(i64 %125, i32 1)
  %127 = load i32, i32* @EVERGREEN_CRTC_DISP_READ_REQUEST_DISABLE, align 4
  %128 = load i32, i32* %6, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %6, align 4
  %130 = load i64, i64* @EVERGREEN_CRTC_CONTROL, align 8
  %131 = load i64*, i64** @crtc_offsets, align 8
  %132 = load i32, i32* %9, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i64, i64* %131, i64 %133
  %135 = load i64, i64* %134, align 8
  %136 = add nsw i64 %130, %135
  %137 = load i32, i32* %6, align 4
  %138 = call i32 @WREG32(i64 %136, i32 %137)
  %139 = load i64, i64* @EVERGREEN_CRTC_UPDATE_LOCK, align 8
  %140 = load i64*, i64** @crtc_offsets, align 8
  %141 = load i32, i32* %9, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i64, i64* %140, i64 %142
  %144 = load i64, i64* %143, align 8
  %145 = add nsw i64 %139, %144
  %146 = call i32 @WREG32(i64 %145, i32 0)
  br label %147

147:                                              ; preds = %115, %102
  br label %148

148:                                              ; preds = %147, %101
  %149 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %150 = load i32, i32* %9, align 4
  %151 = call i32 @radeon_get_vblank_counter(%struct.radeon_device* %149, i32 %150)
  store i32 %151, i32* %7, align 4
  store i32 0, i32* %10, align 4
  br label %152

152:                                              ; preds = %167, %148
  %153 = load i32, i32* %10, align 4
  %154 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %155 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = icmp slt i32 %153, %156
  br i1 %157, label %158, label %170

158:                                              ; preds = %152
  %159 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %160 = load i32, i32* %9, align 4
  %161 = call i32 @radeon_get_vblank_counter(%struct.radeon_device* %159, i32 %160)
  %162 = load i32, i32* %7, align 4
  %163 = icmp ne i32 %161, %162
  br i1 %163, label %164, label %165

164:                                              ; preds = %158
  br label %170

165:                                              ; preds = %158
  %166 = call i32 @udelay(i32 1)
  br label %167

167:                                              ; preds = %165
  %168 = load i32, i32* %10, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %10, align 4
  br label %152

170:                                              ; preds = %164, %152
  %171 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %172 = call i64 @ASIC_IS_DCE5(%struct.radeon_device* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %183

174:                                              ; preds = %170
  %175 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %176 = load i32, i32* %9, align 4
  %177 = call i64 @evergreen_is_dp_sst_stream_enabled(%struct.radeon_device* %175, i32 %176, i32* %11)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %174
  %180 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %181 = load i32, i32* %11, align 4
  %182 = call i32 @evergreen_blank_dp_output(%struct.radeon_device* %180, i32 %181)
  br label %183

183:                                              ; preds = %179, %174, %170
  %184 = load i64, i64* @EVERGREEN_CRTC_UPDATE_LOCK, align 8
  %185 = load i64*, i64** @crtc_offsets, align 8
  %186 = load i32, i32* %9, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i64, i64* %185, i64 %187
  %189 = load i64, i64* %188, align 8
  %190 = add nsw i64 %184, %189
  %191 = call i32 @WREG32(i64 %190, i32 1)
  %192 = load i64, i64* @EVERGREEN_CRTC_CONTROL, align 8
  %193 = load i64*, i64** @crtc_offsets, align 8
  %194 = load i32, i32* %9, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i64, i64* %193, i64 %195
  %197 = load i64, i64* %196, align 8
  %198 = add nsw i64 %192, %197
  %199 = call i32 @RREG32(i64 %198)
  store i32 %199, i32* %6, align 4
  %200 = load i32, i32* @EVERGREEN_CRTC_MASTER_EN, align 4
  %201 = xor i32 %200, -1
  %202 = load i32, i32* %6, align 4
  %203 = and i32 %202, %201
  store i32 %203, i32* %6, align 4
  %204 = load i64, i64* @EVERGREEN_CRTC_CONTROL, align 8
  %205 = load i64*, i64** @crtc_offsets, align 8
  %206 = load i32, i32* %9, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i64, i64* %205, i64 %207
  %209 = load i64, i64* %208, align 8
  %210 = add nsw i64 %204, %209
  %211 = load i32, i32* %6, align 4
  %212 = call i32 @WREG32(i64 %210, i32 %211)
  %213 = load i64, i64* @EVERGREEN_CRTC_UPDATE_LOCK, align 8
  %214 = load i64*, i64** @crtc_offsets, align 8
  %215 = load i32, i32* %9, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i64, i64* %214, i64 %216
  %218 = load i64, i64* %217, align 8
  %219 = add nsw i64 %213, %218
  %220 = call i32 @WREG32(i64 %219, i32 0)
  %221 = load %struct.evergreen_mc_save*, %struct.evergreen_mc_save** %4, align 8
  %222 = getelementptr inbounds %struct.evergreen_mc_save, %struct.evergreen_mc_save* %221, i32 0, i32 2
  %223 = load i32*, i32** %222, align 8
  %224 = load i32, i32* %9, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %223, i64 %225
  store i32 0, i32* %226, align 4
  br label %234

227:                                              ; preds = %33
  %228 = load %struct.evergreen_mc_save*, %struct.evergreen_mc_save** %4, align 8
  %229 = getelementptr inbounds %struct.evergreen_mc_save, %struct.evergreen_mc_save* %228, i32 0, i32 2
  %230 = load i32*, i32** %229, align 8
  %231 = load i32, i32* %9, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %230, i64 %232
  store i32 0, i32* %233, align 4
  br label %234

234:                                              ; preds = %227, %183
  br label %235

235:                                              ; preds = %234
  %236 = load i32, i32* %9, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %9, align 4
  br label %27

238:                                              ; preds = %27
  %239 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %240 = call i32 @radeon_mc_wait_for_idle(%struct.radeon_device* %239)
  %241 = load i64, i64* @MC_SHARED_BLACKOUT_CNTL, align 8
  %242 = call i32 @RREG32(i64 %241)
  store i32 %242, i32* %8, align 4
  %243 = load i32, i32* %8, align 4
  %244 = load i32, i32* @BLACKOUT_MODE_MASK, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 1
  br i1 %246, label %247, label %258

247:                                              ; preds = %238
  %248 = load i64, i64* @BIF_FB_EN, align 8
  %249 = call i32 @WREG32(i64 %248, i32 0)
  %250 = load i32, i32* @BLACKOUT_MODE_MASK, align 4
  %251 = xor i32 %250, -1
  %252 = load i32, i32* %8, align 4
  %253 = and i32 %252, %251
  store i32 %253, i32* %8, align 4
  %254 = load i64, i64* @MC_SHARED_BLACKOUT_CNTL, align 8
  %255 = load i32, i32* %8, align 4
  %256 = or i32 %255, 1
  %257 = call i32 @WREG32(i64 %254, i32 %256)
  br label %258

258:                                              ; preds = %247, %238
  %259 = call i32 @udelay(i32 100)
  store i32 0, i32* %9, align 4
  br label %260

260:                                              ; preds = %327, %258
  %261 = load i32, i32* %9, align 4
  %262 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %263 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = icmp slt i32 %261, %264
  br i1 %265, label %266, label %330

266:                                              ; preds = %260
  %267 = load %struct.evergreen_mc_save*, %struct.evergreen_mc_save** %4, align 8
  %268 = getelementptr inbounds %struct.evergreen_mc_save, %struct.evergreen_mc_save* %267, i32 0, i32 2
  %269 = load i32*, i32** %268, align 8
  %270 = load i32, i32* %9, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %269, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %326

275:                                              ; preds = %266
  %276 = load i64, i64* @EVERGREEN_GRPH_UPDATE, align 8
  %277 = load i64*, i64** @crtc_offsets, align 8
  %278 = load i32, i32* %9, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i64, i64* %277, i64 %279
  %281 = load i64, i64* %280, align 8
  %282 = add nsw i64 %276, %281
  %283 = call i32 @RREG32(i64 %282)
  store i32 %283, i32* %6, align 4
  %284 = load i32, i32* %6, align 4
  %285 = load i32, i32* @EVERGREEN_GRPH_UPDATE_LOCK, align 4
  %286 = and i32 %284, %285
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %301, label %288

288:                                              ; preds = %275
  %289 = load i32, i32* @EVERGREEN_GRPH_UPDATE_LOCK, align 4
  %290 = load i32, i32* %6, align 4
  %291 = or i32 %290, %289
  store i32 %291, i32* %6, align 4
  %292 = load i64, i64* @EVERGREEN_GRPH_UPDATE, align 8
  %293 = load i64*, i64** @crtc_offsets, align 8
  %294 = load i32, i32* %9, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i64, i64* %293, i64 %295
  %297 = load i64, i64* %296, align 8
  %298 = add nsw i64 %292, %297
  %299 = load i32, i32* %6, align 4
  %300 = call i32 @WREG32(i64 %298, i32 %299)
  br label %301

301:                                              ; preds = %288, %275
  %302 = load i64, i64* @EVERGREEN_MASTER_UPDATE_LOCK, align 8
  %303 = load i64*, i64** @crtc_offsets, align 8
  %304 = load i32, i32* %9, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i64, i64* %303, i64 %305
  %307 = load i64, i64* %306, align 8
  %308 = add nsw i64 %302, %307
  %309 = call i32 @RREG32(i64 %308)
  store i32 %309, i32* %6, align 4
  %310 = load i32, i32* %6, align 4
  %311 = and i32 %310, 1
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %325, label %313

313:                                              ; preds = %301
  %314 = load i32, i32* %6, align 4
  %315 = or i32 %314, 1
  store i32 %315, i32* %6, align 4
  %316 = load i64, i64* @EVERGREEN_MASTER_UPDATE_LOCK, align 8
  %317 = load i64*, i64** @crtc_offsets, align 8
  %318 = load i32, i32* %9, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i64, i64* %317, i64 %319
  %321 = load i64, i64* %320, align 8
  %322 = add nsw i64 %316, %321
  %323 = load i32, i32* %6, align 4
  %324 = call i32 @WREG32(i64 %322, i32 %323)
  br label %325

325:                                              ; preds = %313, %301
  br label %326

326:                                              ; preds = %325, %266
  br label %327

327:                                              ; preds = %326
  %328 = load i32, i32* %9, align 4
  %329 = add nsw i32 %328, 1
  store i32 %329, i32* %9, align 4
  br label %260

330:                                              ; preds = %260
  ret void
}

declare dso_local i32 @ASIC_IS_NODCE(%struct.radeon_device*) #1

declare dso_local i32 @RREG32(i64) #1

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i64 @ASIC_IS_DCE6(%struct.radeon_device*) #1

declare dso_local i32 @radeon_wait_for_vblank(%struct.radeon_device*, i32) #1

declare dso_local i32 @radeon_get_vblank_counter(%struct.radeon_device*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @ASIC_IS_DCE5(%struct.radeon_device*) #1

declare dso_local i64 @evergreen_is_dp_sst_stream_enabled(%struct.radeon_device*, i32, i32*) #1

declare dso_local i32 @evergreen_blank_dp_output(%struct.radeon_device*, i32) #1

declare dso_local i32 @radeon_mc_wait_for_idle(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

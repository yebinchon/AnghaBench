; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_mc_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_mc_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.evergreen_mc_save = type { i32, i32, i64* }

@EVERGREEN_GRPH_PRIMARY_SURFACE_ADDRESS_HIGH = common dso_local global i64 0, align 8
@crtc_offsets = common dso_local global i64* null, align 8
@EVERGREEN_GRPH_SECONDARY_SURFACE_ADDRESS_HIGH = common dso_local global i64 0, align 8
@EVERGREEN_GRPH_PRIMARY_SURFACE_ADDRESS = common dso_local global i64 0, align 8
@EVERGREEN_GRPH_SECONDARY_SURFACE_ADDRESS = common dso_local global i64 0, align 8
@EVERGREEN_VGA_MEMORY_BASE_ADDRESS_HIGH = common dso_local global i64 0, align 8
@EVERGREEN_VGA_MEMORY_BASE_ADDRESS = common dso_local global i64 0, align 8
@EVERGREEN_MASTER_UPDATE_MODE = common dso_local global i64 0, align 8
@EVERGREEN_GRPH_UPDATE = common dso_local global i64 0, align 8
@EVERGREEN_GRPH_UPDATE_LOCK = common dso_local global i32 0, align 4
@EVERGREEN_MASTER_UPDATE_LOCK = common dso_local global i64 0, align 8
@EVERGREEN_GRPH_SURFACE_UPDATE_PENDING = common dso_local global i32 0, align 4
@MC_SHARED_BLACKOUT_CNTL = common dso_local global i64 0, align 8
@BLACKOUT_MODE_MASK = common dso_local global i32 0, align 4
@BIF_FB_EN = common dso_local global i64 0, align 8
@FB_READ_EN = common dso_local global i32 0, align 4
@FB_WRITE_EN = common dso_local global i32 0, align 4
@EVERGREEN_CRTC_BLANK_CONTROL = common dso_local global i64 0, align 8
@EVERGREEN_CRTC_BLANK_DATA_EN = common dso_local global i32 0, align 4
@EVERGREEN_CRTC_UPDATE_LOCK = common dso_local global i64 0, align 8
@EVERGREEN_CRTC_CONTROL = common dso_local global i64 0, align 8
@EVERGREEN_CRTC_DISP_READ_REQUEST_DISABLE = common dso_local global i32 0, align 4
@VGA_HDP_CONTROL = common dso_local global i64 0, align 8
@VGA_RENDER_CONTROL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evergreen_mc_resume(%struct.radeon_device* %0, %struct.evergreen_mc_save* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.evergreen_mc_save*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.evergreen_mc_save* %1, %struct.evergreen_mc_save** %4, align 8
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %68, %2
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %12 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %71

15:                                               ; preds = %9
  %16 = load i64, i64* @EVERGREEN_GRPH_PRIMARY_SURFACE_ADDRESS_HIGH, align 8
  %17 = load i64*, i64** @crtc_offsets, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %17, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %16, %21
  %23 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %24 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @upper_32_bits(i64 %26)
  %28 = call i32 @WREG32(i64 %22, i32 %27)
  %29 = load i64, i64* @EVERGREEN_GRPH_SECONDARY_SURFACE_ADDRESS_HIGH, align 8
  %30 = load i64*, i64** @crtc_offsets, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %29, %34
  %36 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %37 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @upper_32_bits(i64 %39)
  %41 = call i32 @WREG32(i64 %35, i32 %40)
  %42 = load i64, i64* @EVERGREEN_GRPH_PRIMARY_SURFACE_ADDRESS, align 8
  %43 = load i64*, i64** @crtc_offsets, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %42, %47
  %49 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %50 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = call i32 @WREG32(i64 %48, i32 %53)
  %55 = load i64, i64* @EVERGREEN_GRPH_SECONDARY_SURFACE_ADDRESS, align 8
  %56 = load i64*, i64** @crtc_offsets, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %55, %60
  %62 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %63 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = trunc i64 %65 to i32
  %67 = call i32 @WREG32(i64 %61, i32 %66)
  br label %68

68:                                               ; preds = %15
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %9

71:                                               ; preds = %9
  %72 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %73 = call i32 @ASIC_IS_NODCE(%struct.radeon_device* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %90, label %75

75:                                               ; preds = %71
  %76 = load i64, i64* @EVERGREEN_VGA_MEMORY_BASE_ADDRESS_HIGH, align 8
  %77 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %78 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @upper_32_bits(i64 %80)
  %82 = call i32 @WREG32(i64 %76, i32 %81)
  %83 = load i64, i64* @EVERGREEN_VGA_MEMORY_BASE_ADDRESS, align 8
  %84 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %85 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = trunc i64 %87 to i32
  %89 = call i32 @WREG32(i64 %83, i32 %88)
  br label %90

90:                                               ; preds = %75, %71
  store i32 0, i32* %7, align 4
  br label %91

91:                                               ; preds = %209, %90
  %92 = load i32, i32* %7, align 4
  %93 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %94 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp slt i32 %92, %95
  br i1 %96, label %97, label %212

97:                                               ; preds = %91
  %98 = load %struct.evergreen_mc_save*, %struct.evergreen_mc_save** %4, align 8
  %99 = getelementptr inbounds %struct.evergreen_mc_save, %struct.evergreen_mc_save* %98, i32 0, i32 2
  %100 = load i64*, i64** %99, align 8
  %101 = load i32, i32* %7, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i64, i64* %100, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %208

106:                                              ; preds = %97
  %107 = load i64, i64* @EVERGREEN_MASTER_UPDATE_MODE, align 8
  %108 = load i64*, i64** @crtc_offsets, align 8
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i64, i64* %108, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = add nsw i64 %107, %112
  %114 = call i32 @RREG32(i64 %113)
  store i32 %114, i32* %5, align 4
  %115 = load i32, i32* %5, align 4
  %116 = and i32 %115, 7
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %130

118:                                              ; preds = %106
  %119 = load i32, i32* %5, align 4
  %120 = and i32 %119, -8
  store i32 %120, i32* %5, align 4
  %121 = load i64, i64* @EVERGREEN_MASTER_UPDATE_MODE, align 8
  %122 = load i64*, i64** @crtc_offsets, align 8
  %123 = load i32, i32* %7, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i64, i64* %122, i64 %124
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %121, %126
  %128 = load i32, i32* %5, align 4
  %129 = call i32 @WREG32(i64 %127, i32 %128)
  br label %130

130:                                              ; preds = %118, %106
  %131 = load i64, i64* @EVERGREEN_GRPH_UPDATE, align 8
  %132 = load i64*, i64** @crtc_offsets, align 8
  %133 = load i32, i32* %7, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i64, i64* %132, i64 %134
  %136 = load i64, i64* %135, align 8
  %137 = add nsw i64 %131, %136
  %138 = call i32 @RREG32(i64 %137)
  store i32 %138, i32* %5, align 4
  %139 = load i32, i32* %5, align 4
  %140 = load i32, i32* @EVERGREEN_GRPH_UPDATE_LOCK, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %157

143:                                              ; preds = %130
  %144 = load i32, i32* @EVERGREEN_GRPH_UPDATE_LOCK, align 4
  %145 = xor i32 %144, -1
  %146 = load i32, i32* %5, align 4
  %147 = and i32 %146, %145
  store i32 %147, i32* %5, align 4
  %148 = load i64, i64* @EVERGREEN_GRPH_UPDATE, align 8
  %149 = load i64*, i64** @crtc_offsets, align 8
  %150 = load i32, i32* %7, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i64, i64* %149, i64 %151
  %153 = load i64, i64* %152, align 8
  %154 = add nsw i64 %148, %153
  %155 = load i32, i32* %5, align 4
  %156 = call i32 @WREG32(i64 %154, i32 %155)
  br label %157

157:                                              ; preds = %143, %130
  %158 = load i64, i64* @EVERGREEN_MASTER_UPDATE_LOCK, align 8
  %159 = load i64*, i64** @crtc_offsets, align 8
  %160 = load i32, i32* %7, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i64, i64* %159, i64 %161
  %163 = load i64, i64* %162, align 8
  %164 = add nsw i64 %158, %163
  %165 = call i32 @RREG32(i64 %164)
  store i32 %165, i32* %5, align 4
  %166 = load i32, i32* %5, align 4
  %167 = and i32 %166, 1
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %181

169:                                              ; preds = %157
  %170 = load i32, i32* %5, align 4
  %171 = and i32 %170, -2
  store i32 %171, i32* %5, align 4
  %172 = load i64, i64* @EVERGREEN_MASTER_UPDATE_LOCK, align 8
  %173 = load i64*, i64** @crtc_offsets, align 8
  %174 = load i32, i32* %7, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i64, i64* %173, i64 %175
  %177 = load i64, i64* %176, align 8
  %178 = add nsw i64 %172, %177
  %179 = load i32, i32* %5, align 4
  %180 = call i32 @WREG32(i64 %178, i32 %179)
  br label %181

181:                                              ; preds = %169, %157
  store i32 0, i32* %8, align 4
  br label %182

182:                                              ; preds = %204, %181
  %183 = load i32, i32* %8, align 4
  %184 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %185 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = icmp slt i32 %183, %186
  br i1 %187, label %188, label %207

188:                                              ; preds = %182
  %189 = load i64, i64* @EVERGREEN_GRPH_UPDATE, align 8
  %190 = load i64*, i64** @crtc_offsets, align 8
  %191 = load i32, i32* %7, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i64, i64* %190, i64 %192
  %194 = load i64, i64* %193, align 8
  %195 = add nsw i64 %189, %194
  %196 = call i32 @RREG32(i64 %195)
  store i32 %196, i32* %5, align 4
  %197 = load i32, i32* %5, align 4
  %198 = load i32, i32* @EVERGREEN_GRPH_SURFACE_UPDATE_PENDING, align 4
  %199 = and i32 %197, %198
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %188
  br label %207

202:                                              ; preds = %188
  %203 = call i32 @udelay(i32 1)
  br label %204

204:                                              ; preds = %202
  %205 = load i32, i32* %8, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %8, align 4
  br label %182

207:                                              ; preds = %201, %182
  br label %208

208:                                              ; preds = %207, %97
  br label %209

209:                                              ; preds = %208
  %210 = load i32, i32* %7, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %7, align 4
  br label %91

212:                                              ; preds = %91
  %213 = load i64, i64* @MC_SHARED_BLACKOUT_CNTL, align 8
  %214 = call i32 @RREG32(i64 %213)
  store i32 %214, i32* %5, align 4
  %215 = load i32, i32* @BLACKOUT_MODE_MASK, align 4
  %216 = xor i32 %215, -1
  %217 = load i32, i32* %5, align 4
  %218 = and i32 %217, %216
  store i32 %218, i32* %5, align 4
  %219 = load i64, i64* @MC_SHARED_BLACKOUT_CNTL, align 8
  %220 = load i32, i32* %5, align 4
  %221 = call i32 @WREG32(i64 %219, i32 %220)
  %222 = load i64, i64* @BIF_FB_EN, align 8
  %223 = load i32, i32* @FB_READ_EN, align 4
  %224 = load i32, i32* @FB_WRITE_EN, align 4
  %225 = or i32 %223, %224
  %226 = call i32 @WREG32(i64 %222, i32 %225)
  store i32 0, i32* %7, align 4
  br label %227

227:                                              ; preds = %346, %212
  %228 = load i32, i32* %7, align 4
  %229 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %230 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = icmp slt i32 %228, %231
  br i1 %232, label %233, label %349

233:                                              ; preds = %227
  %234 = load %struct.evergreen_mc_save*, %struct.evergreen_mc_save** %4, align 8
  %235 = getelementptr inbounds %struct.evergreen_mc_save, %struct.evergreen_mc_save* %234, i32 0, i32 2
  %236 = load i64*, i64** %235, align 8
  %237 = load i32, i32* %7, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i64, i64* %236, i64 %238
  %240 = load i64, i64* %239, align 8
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %345

242:                                              ; preds = %233
  %243 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %244 = call i64 @ASIC_IS_DCE6(%struct.radeon_device* %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %284

246:                                              ; preds = %242
  %247 = load i64, i64* @EVERGREEN_CRTC_BLANK_CONTROL, align 8
  %248 = load i64*, i64** @crtc_offsets, align 8
  %249 = load i32, i32* %7, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i64, i64* %248, i64 %250
  %252 = load i64, i64* %251, align 8
  %253 = add nsw i64 %247, %252
  %254 = call i32 @RREG32(i64 %253)
  store i32 %254, i32* %5, align 4
  %255 = load i32, i32* @EVERGREEN_CRTC_BLANK_DATA_EN, align 4
  %256 = xor i32 %255, -1
  %257 = load i32, i32* %5, align 4
  %258 = and i32 %257, %256
  store i32 %258, i32* %5, align 4
  %259 = load i64, i64* @EVERGREEN_CRTC_UPDATE_LOCK, align 8
  %260 = load i64*, i64** @crtc_offsets, align 8
  %261 = load i32, i32* %7, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i64, i64* %260, i64 %262
  %264 = load i64, i64* %263, align 8
  %265 = add nsw i64 %259, %264
  %266 = call i32 @WREG32(i64 %265, i32 1)
  %267 = load i64, i64* @EVERGREEN_CRTC_BLANK_CONTROL, align 8
  %268 = load i64*, i64** @crtc_offsets, align 8
  %269 = load i32, i32* %7, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i64, i64* %268, i64 %270
  %272 = load i64, i64* %271, align 8
  %273 = add nsw i64 %267, %272
  %274 = load i32, i32* %5, align 4
  %275 = call i32 @WREG32(i64 %273, i32 %274)
  %276 = load i64, i64* @EVERGREEN_CRTC_UPDATE_LOCK, align 8
  %277 = load i64*, i64** @crtc_offsets, align 8
  %278 = load i32, i32* %7, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i64, i64* %277, i64 %279
  %281 = load i64, i64* %280, align 8
  %282 = add nsw i64 %276, %281
  %283 = call i32 @WREG32(i64 %282, i32 0)
  br label %322

284:                                              ; preds = %242
  %285 = load i64, i64* @EVERGREEN_CRTC_CONTROL, align 8
  %286 = load i64*, i64** @crtc_offsets, align 8
  %287 = load i32, i32* %7, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i64, i64* %286, i64 %288
  %290 = load i64, i64* %289, align 8
  %291 = add nsw i64 %285, %290
  %292 = call i32 @RREG32(i64 %291)
  store i32 %292, i32* %5, align 4
  %293 = load i32, i32* @EVERGREEN_CRTC_DISP_READ_REQUEST_DISABLE, align 4
  %294 = xor i32 %293, -1
  %295 = load i32, i32* %5, align 4
  %296 = and i32 %295, %294
  store i32 %296, i32* %5, align 4
  %297 = load i64, i64* @EVERGREEN_CRTC_UPDATE_LOCK, align 8
  %298 = load i64*, i64** @crtc_offsets, align 8
  %299 = load i32, i32* %7, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i64, i64* %298, i64 %300
  %302 = load i64, i64* %301, align 8
  %303 = add nsw i64 %297, %302
  %304 = call i32 @WREG32(i64 %303, i32 1)
  %305 = load i64, i64* @EVERGREEN_CRTC_CONTROL, align 8
  %306 = load i64*, i64** @crtc_offsets, align 8
  %307 = load i32, i32* %7, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i64, i64* %306, i64 %308
  %310 = load i64, i64* %309, align 8
  %311 = add nsw i64 %305, %310
  %312 = load i32, i32* %5, align 4
  %313 = call i32 @WREG32(i64 %311, i32 %312)
  %314 = load i64, i64* @EVERGREEN_CRTC_UPDATE_LOCK, align 8
  %315 = load i64*, i64** @crtc_offsets, align 8
  %316 = load i32, i32* %7, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i64, i64* %315, i64 %317
  %319 = load i64, i64* %318, align 8
  %320 = add nsw i64 %314, %319
  %321 = call i32 @WREG32(i64 %320, i32 0)
  br label %322

322:                                              ; preds = %284, %246
  %323 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %324 = load i32, i32* %7, align 4
  %325 = call i32 @radeon_get_vblank_counter(%struct.radeon_device* %323, i32 %324)
  store i32 %325, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %326

326:                                              ; preds = %341, %322
  %327 = load i32, i32* %8, align 4
  %328 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %329 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %328, i32 0, i32 1
  %330 = load i32, i32* %329, align 4
  %331 = icmp slt i32 %327, %330
  br i1 %331, label %332, label %344

332:                                              ; preds = %326
  %333 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %334 = load i32, i32* %7, align 4
  %335 = call i32 @radeon_get_vblank_counter(%struct.radeon_device* %333, i32 %334)
  %336 = load i32, i32* %6, align 4
  %337 = icmp ne i32 %335, %336
  br i1 %337, label %338, label %339

338:                                              ; preds = %332
  br label %344

339:                                              ; preds = %332
  %340 = call i32 @udelay(i32 1)
  br label %341

341:                                              ; preds = %339
  %342 = load i32, i32* %8, align 4
  %343 = add nsw i32 %342, 1
  store i32 %343, i32* %8, align 4
  br label %326

344:                                              ; preds = %338, %326
  br label %345

345:                                              ; preds = %344, %233
  br label %346

346:                                              ; preds = %345
  %347 = load i32, i32* %7, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %7, align 4
  br label %227

349:                                              ; preds = %227
  %350 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %351 = call i32 @ASIC_IS_NODCE(%struct.radeon_device* %350)
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %365, label %353

353:                                              ; preds = %349
  %354 = load i64, i64* @VGA_HDP_CONTROL, align 8
  %355 = load %struct.evergreen_mc_save*, %struct.evergreen_mc_save** %4, align 8
  %356 = getelementptr inbounds %struct.evergreen_mc_save, %struct.evergreen_mc_save* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 8
  %358 = call i32 @WREG32(i64 %354, i32 %357)
  %359 = call i32 @mdelay(i32 1)
  %360 = load i64, i64* @VGA_RENDER_CONTROL, align 8
  %361 = load %struct.evergreen_mc_save*, %struct.evergreen_mc_save** %4, align 8
  %362 = getelementptr inbounds %struct.evergreen_mc_save, %struct.evergreen_mc_save* %361, i32 0, i32 1
  %363 = load i32, i32* %362, align 4
  %364 = call i32 @WREG32(i64 %360, i32 %363)
  br label %365

365:                                              ; preds = %353, %349
  ret void
}

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i32 @ASIC_IS_NODCE(%struct.radeon_device*) #1

declare dso_local i32 @RREG32(i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @ASIC_IS_DCE6(%struct.radeon_device*) #1

declare dso_local i32 @radeon_get_vblank_counter(%struct.radeon_device*, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

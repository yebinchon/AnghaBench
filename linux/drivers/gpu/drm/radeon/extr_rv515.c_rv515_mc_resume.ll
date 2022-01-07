; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv515.c_rv515_mc_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv515.c_rv515_mc_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.rv515_mc_save = type { i32, i32, i64* }

@CHIP_RV770 = common dso_local global i64 0, align 8
@R700_D1GRPH_PRIMARY_SURFACE_ADDRESS_HIGH = common dso_local global i64 0, align 8
@R700_D1GRPH_SECONDARY_SURFACE_ADDRESS_HIGH = common dso_local global i64 0, align 8
@R700_D2GRPH_PRIMARY_SURFACE_ADDRESS_HIGH = common dso_local global i64 0, align 8
@R700_D2GRPH_SECONDARY_SURFACE_ADDRESS_HIGH = common dso_local global i64 0, align 8
@R_006110_D1GRPH_PRIMARY_SURFACE_ADDRESS = common dso_local global i64 0, align 8
@crtc_offsets = common dso_local global i64* null, align 8
@R_006118_D1GRPH_SECONDARY_SURFACE_ADDRESS = common dso_local global i64 0, align 8
@R_000310_VGA_MEMORY_BASE_ADDRESS = common dso_local global i64 0, align 8
@AVIVO_D1MODE_MASTER_UPDATE_MODE = common dso_local global i64 0, align 8
@AVIVO_D1GRPH_UPDATE = common dso_local global i64 0, align 8
@AVIVO_D1GRPH_UPDATE_LOCK = common dso_local global i32 0, align 4
@AVIVO_D1MODE_MASTER_UPDATE_LOCK = common dso_local global i64 0, align 8
@AVIVO_D1GRPH_SURFACE_UPDATE_PENDING = common dso_local global i32 0, align 4
@CHIP_R600 = common dso_local global i64 0, align 8
@R700_MC_CITF_CNTL = common dso_local global i64 0, align 8
@R600_CITF_CNTL = common dso_local global i64 0, align 8
@R600_BLACKOUT_MASK = common dso_local global i32 0, align 4
@R600_BIF_FB_EN = common dso_local global i64 0, align 8
@R600_FB_READ_EN = common dso_local global i32 0, align 4
@R600_FB_WRITE_EN = common dso_local global i32 0, align 4
@AVIVO_D1CRTC_CONTROL = common dso_local global i64 0, align 8
@AVIVO_CRTC_DISP_READ_REQUEST_DISABLE = common dso_local global i32 0, align 4
@R_000328_VGA_HDP_CONTROL = common dso_local global i64 0, align 8
@R_000300_VGA_RENDER_CONTROL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rv515_mc_resume(%struct.radeon_device* %0, %struct.rv515_mc_save* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.rv515_mc_save*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.rv515_mc_save* %1, %struct.rv515_mc_save** %4, align 8
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %82, %2
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %12 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %85

15:                                               ; preds = %9
  %16 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %17 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @CHIP_RV770, align 8
  %20 = icmp sge i64 %18, %19
  br i1 %20, label %21, label %55

21:                                               ; preds = %15
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %21
  %25 = load i64, i64* @R700_D1GRPH_PRIMARY_SURFACE_ADDRESS_HIGH, align 8
  %26 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %27 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @upper_32_bits(i64 %29)
  %31 = call i32 @WREG32(i64 %25, i32 %30)
  %32 = load i64, i64* @R700_D1GRPH_SECONDARY_SURFACE_ADDRESS_HIGH, align 8
  %33 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %34 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @upper_32_bits(i64 %36)
  %38 = call i32 @WREG32(i64 %32, i32 %37)
  br label %54

39:                                               ; preds = %21
  %40 = load i64, i64* @R700_D2GRPH_PRIMARY_SURFACE_ADDRESS_HIGH, align 8
  %41 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %42 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @upper_32_bits(i64 %44)
  %46 = call i32 @WREG32(i64 %40, i32 %45)
  %47 = load i64, i64* @R700_D2GRPH_SECONDARY_SURFACE_ADDRESS_HIGH, align 8
  %48 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %49 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @upper_32_bits(i64 %51)
  %53 = call i32 @WREG32(i64 %47, i32 %52)
  br label %54

54:                                               ; preds = %39, %24
  br label %55

55:                                               ; preds = %54, %15
  %56 = load i64, i64* @R_006110_D1GRPH_PRIMARY_SURFACE_ADDRESS, align 8
  %57 = load i64*, i64** @crtc_offsets, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %56, %61
  %63 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %64 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = trunc i64 %66 to i32
  %68 = call i32 @WREG32(i64 %62, i32 %67)
  %69 = load i64, i64* @R_006118_D1GRPH_SECONDARY_SURFACE_ADDRESS, align 8
  %70 = load i64*, i64** @crtc_offsets, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %69, %74
  %76 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %77 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = trunc i64 %79 to i32
  %81 = call i32 @WREG32(i64 %75, i32 %80)
  br label %82

82:                                               ; preds = %55
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %7, align 4
  br label %9

85:                                               ; preds = %9
  %86 = load i64, i64* @R_000310_VGA_MEMORY_BASE_ADDRESS, align 8
  %87 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %88 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = trunc i64 %90 to i32
  %92 = call i32 @WREG32(i64 %86, i32 %91)
  store i32 0, i32* %7, align 4
  br label %93

93:                                               ; preds = %213, %85
  %94 = load i32, i32* %7, align 4
  %95 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %96 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp slt i32 %94, %97
  br i1 %98, label %99, label %216

99:                                               ; preds = %93
  %100 = load %struct.rv515_mc_save*, %struct.rv515_mc_save** %4, align 8
  %101 = getelementptr inbounds %struct.rv515_mc_save, %struct.rv515_mc_save* %100, i32 0, i32 2
  %102 = load i64*, i64** %101, align 8
  %103 = load i32, i32* %7, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i64, i64* %102, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %212

108:                                              ; preds = %99
  %109 = load i64, i64* @AVIVO_D1MODE_MASTER_UPDATE_MODE, align 8
  %110 = load i64*, i64** @crtc_offsets, align 8
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i64, i64* %110, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %109, %114
  %116 = call i32 @RREG32(i64 %115)
  store i32 %116, i32* %5, align 4
  %117 = load i32, i32* %5, align 4
  %118 = and i32 %117, 7
  %119 = icmp ne i32 %118, 3
  br i1 %119, label %120, label %134

120:                                              ; preds = %108
  %121 = load i32, i32* %5, align 4
  %122 = and i32 %121, -8
  store i32 %122, i32* %5, align 4
  %123 = load i32, i32* %5, align 4
  %124 = or i32 %123, 3
  store i32 %124, i32* %5, align 4
  %125 = load i64, i64* @AVIVO_D1MODE_MASTER_UPDATE_MODE, align 8
  %126 = load i64*, i64** @crtc_offsets, align 8
  %127 = load i32, i32* %7, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i64, i64* %126, i64 %128
  %130 = load i64, i64* %129, align 8
  %131 = add nsw i64 %125, %130
  %132 = load i32, i32* %5, align 4
  %133 = call i32 @WREG32(i64 %131, i32 %132)
  br label %134

134:                                              ; preds = %120, %108
  %135 = load i64, i64* @AVIVO_D1GRPH_UPDATE, align 8
  %136 = load i64*, i64** @crtc_offsets, align 8
  %137 = load i32, i32* %7, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i64, i64* %136, i64 %138
  %140 = load i64, i64* %139, align 8
  %141 = add nsw i64 %135, %140
  %142 = call i32 @RREG32(i64 %141)
  store i32 %142, i32* %5, align 4
  %143 = load i32, i32* %5, align 4
  %144 = load i32, i32* @AVIVO_D1GRPH_UPDATE_LOCK, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %161

147:                                              ; preds = %134
  %148 = load i32, i32* @AVIVO_D1GRPH_UPDATE_LOCK, align 4
  %149 = xor i32 %148, -1
  %150 = load i32, i32* %5, align 4
  %151 = and i32 %150, %149
  store i32 %151, i32* %5, align 4
  %152 = load i64, i64* @AVIVO_D1GRPH_UPDATE, align 8
  %153 = load i64*, i64** @crtc_offsets, align 8
  %154 = load i32, i32* %7, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i64, i64* %153, i64 %155
  %157 = load i64, i64* %156, align 8
  %158 = add nsw i64 %152, %157
  %159 = load i32, i32* %5, align 4
  %160 = call i32 @WREG32(i64 %158, i32 %159)
  br label %161

161:                                              ; preds = %147, %134
  %162 = load i64, i64* @AVIVO_D1MODE_MASTER_UPDATE_LOCK, align 8
  %163 = load i64*, i64** @crtc_offsets, align 8
  %164 = load i32, i32* %7, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i64, i64* %163, i64 %165
  %167 = load i64, i64* %166, align 8
  %168 = add nsw i64 %162, %167
  %169 = call i32 @RREG32(i64 %168)
  store i32 %169, i32* %5, align 4
  %170 = load i32, i32* %5, align 4
  %171 = and i32 %170, 1
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %185

173:                                              ; preds = %161
  %174 = load i32, i32* %5, align 4
  %175 = and i32 %174, -2
  store i32 %175, i32* %5, align 4
  %176 = load i64, i64* @AVIVO_D1MODE_MASTER_UPDATE_LOCK, align 8
  %177 = load i64*, i64** @crtc_offsets, align 8
  %178 = load i32, i32* %7, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i64, i64* %177, i64 %179
  %181 = load i64, i64* %180, align 8
  %182 = add nsw i64 %176, %181
  %183 = load i32, i32* %5, align 4
  %184 = call i32 @WREG32(i64 %182, i32 %183)
  br label %185

185:                                              ; preds = %173, %161
  store i32 0, i32* %8, align 4
  br label %186

186:                                              ; preds = %208, %185
  %187 = load i32, i32* %8, align 4
  %188 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %189 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = icmp slt i32 %187, %190
  br i1 %191, label %192, label %211

192:                                              ; preds = %186
  %193 = load i64, i64* @AVIVO_D1GRPH_UPDATE, align 8
  %194 = load i64*, i64** @crtc_offsets, align 8
  %195 = load i32, i32* %7, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i64, i64* %194, i64 %196
  %198 = load i64, i64* %197, align 8
  %199 = add nsw i64 %193, %198
  %200 = call i32 @RREG32(i64 %199)
  store i32 %200, i32* %5, align 4
  %201 = load i32, i32* %5, align 4
  %202 = load i32, i32* @AVIVO_D1GRPH_SURFACE_UPDATE_PENDING, align 4
  %203 = and i32 %201, %202
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %192
  br label %211

206:                                              ; preds = %192
  %207 = call i32 @udelay(i32 1)
  br label %208

208:                                              ; preds = %206
  %209 = load i32, i32* %8, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %8, align 4
  br label %186

211:                                              ; preds = %205, %186
  br label %212

212:                                              ; preds = %211, %99
  br label %213

213:                                              ; preds = %212
  %214 = load i32, i32* %7, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %7, align 4
  br label %93

216:                                              ; preds = %93
  %217 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %218 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %217, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* @CHIP_R600, align 8
  %221 = icmp sge i64 %219, %220
  br i1 %221, label %222, label %258

222:                                              ; preds = %216
  %223 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %224 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* @CHIP_RV770, align 8
  %227 = icmp sge i64 %225, %226
  br i1 %227, label %228, label %231

228:                                              ; preds = %222
  %229 = load i64, i64* @R700_MC_CITF_CNTL, align 8
  %230 = call i32 @RREG32(i64 %229)
  store i32 %230, i32* %5, align 4
  br label %234

231:                                              ; preds = %222
  %232 = load i64, i64* @R600_CITF_CNTL, align 8
  %233 = call i32 @RREG32(i64 %232)
  store i32 %233, i32* %5, align 4
  br label %234

234:                                              ; preds = %231, %228
  %235 = load i32, i32* @R600_BLACKOUT_MASK, align 4
  %236 = xor i32 %235, -1
  %237 = load i32, i32* %5, align 4
  %238 = and i32 %237, %236
  store i32 %238, i32* %5, align 4
  %239 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %240 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %239, i32 0, i32 1
  %241 = load i64, i64* %240, align 8
  %242 = load i64, i64* @CHIP_RV770, align 8
  %243 = icmp sge i64 %241, %242
  br i1 %243, label %244, label %248

244:                                              ; preds = %234
  %245 = load i64, i64* @R700_MC_CITF_CNTL, align 8
  %246 = load i32, i32* %5, align 4
  %247 = call i32 @WREG32(i64 %245, i32 %246)
  br label %252

248:                                              ; preds = %234
  %249 = load i64, i64* @R600_CITF_CNTL, align 8
  %250 = load i32, i32* %5, align 4
  %251 = call i32 @WREG32(i64 %249, i32 %250)
  br label %252

252:                                              ; preds = %248, %244
  %253 = load i64, i64* @R600_BIF_FB_EN, align 8
  %254 = load i32, i32* @R600_FB_READ_EN, align 4
  %255 = load i32, i32* @R600_FB_WRITE_EN, align 4
  %256 = or i32 %254, %255
  %257 = call i32 @WREG32(i64 %253, i32 %256)
  br label %258

258:                                              ; preds = %252, %216
  store i32 0, i32* %7, align 4
  br label %259

259:                                              ; preds = %319, %258
  %260 = load i32, i32* %7, align 4
  %261 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %262 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = icmp slt i32 %260, %263
  br i1 %264, label %265, label %322

265:                                              ; preds = %259
  %266 = load %struct.rv515_mc_save*, %struct.rv515_mc_save** %4, align 8
  %267 = getelementptr inbounds %struct.rv515_mc_save, %struct.rv515_mc_save* %266, i32 0, i32 2
  %268 = load i64*, i64** %267, align 8
  %269 = load i32, i32* %7, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i64, i64* %268, i64 %270
  %272 = load i64, i64* %271, align 8
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %318

274:                                              ; preds = %265
  %275 = load i64, i64* @AVIVO_D1CRTC_CONTROL, align 8
  %276 = load i64*, i64** @crtc_offsets, align 8
  %277 = load i32, i32* %7, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i64, i64* %276, i64 %278
  %280 = load i64, i64* %279, align 8
  %281 = add nsw i64 %275, %280
  %282 = call i32 @RREG32(i64 %281)
  store i32 %282, i32* %5, align 4
  %283 = load i32, i32* @AVIVO_CRTC_DISP_READ_REQUEST_DISABLE, align 4
  %284 = xor i32 %283, -1
  %285 = load i32, i32* %5, align 4
  %286 = and i32 %285, %284
  store i32 %286, i32* %5, align 4
  %287 = load i64, i64* @AVIVO_D1CRTC_CONTROL, align 8
  %288 = load i64*, i64** @crtc_offsets, align 8
  %289 = load i32, i32* %7, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i64, i64* %288, i64 %290
  %292 = load i64, i64* %291, align 8
  %293 = add nsw i64 %287, %292
  %294 = load i32, i32* %5, align 4
  %295 = call i32 @WREG32(i64 %293, i32 %294)
  %296 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %297 = load i32, i32* %7, align 4
  %298 = call i32 @radeon_get_vblank_counter(%struct.radeon_device* %296, i32 %297)
  store i32 %298, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %299

299:                                              ; preds = %314, %274
  %300 = load i32, i32* %8, align 4
  %301 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %302 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %301, i32 0, i32 2
  %303 = load i32, i32* %302, align 8
  %304 = icmp slt i32 %300, %303
  br i1 %304, label %305, label %317

305:                                              ; preds = %299
  %306 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %307 = load i32, i32* %7, align 4
  %308 = call i32 @radeon_get_vblank_counter(%struct.radeon_device* %306, i32 %307)
  %309 = load i32, i32* %6, align 4
  %310 = icmp ne i32 %308, %309
  br i1 %310, label %311, label %312

311:                                              ; preds = %305
  br label %317

312:                                              ; preds = %305
  %313 = call i32 @udelay(i32 1)
  br label %314

314:                                              ; preds = %312
  %315 = load i32, i32* %8, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %8, align 4
  br label %299

317:                                              ; preds = %311, %299
  br label %318

318:                                              ; preds = %317, %265
  br label %319

319:                                              ; preds = %318
  %320 = load i32, i32* %7, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %7, align 4
  br label %259

322:                                              ; preds = %259
  %323 = load i64, i64* @R_000328_VGA_HDP_CONTROL, align 8
  %324 = load %struct.rv515_mc_save*, %struct.rv515_mc_save** %4, align 8
  %325 = getelementptr inbounds %struct.rv515_mc_save, %struct.rv515_mc_save* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 8
  %327 = call i32 @WREG32(i64 %323, i32 %326)
  %328 = call i32 @mdelay(i32 1)
  %329 = load i64, i64* @R_000300_VGA_RENDER_CONTROL, align 8
  %330 = load %struct.rv515_mc_save*, %struct.rv515_mc_save** %4, align 8
  %331 = getelementptr inbounds %struct.rv515_mc_save, %struct.rv515_mc_save* %330, i32 0, i32 1
  %332 = load i32, i32* %331, align 4
  %333 = call i32 @WREG32(i64 %329, i32 %332)
  ret void
}

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i32 @RREG32(i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @radeon_get_vblank_counter(%struct.radeon_device*, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_display.c_radeon_get_crtc_scanoutpos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_display.c_radeon_get_crtc_scanoutpos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i64 }
%struct.drm_display_mode = type { i32, i32 }

@EVERGREEN_CRTC_V_BLANK_START_END = common dso_local global i64 0, align 8
@EVERGREEN_CRTC0_REGISTER_OFFSET = common dso_local global i64 0, align 8
@EVERGREEN_CRTC_STATUS_POSITION = common dso_local global i64 0, align 8
@DRM_SCANOUTPOS_VALID = common dso_local global i32 0, align 4
@EVERGREEN_CRTC1_REGISTER_OFFSET = common dso_local global i64 0, align 8
@EVERGREEN_CRTC2_REGISTER_OFFSET = common dso_local global i64 0, align 8
@EVERGREEN_CRTC3_REGISTER_OFFSET = common dso_local global i64 0, align 8
@EVERGREEN_CRTC4_REGISTER_OFFSET = common dso_local global i64 0, align 8
@EVERGREEN_CRTC5_REGISTER_OFFSET = common dso_local global i64 0, align 8
@AVIVO_D1CRTC_V_BLANK_START_END = common dso_local global i64 0, align 8
@AVIVO_D1CRTC_STATUS_POSITION = common dso_local global i64 0, align 8
@AVIVO_D2CRTC_V_BLANK_START_END = common dso_local global i64 0, align 8
@AVIVO_D2CRTC_STATUS_POSITION = common dso_local global i64 0, align 8
@RADEON_CRTC_V_TOTAL_DISP = common dso_local global i64 0, align 8
@RADEON_CRTC_V_DISP = common dso_local global i32 0, align 4
@RADEON_CRTC_V_DISP_SHIFT = common dso_local global i32 0, align 4
@RADEON_CRTC_VLINE_CRNT_VLINE = common dso_local global i64 0, align 8
@RADEON_CRTC_V_TOTAL = common dso_local global i32 0, align 4
@RADEON_CRTC_STATUS = common dso_local global i64 0, align 8
@RADEON_CRTC2_V_TOTAL_DISP = common dso_local global i64 0, align 8
@RADEON_CRTC2_VLINE_CRNT_VLINE = common dso_local global i64 0, align 8
@RADEON_CRTC2_STATUS = common dso_local global i64 0, align 8
@DRM_SCANOUTPOS_ACCURATE = common dso_local global i32 0, align 4
@GET_DISTANCE_TO_VBLANKSTART = common dso_local global i32 0, align 4
@USE_REAL_VBLANKSTART = common dso_local global i32 0, align 4
@DRM_SCANOUTPOS_IN_VBLANK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_get_crtc_scanoutpos(%struct.drm_device* %0, i32 %1, i32 %2, i32* %3, i32* %4, i32* %5, i32* %6, %struct.drm_display_mode* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.drm_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.drm_display_mode*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.radeon_device*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store %struct.drm_display_mode* %7, %struct.drm_display_mode** %17, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %24, align 4
  store i32 1, i32* %25, align 4
  %27 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %28 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %27, i32 0, i32 0
  %29 = load %struct.radeon_device*, %struct.radeon_device** %28, align 8
  store %struct.radeon_device* %29, %struct.radeon_device** %26, align 8
  %30 = load i32*, i32** %15, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %8
  %33 = call i32 (...) @ktime_get()
  %34 = load i32*, i32** %15, align 8
  store i32 %33, i32* %34, align 4
  br label %35

35:                                               ; preds = %32, %8
  %36 = load %struct.radeon_device*, %struct.radeon_device** %26, align 8
  %37 = call i64 @ASIC_IS_DCE4(%struct.radeon_device* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %130

39:                                               ; preds = %35
  %40 = load i32, i32* %11, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %39
  %43 = load i64, i64* @EVERGREEN_CRTC_V_BLANK_START_END, align 8
  %44 = load i64, i64* @EVERGREEN_CRTC0_REGISTER_OFFSET, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @RREG32(i64 %45)
  store i32 %46, i32* %19, align 4
  %47 = load i64, i64* @EVERGREEN_CRTC_STATUS_POSITION, align 8
  %48 = load i64, i64* @EVERGREEN_CRTC0_REGISTER_OFFSET, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @RREG32(i64 %49)
  store i32 %50, i32* %20, align 4
  %51 = load i32, i32* @DRM_SCANOUTPOS_VALID, align 4
  %52 = load i32, i32* %24, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %24, align 4
  br label %54

54:                                               ; preds = %42, %39
  %55 = load i32, i32* %11, align 4
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %69

57:                                               ; preds = %54
  %58 = load i64, i64* @EVERGREEN_CRTC_V_BLANK_START_END, align 8
  %59 = load i64, i64* @EVERGREEN_CRTC1_REGISTER_OFFSET, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @RREG32(i64 %60)
  store i32 %61, i32* %19, align 4
  %62 = load i64, i64* @EVERGREEN_CRTC_STATUS_POSITION, align 8
  %63 = load i64, i64* @EVERGREEN_CRTC1_REGISTER_OFFSET, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @RREG32(i64 %64)
  store i32 %65, i32* %20, align 4
  %66 = load i32, i32* @DRM_SCANOUTPOS_VALID, align 4
  %67 = load i32, i32* %24, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %24, align 4
  br label %69

69:                                               ; preds = %57, %54
  %70 = load i32, i32* %11, align 4
  %71 = icmp eq i32 %70, 2
  br i1 %71, label %72, label %84

72:                                               ; preds = %69
  %73 = load i64, i64* @EVERGREEN_CRTC_V_BLANK_START_END, align 8
  %74 = load i64, i64* @EVERGREEN_CRTC2_REGISTER_OFFSET, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @RREG32(i64 %75)
  store i32 %76, i32* %19, align 4
  %77 = load i64, i64* @EVERGREEN_CRTC_STATUS_POSITION, align 8
  %78 = load i64, i64* @EVERGREEN_CRTC2_REGISTER_OFFSET, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @RREG32(i64 %79)
  store i32 %80, i32* %20, align 4
  %81 = load i32, i32* @DRM_SCANOUTPOS_VALID, align 4
  %82 = load i32, i32* %24, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %24, align 4
  br label %84

84:                                               ; preds = %72, %69
  %85 = load i32, i32* %11, align 4
  %86 = icmp eq i32 %85, 3
  br i1 %86, label %87, label %99

87:                                               ; preds = %84
  %88 = load i64, i64* @EVERGREEN_CRTC_V_BLANK_START_END, align 8
  %89 = load i64, i64* @EVERGREEN_CRTC3_REGISTER_OFFSET, align 8
  %90 = add nsw i64 %88, %89
  %91 = call i32 @RREG32(i64 %90)
  store i32 %91, i32* %19, align 4
  %92 = load i64, i64* @EVERGREEN_CRTC_STATUS_POSITION, align 8
  %93 = load i64, i64* @EVERGREEN_CRTC3_REGISTER_OFFSET, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i32 @RREG32(i64 %94)
  store i32 %95, i32* %20, align 4
  %96 = load i32, i32* @DRM_SCANOUTPOS_VALID, align 4
  %97 = load i32, i32* %24, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %24, align 4
  br label %99

99:                                               ; preds = %87, %84
  %100 = load i32, i32* %11, align 4
  %101 = icmp eq i32 %100, 4
  br i1 %101, label %102, label %114

102:                                              ; preds = %99
  %103 = load i64, i64* @EVERGREEN_CRTC_V_BLANK_START_END, align 8
  %104 = load i64, i64* @EVERGREEN_CRTC4_REGISTER_OFFSET, align 8
  %105 = add nsw i64 %103, %104
  %106 = call i32 @RREG32(i64 %105)
  store i32 %106, i32* %19, align 4
  %107 = load i64, i64* @EVERGREEN_CRTC_STATUS_POSITION, align 8
  %108 = load i64, i64* @EVERGREEN_CRTC4_REGISTER_OFFSET, align 8
  %109 = add nsw i64 %107, %108
  %110 = call i32 @RREG32(i64 %109)
  store i32 %110, i32* %20, align 4
  %111 = load i32, i32* @DRM_SCANOUTPOS_VALID, align 4
  %112 = load i32, i32* %24, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %24, align 4
  br label %114

114:                                              ; preds = %102, %99
  %115 = load i32, i32* %11, align 4
  %116 = icmp eq i32 %115, 5
  br i1 %116, label %117, label %129

117:                                              ; preds = %114
  %118 = load i64, i64* @EVERGREEN_CRTC_V_BLANK_START_END, align 8
  %119 = load i64, i64* @EVERGREEN_CRTC5_REGISTER_OFFSET, align 8
  %120 = add nsw i64 %118, %119
  %121 = call i32 @RREG32(i64 %120)
  store i32 %121, i32* %19, align 4
  %122 = load i64, i64* @EVERGREEN_CRTC_STATUS_POSITION, align 8
  %123 = load i64, i64* @EVERGREEN_CRTC5_REGISTER_OFFSET, align 8
  %124 = add nsw i64 %122, %123
  %125 = call i32 @RREG32(i64 %124)
  store i32 %125, i32* %20, align 4
  %126 = load i32, i32* @DRM_SCANOUTPOS_VALID, align 4
  %127 = load i32, i32* %24, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %24, align 4
  br label %129

129:                                              ; preds = %117, %114
  br label %209

130:                                              ; preds = %35
  %131 = load %struct.radeon_device*, %struct.radeon_device** %26, align 8
  %132 = call i64 @ASIC_IS_AVIVO(%struct.radeon_device* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %157

134:                                              ; preds = %130
  %135 = load i32, i32* %11, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %134
  %138 = load i64, i64* @AVIVO_D1CRTC_V_BLANK_START_END, align 8
  %139 = call i32 @RREG32(i64 %138)
  store i32 %139, i32* %19, align 4
  %140 = load i64, i64* @AVIVO_D1CRTC_STATUS_POSITION, align 8
  %141 = call i32 @RREG32(i64 %140)
  store i32 %141, i32* %20, align 4
  %142 = load i32, i32* @DRM_SCANOUTPOS_VALID, align 4
  %143 = load i32, i32* %24, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %24, align 4
  br label %145

145:                                              ; preds = %137, %134
  %146 = load i32, i32* %11, align 4
  %147 = icmp eq i32 %146, 1
  br i1 %147, label %148, label %156

148:                                              ; preds = %145
  %149 = load i64, i64* @AVIVO_D2CRTC_V_BLANK_START_END, align 8
  %150 = call i32 @RREG32(i64 %149)
  store i32 %150, i32* %19, align 4
  %151 = load i64, i64* @AVIVO_D2CRTC_STATUS_POSITION, align 8
  %152 = call i32 @RREG32(i64 %151)
  store i32 %152, i32* %20, align 4
  %153 = load i32, i32* @DRM_SCANOUTPOS_VALID, align 4
  %154 = load i32, i32* %24, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %24, align 4
  br label %156

156:                                              ; preds = %148, %145
  br label %208

157:                                              ; preds = %130
  %158 = load i32, i32* %11, align 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %182

160:                                              ; preds = %157
  %161 = load i64, i64* @RADEON_CRTC_V_TOTAL_DISP, align 8
  %162 = call i32 @RREG32(i64 %161)
  %163 = load i32, i32* @RADEON_CRTC_V_DISP, align 4
  %164 = and i32 %162, %163
  %165 = load i32, i32* @RADEON_CRTC_V_DISP_SHIFT, align 4
  %166 = ashr i32 %164, %165
  store i32 %166, i32* %19, align 4
  %167 = load i64, i64* @RADEON_CRTC_VLINE_CRNT_VLINE, align 8
  %168 = call i32 @RREG32(i64 %167)
  %169 = ashr i32 %168, 16
  %170 = load i32, i32* @RADEON_CRTC_V_TOTAL, align 4
  %171 = and i32 %169, %170
  store i32 %171, i32* %20, align 4
  %172 = load i64, i64* @RADEON_CRTC_STATUS, align 8
  %173 = call i32 @RREG32(i64 %172)
  store i32 %173, i32* %18, align 4
  %174 = load i32, i32* %18, align 4
  %175 = and i32 %174, 1
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %178, label %177

177:                                              ; preds = %160
  store i32 0, i32* %25, align 4
  br label %178

178:                                              ; preds = %177, %160
  %179 = load i32, i32* @DRM_SCANOUTPOS_VALID, align 4
  %180 = load i32, i32* %24, align 4
  %181 = or i32 %180, %179
  store i32 %181, i32* %24, align 4
  br label %182

182:                                              ; preds = %178, %157
  %183 = load i32, i32* %11, align 4
  %184 = icmp eq i32 %183, 1
  br i1 %184, label %185, label %207

185:                                              ; preds = %182
  %186 = load i64, i64* @RADEON_CRTC2_V_TOTAL_DISP, align 8
  %187 = call i32 @RREG32(i64 %186)
  %188 = load i32, i32* @RADEON_CRTC_V_DISP, align 4
  %189 = and i32 %187, %188
  %190 = load i32, i32* @RADEON_CRTC_V_DISP_SHIFT, align 4
  %191 = ashr i32 %189, %190
  store i32 %191, i32* %19, align 4
  %192 = load i64, i64* @RADEON_CRTC2_VLINE_CRNT_VLINE, align 8
  %193 = call i32 @RREG32(i64 %192)
  %194 = ashr i32 %193, 16
  %195 = load i32, i32* @RADEON_CRTC_V_TOTAL, align 4
  %196 = and i32 %194, %195
  store i32 %196, i32* %20, align 4
  %197 = load i64, i64* @RADEON_CRTC2_STATUS, align 8
  %198 = call i32 @RREG32(i64 %197)
  store i32 %198, i32* %18, align 4
  %199 = load i32, i32* %18, align 4
  %200 = and i32 %199, 1
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %203, label %202

202:                                              ; preds = %185
  store i32 0, i32* %25, align 4
  br label %203

203:                                              ; preds = %202, %185
  %204 = load i32, i32* @DRM_SCANOUTPOS_VALID, align 4
  %205 = load i32, i32* %24, align 4
  %206 = or i32 %205, %204
  store i32 %206, i32* %24, align 4
  br label %207

207:                                              ; preds = %203, %182
  br label %208

208:                                              ; preds = %207, %156
  br label %209

209:                                              ; preds = %208, %129
  %210 = load i32*, i32** %16, align 8
  %211 = icmp ne i32* %210, null
  br i1 %211, label %212, label %215

212:                                              ; preds = %209
  %213 = call i32 (...) @ktime_get()
  %214 = load i32*, i32** %16, align 8
  store i32 %213, i32* %214, align 4
  br label %215

215:                                              ; preds = %212, %209
  %216 = load i32, i32* %20, align 4
  %217 = and i32 %216, 8191
  %218 = load i32*, i32** %13, align 8
  store i32 %217, i32* %218, align 4
  %219 = load i32, i32* %20, align 4
  %220 = ashr i32 %219, 16
  %221 = and i32 %220, 8191
  %222 = load i32*, i32** %14, align 8
  store i32 %221, i32* %222, align 4
  %223 = load i32, i32* %19, align 4
  %224 = icmp sgt i32 %223, 0
  br i1 %224, label %225, label %234

225:                                              ; preds = %215
  %226 = load i32, i32* @DRM_SCANOUTPOS_ACCURATE, align 4
  %227 = load i32, i32* %24, align 4
  %228 = or i32 %227, %226
  store i32 %228, i32* %24, align 4
  %229 = load i32, i32* %19, align 4
  %230 = and i32 %229, 8191
  store i32 %230, i32* %21, align 4
  %231 = load i32, i32* %19, align 4
  %232 = ashr i32 %231, 16
  %233 = and i32 %232, 8191
  store i32 %233, i32* %22, align 4
  br label %238

234:                                              ; preds = %215
  %235 = load %struct.drm_display_mode*, %struct.drm_display_mode** %17, align 8
  %236 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  store i32 %237, i32* %21, align 4
  store i32 0, i32* %22, align 4
  br label %238

238:                                              ; preds = %234, %225
  %239 = load i32, i32* %12, align 4
  %240 = load i32, i32* @GET_DISTANCE_TO_VBLANKSTART, align 4
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %249

243:                                              ; preds = %238
  %244 = load i32*, i32** %13, align 8
  %245 = load i32, i32* %244, align 4
  %246 = load i32, i32* %21, align 4
  %247 = sub nsw i32 %245, %246
  %248 = load i32*, i32** %14, align 8
  store i32 %247, i32* %248, align 4
  br label %249

249:                                              ; preds = %243, %238
  %250 = load i32, i32* %12, align 4
  %251 = load i32, i32* @USE_REAL_VBLANKSTART, align 4
  %252 = and i32 %250, %251
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %269, label %254

254:                                              ; preds = %249
  %255 = load %struct.radeon_device*, %struct.radeon_device** %26, align 8
  %256 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %256, i32 0, i32 0
  %258 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %257, align 8
  %259 = load i32, i32* %11, align 4
  %260 = zext i32 %259 to i64
  %261 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %258, i64 %260
  %262 = load %struct.TYPE_3__*, %struct.TYPE_3__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = load i32, i32* %21, align 4
  %266 = sext i32 %265 to i64
  %267 = sub nsw i64 %266, %264
  %268 = trunc i64 %267 to i32
  store i32 %268, i32* %21, align 4
  br label %269

269:                                              ; preds = %254, %249
  %270 = load i32*, i32** %13, align 8
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* %21, align 4
  %273 = icmp slt i32 %271, %272
  br i1 %273, label %274, label %280

274:                                              ; preds = %269
  %275 = load i32*, i32** %13, align 8
  %276 = load i32, i32* %275, align 4
  %277 = load i32, i32* %22, align 4
  %278 = icmp sge i32 %276, %277
  br i1 %278, label %279, label %280

279:                                              ; preds = %274
  store i32 0, i32* %25, align 4
  br label %280

280:                                              ; preds = %279, %274, %269
  %281 = load i32, i32* %25, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %287

283:                                              ; preds = %280
  %284 = load i32, i32* @DRM_SCANOUTPOS_IN_VBLANK, align 4
  %285 = load i32, i32* %24, align 4
  %286 = or i32 %285, %284
  store i32 %286, i32* %24, align 4
  br label %287

287:                                              ; preds = %283, %280
  %288 = load i32, i32* %12, align 4
  %289 = load i32, i32* @GET_DISTANCE_TO_VBLANKSTART, align 4
  %290 = and i32 %288, %289
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %298

292:                                              ; preds = %287
  %293 = load i32, i32* %21, align 4
  %294 = load i32*, i32** %13, align 8
  %295 = load i32, i32* %294, align 4
  %296 = sub nsw i32 %295, %293
  store i32 %296, i32* %294, align 4
  %297 = load i32, i32* %24, align 4
  store i32 %297, i32* %9, align 4
  br label %322

298:                                              ; preds = %287
  %299 = load i32, i32* %25, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %315

301:                                              ; preds = %298
  %302 = load i32*, i32** %13, align 8
  %303 = load i32, i32* %302, align 4
  %304 = load i32, i32* %21, align 4
  %305 = icmp sge i32 %303, %304
  br i1 %305, label %306, label %315

306:                                              ; preds = %301
  %307 = load %struct.drm_display_mode*, %struct.drm_display_mode** %17, align 8
  %308 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 4
  store i32 %309, i32* %23, align 4
  %310 = load i32*, i32** %13, align 8
  %311 = load i32, i32* %310, align 4
  %312 = load i32, i32* %23, align 4
  %313 = sub nsw i32 %311, %312
  %314 = load i32*, i32** %13, align 8
  store i32 %313, i32* %314, align 4
  br label %315

315:                                              ; preds = %306, %301, %298
  %316 = load i32*, i32** %13, align 8
  %317 = load i32, i32* %316, align 4
  %318 = load i32, i32* %22, align 4
  %319 = sub nsw i32 %317, %318
  %320 = load i32*, i32** %13, align 8
  store i32 %319, i32* %320, align 4
  %321 = load i32, i32* %24, align 4
  store i32 %321, i32* %9, align 4
  br label %322

322:                                              ; preds = %315, %292
  %323 = load i32, i32* %9, align 4
  ret i32 %323
}

declare dso_local i32 @ktime_get(...) #1

declare dso_local i64 @ASIC_IS_DCE4(%struct.radeon_device*) #1

declare dso_local i32 @RREG32(i64) #1

declare dso_local i64 @ASIC_IS_AVIVO(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

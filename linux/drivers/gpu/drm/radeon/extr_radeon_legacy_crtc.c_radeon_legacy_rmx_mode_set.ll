; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_legacy_crtc.c_radeon_legacy_rmx_mode_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_legacy_crtc.c_radeon_legacy_rmx_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i64 }
%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.radeon_crtc = type { i32, %struct.drm_display_mode }

@RADEON_FP_VERT_STRETCH = common dso_local global i32 0, align 4
@RADEON_VERT_STRETCH_RESERVED = common dso_local global i32 0, align 4
@RADEON_VERT_AUTO_RATIO_INC = common dso_local global i32 0, align 4
@RADEON_FP_HORZ_STRETCH = common dso_local global i32 0, align 4
@RADEON_HORZ_FP_LOOP_STRETCH = common dso_local global i32 0, align 4
@RADEON_HORZ_AUTO_RATIO_INC = common dso_local global i32 0, align 4
@CHIP_RS100 = common dso_local global i64 0, align 8
@CHIP_RS200 = common dso_local global i64 0, align 8
@RADEON_CRTC_H_CUTOFF_ACTIVE_EN = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NHSYNC = common dso_local global i32 0, align 4
@RADEON_CRTC_H_SYNC_POL = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NVSYNC = common dso_local global i32 0, align 4
@RADEON_CRTC_V_SYNC_POL = common dso_local global i32 0, align 4
@RADEON_HORZ_STRETCH_RATIO_MAX = common dso_local global i32 0, align 4
@RADEON_HORZ_STRETCH_RATIO_MASK = common dso_local global i32 0, align 4
@RADEON_HORZ_STRETCH_BLEND = common dso_local global i32 0, align 4
@RADEON_HORZ_STRETCH_ENABLE = common dso_local global i32 0, align 4
@RADEON_VERT_STRETCH_RATIO_MAX = common dso_local global i32 0, align 4
@RADEON_VERT_STRETCH_RATIO_MASK = common dso_local global i32 0, align 4
@RADEON_VERT_STRETCH_ENABLE = common dso_local global i32 0, align 4
@RADEON_VERT_STRETCH_BLEND = common dso_local global i32 0, align 4
@RADEON_CRTC_AUTO_HORZ_CENTER_EN = common dso_local global i32 0, align 4
@RADEON_CRTC_AUTO_VERT_CENTER_EN = common dso_local global i32 0, align 4
@RADEON_CRTC_MORE_CNTL = common dso_local global i32 0, align 4
@RADEON_FP_HORZ_VERT_ACTIVE = common dso_local global i32 0, align 4
@RADEON_FP_H_SYNC_STRT_WID = common dso_local global i32 0, align 4
@RADEON_FP_V_SYNC_STRT_WID = common dso_local global i32 0, align 4
@RADEON_FP_CRTC_H_TOTAL_DISP = common dso_local global i32 0, align 4
@RADEON_FP_CRTC_V_TOTAL_DISP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, %struct.drm_display_mode*)* @radeon_legacy_rmx_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_legacy_rmx_mode_set(%struct.drm_crtc* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca %struct.radeon_crtc*, align 8
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
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %4, align 8
  %27 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %28 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %27, i32 0, i32 0
  %29 = load %struct.drm_device*, %struct.drm_device** %28, align 8
  store %struct.drm_device* %29, %struct.drm_device** %5, align 8
  %30 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %31 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %30, i32 0, i32 0
  %32 = load %struct.radeon_device*, %struct.radeon_device** %31, align 8
  store %struct.radeon_device* %32, %struct.radeon_device** %6, align 8
  %33 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %34 = call %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc* %33)
  store %struct.radeon_crtc* %34, %struct.radeon_crtc** %7, align 8
  %35 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %36 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %8, align 4
  %38 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %39 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %9, align 4
  store i32 1, i32* %10, align 4
  store i32 1, i32* %11, align 4
  %41 = load %struct.radeon_crtc*, %struct.radeon_crtc** %7, align 8
  %42 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %41, i32 0, i32 1
  store %struct.drm_display_mode* %42, %struct.drm_display_mode** %26, align 8
  %43 = load i32, i32* @RADEON_FP_VERT_STRETCH, align 4
  %44 = call i32 @RREG32(i32 %43)
  %45 = load i32, i32* @RADEON_VERT_STRETCH_RESERVED, align 4
  %46 = load i32, i32* @RADEON_VERT_AUTO_RATIO_INC, align 4
  %47 = or i32 %45, %46
  %48 = and i32 %44, %47
  store i32 %48, i32* %20, align 4
  %49 = load i32, i32* @RADEON_FP_HORZ_STRETCH, align 4
  %50 = call i32 @RREG32(i32 %49)
  %51 = load i32, i32* @RADEON_HORZ_FP_LOOP_STRETCH, align 4
  %52 = load i32, i32* @RADEON_HORZ_AUTO_RATIO_INC, align 4
  %53 = or i32 %51, %52
  %54 = and i32 %50, %53
  store i32 %54, i32* %19, align 4
  store i32 0, i32* %18, align 4
  %55 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %56 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @CHIP_RS100, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %66, label %60

60:                                               ; preds = %2
  %61 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %62 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @CHIP_RS200, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %60, %2
  %67 = load i32, i32* @RADEON_CRTC_H_CUTOFF_ACTIVE_EN, align 4
  %68 = load i32, i32* %18, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %18, align 4
  br label %70

70:                                               ; preds = %66, %60
  %71 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %72 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = sdiv i32 %73, 8
  %75 = sub nsw i32 %74, 1
  %76 = and i32 %75, 1023
  %77 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %78 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = sdiv i32 %79, 8
  %81 = sub nsw i32 %80, 1
  %82 = and i32 %81, 511
  %83 = shl i32 %82, 16
  %84 = or i32 %76, %83
  store i32 %84, i32* %23, align 4
  %85 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %86 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %89 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 4
  %91 = sub nsw i32 %87, %90
  %92 = sdiv i32 %91, 8
  store i32 %92, i32* %12, align 4
  %93 = load i32, i32* %12, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %70
  store i32 1, i32* %12, align 4
  br label %96

96:                                               ; preds = %95, %70
  %97 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %98 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 4
  %100 = sub nsw i32 %99, 8
  store i32 %100, i32* %14, align 4
  %101 = load i32, i32* %14, align 4
  %102 = and i32 %101, 8191
  %103 = load i32, i32* %12, align 4
  %104 = and i32 %103, 63
  %105 = shl i32 %104, 16
  %106 = or i32 %102, %105
  %107 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %108 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %107, i32 0, i32 6
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @DRM_MODE_FLAG_NHSYNC, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %96
  %114 = load i32, i32* @RADEON_CRTC_H_SYNC_POL, align 4
  br label %116

115:                                              ; preds = %96
  br label %116

116:                                              ; preds = %115, %113
  %117 = phi i32 [ %114, %113 ], [ 0, %115 ]
  %118 = or i32 %106, %117
  store i32 %118, i32* %22, align 4
  %119 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %120 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %119, i32 0, i32 7
  %121 = load i32, i32* %120, align 4
  %122 = sub nsw i32 %121, 1
  %123 = and i32 %122, 65535
  %124 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %125 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %124, i32 0, i32 8
  %126 = load i32, i32* %125, align 4
  %127 = sub nsw i32 %126, 1
  %128 = shl i32 %127, 16
  %129 = or i32 %123, %128
  store i32 %129, i32* %25, align 4
  %130 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %131 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %130, i32 0, i32 9
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %134 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %133, i32 0, i32 10
  %135 = load i32, i32* %134, align 4
  %136 = sub nsw i32 %132, %135
  store i32 %136, i32* %13, align 4
  %137 = load i32, i32* %13, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %116
  store i32 1, i32* %13, align 4
  br label %140

140:                                              ; preds = %139, %116
  %141 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %142 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %141, i32 0, i32 10
  %143 = load i32, i32* %142, align 4
  %144 = sub nsw i32 %143, 1
  %145 = and i32 %144, 4095
  %146 = load i32, i32* %13, align 4
  %147 = and i32 %146, 31
  %148 = shl i32 %147, 16
  %149 = or i32 %145, %148
  %150 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %151 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %150, i32 0, i32 6
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @DRM_MODE_FLAG_NVSYNC, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %140
  %157 = load i32, i32* @RADEON_CRTC_V_SYNC_POL, align 4
  br label %159

158:                                              ; preds = %140
  br label %159

159:                                              ; preds = %158, %156
  %160 = phi i32 [ %157, %156 ], [ 0, %158 ]
  %161 = or i32 %149, %160
  store i32 %161, i32* %24, align 4
  store i32 0, i32* %21, align 4
  %162 = load %struct.drm_display_mode*, %struct.drm_display_mode** %26, align 8
  %163 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %171, label %166

166:                                              ; preds = %159
  %167 = load %struct.drm_display_mode*, %struct.drm_display_mode** %26, align 8
  %168 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %166, %159
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %207

172:                                              ; preds = %166
  %173 = load i32, i32* %8, align 4
  %174 = load %struct.drm_display_mode*, %struct.drm_display_mode** %26, align 8
  %175 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = icmp sgt i32 %173, %176
  br i1 %177, label %178, label %182

178:                                              ; preds = %172
  %179 = load %struct.drm_display_mode*, %struct.drm_display_mode** %26, align 8
  %180 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  store i32 %181, i32* %8, align 4
  br label %182

182:                                              ; preds = %178, %172
  %183 = load i32, i32* %9, align 4
  %184 = load %struct.drm_display_mode*, %struct.drm_display_mode** %26, align 8
  %185 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = icmp sgt i32 %183, %186
  br i1 %187, label %188, label %192

188:                                              ; preds = %182
  %189 = load %struct.drm_display_mode*, %struct.drm_display_mode** %26, align 8
  %190 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  store i32 %191, i32* %9, align 4
  br label %192

192:                                              ; preds = %188, %182
  %193 = load i32, i32* %8, align 4
  %194 = load %struct.drm_display_mode*, %struct.drm_display_mode** %26, align 8
  %195 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = icmp eq i32 %193, %196
  br i1 %197, label %198, label %199

198:                                              ; preds = %192
  store i32 0, i32* %10, align 4
  br label %199

199:                                              ; preds = %198, %192
  %200 = load i32, i32* %9, align 4
  %201 = load %struct.drm_display_mode*, %struct.drm_display_mode** %26, align 8
  %202 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = icmp eq i32 %200, %203
  br i1 %204, label %205, label %206

205:                                              ; preds = %199
  store i32 0, i32* %11, align 4
  br label %206

206:                                              ; preds = %205, %199
  br label %207

207:                                              ; preds = %206, %171
  %208 = load %struct.radeon_crtc*, %struct.radeon_crtc** %7, align 8
  %209 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  switch i32 %210, label %433 [
    i32 129, label %211
    i32 131, label %211
    i32 130, label %296
    i32 128, label %432
  ]

211:                                              ; preds = %207, %207
  %212 = load i32, i32* %10, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %221, label %214

214:                                              ; preds = %211
  %215 = load i32, i32* %8, align 4
  %216 = sdiv i32 %215, 8
  %217 = sub nsw i32 %216, 1
  %218 = shl i32 %217, 16
  %219 = load i32, i32* %19, align 4
  %220 = or i32 %219, %218
  store i32 %220, i32* %19, align 4
  br label %254

221:                                              ; preds = %211
  %222 = load i32, i32* %19, align 4
  %223 = load i32, i32* @RADEON_HORZ_AUTO_RATIO_INC, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  %226 = zext i1 %225 to i64
  %227 = select i1 %225, i32 1, i32 0
  store i32 %227, i32* %17, align 4
  %228 = load i32, i32* %8, align 4
  %229 = load i32, i32* %17, align 4
  %230 = add nsw i32 %228, %229
  %231 = load i32, i32* @RADEON_HORZ_STRETCH_RATIO_MAX, align 4
  %232 = mul nsw i32 %230, %231
  %233 = load %struct.drm_display_mode*, %struct.drm_display_mode** %26, align 8
  %234 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = sdiv i32 %232, %235
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %16, align 4
  %238 = load i32, i32* %16, align 4
  %239 = load i32, i32* @RADEON_HORZ_STRETCH_RATIO_MASK, align 4
  %240 = and i32 %238, %239
  %241 = load i32, i32* @RADEON_HORZ_STRETCH_BLEND, align 4
  %242 = or i32 %240, %241
  %243 = load i32, i32* @RADEON_HORZ_STRETCH_ENABLE, align 4
  %244 = or i32 %242, %243
  %245 = load %struct.drm_display_mode*, %struct.drm_display_mode** %26, align 8
  %246 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = sdiv i32 %247, 8
  %249 = sub nsw i32 %248, 1
  %250 = shl i32 %249, 16
  %251 = or i32 %244, %250
  %252 = load i32, i32* %19, align 4
  %253 = or i32 %252, %251
  store i32 %253, i32* %19, align 4
  br label %254

254:                                              ; preds = %221, %214
  %255 = load i32, i32* %11, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %263, label %257

257:                                              ; preds = %254
  %258 = load i32, i32* %9, align 4
  %259 = sub nsw i32 %258, 1
  %260 = shl i32 %259, 12
  %261 = load i32, i32* %20, align 4
  %262 = or i32 %261, %260
  store i32 %262, i32* %20, align 4
  br label %295

263:                                              ; preds = %254
  %264 = load i32, i32* %20, align 4
  %265 = load i32, i32* @RADEON_VERT_AUTO_RATIO_INC, align 4
  %266 = and i32 %264, %265
  %267 = icmp ne i32 %266, 0
  %268 = zext i1 %267 to i64
  %269 = select i1 %267, i32 1, i32 0
  store i32 %269, i32* %17, align 4
  %270 = load i32, i32* %9, align 4
  %271 = load i32, i32* %17, align 4
  %272 = add nsw i32 %270, %271
  %273 = load i32, i32* @RADEON_VERT_STRETCH_RATIO_MAX, align 4
  %274 = mul nsw i32 %272, %273
  %275 = load %struct.drm_display_mode*, %struct.drm_display_mode** %26, align 8
  %276 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = sdiv i32 %274, %277
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %16, align 4
  %280 = load i32, i32* %16, align 4
  %281 = load i32, i32* @RADEON_VERT_STRETCH_RATIO_MASK, align 4
  %282 = and i32 %280, %281
  %283 = load i32, i32* @RADEON_VERT_STRETCH_ENABLE, align 4
  %284 = or i32 %282, %283
  %285 = load i32, i32* @RADEON_VERT_STRETCH_BLEND, align 4
  %286 = or i32 %284, %285
  %287 = load %struct.drm_display_mode*, %struct.drm_display_mode** %26, align 8
  %288 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = sub nsw i32 %289, 1
  %291 = shl i32 %290, 12
  %292 = or i32 %286, %291
  %293 = load i32, i32* %20, align 4
  %294 = or i32 %293, %292
  store i32 %294, i32* %20, align 4
  br label %295

295:                                              ; preds = %263, %257
  br label %445

296:                                              ; preds = %207
  %297 = load i32, i32* %8, align 4
  %298 = sdiv i32 %297, 8
  %299 = sub nsw i32 %298, 1
  %300 = shl i32 %299, 16
  %301 = load i32, i32* %19, align 4
  %302 = or i32 %301, %300
  store i32 %302, i32* %19, align 4
  %303 = load i32, i32* %9, align 4
  %304 = sub nsw i32 %303, 1
  %305 = shl i32 %304, 12
  %306 = load i32, i32* %20, align 4
  %307 = or i32 %306, %305
  store i32 %307, i32* %20, align 4
  %308 = load i32, i32* @RADEON_CRTC_AUTO_HORZ_CENTER_EN, align 4
  %309 = load i32, i32* @RADEON_CRTC_AUTO_VERT_CENTER_EN, align 4
  %310 = or i32 %308, %309
  %311 = load i32, i32* %18, align 4
  %312 = or i32 %311, %310
  store i32 %312, i32* %18, align 4
  %313 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %314 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %313, i32 0, i32 11
  %315 = load i32, i32* %314, align 4
  %316 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %317 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %316, i32 0, i32 12
  %318 = load i32, i32* %317, align 4
  %319 = sub nsw i32 %315, %318
  %320 = sdiv i32 %319, 8
  store i32 %320, i32* %15, align 4
  %321 = load i32, i32* %15, align 4
  %322 = icmp sgt i32 %321, 110
  br i1 %322, label %323, label %324

323:                                              ; preds = %296
  store i32 110, i32* %15, align 4
  br label %324

324:                                              ; preds = %323, %296
  %325 = load i32, i32* %15, align 4
  %326 = and i32 %325, 1023
  %327 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %328 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %327, i32 0, i32 3
  %329 = load i32, i32* %328, align 4
  %330 = sdiv i32 %329, 8
  %331 = sub nsw i32 %330, 1
  %332 = and i32 %331, 511
  %333 = shl i32 %332, 16
  %334 = or i32 %326, %333
  store i32 %334, i32* %23, align 4
  %335 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %336 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %335, i32 0, i32 4
  %337 = load i32, i32* %336, align 4
  %338 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %339 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %338, i32 0, i32 5
  %340 = load i32, i32* %339, align 4
  %341 = sub nsw i32 %337, %340
  %342 = sdiv i32 %341, 8
  store i32 %342, i32* %12, align 4
  %343 = load i32, i32* %12, align 4
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %346, label %345

345:                                              ; preds = %324
  store i32 1, i32* %12, align 4
  br label %346

346:                                              ; preds = %345, %324
  %347 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %348 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %347, i32 0, i32 5
  %349 = load i32, i32* %348, align 4
  %350 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %351 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %350, i32 0, i32 12
  %352 = load i32, i32* %351, align 4
  %353 = sub nsw i32 %349, %352
  %354 = sdiv i32 %353, 8
  %355 = and i32 %354, 8191
  %356 = load i32, i32* %12, align 4
  %357 = and i32 %356, 63
  %358 = shl i32 %357, 16
  %359 = or i32 %355, %358
  %360 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %361 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %360, i32 0, i32 6
  %362 = load i32, i32* %361, align 4
  %363 = load i32, i32* @DRM_MODE_FLAG_NHSYNC, align 4
  %364 = and i32 %362, %363
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %368

366:                                              ; preds = %346
  %367 = load i32, i32* @RADEON_CRTC_H_SYNC_POL, align 4
  br label %369

368:                                              ; preds = %346
  br label %369

369:                                              ; preds = %368, %366
  %370 = phi i32 [ %367, %366 ], [ 0, %368 ]
  %371 = or i32 %359, %370
  store i32 %371, i32* %22, align 4
  %372 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %373 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %372, i32 0, i32 13
  %374 = load i32, i32* %373, align 4
  %375 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %376 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %375, i32 0, i32 14
  %377 = load i32, i32* %376, align 4
  %378 = sub nsw i32 %374, %377
  %379 = and i32 %378, 65535
  %380 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %381 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %380, i32 0, i32 8
  %382 = load i32, i32* %381, align 4
  %383 = sub nsw i32 %382, 1
  %384 = shl i32 %383, 16
  %385 = or i32 %379, %384
  store i32 %385, i32* %25, align 4
  %386 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %387 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %386, i32 0, i32 9
  %388 = load i32, i32* %387, align 4
  %389 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %390 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %389, i32 0, i32 10
  %391 = load i32, i32* %390, align 4
  %392 = sub nsw i32 %388, %391
  store i32 %392, i32* %13, align 4
  %393 = load i32, i32* %13, align 4
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %396, label %395

395:                                              ; preds = %369
  store i32 1, i32* %13, align 4
  br label %396

396:                                              ; preds = %395, %369
  %397 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %398 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %397, i32 0, i32 10
  %399 = load i32, i32* %398, align 4
  %400 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %401 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %400, i32 0, i32 14
  %402 = load i32, i32* %401, align 4
  %403 = sub nsw i32 %399, %402
  %404 = and i32 %403, 4095
  %405 = load i32, i32* %13, align 4
  %406 = and i32 %405, 31
  %407 = shl i32 %406, 16
  %408 = or i32 %404, %407
  %409 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %410 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %409, i32 0, i32 6
  %411 = load i32, i32* %410, align 4
  %412 = load i32, i32* @DRM_MODE_FLAG_NVSYNC, align 4
  %413 = and i32 %411, %412
  %414 = icmp ne i32 %413, 0
  br i1 %414, label %415, label %417

415:                                              ; preds = %396
  %416 = load i32, i32* @RADEON_CRTC_V_SYNC_POL, align 4
  br label %418

417:                                              ; preds = %396
  br label %418

418:                                              ; preds = %417, %415
  %419 = phi i32 [ %416, %415 ], [ 0, %417 ]
  %420 = or i32 %408, %419
  store i32 %420, i32* %24, align 4
  %421 = load %struct.drm_display_mode*, %struct.drm_display_mode** %26, align 8
  %422 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %421, i32 0, i32 1
  %423 = load i32, i32* %422, align 4
  %424 = and i32 %423, 4095
  %425 = load %struct.drm_display_mode*, %struct.drm_display_mode** %26, align 8
  %426 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %425, i32 0, i32 0
  %427 = load i32, i32* %426, align 4
  %428 = sdiv i32 %427, 8
  %429 = and i32 %428, 511
  %430 = shl i32 %429, 16
  %431 = or i32 %424, %430
  store i32 %431, i32* %21, align 4
  br label %445

432:                                              ; preds = %207
  br label %433

433:                                              ; preds = %207, %432
  %434 = load i32, i32* %8, align 4
  %435 = sdiv i32 %434, 8
  %436 = sub nsw i32 %435, 1
  %437 = shl i32 %436, 16
  %438 = load i32, i32* %19, align 4
  %439 = or i32 %438, %437
  store i32 %439, i32* %19, align 4
  %440 = load i32, i32* %9, align 4
  %441 = sub nsw i32 %440, 1
  %442 = shl i32 %441, 12
  %443 = load i32, i32* %20, align 4
  %444 = or i32 %443, %442
  store i32 %444, i32* %20, align 4
  br label %445

445:                                              ; preds = %433, %418, %295
  %446 = load i32, i32* @RADEON_FP_HORZ_STRETCH, align 4
  %447 = load i32, i32* %19, align 4
  %448 = call i32 @WREG32(i32 %446, i32 %447)
  %449 = load i32, i32* @RADEON_FP_VERT_STRETCH, align 4
  %450 = load i32, i32* %20, align 4
  %451 = call i32 @WREG32(i32 %449, i32 %450)
  %452 = load i32, i32* @RADEON_CRTC_MORE_CNTL, align 4
  %453 = load i32, i32* %18, align 4
  %454 = call i32 @WREG32(i32 %452, i32 %453)
  %455 = load i32, i32* @RADEON_FP_HORZ_VERT_ACTIVE, align 4
  %456 = load i32, i32* %21, align 4
  %457 = call i32 @WREG32(i32 %455, i32 %456)
  %458 = load i32, i32* @RADEON_FP_H_SYNC_STRT_WID, align 4
  %459 = load i32, i32* %22, align 4
  %460 = call i32 @WREG32(i32 %458, i32 %459)
  %461 = load i32, i32* @RADEON_FP_V_SYNC_STRT_WID, align 4
  %462 = load i32, i32* %24, align 4
  %463 = call i32 @WREG32(i32 %461, i32 %462)
  %464 = load i32, i32* @RADEON_FP_CRTC_H_TOTAL_DISP, align 4
  %465 = load i32, i32* %23, align 4
  %466 = call i32 @WREG32(i32 %464, i32 %465)
  %467 = load i32, i32* @RADEON_FP_CRTC_V_TOTAL_DISP, align 4
  %468 = load i32, i32* %25, align 4
  %469 = call i32 @WREG32(i32 %467, i32 %468)
  ret void
}

declare dso_local %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

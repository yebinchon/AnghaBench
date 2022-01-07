; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_modes.c_drm_cvt_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_modes.c_drm_cvt_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_device = type { i32 }

@DRM_MODE_FLAG_INTERLACE = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PHSYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NVSYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PVSYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NHSYNC = common dso_local global i32 0, align 4
@CVT_CLOCK_STEP = common dso_local global i32 0, align 4
@CVT_C_PRIME = common dso_local global i32 0, align 4
@CVT_HSYNC_PERCENTAGE = common dso_local global i32 0, align 4
@CVT_H_GRANULARITY = common dso_local global i32 0, align 4
@CVT_MARGIN_PERCENTAGE = common dso_local global i32 0, align 4
@CVT_MIN_VSYNC_BP = common dso_local global i32 0, align 4
@CVT_MIN_V_BPORCH = common dso_local global i32 0, align 4
@CVT_MIN_V_PORCH = common dso_local global i32 0, align 4
@CVT_M_PRIME = common dso_local global i32 0, align 4
@CVT_RB_H_BLANK = common dso_local global i32 0, align 4
@CVT_RB_H_SYNC = common dso_local global i32 0, align 4
@CVT_RB_MIN_VBLANK = common dso_local global i32 0, align 4
@CVT_RB_VFPORCH = common dso_local global i32 0, align 4
@HV_FACTOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_display_mode* @drm_cvt_mode(%struct.drm_device* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.drm_display_mode*, align 8
  %9 = alloca %struct.drm_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.drm_display_mode*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %7
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %37, %7
  store %struct.drm_display_mode* null, %struct.drm_display_mode** %8, align 8
  br label %398

41:                                               ; preds = %37
  %42 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %43 = call %struct.drm_display_mode* @drm_mode_create(%struct.drm_device* %42)
  store %struct.drm_display_mode* %43, %struct.drm_display_mode** %16, align 8
  %44 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  %45 = icmp ne %struct.drm_display_mode* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  store %struct.drm_display_mode* null, %struct.drm_display_mode** %8, align 8
  br label %398

47:                                               ; preds = %41
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  store i32 60, i32* %12, align 4
  br label %51

51:                                               ; preds = %50, %47
  %52 = load i32, i32* %14, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32, i32* %12, align 4
  %56 = mul nsw i32 %55, 2
  store i32 %56, i32* %17, align 4
  br label %59

57:                                               ; preds = %51
  %58 = load i32, i32* %12, align 4
  store i32 %58, i32* %17, align 4
  br label %59

59:                                               ; preds = %57, %54
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = srem i32 %61, 8
  %63 = sub nsw i32 %60, %62
  store i32 %63, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %64 = load i32, i32* %15, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %59
  %67 = load i32, i32* %19, align 4
  %68 = mul nsw i32 %67, 18
  %69 = sdiv i32 %68, 1000
  store i32 %69, i32* %20, align 4
  %70 = load i32, i32* %20, align 4
  %71 = srem i32 %70, 8
  %72 = load i32, i32* %20, align 4
  %73 = sub nsw i32 %72, %71
  store i32 %73, i32* %20, align 4
  br label %74

74:                                               ; preds = %66, %59
  %75 = load i32, i32* %19, align 4
  %76 = load i32, i32* %20, align 4
  %77 = mul nsw i32 2, %76
  %78 = add nsw i32 %75, %77
  %79 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  %80 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* %14, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %74
  %84 = load i32, i32* %11, align 4
  %85 = sdiv i32 %84, 2
  store i32 %85, i32* %21, align 4
  br label %88

86:                                               ; preds = %74
  %87 = load i32, i32* %11, align 4
  store i32 %87, i32* %21, align 4
  br label %88

88:                                               ; preds = %86, %83
  store i32 0, i32* %22, align 4
  %89 = load i32, i32* %15, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load i32, i32* %21, align 4
  %93 = mul nsw i32 %92, 18
  %94 = sdiv i32 %93, 1000
  store i32 %94, i32* %22, align 4
  br label %95

95:                                               ; preds = %91, %88
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* %22, align 4
  %98 = mul nsw i32 2, %97
  %99 = add nsw i32 %96, %98
  %100 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  %101 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* %14, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %95
  store i32 1, i32* %24, align 4
  br label %106

105:                                              ; preds = %95
  store i32 0, i32* %24, align 4
  br label %106

106:                                              ; preds = %105, %104
  %107 = load i32, i32* %11, align 4
  %108 = srem i32 %107, 3
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %117, label %110

110:                                              ; preds = %106
  %111 = load i32, i32* %11, align 4
  %112 = mul nsw i32 %111, 4
  %113 = sdiv i32 %112, 3
  %114 = load i32, i32* %10, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %110
  store i32 4, i32* %23, align 4
  br label %166

117:                                              ; preds = %110, %106
  %118 = load i32, i32* %11, align 4
  %119 = srem i32 %118, 9
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %128, label %121

121:                                              ; preds = %117
  %122 = load i32, i32* %11, align 4
  %123 = mul nsw i32 %122, 16
  %124 = sdiv i32 %123, 9
  %125 = load i32, i32* %10, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %121
  store i32 5, i32* %23, align 4
  br label %165

128:                                              ; preds = %121, %117
  %129 = load i32, i32* %11, align 4
  %130 = srem i32 %129, 10
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %139, label %132

132:                                              ; preds = %128
  %133 = load i32, i32* %11, align 4
  %134 = mul nsw i32 %133, 16
  %135 = sdiv i32 %134, 10
  %136 = load i32, i32* %10, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %132
  store i32 6, i32* %23, align 4
  br label %164

139:                                              ; preds = %132, %128
  %140 = load i32, i32* %11, align 4
  %141 = srem i32 %140, 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %150, label %143

143:                                              ; preds = %139
  %144 = load i32, i32* %11, align 4
  %145 = mul nsw i32 %144, 5
  %146 = sdiv i32 %145, 4
  %147 = load i32, i32* %10, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %143
  store i32 7, i32* %23, align 4
  br label %163

150:                                              ; preds = %143, %139
  %151 = load i32, i32* %11, align 4
  %152 = srem i32 %151, 9
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %161, label %154

154:                                              ; preds = %150
  %155 = load i32, i32* %11, align 4
  %156 = mul nsw i32 %155, 15
  %157 = sdiv i32 %156, 9
  %158 = load i32, i32* %10, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %154
  store i32 7, i32* %23, align 4
  br label %162

161:                                              ; preds = %154, %150
  store i32 10, i32* %23, align 4
  br label %162

162:                                              ; preds = %161, %160
  br label %163

163:                                              ; preds = %162, %149
  br label %164

164:                                              ; preds = %163, %138
  br label %165

165:                                              ; preds = %164, %127
  br label %166

166:                                              ; preds = %165, %116
  %167 = load i32, i32* %13, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %280, label %169

169:                                              ; preds = %166
  %170 = load i32, i32* %17, align 4
  %171 = mul i32 550000, %170
  %172 = sub i32 1000000000, %171
  store i32 %172, i32* %26, align 4
  %173 = load i32, i32* %21, align 4
  %174 = load i32, i32* %22, align 4
  %175 = mul nsw i32 2, %174
  %176 = add nsw i32 %173, %175
  %177 = add nsw i32 %176, 3
  %178 = mul nsw i32 %177, 2
  %179 = load i32, i32* %24, align 4
  %180 = add nsw i32 %178, %179
  store i32 %180, i32* %27, align 4
  %181 = load i32, i32* %26, align 4
  %182 = mul nsw i32 %181, 2
  %183 = load i32, i32* %27, align 4
  %184 = load i32, i32* %17, align 4
  %185 = mul i32 %183, %184
  %186 = udiv i32 %182, %185
  store i32 %186, i32* %18, align 4
  %187 = load i32, i32* %18, align 4
  %188 = udiv i32 550000, %187
  %189 = add i32 %188, 1
  store i32 %189, i32* %26, align 4
  %190 = load i32, i32* %26, align 4
  %191 = load i32, i32* %23, align 4
  %192 = add nsw i32 %191, 3
  %193 = icmp slt i32 %190, %192
  br i1 %193, label %194, label %197

194:                                              ; preds = %169
  %195 = load i32, i32* %23, align 4
  %196 = add nsw i32 %195, 3
  store i32 %196, i32* %29, align 4
  br label %199

197:                                              ; preds = %169
  %198 = load i32, i32* %26, align 4
  store i32 %198, i32* %29, align 4
  br label %199

199:                                              ; preds = %197, %194
  %200 = load i32, i32* %29, align 4
  %201 = load i32, i32* %23, align 4
  %202 = sub nsw i32 %200, %201
  store i32 %202, i32* %30, align 4
  %203 = load i32, i32* %21, align 4
  %204 = load i32, i32* %22, align 4
  %205 = mul nsw i32 2, %204
  %206 = add nsw i32 %203, %205
  %207 = load i32, i32* %29, align 4
  %208 = add nsw i32 %206, %207
  %209 = add nsw i32 %208, 3
  %210 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  %211 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %210, i32 0, i32 2
  store i32 %209, i32* %211, align 4
  %212 = load i32, i32* %18, align 4
  %213 = mul i32 300, %212
  %214 = udiv i32 %213, 1000
  %215 = sub i32 30000, %214
  store i32 %215, i32* %28, align 4
  %216 = load i32, i32* %28, align 4
  %217 = icmp ult i32 %216, 20000
  br i1 %217, label %218, label %219

218:                                              ; preds = %199
  store i32 20000, i32* %28, align 4
  br label %219

219:                                              ; preds = %218, %199
  %220 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  %221 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* %28, align 4
  %224 = mul i32 %222, %223
  %225 = load i32, i32* %28, align 4
  %226 = sub i32 100000, %225
  %227 = udiv i32 %224, %226
  store i32 %227, i32* %31, align 4
  %228 = load i32, i32* %31, align 4
  %229 = srem i32 %228, 16
  %230 = load i32, i32* %31, align 4
  %231 = sub nsw i32 %230, %229
  store i32 %231, i32* %31, align 4
  %232 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  %233 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* %31, align 4
  %236 = add nsw i32 %234, %235
  %237 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  %238 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %237, i32 0, i32 3
  store i32 %236, i32* %238, align 4
  %239 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  %240 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* %31, align 4
  %243 = sdiv i32 %242, 2
  %244 = add nsw i32 %241, %243
  %245 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  %246 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %245, i32 0, i32 4
  store i32 %244, i32* %246, align 4
  %247 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  %248 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %247, i32 0, i32 4
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  %251 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %250, i32 0, i32 3
  %252 = load i32, i32* %251, align 4
  %253 = mul nsw i32 %252, 8
  %254 = sdiv i32 %253, 100
  %255 = sub nsw i32 %249, %254
  %256 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  %257 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %256, i32 0, i32 5
  store i32 %255, i32* %257, align 4
  %258 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  %259 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %258, i32 0, i32 5
  %260 = load i32, i32* %259, align 4
  %261 = srem i32 %260, 8
  %262 = sub nsw i32 8, %261
  %263 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  %264 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %263, i32 0, i32 5
  %265 = load i32, i32* %264, align 4
  %266 = add nsw i32 %265, %262
  store i32 %266, i32* %264, align 4
  %267 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  %268 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = add nsw i32 %269, 3
  %271 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  %272 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %271, i32 0, i32 6
  store i32 %270, i32* %272, align 4
  %273 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  %274 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %273, i32 0, i32 6
  %275 = load i32, i32* %274, align 4
  %276 = load i32, i32* %23, align 4
  %277 = add nsw i32 %275, %276
  %278 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  %279 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %278, i32 0, i32 7
  store i32 %277, i32* %279, align 4
  br label %345

280:                                              ; preds = %166
  %281 = load i32, i32* %17, align 4
  %282 = mul i32 460000, %281
  %283 = sub i32 1000000000, %282
  store i32 %283, i32* %33, align 4
  %284 = load i32, i32* %21, align 4
  %285 = load i32, i32* %22, align 4
  %286 = mul nsw i32 2, %285
  %287 = add nsw i32 %284, %286
  store i32 %287, i32* %34, align 4
  %288 = load i32, i32* %33, align 4
  %289 = load i32, i32* %34, align 4
  %290 = load i32, i32* %17, align 4
  %291 = mul i32 %289, %290
  %292 = udiv i32 %288, %291
  store i32 %292, i32* %18, align 4
  %293 = load i32, i32* %18, align 4
  %294 = udiv i32 460000, %293
  %295 = add i32 %294, 1
  store i32 %295, i32* %32, align 4
  %296 = load i32, i32* %32, align 4
  %297 = load i32, i32* %23, align 4
  %298 = add nsw i32 3, %297
  %299 = add nsw i32 %298, 6
  %300 = icmp slt i32 %296, %299
  br i1 %300, label %301, label %305

301:                                              ; preds = %280
  %302 = load i32, i32* %23, align 4
  %303 = add nsw i32 3, %302
  %304 = add nsw i32 %303, 6
  store i32 %304, i32* %32, align 4
  br label %305

305:                                              ; preds = %301, %280
  %306 = load i32, i32* %21, align 4
  %307 = load i32, i32* %22, align 4
  %308 = mul nsw i32 2, %307
  %309 = add nsw i32 %306, %308
  %310 = load i32, i32* %32, align 4
  %311 = add nsw i32 %309, %310
  %312 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  %313 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %312, i32 0, i32 2
  store i32 %311, i32* %313, align 4
  %314 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  %315 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 4
  %317 = add nsw i32 %316, 160
  %318 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  %319 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %318, i32 0, i32 3
  store i32 %317, i32* %319, align 4
  %320 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  %321 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 4
  %323 = add nsw i32 %322, 80
  %324 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  %325 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %324, i32 0, i32 4
  store i32 %323, i32* %325, align 4
  %326 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  %327 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %326, i32 0, i32 4
  %328 = load i32, i32* %327, align 4
  %329 = sub nsw i32 %328, 32
  %330 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  %331 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %330, i32 0, i32 5
  store i32 %329, i32* %331, align 4
  %332 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  %333 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %332, i32 0, i32 1
  %334 = load i32, i32* %333, align 4
  %335 = add nsw i32 %334, 3
  %336 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  %337 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %336, i32 0, i32 6
  store i32 %335, i32* %337, align 4
  %338 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  %339 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %338, i32 0, i32 6
  %340 = load i32, i32* %339, align 4
  %341 = load i32, i32* %23, align 4
  %342 = add nsw i32 %340, %341
  %343 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  %344 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %343, i32 0, i32 7
  store i32 %342, i32* %344, align 4
  br label %345

345:                                              ; preds = %305, %219
  %346 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  %347 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %346, i32 0, i32 3
  %348 = load i32, i32* %347, align 4
  store i32 %348, i32* %25, align 4
  %349 = load i32, i32* %25, align 4
  %350 = mul nsw i32 %349, 1000000
  store i32 %350, i32* %25, align 4
  %351 = load i32, i32* %25, align 4
  %352 = load i32, i32* %18, align 4
  %353 = call i32 @do_div(i32 %351, i32 %352)
  %354 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  %355 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %354, i32 0, i32 8
  %356 = load i32, i32* %355, align 4
  %357 = srem i32 %356, 250
  %358 = load i32, i32* %25, align 4
  %359 = sub nsw i32 %358, %357
  store i32 %359, i32* %25, align 4
  %360 = load i32, i32* %25, align 4
  %361 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  %362 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %361, i32 0, i32 8
  store i32 %360, i32* %362, align 4
  %363 = load i32, i32* %14, align 4
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %375

365:                                              ; preds = %345
  %366 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  %367 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %366, i32 0, i32 2
  %368 = load i32, i32* %367, align 4
  %369 = mul nsw i32 %368, 2
  store i32 %369, i32* %367, align 4
  %370 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %371 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  %372 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %371, i32 0, i32 9
  %373 = load i32, i32* %372, align 4
  %374 = or i32 %373, %370
  store i32 %374, i32* %372, align 4
  br label %375

375:                                              ; preds = %365, %345
  %376 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  %377 = call i32 @drm_mode_set_name(%struct.drm_display_mode* %376)
  %378 = load i32, i32* %13, align 4
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %388

380:                                              ; preds = %375
  %381 = load i32, i32* @DRM_MODE_FLAG_PHSYNC, align 4
  %382 = load i32, i32* @DRM_MODE_FLAG_NVSYNC, align 4
  %383 = or i32 %381, %382
  %384 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  %385 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %384, i32 0, i32 9
  %386 = load i32, i32* %385, align 4
  %387 = or i32 %386, %383
  store i32 %387, i32* %385, align 4
  br label %396

388:                                              ; preds = %375
  %389 = load i32, i32* @DRM_MODE_FLAG_PVSYNC, align 4
  %390 = load i32, i32* @DRM_MODE_FLAG_NHSYNC, align 4
  %391 = or i32 %389, %390
  %392 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  %393 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %392, i32 0, i32 9
  %394 = load i32, i32* %393, align 4
  %395 = or i32 %394, %391
  store i32 %395, i32* %393, align 4
  br label %396

396:                                              ; preds = %388, %380
  %397 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  store %struct.drm_display_mode* %397, %struct.drm_display_mode** %8, align 8
  br label %398

398:                                              ; preds = %396, %46, %40
  %399 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  ret %struct.drm_display_mode* %399
}

declare dso_local %struct.drm_display_mode* @drm_mode_create(%struct.drm_device*) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @drm_mode_set_name(%struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

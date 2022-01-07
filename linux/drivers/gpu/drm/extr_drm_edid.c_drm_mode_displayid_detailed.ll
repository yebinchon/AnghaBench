; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_drm_mode_displayid_detailed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_drm_mode_displayid_detailed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_device = type { i32 }
%struct.displayid_detailed_timings_1 = type { i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32 }

@DRM_MODE_FLAG_PHSYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NHSYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PVSYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NVSYNC = common dso_local global i32 0, align 4
@DRM_MODE_TYPE_DRIVER = common dso_local global i32 0, align 4
@DRM_MODE_TYPE_PREFERRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_display_mode* (%struct.drm_device*, %struct.displayid_detailed_timings_1*)* @drm_mode_displayid_detailed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_display_mode* @drm_mode_displayid_detailed(%struct.drm_device* %0, %struct.displayid_detailed_timings_1* %1) #0 {
  %3 = alloca %struct.drm_display_mode*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.displayid_detailed_timings_1*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca i32, align 4
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
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.displayid_detailed_timings_1* %1, %struct.displayid_detailed_timings_1** %5, align 8
  %18 = load %struct.displayid_detailed_timings_1*, %struct.displayid_detailed_timings_1** %5, align 8
  %19 = getelementptr inbounds %struct.displayid_detailed_timings_1, %struct.displayid_detailed_timings_1* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.displayid_detailed_timings_1*, %struct.displayid_detailed_timings_1** %5, align 8
  %24 = getelementptr inbounds %struct.displayid_detailed_timings_1, %struct.displayid_detailed_timings_1* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = shl i32 %27, 8
  %29 = or i32 %22, %28
  %30 = load %struct.displayid_detailed_timings_1*, %struct.displayid_detailed_timings_1** %5, align 8
  %31 = getelementptr inbounds %struct.displayid_detailed_timings_1, %struct.displayid_detailed_timings_1* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 %34, 16
  %36 = or i32 %29, %35
  store i32 %36, i32* %7, align 4
  %37 = load %struct.displayid_detailed_timings_1*, %struct.displayid_detailed_timings_1** %5, align 8
  %38 = getelementptr inbounds %struct.displayid_detailed_timings_1, %struct.displayid_detailed_timings_1* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.displayid_detailed_timings_1*, %struct.displayid_detailed_timings_1** %5, align 8
  %43 = getelementptr inbounds %struct.displayid_detailed_timings_1, %struct.displayid_detailed_timings_1* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 %46, 8
  %48 = or i32 %41, %47
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  %50 = load %struct.displayid_detailed_timings_1*, %struct.displayid_detailed_timings_1** %5, align 8
  %51 = getelementptr inbounds %struct.displayid_detailed_timings_1, %struct.displayid_detailed_timings_1* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.displayid_detailed_timings_1*, %struct.displayid_detailed_timings_1** %5, align 8
  %56 = getelementptr inbounds %struct.displayid_detailed_timings_1, %struct.displayid_detailed_timings_1* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = shl i32 %59, 8
  %61 = or i32 %54, %60
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %9, align 4
  %63 = load %struct.displayid_detailed_timings_1*, %struct.displayid_detailed_timings_1** %5, align 8
  %64 = getelementptr inbounds %struct.displayid_detailed_timings_1, %struct.displayid_detailed_timings_1* %63, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.displayid_detailed_timings_1*, %struct.displayid_detailed_timings_1** %5, align 8
  %69 = getelementptr inbounds %struct.displayid_detailed_timings_1, %struct.displayid_detailed_timings_1* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, 127
  %74 = shl i32 %73, 8
  %75 = or i32 %67, %74
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %10, align 4
  %77 = load %struct.displayid_detailed_timings_1*, %struct.displayid_detailed_timings_1** %5, align 8
  %78 = getelementptr inbounds %struct.displayid_detailed_timings_1, %struct.displayid_detailed_timings_1* %77, i32 0, i32 4
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.displayid_detailed_timings_1*, %struct.displayid_detailed_timings_1** %5, align 8
  %83 = getelementptr inbounds %struct.displayid_detailed_timings_1, %struct.displayid_detailed_timings_1* %82, i32 0, i32 4
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  %86 = load i32, i32* %85, align 4
  %87 = shl i32 %86, 8
  %88 = or i32 %81, %87
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %11, align 4
  %90 = load %struct.displayid_detailed_timings_1*, %struct.displayid_detailed_timings_1** %5, align 8
  %91 = getelementptr inbounds %struct.displayid_detailed_timings_1, %struct.displayid_detailed_timings_1* %90, i32 0, i32 5
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.displayid_detailed_timings_1*, %struct.displayid_detailed_timings_1** %5, align 8
  %96 = getelementptr inbounds %struct.displayid_detailed_timings_1, %struct.displayid_detailed_timings_1* %95, i32 0, i32 5
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 1
  %99 = load i32, i32* %98, align 4
  %100 = shl i32 %99, 8
  %101 = or i32 %94, %100
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %12, align 4
  %103 = load %struct.displayid_detailed_timings_1*, %struct.displayid_detailed_timings_1** %5, align 8
  %104 = getelementptr inbounds %struct.displayid_detailed_timings_1, %struct.displayid_detailed_timings_1* %103, i32 0, i32 6
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.displayid_detailed_timings_1*, %struct.displayid_detailed_timings_1** %5, align 8
  %109 = getelementptr inbounds %struct.displayid_detailed_timings_1, %struct.displayid_detailed_timings_1* %108, i32 0, i32 6
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 1
  %112 = load i32, i32* %111, align 4
  %113 = shl i32 %112, 8
  %114 = or i32 %107, %113
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %13, align 4
  %116 = load %struct.displayid_detailed_timings_1*, %struct.displayid_detailed_timings_1** %5, align 8
  %117 = getelementptr inbounds %struct.displayid_detailed_timings_1, %struct.displayid_detailed_timings_1* %116, i32 0, i32 7
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.displayid_detailed_timings_1*, %struct.displayid_detailed_timings_1** %5, align 8
  %122 = getelementptr inbounds %struct.displayid_detailed_timings_1, %struct.displayid_detailed_timings_1* %121, i32 0, i32 7
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 1
  %125 = load i32, i32* %124, align 4
  %126 = and i32 %125, 127
  %127 = shl i32 %126, 8
  %128 = or i32 %120, %127
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %14, align 4
  %130 = load %struct.displayid_detailed_timings_1*, %struct.displayid_detailed_timings_1** %5, align 8
  %131 = getelementptr inbounds %struct.displayid_detailed_timings_1, %struct.displayid_detailed_timings_1* %130, i32 0, i32 8
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.displayid_detailed_timings_1*, %struct.displayid_detailed_timings_1** %5, align 8
  %136 = getelementptr inbounds %struct.displayid_detailed_timings_1, %struct.displayid_detailed_timings_1* %135, i32 0, i32 8
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 1
  %139 = load i32, i32* %138, align 4
  %140 = shl i32 %139, 8
  %141 = or i32 %134, %140
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %15, align 4
  %143 = load %struct.displayid_detailed_timings_1*, %struct.displayid_detailed_timings_1** %5, align 8
  %144 = getelementptr inbounds %struct.displayid_detailed_timings_1, %struct.displayid_detailed_timings_1* %143, i32 0, i32 3
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 1
  %147 = load i32, i32* %146, align 4
  %148 = ashr i32 %147, 7
  %149 = and i32 %148, 1
  store i32 %149, i32* %16, align 4
  %150 = load %struct.displayid_detailed_timings_1*, %struct.displayid_detailed_timings_1** %5, align 8
  %151 = getelementptr inbounds %struct.displayid_detailed_timings_1, %struct.displayid_detailed_timings_1* %150, i32 0, i32 7
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 1
  %154 = load i32, i32* %153, align 4
  %155 = ashr i32 %154, 7
  %156 = and i32 %155, 1
  store i32 %156, i32* %17, align 4
  %157 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %158 = call %struct.drm_display_mode* @drm_mode_create(%struct.drm_device* %157)
  store %struct.drm_display_mode* %158, %struct.drm_display_mode** %6, align 8
  %159 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %160 = icmp ne %struct.drm_display_mode* %159, null
  br i1 %160, label %162, label %161

161:                                              ; preds = %2
  store %struct.drm_display_mode* null, %struct.drm_display_mode** %3, align 8
  br label %263

162:                                              ; preds = %2
  %163 = load i32, i32* %7, align 4
  %164 = mul i32 %163, 10
  %165 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %166 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %165, i32 0, i32 0
  store i32 %164, i32* %166, align 4
  %167 = load i32, i32* %8, align 4
  %168 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %169 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %168, i32 0, i32 1
  store i32 %167, i32* %169, align 4
  %170 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %171 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* %10, align 4
  %174 = add i32 %172, %173
  %175 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %176 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %175, i32 0, i32 2
  store i32 %174, i32* %176, align 4
  %177 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %178 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* %11, align 4
  %181 = add i32 %179, %180
  %182 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %183 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %182, i32 0, i32 3
  store i32 %181, i32* %183, align 4
  %184 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %185 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* %9, align 4
  %188 = add i32 %186, %187
  %189 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %190 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %189, i32 0, i32 4
  store i32 %188, i32* %190, align 4
  %191 = load i32, i32* %12, align 4
  %192 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %193 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %192, i32 0, i32 5
  store i32 %191, i32* %193, align 4
  %194 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %195 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %194, i32 0, i32 5
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* %14, align 4
  %198 = add i32 %196, %197
  %199 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %200 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %199, i32 0, i32 6
  store i32 %198, i32* %200, align 4
  %201 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %202 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %201, i32 0, i32 6
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* %15, align 4
  %205 = add i32 %203, %204
  %206 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %207 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %206, i32 0, i32 7
  store i32 %205, i32* %207, align 4
  %208 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %209 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %208, i32 0, i32 5
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* %13, align 4
  %212 = add i32 %210, %211
  %213 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %214 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %213, i32 0, i32 8
  store i32 %212, i32* %214, align 4
  %215 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %216 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %215, i32 0, i32 11
  store i32 0, i32* %216, align 4
  %217 = load i32, i32* %16, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %162
  %220 = load i32, i32* @DRM_MODE_FLAG_PHSYNC, align 4
  br label %223

221:                                              ; preds = %162
  %222 = load i32, i32* @DRM_MODE_FLAG_NHSYNC, align 4
  br label %223

223:                                              ; preds = %221, %219
  %224 = phi i32 [ %220, %219 ], [ %222, %221 ]
  %225 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %226 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %225, i32 0, i32 11
  %227 = load i32, i32* %226, align 4
  %228 = or i32 %227, %224
  store i32 %228, i32* %226, align 4
  %229 = load i32, i32* %17, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %223
  %232 = load i32, i32* @DRM_MODE_FLAG_PVSYNC, align 4
  br label %235

233:                                              ; preds = %223
  %234 = load i32, i32* @DRM_MODE_FLAG_NVSYNC, align 4
  br label %235

235:                                              ; preds = %233, %231
  %236 = phi i32 [ %232, %231 ], [ %234, %233 ]
  %237 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %238 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %237, i32 0, i32 11
  %239 = load i32, i32* %238, align 4
  %240 = or i32 %239, %236
  store i32 %240, i32* %238, align 4
  %241 = load i32, i32* @DRM_MODE_TYPE_DRIVER, align 4
  %242 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %243 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %242, i32 0, i32 10
  store i32 %241, i32* %243, align 4
  %244 = load %struct.displayid_detailed_timings_1*, %struct.displayid_detailed_timings_1** %5, align 8
  %245 = getelementptr inbounds %struct.displayid_detailed_timings_1, %struct.displayid_detailed_timings_1* %244, i32 0, i32 9
  %246 = load i32, i32* %245, align 8
  %247 = and i32 %246, 128
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %255

249:                                              ; preds = %235
  %250 = load i32, i32* @DRM_MODE_TYPE_PREFERRED, align 4
  %251 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %252 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %251, i32 0, i32 10
  %253 = load i32, i32* %252, align 4
  %254 = or i32 %253, %250
  store i32 %254, i32* %252, align 4
  br label %255

255:                                              ; preds = %249, %235
  %256 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %257 = call i32 @drm_mode_vrefresh(%struct.drm_display_mode* %256)
  %258 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %259 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %258, i32 0, i32 9
  store i32 %257, i32* %259, align 4
  %260 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %261 = call i32 @drm_mode_set_name(%struct.drm_display_mode* %260)
  %262 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  store %struct.drm_display_mode* %262, %struct.drm_display_mode** %3, align 8
  br label %263

263:                                              ; preds = %255, %161
  %264 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  ret %struct.drm_display_mode* %264
}

declare dso_local %struct.drm_display_mode* @drm_mode_create(%struct.drm_device*) #1

declare dso_local i32 @drm_mode_vrefresh(%struct.drm_display_mode*) #1

declare dso_local i32 @drm_mode_set_name(%struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

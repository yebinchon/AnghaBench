; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_modes.c_drm_gtf_mode_complex.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_modes.c_drm_gtf_mode_complex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_device = type { i32 }

@DRM_MODE_FLAG_INTERLACE = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NHSYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PVSYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PHSYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NVSYNC = common dso_local global i32 0, align 4
@GTF_CELL_GRAN = common dso_local global i32 0, align 4
@GTF_C_PRIME = common dso_local global i32 0, align 4
@GTF_MARGIN_PERCENTAGE = common dso_local global i32 0, align 4
@GTF_MIN_V_PORCH = common dso_local global i32 0, align 4
@GTF_M_PRIME = common dso_local global i32 0, align 4
@H_SYNC_PERCENT = common dso_local global i32 0, align 4
@MIN_VSYNC_PLUS_BP = common dso_local global i32 0, align 4
@V_SYNC_RQD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_display_mode* @drm_gtf_mode_complex(%struct.drm_device* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca %struct.drm_display_mode*, align 8
  %12 = alloca %struct.drm_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.drm_display_mode*, align 8
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
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %12, align 8
  store i32 %1, i32* %13, align 4
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %10
  %52 = load i32, i32* %14, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %51, %10
  store %struct.drm_display_mode* null, %struct.drm_display_mode** %11, align 8
  br label %291

55:                                               ; preds = %51
  %56 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  %57 = call %struct.drm_display_mode* @drm_mode_create(%struct.drm_device* %56)
  store %struct.drm_display_mode* %57, %struct.drm_display_mode** %22, align 8
  %58 = load %struct.drm_display_mode*, %struct.drm_display_mode** %22, align 8
  %59 = icmp ne %struct.drm_display_mode* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %55
  store %struct.drm_display_mode* null, %struct.drm_display_mode** %11, align 8
  br label %291

61:                                               ; preds = %55
  %62 = load i32, i32* %13, align 4
  %63 = add nsw i32 %62, 4
  %64 = sdiv i32 %63, 8
  store i32 %64, i32* %23, align 4
  %65 = load i32, i32* %23, align 4
  %66 = mul i32 %65, 8
  store i32 %66, i32* %23, align 4
  %67 = load i32, i32* %16, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %61
  %70 = load i32, i32* %14, align 4
  %71 = sdiv i32 %70, 2
  store i32 %71, i32* %24, align 4
  br label %74

72:                                               ; preds = %61
  %73 = load i32, i32* %14, align 4
  store i32 %73, i32* %24, align 4
  br label %74

74:                                               ; preds = %72, %69
  %75 = load i32, i32* %16, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i32, i32* %15, align 4
  %79 = mul nsw i32 %78, 2
  store i32 %79, i32* %25, align 4
  br label %82

80:                                               ; preds = %74
  %81 = load i32, i32* %15, align 4
  store i32 %81, i32* %25, align 4
  br label %82

82:                                               ; preds = %80, %77
  store i32 0, i32* %26, align 4
  %83 = load i32, i32* %17, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %82
  %86 = load i32, i32* %24, align 4
  %87 = mul i32 %86, 18
  %88 = add i32 %87, 500
  %89 = udiv i32 %88, 1000
  store i32 %89, i32* %26, align 4
  br label %90

90:                                               ; preds = %85, %82
  %91 = load i32, i32* %26, align 4
  store i32 %91, i32* %27, align 4
  %92 = load i32, i32* %16, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  store i32 1, i32* %28, align 4
  br label %96

95:                                               ; preds = %90
  store i32 0, i32* %28, align 4
  br label %96

96:                                               ; preds = %95, %94
  %97 = load i32, i32* %25, align 4
  %98 = mul i32 550, %97
  %99 = sub i32 1000000, %98
  %100 = udiv i32 %99, 500
  store i32 %100, i32* %47, align 4
  %101 = load i32, i32* %24, align 4
  %102 = load i32, i32* %26, align 4
  %103 = mul nsw i32 2, %102
  %104 = add i32 %101, %103
  %105 = add i32 %104, 1
  %106 = mul i32 %105, 2
  %107 = load i32, i32* %28, align 4
  %108 = add i32 %106, %107
  store i32 %108, i32* %48, align 4
  %109 = load i32, i32* %48, align 4
  %110 = mul i32 %109, 1000
  %111 = load i32, i32* %25, align 4
  %112 = mul i32 %110, %111
  %113 = load i32, i32* %47, align 4
  %114 = udiv i32 %112, %113
  store i32 %114, i32* %29, align 4
  %115 = load i32, i32* %29, align 4
  %116 = mul i32 550, %115
  %117 = udiv i32 %116, 1000
  store i32 %117, i32* %30, align 4
  %118 = load i32, i32* %30, align 4
  %119 = add nsw i32 %118, 500
  %120 = sdiv i32 %119, 1000
  store i32 %120, i32* %30, align 4
  %121 = load i32, i32* %30, align 4
  %122 = sub nsw i32 %121, 3
  store i32 %122, i32* %31, align 4
  %123 = load i32, i32* %24, align 4
  %124 = load i32, i32* %26, align 4
  %125 = add i32 %123, %124
  %126 = load i32, i32* %27, align 4
  %127 = add i32 %125, %126
  %128 = load i32, i32* %30, align 4
  %129 = add i32 %127, %128
  %130 = add i32 %129, 1
  store i32 %130, i32* %32, align 4
  %131 = load i32, i32* %29, align 4
  %132 = load i32, i32* %32, align 4
  %133 = udiv i32 %131, %132
  store i32 %133, i32* %33, align 4
  %134 = load i32, i32* %25, align 4
  %135 = load i32, i32* %32, align 4
  %136 = mul i32 %134, %135
  %137 = udiv i32 1000000, %136
  store i32 %137, i32* %34, align 4
  %138 = load i32, i32* %29, align 4
  %139 = load i32, i32* %32, align 4
  %140 = udiv i32 %138, %139
  store i32 %140, i32* %35, align 4
  %141 = load i32, i32* %16, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %96
  %144 = load i32, i32* %35, align 4
  %145 = udiv i32 %144, 2
  store i32 %145, i32* %36, align 4
  br label %148

146:                                              ; preds = %96
  %147 = load i32, i32* %35, align 4
  store i32 %147, i32* %36, align 4
  br label %148

148:                                              ; preds = %146, %143
  %149 = load i32, i32* %17, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %148
  %152 = load i32, i32* %23, align 4
  %153 = mul i32 %152, 18
  %154 = add i32 %153, 500
  %155 = udiv i32 %154, 1000
  store i32 %155, i32* %37, align 4
  br label %157

156:                                              ; preds = %148
  store i32 0, i32* %37, align 4
  br label %157

157:                                              ; preds = %156, %151
  %158 = load i32, i32* %37, align 4
  store i32 %158, i32* %38, align 4
  %159 = load i32, i32* %23, align 4
  %160 = load i32, i32* %37, align 4
  %161 = add i32 %159, %160
  %162 = load i32, i32* %38, align 4
  %163 = add i32 %161, %162
  store i32 %163, i32* %39, align 4
  %164 = load i32, i32* %19, align 4
  %165 = load i32, i32* %21, align 4
  %166 = sub nsw i32 %164, %165
  %167 = load i32, i32* %20, align 4
  %168 = mul nsw i32 %166, %167
  %169 = sdiv i32 %168, 256
  %170 = load i32, i32* %21, align 4
  %171 = add nsw i32 %169, %170
  %172 = sdiv i32 %171, 2
  %173 = mul nsw i32 %172, 1000
  %174 = load i32, i32* %20, align 4
  %175 = load i32, i32* %18, align 4
  %176 = mul nsw i32 %174, %175
  %177 = sdiv i32 %176, 256
  %178 = mul nsw i32 %177, 1000000
  %179 = load i32, i32* %29, align 4
  %180 = udiv i32 %178, %179
  %181 = sub i32 %173, %180
  store i32 %181, i32* %40, align 4
  %182 = load i32, i32* %39, align 4
  %183 = load i32, i32* %40, align 4
  %184 = mul i32 %182, %183
  %185 = load i32, i32* %40, align 4
  %186 = sub i32 100000, %185
  %187 = udiv i32 %184, %186
  store i32 %187, i32* %41, align 4
  %188 = load i32, i32* %41, align 4
  %189 = add i32 %188, 8
  %190 = udiv i32 %189, 16
  store i32 %190, i32* %41, align 4
  %191 = load i32, i32* %41, align 4
  %192 = mul i32 %191, 2
  %193 = mul i32 %192, 8
  store i32 %193, i32* %41, align 4
  %194 = load i32, i32* %39, align 4
  %195 = load i32, i32* %41, align 4
  %196 = add i32 %194, %195
  store i32 %196, i32* %42, align 4
  %197 = load i32, i32* %42, align 4
  %198 = load i32, i32* %29, align 4
  %199 = mul i32 %197, %198
  %200 = udiv i32 %199, 1000
  store i32 %200, i32* %43, align 4
  %201 = load i32, i32* %42, align 4
  %202 = mul i32 8, %201
  %203 = udiv i32 %202, 100
  store i32 %203, i32* %44, align 4
  %204 = load i32, i32* %44, align 4
  %205 = add nsw i32 %204, 4
  %206 = sdiv i32 %205, 8
  store i32 %206, i32* %44, align 4
  %207 = load i32, i32* %44, align 4
  %208 = mul nsw i32 %207, 8
  store i32 %208, i32* %44, align 4
  %209 = load i32, i32* %41, align 4
  %210 = udiv i32 %209, 2
  %211 = load i32, i32* %44, align 4
  %212 = sub i32 %210, %211
  store i32 %212, i32* %45, align 4
  store i32 1, i32* %46, align 4
  %213 = load i32, i32* %23, align 4
  %214 = load %struct.drm_display_mode*, %struct.drm_display_mode** %22, align 8
  %215 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %214, i32 0, i32 0
  store i32 %213, i32* %215, align 4
  %216 = load i32, i32* %23, align 4
  %217 = load i32, i32* %45, align 4
  %218 = add i32 %216, %217
  %219 = load %struct.drm_display_mode*, %struct.drm_display_mode** %22, align 8
  %220 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %219, i32 0, i32 1
  store i32 %218, i32* %220, align 4
  %221 = load %struct.drm_display_mode*, %struct.drm_display_mode** %22, align 8
  %222 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* %44, align 4
  %225 = add i32 %223, %224
  %226 = load %struct.drm_display_mode*, %struct.drm_display_mode** %22, align 8
  %227 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %226, i32 0, i32 2
  store i32 %225, i32* %227, align 4
  %228 = load i32, i32* %42, align 4
  %229 = load %struct.drm_display_mode*, %struct.drm_display_mode** %22, align 8
  %230 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %229, i32 0, i32 3
  store i32 %228, i32* %230, align 4
  %231 = load i32, i32* %24, align 4
  %232 = load %struct.drm_display_mode*, %struct.drm_display_mode** %22, align 8
  %233 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %232, i32 0, i32 4
  store i32 %231, i32* %233, align 4
  %234 = load i32, i32* %24, align 4
  %235 = load i32, i32* %46, align 4
  %236 = add i32 %234, %235
  %237 = load %struct.drm_display_mode*, %struct.drm_display_mode** %22, align 8
  %238 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %237, i32 0, i32 5
  store i32 %236, i32* %238, align 4
  %239 = load %struct.drm_display_mode*, %struct.drm_display_mode** %22, align 8
  %240 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %239, i32 0, i32 5
  %241 = load i32, i32* %240, align 4
  %242 = add i32 %241, 3
  %243 = load %struct.drm_display_mode*, %struct.drm_display_mode** %22, align 8
  %244 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %243, i32 0, i32 6
  store i32 %242, i32* %244, align 4
  %245 = load i32, i32* %32, align 4
  %246 = load %struct.drm_display_mode*, %struct.drm_display_mode** %22, align 8
  %247 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %246, i32 0, i32 7
  store i32 %245, i32* %247, align 4
  %248 = load i32, i32* %43, align 4
  %249 = load %struct.drm_display_mode*, %struct.drm_display_mode** %22, align 8
  %250 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %249, i32 0, i32 8
  store i32 %248, i32* %250, align 4
  %251 = load i32, i32* %16, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %263

253:                                              ; preds = %157
  %254 = load %struct.drm_display_mode*, %struct.drm_display_mode** %22, align 8
  %255 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %254, i32 0, i32 7
  %256 = load i32, i32* %255, align 4
  %257 = mul i32 %256, 2
  store i32 %257, i32* %255, align 4
  %258 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %259 = load %struct.drm_display_mode*, %struct.drm_display_mode** %22, align 8
  %260 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %259, i32 0, i32 9
  %261 = load i32, i32* %260, align 4
  %262 = or i32 %261, %258
  store i32 %262, i32* %260, align 4
  br label %263

263:                                              ; preds = %253, %157
  %264 = load %struct.drm_display_mode*, %struct.drm_display_mode** %22, align 8
  %265 = call i32 @drm_mode_set_name(%struct.drm_display_mode* %264)
  %266 = load i32, i32* %18, align 4
  %267 = icmp eq i32 %266, 600
  br i1 %267, label %268, label %283

268:                                              ; preds = %263
  %269 = load i32, i32* %19, align 4
  %270 = icmp eq i32 %269, 80
  br i1 %270, label %271, label %283

271:                                              ; preds = %268
  %272 = load i32, i32* %20, align 4
  %273 = icmp eq i32 %272, 128
  br i1 %273, label %274, label %283

274:                                              ; preds = %271
  %275 = load i32, i32* %21, align 4
  %276 = icmp eq i32 %275, 40
  br i1 %276, label %277, label %283

277:                                              ; preds = %274
  %278 = load i32, i32* @DRM_MODE_FLAG_NHSYNC, align 4
  %279 = load i32, i32* @DRM_MODE_FLAG_PVSYNC, align 4
  %280 = or i32 %278, %279
  %281 = load %struct.drm_display_mode*, %struct.drm_display_mode** %22, align 8
  %282 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %281, i32 0, i32 9
  store i32 %280, i32* %282, align 4
  br label %289

283:                                              ; preds = %274, %271, %268, %263
  %284 = load i32, i32* @DRM_MODE_FLAG_PHSYNC, align 4
  %285 = load i32, i32* @DRM_MODE_FLAG_NVSYNC, align 4
  %286 = or i32 %284, %285
  %287 = load %struct.drm_display_mode*, %struct.drm_display_mode** %22, align 8
  %288 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %287, i32 0, i32 9
  store i32 %286, i32* %288, align 4
  br label %289

289:                                              ; preds = %283, %277
  %290 = load %struct.drm_display_mode*, %struct.drm_display_mode** %22, align 8
  store %struct.drm_display_mode* %290, %struct.drm_display_mode** %11, align 8
  br label %291

291:                                              ; preds = %289, %60, %54
  %292 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  ret %struct.drm_display_mode* %292
}

declare dso_local %struct.drm_display_mode* @drm_mode_create(%struct.drm_device*) #1

declare dso_local i32 @drm_mode_set_name(%struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

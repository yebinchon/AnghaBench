; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_ovl_setup_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_ovl_setup_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dispc_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.videomode = type { i32, i64 }
%struct.drm_format_info = type { i64 }

@DISPLAY_FLAGS_INTERLACED = common dso_local global i32 0, align 4
@OMAP_DSS_WB = common dso_local global i32 0, align 4
@OMAP_DSS_ROT_TILER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"input width %d is not even for YUV format\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"adjusting for ilace: height %d, pos_y %d, out_height %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"predecimation %d x %x, new input size %d x %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"predecimated input width is not even for YUV format\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"adjusting input width %d -> %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"offset0 %u, offset1 %u, row_inc %d, pix_inc %d\0A\00", align 1
@DRM_FORMAT_NV12 = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [22 x i8] c"%d,%d %dx%d -> %dx%d\0A\00", align 1
@OMAP_DSS_OVL_CAP_SCALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dispc_device*, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, %struct.videomode*, i32)* @dispc_ovl_setup_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dispc_ovl_setup_common(%struct.dispc_device* %0, i32 %1, i32 %2, i64 %3, i64 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i64 %12, i32 %13, i32 %14, i32 %15, i32 %16, i32 %17, i32 %18, %struct.videomode* %19, i32 %20) #0 {
  %22 = alloca i32, align 4
  %23 = alloca %struct.dispc_device*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i64, align 8
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca %struct.videomode*, align 8
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = alloca i32, align 4
  %54 = alloca i32, align 4
  %55 = alloca i32, align 4
  %56 = alloca i32, align 4
  %57 = alloca i32, align 4
  %58 = alloca i32, align 4
  %59 = alloca i64, align 8
  %60 = alloca i64, align 8
  %61 = alloca %struct.drm_format_info*, align 8
  store %struct.dispc_device* %0, %struct.dispc_device** %23, align 8
  store i32 %1, i32* %24, align 4
  store i32 %2, i32* %25, align 4
  store i64 %3, i64* %26, align 8
  store i64 %4, i64* %27, align 8
  store i32 %5, i32* %28, align 4
  store i32 %6, i32* %29, align 4
  store i32 %7, i32* %30, align 4
  store i32 %8, i32* %31, align 4
  store i32 %9, i32* %32, align 4
  store i32 %10, i32* %33, align 4
  store i32 %11, i32* %34, align 4
  store i64 %12, i64* %35, align 8
  store i32 %13, i32* %36, align 4
  store i32 %14, i32* %37, align 4
  store i32 %15, i32* %38, align 4
  store i32 %16, i32* %39, align 4
  store i32 %17, i32* %40, align 4
  store i32 %18, i32* %41, align 4
  store %struct.videomode* %19, %struct.videomode** %42, align 8
  store i32 %20, i32* %43, align 4
  store i32 1, i32* %44, align 4
  store i32 0, i32* %45, align 4
  store i32 0, i32* %47, align 4
  store i32 0, i32* %53, align 4
  %62 = load i32, i32* %32, align 4
  store i32 %62, i32* %54, align 4
  %63 = load i32, i32* %31, align 4
  store i32 %63, i32* %55, align 4
  store i32 1, i32* %56, align 4
  store i32 1, i32* %57, align 4
  %64 = load %struct.videomode*, %struct.videomode** %42, align 8
  %65 = getelementptr inbounds %struct.videomode, %struct.videomode* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @DISPLAY_FLAGS_INTERLACED, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %58, align 4
  %73 = load %struct.dispc_device*, %struct.dispc_device** %23, align 8
  %74 = load i32, i32* %24, align 4
  %75 = call i64 @dispc_plane_pclk_rate(%struct.dispc_device* %73, i32 %74)
  store i64 %75, i64* %59, align 8
  %76 = load %struct.dispc_device*, %struct.dispc_device** %23, align 8
  %77 = load i32, i32* %24, align 4
  %78 = call i64 @dispc_plane_lclk_rate(%struct.dispc_device* %76, i32 %77)
  store i64 %78, i64* %60, align 8
  %79 = load i64, i64* %35, align 8
  %80 = call %struct.drm_format_info* @drm_format_info(i64 %79)
  store %struct.drm_format_info* %80, %struct.drm_format_info** %61, align 8
  %81 = load i32, i32* %24, align 4
  %82 = load i32, i32* @OMAP_DSS_WB, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %21
  %85 = load %struct.videomode*, %struct.videomode** %42, align 8
  %86 = getelementptr inbounds %struct.videomode, %struct.videomode* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %59, align 8
  br label %88

88:                                               ; preds = %84, %21
  %89 = load i64, i64* %26, align 8
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %88
  %92 = load i32, i32* %40, align 4
  %93 = load i32, i32* @OMAP_DSS_ROT_TILER, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %22, align 4
  br label %420

98:                                               ; preds = %91, %88
  %99 = load %struct.drm_format_info*, %struct.drm_format_info** %61, align 8
  %100 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %98
  %104 = load i32, i32* %55, align 4
  %105 = and i32 %104, 1
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %103
  %108 = load i32, i32* %55, align 4
  %109 = call i32 @DSSERR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %22, align 4
  br label %420

112:                                              ; preds = %103, %98
  %113 = load i32, i32* %33, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %112
  %116 = load i32, i32* %31, align 4
  br label %119

117:                                              ; preds = %112
  %118 = load i32, i32* %33, align 4
  br label %119

119:                                              ; preds = %117, %115
  %120 = phi i32 [ %116, %115 ], [ %118, %117 ]
  store i32 %120, i32* %33, align 4
  %121 = load i32, i32* %34, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %119
  %124 = load i32, i32* %32, align 4
  br label %127

125:                                              ; preds = %119
  %126 = load i32, i32* %34, align 4
  br label %127

127:                                              ; preds = %125, %123
  %128 = phi i32 [ %124, %123 ], [ %126, %125 ]
  store i32 %128, i32* %34, align 4
  %129 = load i32, i32* %24, align 4
  %130 = load i32, i32* @OMAP_DSS_WB, align 4
  %131 = icmp ne i32 %129, %130
  br i1 %131, label %132, label %159

132:                                              ; preds = %127
  %133 = load i32, i32* %58, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %132
  %136 = load i32, i32* %32, align 4
  %137 = load i32, i32* %34, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %135
  store i32 1, i32* %45, align 4
  br label %140

140:                                              ; preds = %139, %135, %132
  %141 = load i32, i32* %58, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %158

143:                                              ; preds = %140
  %144 = load i32, i32* %45, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = load i32, i32* %54, align 4
  %148 = sdiv i32 %147, 2
  store i32 %148, i32* %54, align 4
  br label %149

149:                                              ; preds = %146, %143
  %150 = load i32, i32* %30, align 4
  %151 = sdiv i32 %150, 2
  store i32 %151, i32* %30, align 4
  %152 = load i32, i32* %34, align 4
  %153 = sdiv i32 %152, 2
  store i32 %153, i32* %34, align 4
  %154 = load i32, i32* %54, align 4
  %155 = load i32, i32* %30, align 4
  %156 = load i32, i32* %34, align 4
  %157 = call i32 (i8*, ...) @DSSDBG(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %154, i32 %155, i32 %156)
  br label %158

158:                                              ; preds = %149, %140
  br label %159

159:                                              ; preds = %158, %127
  %160 = load %struct.dispc_device*, %struct.dispc_device** %23, align 8
  %161 = load i32, i32* %24, align 4
  %162 = load i64, i64* %35, align 8
  %163 = call i32 @dispc_ovl_color_mode_supported(%struct.dispc_device* %160, i32 %161, i64 %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %168, label %165

165:                                              ; preds = %159
  %166 = load i32, i32* @EINVAL, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %22, align 4
  br label %420

168:                                              ; preds = %159
  %169 = load %struct.dispc_device*, %struct.dispc_device** %23, align 8
  %170 = load i32, i32* %24, align 4
  %171 = load i64, i64* %59, align 8
  %172 = load i64, i64* %60, align 8
  %173 = load i32, i32* %25, align 4
  %174 = load %struct.videomode*, %struct.videomode** %42, align 8
  %175 = load i32, i32* %55, align 4
  %176 = load i32, i32* %54, align 4
  %177 = load i32, i32* %33, align 4
  %178 = load i32, i32* %34, align 4
  %179 = load i64, i64* %35, align 8
  %180 = load i32, i32* %29, align 4
  %181 = load i32, i32* %40, align 4
  %182 = load i32, i32* %43, align 4
  %183 = call i32 @dispc_ovl_calc_scaling(%struct.dispc_device* %169, i32 %170, i64 %171, i64 %172, i32 %173, %struct.videomode* %174, i32 %175, i32 %176, i32 %177, i32 %178, i64 %179, i32* %44, i32* %56, i32* %57, i32 %180, i32 %181, i32 %182)
  store i32 %183, i32* %46, align 4
  %184 = load i32, i32* %46, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %168
  %187 = load i32, i32* %46, align 4
  store i32 %187, i32* %22, align 4
  br label %420

188:                                              ; preds = %168
  %189 = load i32, i32* %55, align 4
  %190 = load i32, i32* %56, align 4
  %191 = sdiv i32 %189, %190
  store i32 %191, i32* %55, align 4
  %192 = load i32, i32* %54, align 4
  %193 = load i32, i32* %57, align 4
  %194 = sdiv i32 %192, %193
  store i32 %194, i32* %54, align 4
  %195 = load i32, i32* %56, align 4
  %196 = icmp sgt i32 %195, 1
  br i1 %196, label %200, label %197

197:                                              ; preds = %188
  %198 = load i32, i32* %57, align 4
  %199 = icmp sgt i32 %198, 1
  br i1 %199, label %200, label %206

200:                                              ; preds = %197, %188
  %201 = load i32, i32* %56, align 4
  %202 = load i32, i32* %57, align 4
  %203 = load i32, i32* %55, align 4
  %204 = load i32, i32* %54, align 4
  %205 = call i32 (i8*, ...) @DSSDBG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %201, i32 %202, i32 %203, i32 %204)
  br label %206

206:                                              ; preds = %200, %197
  %207 = load %struct.drm_format_info*, %struct.drm_format_info** %61, align 8
  %208 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %223

211:                                              ; preds = %206
  %212 = load i32, i32* %55, align 4
  %213 = and i32 %212, 1
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %223

215:                                              ; preds = %211
  %216 = call i32 (i8*, ...) @DSSDBG(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  %217 = load i32, i32* %55, align 4
  %218 = load i32, i32* %55, align 4
  %219 = and i32 %218, -2
  %220 = call i32 (i8*, ...) @DSSDBG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %217, i32 %219)
  %221 = load i32, i32* %55, align 4
  %222 = and i32 %221, -2
  store i32 %222, i32* %55, align 4
  br label %223

223:                                              ; preds = %215, %211, %206
  %224 = load %struct.drm_format_info*, %struct.drm_format_info** %61, align 8
  %225 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %223
  store i32 1, i32* %47, align 4
  br label %229

229:                                              ; preds = %228, %223
  %230 = load i32, i32* %58, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %249

232:                                              ; preds = %229
  %233 = load i32, i32* %45, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %249, label %235

235:                                              ; preds = %232
  %236 = load i32, i32* %54, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %242

238:                                              ; preds = %235
  %239 = load i32, i32* %54, align 4
  %240 = load i32, i32* %34, align 4
  %241 = icmp eq i32 %239, %240
  br i1 %241, label %242, label %243

242:                                              ; preds = %238, %235
  store i32 0, i32* %53, align 4
  br label %248

243:                                              ; preds = %238
  %244 = load i32, i32* %54, align 4
  %245 = load i32, i32* %34, align 4
  %246 = sdiv i32 %244, %245
  %247 = sdiv i32 %246, 2
  store i32 %247, i32* %53, align 4
  br label %248

248:                                              ; preds = %243, %242
  br label %249

249:                                              ; preds = %248, %232, %229
  %250 = load i32, i32* %45, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %253

252:                                              ; preds = %249
  store i32 1, i32* %53, align 4
  br label %253

253:                                              ; preds = %252, %249
  store i32 0, i32* %48, align 4
  store i32 0, i32* %49, align 4
  store i32 0, i32* %50, align 4
  store i32 0, i32* %51, align 4
  %254 = load i32, i32* %24, align 4
  %255 = load i32, i32* @OMAP_DSS_WB, align 4
  %256 = icmp eq i32 %254, %255
  br i1 %256, label %257, label %259

257:                                              ; preds = %253
  %258 = load i32, i32* %33, align 4
  store i32 %258, i32* %52, align 4
  br label %261

259:                                              ; preds = %253
  %260 = load i32, i32* %55, align 4
  store i32 %260, i32* %52, align 4
  br label %261

261:                                              ; preds = %259, %257
  %262 = load i32, i32* %28, align 4
  %263 = load i32, i32* %52, align 4
  %264 = load i64, i64* %35, align 8
  %265 = load i32, i32* %45, align 4
  %266 = load i32, i32* %53, align 4
  %267 = load i32, i32* %56, align 4
  %268 = load i32, i32* %57, align 4
  %269 = load i32, i32* %40, align 4
  %270 = load i32, i32* %36, align 4
  %271 = call i32 @calc_offset(i32 %262, i32 %263, i64 %264, i32 %265, i32 %266, i32* %48, i32* %49, i32* %50, i32* %51, i32 %267, i32 %268, i32 %269, i32 %270)
  %272 = load i32, i32* %48, align 4
  %273 = load i32, i32* %49, align 4
  %274 = load i32, i32* %50, align 4
  %275 = load i32, i32* %51, align 4
  %276 = call i32 (i8*, ...) @DSSDBG(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i32 %272, i32 %273, i32 %274, i32 %275)
  %277 = load %struct.dispc_device*, %struct.dispc_device** %23, align 8
  %278 = load i32, i32* %24, align 4
  %279 = load i64, i64* %35, align 8
  %280 = call i32 @dispc_ovl_set_color_mode(%struct.dispc_device* %277, i32 %278, i64 %279)
  %281 = load %struct.dispc_device*, %struct.dispc_device** %23, align 8
  %282 = load i32, i32* %24, align 4
  %283 = load i32, i32* %40, align 4
  %284 = call i32 @dispc_ovl_configure_burst_type(%struct.dispc_device* %281, i32 %282, i32 %283)
  %285 = load %struct.dispc_device*, %struct.dispc_device** %23, align 8
  %286 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %285, i32 0, i32 0
  %287 = load %struct.TYPE_2__*, %struct.TYPE_2__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %287, i32 0, i32 1
  %289 = load i64, i64* %288, align 8
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %295

291:                                              ; preds = %261
  %292 = load i32, i32* %48, align 4
  %293 = load i32, i32* %49, align 4
  %294 = call i32 @swap(i32 %292, i32 %293)
  br label %295

295:                                              ; preds = %291, %261
  %296 = load %struct.dispc_device*, %struct.dispc_device** %23, align 8
  %297 = load i32, i32* %24, align 4
  %298 = load i64, i64* %26, align 8
  %299 = load i32, i32* %48, align 4
  %300 = zext i32 %299 to i64
  %301 = add nsw i64 %298, %300
  %302 = call i32 @dispc_ovl_set_ba0(%struct.dispc_device* %296, i32 %297, i64 %301)
  %303 = load %struct.dispc_device*, %struct.dispc_device** %23, align 8
  %304 = load i32, i32* %24, align 4
  %305 = load i64, i64* %26, align 8
  %306 = load i32, i32* %49, align 4
  %307 = zext i32 %306 to i64
  %308 = add nsw i64 %305, %307
  %309 = call i32 @dispc_ovl_set_ba1(%struct.dispc_device* %303, i32 %304, i64 %308)
  %310 = load i64, i64* %35, align 8
  %311 = load i64, i64* @DRM_FORMAT_NV12, align 8
  %312 = icmp eq i64 %310, %311
  br i1 %312, label %313, label %328

313:                                              ; preds = %295
  %314 = load %struct.dispc_device*, %struct.dispc_device** %23, align 8
  %315 = load i32, i32* %24, align 4
  %316 = load i64, i64* %27, align 8
  %317 = load i32, i32* %48, align 4
  %318 = zext i32 %317 to i64
  %319 = add nsw i64 %316, %318
  %320 = call i32 @dispc_ovl_set_ba0_uv(%struct.dispc_device* %314, i32 %315, i64 %319)
  %321 = load %struct.dispc_device*, %struct.dispc_device** %23, align 8
  %322 = load i32, i32* %24, align 4
  %323 = load i64, i64* %27, align 8
  %324 = load i32, i32* %49, align 4
  %325 = zext i32 %324 to i64
  %326 = add nsw i64 %323, %325
  %327 = call i32 @dispc_ovl_set_ba1_uv(%struct.dispc_device* %321, i32 %322, i64 %326)
  br label %328

328:                                              ; preds = %313, %295
  %329 = load %struct.dispc_device*, %struct.dispc_device** %23, align 8
  %330 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %329, i32 0, i32 0
  %331 = load %struct.TYPE_2__*, %struct.TYPE_2__** %330, align 8
  %332 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %331, i32 0, i32 0
  %333 = load i64, i64* %332, align 8
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %340

335:                                              ; preds = %328
  %336 = load i32, i32* %51, align 4
  %337 = sub nsw i32 %336, 1
  %338 = load i32, i32* %50, align 4
  %339 = add nsw i32 %338, %337
  store i32 %339, i32* %50, align 4
  br label %340

340:                                              ; preds = %335, %328
  %341 = load %struct.dispc_device*, %struct.dispc_device** %23, align 8
  %342 = load i32, i32* %24, align 4
  %343 = load i32, i32* %50, align 4
  %344 = call i32 @dispc_ovl_set_row_inc(%struct.dispc_device* %341, i32 %342, i32 %343)
  %345 = load %struct.dispc_device*, %struct.dispc_device** %23, align 8
  %346 = load i32, i32* %24, align 4
  %347 = load i32, i32* %51, align 4
  %348 = call i32 @dispc_ovl_set_pix_inc(%struct.dispc_device* %345, i32 %346, i32 %347)
  %349 = load i32, i32* %29, align 4
  %350 = load i32, i32* %30, align 4
  %351 = load i32, i32* %55, align 4
  %352 = load i32, i32* %54, align 4
  %353 = load i32, i32* %33, align 4
  %354 = load i32, i32* %34, align 4
  %355 = call i32 (i8*, ...) @DSSDBG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %349, i32 %350, i32 %351, i32 %352, i32 %353, i32 %354)
  %356 = load %struct.dispc_device*, %struct.dispc_device** %23, align 8
  %357 = load i32, i32* %24, align 4
  %358 = load i32, i32* %25, align 4
  %359 = load i32, i32* %29, align 4
  %360 = load i32, i32* %30, align 4
  %361 = call i32 @dispc_ovl_set_pos(%struct.dispc_device* %356, i32 %357, i32 %358, i32 %359, i32 %360)
  %362 = load %struct.dispc_device*, %struct.dispc_device** %23, align 8
  %363 = load i32, i32* %24, align 4
  %364 = load i32, i32* %55, align 4
  %365 = load i32, i32* %54, align 4
  %366 = call i32 @dispc_ovl_set_input_size(%struct.dispc_device* %362, i32 %363, i32 %364, i32 %365)
  %367 = load i32, i32* %25, align 4
  %368 = load i32, i32* @OMAP_DSS_OVL_CAP_SCALE, align 4
  %369 = and i32 %367, %368
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %393

371:                                              ; preds = %340
  %372 = load %struct.dispc_device*, %struct.dispc_device** %23, align 8
  %373 = load i32, i32* %24, align 4
  %374 = load i32, i32* %55, align 4
  %375 = load i32, i32* %54, align 4
  %376 = load i32, i32* %33, align 4
  %377 = load i32, i32* %34, align 4
  %378 = load i32, i32* %58, align 4
  %379 = load i32, i32* %44, align 4
  %380 = load i32, i32* %45, align 4
  %381 = load i64, i64* %35, align 8
  %382 = load i32, i32* %36, align 4
  %383 = call i32 @dispc_ovl_set_scaling(%struct.dispc_device* %372, i32 %373, i32 %374, i32 %375, i32 %376, i32 %377, i32 %378, i32 %379, i32 %380, i64 %381, i32 %382)
  %384 = load %struct.dispc_device*, %struct.dispc_device** %23, align 8
  %385 = load i32, i32* %24, align 4
  %386 = load i32, i32* %33, align 4
  %387 = load i32, i32* %34, align 4
  %388 = call i32 @dispc_ovl_set_output_size(%struct.dispc_device* %384, i32 %385, i32 %386, i32 %387)
  %389 = load %struct.dispc_device*, %struct.dispc_device** %23, align 8
  %390 = load i32, i32* %24, align 4
  %391 = load i32, i32* %47, align 4
  %392 = call i32 @dispc_ovl_set_vid_color_conv(%struct.dispc_device* %389, i32 %390, i32 %391)
  br label %393

393:                                              ; preds = %371, %340
  %394 = load %struct.dispc_device*, %struct.dispc_device** %23, align 8
  %395 = load i32, i32* %24, align 4
  %396 = load i32, i32* %36, align 4
  %397 = load i32, i32* %40, align 4
  %398 = load i64, i64* %35, align 8
  %399 = call i32 @dispc_ovl_set_rotation_attrs(%struct.dispc_device* %394, i32 %395, i32 %396, i32 %397, i64 %398)
  %400 = load %struct.dispc_device*, %struct.dispc_device** %23, align 8
  %401 = load i32, i32* %24, align 4
  %402 = load i32, i32* %25, align 4
  %403 = load i32, i32* %37, align 4
  %404 = call i32 @dispc_ovl_set_zorder(%struct.dispc_device* %400, i32 %401, i32 %402, i32 %403)
  %405 = load %struct.dispc_device*, %struct.dispc_device** %23, align 8
  %406 = load i32, i32* %24, align 4
  %407 = load i32, i32* %25, align 4
  %408 = load i32, i32* %38, align 4
  %409 = call i32 @dispc_ovl_set_pre_mult_alpha(%struct.dispc_device* %405, i32 %406, i32 %407, i32 %408)
  %410 = load %struct.dispc_device*, %struct.dispc_device** %23, align 8
  %411 = load i32, i32* %24, align 4
  %412 = load i32, i32* %25, align 4
  %413 = load i32, i32* %39, align 4
  %414 = call i32 @dispc_ovl_setup_global_alpha(%struct.dispc_device* %410, i32 %411, i32 %412, i32 %413)
  %415 = load %struct.dispc_device*, %struct.dispc_device** %23, align 8
  %416 = load i32, i32* %24, align 4
  %417 = load i32, i32* %25, align 4
  %418 = load i32, i32* %41, align 4
  %419 = call i32 @dispc_ovl_enable_replication(%struct.dispc_device* %415, i32 %416, i32 %417, i32 %418)
  store i32 0, i32* %22, align 4
  br label %420

420:                                              ; preds = %393, %186, %165, %107, %95
  %421 = load i32, i32* %22, align 4
  ret i32 %421
}

declare dso_local i64 @dispc_plane_pclk_rate(%struct.dispc_device*, i32) #1

declare dso_local i64 @dispc_plane_lclk_rate(%struct.dispc_device*, i32) #1

declare dso_local %struct.drm_format_info* @drm_format_info(i64) #1

declare dso_local i32 @DSSERR(i8*, i32) #1

declare dso_local i32 @DSSDBG(i8*, ...) #1

declare dso_local i32 @dispc_ovl_color_mode_supported(%struct.dispc_device*, i32, i64) #1

declare dso_local i32 @dispc_ovl_calc_scaling(%struct.dispc_device*, i32, i64, i64, i32, %struct.videomode*, i32, i32, i32, i32, i64, i32*, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @calc_offset(i32, i32, i64, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @dispc_ovl_set_color_mode(%struct.dispc_device*, i32, i64) #1

declare dso_local i32 @dispc_ovl_configure_burst_type(%struct.dispc_device*, i32, i32) #1

declare dso_local i32 @swap(i32, i32) #1

declare dso_local i32 @dispc_ovl_set_ba0(%struct.dispc_device*, i32, i64) #1

declare dso_local i32 @dispc_ovl_set_ba1(%struct.dispc_device*, i32, i64) #1

declare dso_local i32 @dispc_ovl_set_ba0_uv(%struct.dispc_device*, i32, i64) #1

declare dso_local i32 @dispc_ovl_set_ba1_uv(%struct.dispc_device*, i32, i64) #1

declare dso_local i32 @dispc_ovl_set_row_inc(%struct.dispc_device*, i32, i32) #1

declare dso_local i32 @dispc_ovl_set_pix_inc(%struct.dispc_device*, i32, i32) #1

declare dso_local i32 @dispc_ovl_set_pos(%struct.dispc_device*, i32, i32, i32, i32) #1

declare dso_local i32 @dispc_ovl_set_input_size(%struct.dispc_device*, i32, i32, i32) #1

declare dso_local i32 @dispc_ovl_set_scaling(%struct.dispc_device*, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32) #1

declare dso_local i32 @dispc_ovl_set_output_size(%struct.dispc_device*, i32, i32, i32) #1

declare dso_local i32 @dispc_ovl_set_vid_color_conv(%struct.dispc_device*, i32, i32) #1

declare dso_local i32 @dispc_ovl_set_rotation_attrs(%struct.dispc_device*, i32, i32, i32, i64) #1

declare dso_local i32 @dispc_ovl_set_zorder(%struct.dispc_device*, i32, i32, i32) #1

declare dso_local i32 @dispc_ovl_set_pre_mult_alpha(%struct.dispc_device*, i32, i32, i32) #1

declare dso_local i32 @dispc_ovl_setup_global_alpha(%struct.dispc_device*, i32, i32, i32) #1

declare dso_local i32 @dispc_ovl_enable_replication(%struct.dispc_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

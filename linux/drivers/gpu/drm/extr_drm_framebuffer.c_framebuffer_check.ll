; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_framebuffer.c_framebuffer_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_framebuffer.c_framebuffer_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_mode_fb_cmd2 = type { i32, i32, i32*, i32*, i64*, i32, i64*, i32 }
%struct.drm_format_info = type { i32, i32* }
%struct.drm_format_name_buf = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"bad framebuffer format %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"bad framebuffer width %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"bad framebuffer height %u\0A\00", align 1
@DRM_FORMAT_MOD_LINEAR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [50 x i8] c"Format requires non-linear modifier for plane %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"no buffer object handle for plane %d\0A\00", align 1
@UINT_MAX = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"bad pitch %u for plane %d\0A\00", align 1
@DRM_MODE_FB_MODIFIERS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"bad fb modifier %llu for plane %d\0A\00", align 1
@DRM_FORMAT_NV12 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"bad modifier data for plane %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"non-zero modifier for unused plane %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"buffer object handle for unused plane %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"non-zero pitch for unused plane %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"non-zero offset for unused plane %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.drm_mode_fb_cmd2*)* @framebuffer_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @framebuffer_check(%struct.drm_device* %0, %struct.drm_mode_fb_cmd2* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_mode_fb_cmd2*, align 8
  %6 = alloca %struct.drm_format_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_format_name_buf, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.drm_mode_fb_cmd2* %1, %struct.drm_mode_fb_cmd2** %5, align 8
  %13 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %5, align 8
  %14 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %13, i32 0, i32 7
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.drm_format_info* @__drm_format_info(i32 %15)
  store %struct.drm_format_info* %16, %struct.drm_format_info** %6, align 8
  %17 = load %struct.drm_format_info*, %struct.drm_format_info** %6, align 8
  %18 = icmp ne %struct.drm_format_info* %17, null
  br i1 %18, label %27, label %19

19:                                               ; preds = %2
  %20 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %5, align 8
  %21 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %20, i32 0, i32 7
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @drm_get_format_name(i32 %22, %struct.drm_format_name_buf* %8)
  %24 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %353

27:                                               ; preds = %2
  %28 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %29 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %5, align 8
  %30 = call %struct.drm_format_info* @drm_get_format_info(%struct.drm_device* %28, %struct.drm_mode_fb_cmd2* %29)
  store %struct.drm_format_info* %30, %struct.drm_format_info** %6, align 8
  %31 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %5, align 8
  %32 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %27
  %36 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %5, align 8
  %37 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %353

42:                                               ; preds = %27
  %43 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %5, align 8
  %44 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %5, align 8
  %49 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %353

54:                                               ; preds = %42
  store i32 0, i32* %7, align 4
  br label %55

55:                                               ; preds = %274, %54
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.drm_format_info*, %struct.drm_format_info** %6, align 8
  %58 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %61, label %277

61:                                               ; preds = %55
  %62 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %5, align 8
  %63 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.drm_format_info*, %struct.drm_format_info** %6, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @fb_plane_width(i32 %64, %struct.drm_format_info* %65, i32 %66)
  store i32 %67, i32* %9, align 4
  %68 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %5, align 8
  %69 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.drm_format_info*, %struct.drm_format_info** %6, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @fb_plane_height(i32 %70, %struct.drm_format_info* %71, i32 %72)
  store i32 %73, i32* %10, align 4
  %74 = load %struct.drm_format_info*, %struct.drm_format_info** %6, align 8
  %75 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %11, align 4
  %81 = load %struct.drm_format_info*, %struct.drm_format_info** %6, align 8
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %9, align 4
  %84 = call i64 @drm_format_info_min_pitch(%struct.drm_format_info* %81, i32 %82, i32 %83)
  store i64 %84, i64* %12, align 8
  %85 = load i32, i32* %11, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %102, label %87

87:                                               ; preds = %61
  %88 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %5, align 8
  %89 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @DRM_FORMAT_MOD_LINEAR, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %87
  %98 = load i32, i32* %7, align 4
  %99 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %3, align 4
  br label %353

102:                                              ; preds = %87, %61
  %103 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %5, align 8
  %104 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %103, i32 0, i32 6
  %105 = load i64*, i64** %104, align 8
  %106 = load i32, i32* %7, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %105, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %116, label %111

111:                                              ; preds = %102
  %112 = load i32, i32* %7, align 4
  %113 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %112)
  %114 = load i32, i32* @EINVAL, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %3, align 4
  br label %353

116:                                              ; preds = %102
  %117 = load i64, i64* %12, align 8
  %118 = load i64, i64* @UINT_MAX, align 8
  %119 = icmp sgt i64 %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  %121 = load i32, i32* @ERANGE, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %3, align 4
  br label %353

123:                                              ; preds = %116
  %124 = load i32, i32* %10, align 4
  %125 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %5, align 8
  %126 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %125, i32 0, i32 3
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %7, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = mul nsw i32 %124, %131
  %133 = sext i32 %132 to i64
  %134 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %5, align 8
  %135 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %134, i32 0, i32 4
  %136 = load i64*, i64** %135, align 8
  %137 = load i32, i32* %7, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i64, i64* %136, i64 %138
  %140 = load i64, i64* %139, align 8
  %141 = add nsw i64 %133, %140
  %142 = load i64, i64* @UINT_MAX, align 8
  %143 = icmp sgt i64 %141, %142
  br i1 %143, label %144, label %147

144:                                              ; preds = %123
  %145 = load i32, i32* @ERANGE, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %3, align 4
  br label %353

147:                                              ; preds = %123
  %148 = load i32, i32* %11, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %173

150:                                              ; preds = %147
  %151 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %5, align 8
  %152 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %151, i32 0, i32 3
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %7, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = sext i32 %157 to i64
  %159 = load i64, i64* %12, align 8
  %160 = icmp slt i64 %158, %159
  br i1 %160, label %161, label %173

161:                                              ; preds = %150
  %162 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %5, align 8
  %163 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %162, i32 0, i32 3
  %164 = load i32*, i32** %163, align 8
  %165 = load i32, i32* %7, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %7, align 4
  %170 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %168, i32 %169)
  %171 = load i32, i32* @EINVAL, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %3, align 4
  br label %353

173:                                              ; preds = %150, %147
  %174 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %5, align 8
  %175 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %174, i32 0, i32 2
  %176 = load i32*, i32** %175, align 8
  %177 = load i32, i32* %7, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %201

182:                                              ; preds = %173
  %183 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %5, align 8
  %184 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %183, i32 0, i32 5
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @DRM_MODE_FB_MODIFIERS, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %201, label %189

189:                                              ; preds = %182
  %190 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %5, align 8
  %191 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %190, i32 0, i32 2
  %192 = load i32*, i32** %191, align 8
  %193 = load i32, i32* %7, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* %7, align 4
  %198 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %196, i32 %197)
  %199 = load i32, i32* @EINVAL, align 4
  %200 = sub nsw i32 0, %199
  store i32 %200, i32* %3, align 4
  br label %353

201:                                              ; preds = %182, %173
  %202 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %5, align 8
  %203 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %202, i32 0, i32 5
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @DRM_MODE_FB_MODIFIERS, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %234

208:                                              ; preds = %201
  %209 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %5, align 8
  %210 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %209, i32 0, i32 2
  %211 = load i32*, i32** %210, align 8
  %212 = load i32, i32* %7, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %5, align 8
  %217 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %216, i32 0, i32 2
  %218 = load i32*, i32** %217, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 0
  %220 = load i32, i32* %219, align 4
  %221 = icmp ne i32 %215, %220
  br i1 %221, label %222, label %234

222:                                              ; preds = %208
  %223 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %5, align 8
  %224 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %223, i32 0, i32 2
  %225 = load i32*, i32** %224, align 8
  %226 = load i32, i32* %7, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %225, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* %7, align 4
  %231 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %229, i32 %230)
  %232 = load i32, i32* @EINVAL, align 4
  %233 = sub nsw i32 0, %232
  store i32 %233, i32* %3, align 4
  br label %353

234:                                              ; preds = %208, %201
  %235 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %5, align 8
  %236 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %235, i32 0, i32 2
  %237 = load i32*, i32** %236, align 8
  %238 = load i32, i32* %7, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  %241 = load i32, i32* %240, align 4
  switch i32 %241, label %272 [
    i32 128, label %242
  ]

242:                                              ; preds = %234
  %243 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %5, align 8
  %244 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %243, i32 0, i32 7
  %245 = load i32, i32* %244, align 8
  %246 = load i32, i32* @DRM_FORMAT_NV12, align 4
  %247 = icmp ne i32 %245, %246
  br i1 %247, label %266, label %248

248:                                              ; preds = %242
  %249 = load i32, i32* %9, align 4
  %250 = urem i32 %249, 128
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %266, label %252

252:                                              ; preds = %248
  %253 = load i32, i32* %10, align 4
  %254 = urem i32 %253, 32
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %266, label %256

256:                                              ; preds = %252
  %257 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %5, align 8
  %258 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %257, i32 0, i32 3
  %259 = load i32*, i32** %258, align 8
  %260 = load i32, i32* %7, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %259, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = srem i32 %263, 128
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %271

266:                                              ; preds = %256, %252, %248, %242
  %267 = load i32, i32* %7, align 4
  %268 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %267)
  %269 = load i32, i32* @EINVAL, align 4
  %270 = sub nsw i32 0, %269
  store i32 %270, i32* %3, align 4
  br label %353

271:                                              ; preds = %256
  br label %273

272:                                              ; preds = %234
  br label %273

273:                                              ; preds = %272, %271
  br label %274

274:                                              ; preds = %273
  %275 = load i32, i32* %7, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %7, align 4
  br label %55

277:                                              ; preds = %55
  %278 = load %struct.drm_format_info*, %struct.drm_format_info** %6, align 8
  %279 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  store i32 %280, i32* %7, align 4
  br label %281

281:                                              ; preds = %349, %277
  %282 = load i32, i32* %7, align 4
  %283 = icmp slt i32 %282, 4
  br i1 %283, label %284, label %352

284:                                              ; preds = %281
  %285 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %5, align 8
  %286 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %285, i32 0, i32 2
  %287 = load i32*, i32** %286, align 8
  %288 = load i32, i32* %7, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32, i32* %287, i64 %289
  %291 = load i32, i32* %290, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %298

293:                                              ; preds = %284
  %294 = load i32, i32* %7, align 4
  %295 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i32 %294)
  %296 = load i32, i32* @EINVAL, align 4
  %297 = sub nsw i32 0, %296
  store i32 %297, i32* %3, align 4
  br label %353

298:                                              ; preds = %284
  %299 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %5, align 8
  %300 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %299, i32 0, i32 5
  %301 = load i32, i32* %300, align 8
  %302 = load i32, i32* @DRM_MODE_FB_MODIFIERS, align 4
  %303 = and i32 %301, %302
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %306, label %305

305:                                              ; preds = %298
  br label %349

306:                                              ; preds = %298
  %307 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %5, align 8
  %308 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %307, i32 0, i32 6
  %309 = load i64*, i64** %308, align 8
  %310 = load i32, i32* %7, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i64, i64* %309, i64 %311
  %313 = load i64, i64* %312, align 8
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %315, label %320

315:                                              ; preds = %306
  %316 = load i32, i32* %7, align 4
  %317 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0), i32 %316)
  %318 = load i32, i32* @EINVAL, align 4
  %319 = sub nsw i32 0, %318
  store i32 %319, i32* %3, align 4
  br label %353

320:                                              ; preds = %306
  %321 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %5, align 8
  %322 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %321, i32 0, i32 3
  %323 = load i32*, i32** %322, align 8
  %324 = load i32, i32* %7, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i32, i32* %323, i64 %325
  %327 = load i32, i32* %326, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %334

329:                                              ; preds = %320
  %330 = load i32, i32* %7, align 4
  %331 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0), i32 %330)
  %332 = load i32, i32* @EINVAL, align 4
  %333 = sub nsw i32 0, %332
  store i32 %333, i32* %3, align 4
  br label %353

334:                                              ; preds = %320
  %335 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %5, align 8
  %336 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %335, i32 0, i32 4
  %337 = load i64*, i64** %336, align 8
  %338 = load i32, i32* %7, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i64, i64* %337, i64 %339
  %341 = load i64, i64* %340, align 8
  %342 = icmp ne i64 %341, 0
  br i1 %342, label %343, label %348

343:                                              ; preds = %334
  %344 = load i32, i32* %7, align 4
  %345 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i64 0, i64 0), i32 %344)
  %346 = load i32, i32* @EINVAL, align 4
  %347 = sub nsw i32 0, %346
  store i32 %347, i32* %3, align 4
  br label %353

348:                                              ; preds = %334
  br label %349

349:                                              ; preds = %348, %305
  %350 = load i32, i32* %7, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %7, align 4
  br label %281

352:                                              ; preds = %281
  store i32 0, i32* %3, align 4
  br label %353

353:                                              ; preds = %352, %343, %329, %315, %293, %266, %222, %189, %161, %144, %120, %111, %97, %47, %35, %19
  %354 = load i32, i32* %3, align 4
  ret i32 %354
}

declare dso_local %struct.drm_format_info* @__drm_format_info(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, ...) #1

declare dso_local i32 @drm_get_format_name(i32, %struct.drm_format_name_buf*) #1

declare dso_local %struct.drm_format_info* @drm_get_format_info(%struct.drm_device*, %struct.drm_mode_fb_cmd2*) #1

declare dso_local i32 @fb_plane_width(i32, %struct.drm_format_info*, i32) #1

declare dso_local i32 @fb_plane_height(i32, %struct.drm_format_info*, i32) #1

declare dso_local i64 @drm_format_info_min_pitch(%struct.drm_format_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

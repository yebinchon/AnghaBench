; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_fb.c_omap_framebuffer_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_fb.c_omap_framebuffer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_framebuffer = type { %struct.TYPE_2__, %struct.drm_gem_object** }
%struct.TYPE_2__ = type { i32 }
%struct.drm_device = type { i32 }
%struct.drm_mode_fb_cmd2 = type { i32*, i32, i64, i32*, i32 }
%struct.drm_gem_object = type { i32 }
%struct.drm_format_info = type { i32, i32*, i32 }
%struct.omap_framebuffer = type { %struct.plane*, i32, %struct.drm_format_info*, %struct.drm_framebuffer }
%struct.plane = type { i64 }

@.str = private unnamed_addr constant [54 x i8] c"create framebuffer: dev=%p, mode_cmd=%p (%dx%d@%4.4s)\00", align 1
@formats = common dso_local global i64* null, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"unsupported pixel format: %4.4s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"pitches differ between planes 0 and 1\0A\00", align 1
@.str.3 = private unnamed_addr constant [68 x i8] c"buffer pitch (%u bytes) is not a multiple of pixel size (%u bytes)\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"provided buffer object is too small! %zu < %d\0A\00", align 1
@omap_framebuffer_funcs = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"framebuffer init failed: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"create: FB ID: %d (%p)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_framebuffer* @omap_framebuffer_init(%struct.drm_device* %0, %struct.drm_mode_fb_cmd2* %1, %struct.drm_gem_object** %2) #0 {
  %4 = alloca %struct.drm_framebuffer*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_mode_fb_cmd2*, align 8
  %7 = alloca %struct.drm_gem_object**, align 8
  %8 = alloca %struct.drm_format_info*, align 8
  %9 = alloca %struct.omap_framebuffer*, align 8
  %10 = alloca %struct.drm_framebuffer*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.plane*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.drm_mode_fb_cmd2* %1, %struct.drm_mode_fb_cmd2** %6, align 8
  store %struct.drm_gem_object** %2, %struct.drm_gem_object*** %7, align 8
  store %struct.drm_format_info* null, %struct.drm_format_info** %8, align 8
  store %struct.omap_framebuffer* null, %struct.omap_framebuffer** %9, align 8
  store %struct.drm_framebuffer* null, %struct.drm_framebuffer** %10, align 8
  %17 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %6, align 8
  %18 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %11, align 4
  %22 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %23 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %6, align 8
  %24 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %6, align 8
  %25 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %6, align 8
  %28 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %6, align 8
  %31 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %30, i32 0, i32 2
  %32 = bitcast i64* %31 to i8*
  %33 = call i32 (i8*, %struct.drm_device*, ...) @DBG(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), %struct.drm_device* %22, %struct.drm_mode_fb_cmd2* %23, i32 %26, i32 %29, i8* %32)
  %34 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %35 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %6, align 8
  %36 = call %struct.drm_format_info* @drm_get_format_info(%struct.drm_device* %34, %struct.drm_mode_fb_cmd2* %35)
  store %struct.drm_format_info* %36, %struct.drm_format_info** %8, align 8
  store i32 0, i32* %13, align 4
  br label %37

37:                                               ; preds = %54, %3
  %38 = load i32, i32* %13, align 4
  %39 = load i64*, i64** @formats, align 8
  %40 = call i32 @ARRAY_SIZE(i64* %39)
  %41 = icmp slt i32 %38, %40
  br i1 %41, label %42, label %57

42:                                               ; preds = %37
  %43 = load i64*, i64** @formats, align 8
  %44 = load i32, i32* %13, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %6, align 8
  %49 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %47, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  br label %57

53:                                               ; preds = %42
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %13, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %13, align 4
  br label %37

57:                                               ; preds = %52, %37
  %58 = load %struct.drm_format_info*, %struct.drm_format_info** %8, align 8
  %59 = icmp ne %struct.drm_format_info* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load i32, i32* %13, align 4
  %62 = load i64*, i64** @formats, align 8
  %63 = call i32 @ARRAY_SIZE(i64* %62)
  %64 = icmp eq i32 %61, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %60, %57
  %66 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %67 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %6, align 8
  %70 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %69, i32 0, i32 2
  %71 = bitcast i64* %70 to i8*
  %72 = call i32 (i32, i8*, ...) @dev_dbg(i32 %68, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %71)
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %12, align 4
  br label %245

75:                                               ; preds = %60
  %76 = load i32, i32* @GFP_KERNEL, align 4
  %77 = call %struct.omap_framebuffer* @kzalloc(i32 40, i32 %76)
  store %struct.omap_framebuffer* %77, %struct.omap_framebuffer** %9, align 8
  %78 = load %struct.omap_framebuffer*, %struct.omap_framebuffer** %9, align 8
  %79 = icmp ne %struct.omap_framebuffer* %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %75
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %12, align 4
  br label %245

83:                                               ; preds = %75
  %84 = load %struct.omap_framebuffer*, %struct.omap_framebuffer** %9, align 8
  %85 = getelementptr inbounds %struct.omap_framebuffer, %struct.omap_framebuffer* %84, i32 0, i32 3
  store %struct.drm_framebuffer* %85, %struct.drm_framebuffer** %10, align 8
  %86 = load %struct.drm_format_info*, %struct.drm_format_info** %8, align 8
  %87 = load %struct.omap_framebuffer*, %struct.omap_framebuffer** %9, align 8
  %88 = getelementptr inbounds %struct.omap_framebuffer, %struct.omap_framebuffer* %87, i32 0, i32 2
  store %struct.drm_format_info* %86, %struct.drm_format_info** %88, align 8
  %89 = load %struct.omap_framebuffer*, %struct.omap_framebuffer** %9, align 8
  %90 = getelementptr inbounds %struct.omap_framebuffer, %struct.omap_framebuffer* %89, i32 0, i32 1
  %91 = call i32 @mutex_init(i32* %90)
  %92 = load %struct.drm_format_info*, %struct.drm_format_info** %8, align 8
  %93 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp eq i32 %94, 2
  br i1 %95, label %96, label %111

96:                                               ; preds = %83
  %97 = load i32, i32* %11, align 4
  %98 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %6, align 8
  %99 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %97, %102
  br i1 %103, label %104, label %111

104:                                              ; preds = %96
  %105 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %106 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 (i32, i8*, ...) @dev_dbg(i32 %107, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %12, align 4
  br label %245

111:                                              ; preds = %96, %83
  %112 = load i32, i32* %11, align 4
  %113 = load %struct.drm_format_info*, %struct.drm_format_info** %8, align 8
  %114 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  %117 = load i32, i32* %116, align 4
  %118 = urem i32 %112, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %133

120:                                              ; preds = %111
  %121 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %122 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %11, align 4
  %125 = load %struct.drm_format_info*, %struct.drm_format_info** %8, align 8
  %126 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 (i32, i8*, ...) @dev_dbg(i32 %123, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i64 0, i64 0), i32 %124, i32 %129)
  %131 = load i32, i32* @EINVAL, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %12, align 4
  br label %245

133:                                              ; preds = %111
  store i32 0, i32* %13, align 4
  br label %134

134:                                              ; preds = %216, %133
  %135 = load i32, i32* %13, align 4
  %136 = load %struct.drm_format_info*, %struct.drm_format_info** %8, align 8
  %137 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp slt i32 %135, %138
  br i1 %139, label %140, label %219

140:                                              ; preds = %134
  %141 = load %struct.omap_framebuffer*, %struct.omap_framebuffer** %9, align 8
  %142 = getelementptr inbounds %struct.omap_framebuffer, %struct.omap_framebuffer* %141, i32 0, i32 0
  %143 = load %struct.plane*, %struct.plane** %142, align 8
  %144 = load i32, i32* %13, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.plane, %struct.plane* %143, i64 %145
  store %struct.plane* %146, %struct.plane** %14, align 8
  %147 = load i32, i32* %13, align 4
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %140
  br label %154

150:                                              ; preds = %140
  %151 = load %struct.drm_format_info*, %struct.drm_format_info** %8, align 8
  %152 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  br label %154

154:                                              ; preds = %150, %149
  %155 = phi i32 [ 1, %149 ], [ %153, %150 ]
  store i32 %155, i32* %15, align 4
  %156 = load i32, i32* %11, align 4
  %157 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %6, align 8
  %158 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = mul i32 %156, %159
  %161 = load i32, i32* %15, align 4
  %162 = udiv i32 %160, %161
  store i32 %162, i32* %16, align 4
  %163 = load i32, i32* %16, align 4
  %164 = load %struct.drm_gem_object**, %struct.drm_gem_object*** %7, align 8
  %165 = load i32, i32* %13, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.drm_gem_object*, %struct.drm_gem_object** %164, i64 %166
  %168 = load %struct.drm_gem_object*, %struct.drm_gem_object** %167, align 8
  %169 = call i32 @omap_gem_mmap_size(%struct.drm_gem_object* %168)
  %170 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %6, align 8
  %171 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %170, i32 0, i32 3
  %172 = load i32*, i32** %171, align 8
  %173 = load i32, i32* %13, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = sub i32 %169, %176
  %178 = icmp ugt i32 %163, %177
  br i1 %178, label %179, label %202

179:                                              ; preds = %154
  %180 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %181 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.drm_gem_object**, %struct.drm_gem_object*** %7, align 8
  %184 = load i32, i32* %13, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.drm_gem_object*, %struct.drm_gem_object** %183, i64 %185
  %187 = load %struct.drm_gem_object*, %struct.drm_gem_object** %186, align 8
  %188 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %6, align 8
  %191 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %190, i32 0, i32 3
  %192 = load i32*, i32** %191, align 8
  %193 = load i32, i32* %13, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = sub i32 %189, %196
  %198 = load i32, i32* %16, align 4
  %199 = call i32 (i32, i8*, ...) @dev_dbg(i32 %182, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 %197, i32 %198)
  %200 = load i32, i32* @EINVAL, align 4
  %201 = sub nsw i32 0, %200
  store i32 %201, i32* %12, align 4
  br label %245

202:                                              ; preds = %154
  %203 = load %struct.drm_gem_object**, %struct.drm_gem_object*** %7, align 8
  %204 = load i32, i32* %13, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.drm_gem_object*, %struct.drm_gem_object** %203, i64 %205
  %207 = load %struct.drm_gem_object*, %struct.drm_gem_object** %206, align 8
  %208 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %209 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %208, i32 0, i32 1
  %210 = load %struct.drm_gem_object**, %struct.drm_gem_object*** %209, align 8
  %211 = load i32, i32* %13, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.drm_gem_object*, %struct.drm_gem_object** %210, i64 %212
  store %struct.drm_gem_object* %207, %struct.drm_gem_object** %213, align 8
  %214 = load %struct.plane*, %struct.plane** %14, align 8
  %215 = getelementptr inbounds %struct.plane, %struct.plane* %214, i32 0, i32 0
  store i64 0, i64* %215, align 8
  br label %216

216:                                              ; preds = %202
  %217 = load i32, i32* %13, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %13, align 4
  br label %134

219:                                              ; preds = %134
  %220 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %221 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %222 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %6, align 8
  %223 = call i32 @drm_helper_mode_fill_fb_struct(%struct.drm_device* %220, %struct.drm_framebuffer* %221, %struct.drm_mode_fb_cmd2* %222)
  %224 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %225 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %226 = call i32 @drm_framebuffer_init(%struct.drm_device* %224, %struct.drm_framebuffer* %225, i32* @omap_framebuffer_funcs)
  store i32 %226, i32* %12, align 4
  %227 = load i32, i32* %12, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %235

229:                                              ; preds = %219
  %230 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %231 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* %12, align 4
  %234 = call i32 @dev_err(i32 %232, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %233)
  br label %245

235:                                              ; preds = %219
  %236 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %237 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = sext i32 %239 to i64
  %241 = inttoptr i64 %240 to %struct.drm_device*
  %242 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %243 = call i32 (i8*, %struct.drm_device*, ...) @DBG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), %struct.drm_device* %241, %struct.drm_framebuffer* %242)
  %244 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  store %struct.drm_framebuffer* %244, %struct.drm_framebuffer** %4, align 8
  br label %250

245:                                              ; preds = %229, %179, %120, %104, %80, %65
  %246 = load %struct.omap_framebuffer*, %struct.omap_framebuffer** %9, align 8
  %247 = call i32 @kfree(%struct.omap_framebuffer* %246)
  %248 = load i32, i32* %12, align 4
  %249 = call %struct.drm_framebuffer* @ERR_PTR(i32 %248)
  store %struct.drm_framebuffer* %249, %struct.drm_framebuffer** %4, align 8
  br label %250

250:                                              ; preds = %245, %235
  %251 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  ret %struct.drm_framebuffer* %251
}

declare dso_local i32 @DBG(i8*, %struct.drm_device*, ...) #1

declare dso_local %struct.drm_format_info* @drm_get_format_info(%struct.drm_device*, %struct.drm_mode_fb_cmd2*) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local %struct.omap_framebuffer* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @omap_gem_mmap_size(%struct.drm_gem_object*) #1

declare dso_local i32 @drm_helper_mode_fill_fb_struct(%struct.drm_device*, %struct.drm_framebuffer*, %struct.drm_mode_fb_cmd2*) #1

declare dso_local i32 @drm_framebuffer_init(%struct.drm_device*, %struct.drm_framebuffer*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @kfree(%struct.omap_framebuffer*) #1

declare dso_local %struct.drm_framebuffer* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

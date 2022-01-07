; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_framebuffer.c_psbfb_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_framebuffer.c_psbfb_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psb_fbdev = type { %struct.TYPE_15__, %struct.psb_framebuffer }
%struct.TYPE_15__ = type { %struct.drm_framebuffer*, %struct.drm_device* }
%struct.drm_framebuffer = type { i32, i32 }
%struct.drm_device = type { i32, i32, %struct.TYPE_10__, %struct.drm_psb_private* }
%struct.TYPE_10__ = type { i32 }
%struct.drm_psb_private = type { %struct.TYPE_13__, i64, %struct.TYPE_9__* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_9__ = type { i64 }
%struct.psb_framebuffer = type { %struct.drm_framebuffer, %struct.fb_info* }
%struct.fb_info = type { i32, %struct.TYPE_14__, %struct.TYPE_12__*, i64, i32*, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i64, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i32 }
%struct.drm_fb_helper_surface_size = type { i32, i32, i32, i32 }
%struct.drm_mode_fb_cmd2 = type { i32, i32, i32*, i32 }
%struct.gtt_range = type { i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@psbfb_ops = common dso_local global i32 0, align 4
@psbfb_roll_ops = common dso_local global i32 0, align 4
@FBINFO_HWACCEL_YPAN = common dso_local global i32 0, align 4
@psbfb_unaccel_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"allocated %dx%d fb\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psb_fbdev*, %struct.drm_fb_helper_surface_size*)* @psbfb_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psbfb_create(%struct.psb_fbdev* %0, %struct.drm_fb_helper_surface_size* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.psb_fbdev*, align 8
  %5 = alloca %struct.drm_fb_helper_surface_size*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_psb_private*, align 8
  %8 = alloca %struct.fb_info*, align 8
  %9 = alloca %struct.drm_framebuffer*, align 8
  %10 = alloca %struct.psb_framebuffer*, align 8
  %11 = alloca %struct.drm_mode_fb_cmd2, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.gtt_range*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.psb_fbdev* %0, %struct.psb_fbdev** %4, align 8
  store %struct.drm_fb_helper_surface_size* %1, %struct.drm_fb_helper_surface_size** %5, align 8
  %19 = load %struct.psb_fbdev*, %struct.psb_fbdev** %4, align 8
  %20 = getelementptr inbounds %struct.psb_fbdev, %struct.psb_fbdev* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 1
  %22 = load %struct.drm_device*, %struct.drm_device** %21, align 8
  store %struct.drm_device* %22, %struct.drm_device** %6, align 8
  %23 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %24 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %23, i32 0, i32 3
  %25 = load %struct.drm_psb_private*, %struct.drm_psb_private** %24, align 8
  store %struct.drm_psb_private* %25, %struct.drm_psb_private** %7, align 8
  %26 = load %struct.psb_fbdev*, %struct.psb_fbdev** %4, align 8
  %27 = getelementptr inbounds %struct.psb_fbdev, %struct.psb_fbdev* %26, i32 0, i32 1
  store %struct.psb_framebuffer* %27, %struct.psb_framebuffer** %10, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %28 = load %struct.drm_fb_helper_surface_size*, %struct.drm_fb_helper_surface_size** %5, align 8
  %29 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %11, i32 0, i32 0
  store i32 %30, i32* %31, align 8
  %32 = load %struct.drm_fb_helper_surface_size*, %struct.drm_fb_helper_surface_size** %5, align 8
  %33 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %11, i32 0, i32 1
  store i32 %34, i32* %35, align 4
  %36 = load %struct.drm_fb_helper_surface_size*, %struct.drm_fb_helper_surface_size** %5, align 8
  %37 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %15, align 4
  %39 = load %struct.drm_fb_helper_surface_size*, %struct.drm_fb_helper_surface_size** %5, align 8
  %40 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %16, align 4
  %42 = load i32, i32* %15, align 4
  %43 = icmp eq i32 %42, 24
  br i1 %43, label %44, label %45

44:                                               ; preds = %2
  store i32 32, i32* %15, align 4
  br label %45

45:                                               ; preds = %44, %2
  br label %46

46:                                               ; preds = %89, %45
  %47 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %11, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %15, align 4
  %50 = add nsw i32 %49, 7
  %51 = sdiv i32 %50, 8
  %52 = mul nsw i32 %48, %51
  %53 = load i32, i32* %18, align 4
  %54 = ashr i32 4096, %53
  %55 = call i8* @ALIGN(i32 %52, i32 %54)
  %56 = ptrtoint i8* %55 to i32
  %57 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %11, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  store i32 %56, i32* %59, align 4
  %60 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %11, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %11, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = mul nsw i32 %63, %65
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* @PAGE_SIZE, align 4
  %69 = call i8* @ALIGN(i32 %67, i32 %68)
  %70 = ptrtoint i8* %69 to i32
  store i32 %70, i32* %12, align 4
  %71 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %72 = load i32, i32* %12, align 4
  %73 = call %struct.gtt_range* @psbfb_alloc(%struct.drm_device* %71, i32 %72)
  store %struct.gtt_range* %73, %struct.gtt_range** %14, align 8
  %74 = load i32, i32* %18, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %46
  %77 = load i32, i32* %18, align 4
  %78 = mul nsw i32 %77, 2
  store i32 %78, i32* %18, align 4
  br label %80

79:                                               ; preds = %46
  store i32 1, i32* %18, align 4
  br label %80

80:                                               ; preds = %79, %76
  %81 = load i32, i32* %17, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %17, align 4
  br label %83

83:                                               ; preds = %80
  %84 = load %struct.gtt_range*, %struct.gtt_range** %14, align 8
  %85 = icmp eq %struct.gtt_range* %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32, i32* %18, align 4
  %88 = icmp sle i32 %87, 16
  br label %89

89:                                               ; preds = %86, %83
  %90 = phi i1 [ false, %83 ], [ %88, %86 ]
  br i1 %90, label %46, label %91

91:                                               ; preds = %89
  %92 = load i32, i32* %18, align 4
  %93 = sdiv i32 %92, 2
  store i32 %93, i32* %18, align 4
  %94 = load %struct.gtt_range*, %struct.gtt_range** %14, align 8
  %95 = icmp eq %struct.gtt_range* %94, null
  br i1 %95, label %96, label %128

96:                                               ; preds = %91
  store i32 0, i32* %17, align 4
  store i32 64, i32* %18, align 4
  %97 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %11, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %15, align 4
  %100 = add nsw i32 %99, 7
  %101 = sdiv i32 %100, 8
  %102 = mul nsw i32 %98, %101
  %103 = call i8* @ALIGN(i32 %102, i32 64)
  %104 = ptrtoint i8* %103 to i32
  %105 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %11, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  store i32 %104, i32* %107, align 4
  %108 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %11, i32 0, i32 2
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %11, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = mul nsw i32 %111, %113
  store i32 %114, i32* %12, align 4
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* @PAGE_SIZE, align 4
  %117 = call i8* @ALIGN(i32 %115, i32 %116)
  %118 = ptrtoint i8* %117 to i32
  store i32 %118, i32* %12, align 4
  %119 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %120 = load i32, i32* %12, align 4
  %121 = call %struct.gtt_range* @psbfb_alloc(%struct.drm_device* %119, i32 %120)
  store %struct.gtt_range* %121, %struct.gtt_range** %14, align 8
  %122 = load %struct.gtt_range*, %struct.gtt_range** %14, align 8
  %123 = icmp eq %struct.gtt_range* %122, null
  br i1 %123, label %124, label %127

124:                                              ; preds = %96
  %125 = load i32, i32* @ENOMEM, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %3, align 4
  br label %292

127:                                              ; preds = %96
  br label %128

128:                                              ; preds = %127, %91
  %129 = load %struct.drm_psb_private*, %struct.drm_psb_private** %7, align 8
  %130 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.gtt_range*, %struct.gtt_range** %14, align 8
  %133 = getelementptr inbounds %struct.gtt_range, %struct.gtt_range* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = add nsw i64 %131, %134
  %136 = load i32, i32* %12, align 4
  %137 = call i32 @memset(i64 %135, i32 0, i32 %136)
  %138 = load %struct.psb_fbdev*, %struct.psb_fbdev** %4, align 8
  %139 = getelementptr inbounds %struct.psb_fbdev, %struct.psb_fbdev* %138, i32 0, i32 0
  %140 = call %struct.fb_info* @drm_fb_helper_alloc_fbi(%struct.TYPE_15__* %139)
  store %struct.fb_info* %140, %struct.fb_info** %8, align 8
  %141 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %142 = call i64 @IS_ERR(%struct.fb_info* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %128
  %145 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %146 = call i32 @PTR_ERR(%struct.fb_info* %145)
  store i32 %146, i32* %13, align 4
  br label %287

147:                                              ; preds = %128
  %148 = load i32, i32* %15, align 4
  %149 = load i32, i32* %16, align 4
  %150 = call i32 @drm_mode_legacy_fb_format(i32 %148, i32 %149)
  %151 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %11, i32 0, i32 3
  store i32 %150, i32* %151, align 8
  %152 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %153 = load %struct.psb_framebuffer*, %struct.psb_framebuffer** %10, align 8
  %154 = load %struct.gtt_range*, %struct.gtt_range** %14, align 8
  %155 = call i32 @psb_framebuffer_init(%struct.drm_device* %152, %struct.psb_framebuffer* %153, %struct.drm_mode_fb_cmd2* %11, %struct.gtt_range* %154)
  store i32 %155, i32* %13, align 4
  %156 = load i32, i32* %13, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %147
  br label %287

159:                                              ; preds = %147
  %160 = load %struct.psb_framebuffer*, %struct.psb_framebuffer** %10, align 8
  %161 = getelementptr inbounds %struct.psb_framebuffer, %struct.psb_framebuffer* %160, i32 0, i32 0
  store %struct.drm_framebuffer* %161, %struct.drm_framebuffer** %9, align 8
  %162 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %163 = load %struct.psb_framebuffer*, %struct.psb_framebuffer** %10, align 8
  %164 = getelementptr inbounds %struct.psb_framebuffer, %struct.psb_framebuffer* %163, i32 0, i32 1
  store %struct.fb_info* %162, %struct.fb_info** %164, align 8
  %165 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %166 = load %struct.psb_fbdev*, %struct.psb_fbdev** %4, align 8
  %167 = getelementptr inbounds %struct.psb_fbdev, %struct.psb_fbdev* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 0
  store %struct.drm_framebuffer* %165, %struct.drm_framebuffer** %168, align 8
  %169 = load %struct.drm_psb_private*, %struct.drm_psb_private** %7, align 8
  %170 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %169, i32 0, i32 2
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %159
  %176 = load i32, i32* %18, align 4
  %177 = icmp sgt i32 %176, 8
  br i1 %177, label %178, label %181

178:                                              ; preds = %175
  %179 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %180 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %179, i32 0, i32 4
  store i32* @psbfb_ops, i32** %180, align 8
  br label %196

181:                                              ; preds = %175, %159
  %182 = load i32, i32* %17, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %192

184:                                              ; preds = %181
  %185 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %186 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %185, i32 0, i32 4
  store i32* @psbfb_roll_ops, i32** %186, align 8
  %187 = load i32, i32* @FBINFO_HWACCEL_YPAN, align 4
  %188 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %189 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %188, i32 0, i32 5
  %190 = load i32, i32* %189, align 8
  %191 = or i32 %190, %187
  store i32 %191, i32* %189, align 8
  br label %195

192:                                              ; preds = %181
  %193 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %194 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %193, i32 0, i32 4
  store i32* @psbfb_unaccel_ops, i32** %194, align 8
  br label %195

195:                                              ; preds = %192, %184
  br label %196

196:                                              ; preds = %195, %178
  %197 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %198 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %197, i32 0, i32 2
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %202 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i32 0, i32 5
  store i32 %200, i32* %203, align 8
  %204 = load i32, i32* %12, align 4
  %205 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %206 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %206, i32 0, i32 0
  store i32 %204, i32* %207, align 8
  %208 = load i32, i32* %17, align 4
  %209 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %210 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %210, i32 0, i32 1
  store i32 %208, i32* %211, align 4
  %212 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %213 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i32 0, i32 4
  store i64 0, i64* %214, align 8
  %215 = load %struct.drm_psb_private*, %struct.drm_psb_private** %7, align 8
  %216 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %215, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = load %struct.gtt_range*, %struct.gtt_range** %14, align 8
  %219 = getelementptr inbounds %struct.gtt_range, %struct.gtt_range* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = add nsw i64 %217, %220
  %222 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %223 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %222, i32 0, i32 3
  store i64 %221, i64* %223, align 8
  %224 = load i32, i32* %12, align 4
  %225 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %226 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %225, i32 0, i32 0
  store i32 %224, i32* %226, align 8
  %227 = load %struct.drm_psb_private*, %struct.drm_psb_private** %7, align 8
  %228 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %255

232:                                              ; preds = %196
  %233 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %234 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %233, i32 0, i32 2
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %238 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %237, i32 0, i32 2
  %239 = load %struct.TYPE_12__*, %struct.TYPE_12__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %239, i32 0, i32 0
  %241 = load %struct.TYPE_11__*, %struct.TYPE_11__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %241, i64 0
  %243 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %242, i32 0, i32 1
  store i32 %236, i32* %243, align 8
  %244 = load %struct.drm_psb_private*, %struct.drm_psb_private** %7, align 8
  %245 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %249 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %248, i32 0, i32 2
  %250 = load %struct.TYPE_12__*, %struct.TYPE_12__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %250, i32 0, i32 0
  %252 = load %struct.TYPE_11__*, %struct.TYPE_11__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %252, i64 0
  %254 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %253, i32 0, i32 0
  store i64 %247, i64* %254, align 8
  br label %255

255:                                              ; preds = %232, %196
  %256 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %257 = load %struct.psb_fbdev*, %struct.psb_fbdev** %4, align 8
  %258 = getelementptr inbounds %struct.psb_fbdev, %struct.psb_fbdev* %257, i32 0, i32 0
  %259 = load %struct.drm_fb_helper_surface_size*, %struct.drm_fb_helper_surface_size** %5, align 8
  %260 = call i32 @drm_fb_helper_fill_info(%struct.fb_info* %256, %struct.TYPE_15__* %258, %struct.drm_fb_helper_surface_size* %259)
  %261 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %262 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = call i32 @pci_resource_start(i32 %263, i32 0)
  %265 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %266 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %266, i32 0, i32 3
  store i32 %264, i32* %267, align 4
  %268 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %269 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = call i32 @pci_resource_len(i32 %270, i32 0)
  %272 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %273 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %272, i32 0, i32 1
  %274 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %273, i32 0, i32 2
  store i32 %271, i32* %274, align 8
  %275 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %276 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = load %struct.psb_framebuffer*, %struct.psb_framebuffer** %10, align 8
  %279 = getelementptr inbounds %struct.psb_framebuffer, %struct.psb_framebuffer* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.psb_framebuffer*, %struct.psb_framebuffer** %10, align 8
  %283 = getelementptr inbounds %struct.psb_framebuffer, %struct.psb_framebuffer* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = call i32 @dev_dbg(i32 %277, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %281, i32 %285)
  store i32 0, i32* %3, align 4
  br label %292

287:                                              ; preds = %158, %144
  %288 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %289 = load %struct.gtt_range*, %struct.gtt_range** %14, align 8
  %290 = call i32 @psb_gtt_free_range(%struct.drm_device* %288, %struct.gtt_range* %289)
  %291 = load i32, i32* %13, align 4
  store i32 %291, i32* %3, align 4
  br label %292

292:                                              ; preds = %287, %255, %124
  %293 = load i32, i32* %3, align 4
  ret i32 %293
}

declare dso_local i8* @ALIGN(i32, i32) #1

declare dso_local %struct.gtt_range* @psbfb_alloc(%struct.drm_device*, i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local %struct.fb_info* @drm_fb_helper_alloc_fbi(%struct.TYPE_15__*) #1

declare dso_local i64 @IS_ERR(%struct.fb_info*) #1

declare dso_local i32 @PTR_ERR(%struct.fb_info*) #1

declare dso_local i32 @drm_mode_legacy_fb_format(i32, i32) #1

declare dso_local i32 @psb_framebuffer_init(%struct.drm_device*, %struct.psb_framebuffer*, %struct.drm_mode_fb_cmd2*, %struct.gtt_range*) #1

declare dso_local i32 @drm_fb_helper_fill_info(%struct.fb_info*, %struct.TYPE_15__*, %struct.drm_fb_helper_surface_size*) #1

declare dso_local i32 @pci_resource_start(i32, i32) #1

declare dso_local i32 @pci_resource_len(i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @psb_gtt_free_range(%struct.drm_device*, %struct.gtt_range*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

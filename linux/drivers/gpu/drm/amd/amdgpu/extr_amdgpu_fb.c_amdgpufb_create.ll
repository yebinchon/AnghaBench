; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_fb.c_amdgpufb_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_fb.c_amdgpufb_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_fb_helper = type { i32 }
%struct.drm_fb_helper_surface_size = type { i32, i32, i32, i32 }
%struct.amdgpu_fbdev = type { %struct.TYPE_16__, %struct.TYPE_18__, %struct.amdgpu_device* }
%struct.TYPE_16__ = type { %struct.drm_framebuffer* }
%struct.drm_framebuffer = type { i64*, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_18__ = type { %struct.drm_framebuffer }
%struct.amdgpu_device = type { %struct.TYPE_17__*, %struct.TYPE_14__ }
%struct.TYPE_17__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_14__ = type { i64, i64, i32 }
%struct.fb_info = type { %struct.TYPE_13__, i32*, %struct.TYPE_12__*, i8*, i32* }
%struct.TYPE_13__ = type { i64, i8* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.drm_mode_fb_cmd2 = type { i32, i32, i32 }
%struct.drm_gem_object = type { i32 }
%struct.amdgpu_bo = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"failed to create fbcon object %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"failed to initialize framebuffer %d\0A\00", align 1
@amdgpufb_ops = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"fb mappable at 0x%lX\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"vram apper at 0x%lX\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"size %lu\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"fb depth is %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"   pitch is %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_fb_helper*, %struct.drm_fb_helper_surface_size*)* @amdgpufb_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpufb_create(%struct.drm_fb_helper* %0, %struct.drm_fb_helper_surface_size* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_fb_helper*, align 8
  %5 = alloca %struct.drm_fb_helper_surface_size*, align 8
  %6 = alloca %struct.amdgpu_fbdev*, align 8
  %7 = alloca %struct.amdgpu_device*, align 8
  %8 = alloca %struct.fb_info*, align 8
  %9 = alloca %struct.drm_framebuffer*, align 8
  %10 = alloca %struct.drm_mode_fb_cmd2, align 4
  %11 = alloca %struct.drm_gem_object*, align 8
  %12 = alloca %struct.amdgpu_bo*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.drm_fb_helper* %0, %struct.drm_fb_helper** %4, align 8
  store %struct.drm_fb_helper_surface_size* %1, %struct.drm_fb_helper_surface_size** %5, align 8
  %15 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %4, align 8
  %16 = bitcast %struct.drm_fb_helper* %15 to %struct.amdgpu_fbdev*
  store %struct.amdgpu_fbdev* %16, %struct.amdgpu_fbdev** %6, align 8
  %17 = load %struct.amdgpu_fbdev*, %struct.amdgpu_fbdev** %6, align 8
  %18 = getelementptr inbounds %struct.amdgpu_fbdev, %struct.amdgpu_fbdev* %17, i32 0, i32 2
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %18, align 8
  store %struct.amdgpu_device* %19, %struct.amdgpu_device** %7, align 8
  store %struct.drm_framebuffer* null, %struct.drm_framebuffer** %9, align 8
  store %struct.drm_gem_object* null, %struct.drm_gem_object** %11, align 8
  store %struct.amdgpu_bo* null, %struct.amdgpu_bo** %12, align 8
  %20 = load %struct.drm_fb_helper_surface_size*, %struct.drm_fb_helper_surface_size** %5, align 8
  %21 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %10, i32 0, i32 2
  store i32 %22, i32* %23, align 4
  %24 = load %struct.drm_fb_helper_surface_size*, %struct.drm_fb_helper_surface_size** %5, align 8
  %25 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %10, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  %28 = load %struct.drm_fb_helper_surface_size*, %struct.drm_fb_helper_surface_size** %5, align 8
  %29 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 24
  br i1 %31, label %32, label %35

32:                                               ; preds = %2
  %33 = load %struct.drm_fb_helper_surface_size*, %struct.drm_fb_helper_surface_size** %5, align 8
  %34 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %33, i32 0, i32 0
  store i32 32, i32* %34, align 4
  br label %35

35:                                               ; preds = %32, %2
  %36 = load %struct.drm_fb_helper_surface_size*, %struct.drm_fb_helper_surface_size** %5, align 8
  %37 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.drm_fb_helper_surface_size*, %struct.drm_fb_helper_surface_size** %5, align 8
  %40 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @drm_mode_legacy_fb_format(i32 %38, i32 %41)
  %43 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %10, i32 0, i32 0
  store i32 %42, i32* %43, align 4
  %44 = load %struct.amdgpu_fbdev*, %struct.amdgpu_fbdev** %6, align 8
  %45 = call i32 @amdgpufb_create_pinned_object(%struct.amdgpu_fbdev* %44, %struct.drm_mode_fb_cmd2* %10, %struct.drm_gem_object** %11)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %35
  %49 = load i32, i32* %13, align 4
  %50 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %13, align 4
  store i32 %51, i32* %3, align 4
  br label %206

52:                                               ; preds = %35
  %53 = load %struct.drm_gem_object*, %struct.drm_gem_object** %11, align 8
  %54 = call %struct.amdgpu_bo* @gem_to_amdgpu_bo(%struct.drm_gem_object* %53)
  store %struct.amdgpu_bo* %54, %struct.amdgpu_bo** %12, align 8
  %55 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %4, align 8
  %56 = call %struct.fb_info* @drm_fb_helper_alloc_fbi(%struct.drm_fb_helper* %55)
  store %struct.fb_info* %56, %struct.fb_info** %8, align 8
  %57 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %58 = call i64 @IS_ERR(%struct.fb_info* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %52
  %61 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %62 = call i32 @PTR_ERR(%struct.fb_info* %61)
  store i32 %62, i32* %13, align 4
  br label %185

63:                                               ; preds = %52
  %64 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %65 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %64, i32 0, i32 0
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %65, align 8
  %67 = load %struct.amdgpu_fbdev*, %struct.amdgpu_fbdev** %6, align 8
  %68 = getelementptr inbounds %struct.amdgpu_fbdev, %struct.amdgpu_fbdev* %67, i32 0, i32 1
  %69 = load %struct.drm_gem_object*, %struct.drm_gem_object** %11, align 8
  %70 = call i32 @amdgpu_display_framebuffer_init(%struct.TYPE_17__* %66, %struct.TYPE_18__* %68, %struct.drm_mode_fb_cmd2* %10, %struct.drm_gem_object* %69)
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %63
  %74 = load i32, i32* %13, align 4
  %75 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  br label %185

76:                                               ; preds = %63
  %77 = load %struct.amdgpu_fbdev*, %struct.amdgpu_fbdev** %6, align 8
  %78 = getelementptr inbounds %struct.amdgpu_fbdev, %struct.amdgpu_fbdev* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 0
  store %struct.drm_framebuffer* %79, %struct.drm_framebuffer** %9, align 8
  %80 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %81 = load %struct.amdgpu_fbdev*, %struct.amdgpu_fbdev** %6, align 8
  %82 = getelementptr inbounds %struct.amdgpu_fbdev, %struct.amdgpu_fbdev* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 0
  store %struct.drm_framebuffer* %80, %struct.drm_framebuffer** %83, align 8
  %84 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %85 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %84, i32 0, i32 4
  store i32* @amdgpufb_ops, i32** %85, align 8
  %86 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %12, align 8
  %87 = call i64 @amdgpu_bo_gpu_offset(%struct.amdgpu_bo* %86)
  %88 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %89 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = sub i64 %87, %91
  store i64 %92, i64* %14, align 8
  %93 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %94 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* %14, align 8
  %98 = add i64 %96, %97
  %99 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %100 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  store i64 %98, i64* %101, align 8
  %102 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %12, align 8
  %103 = call i8* @amdgpu_bo_size(%struct.amdgpu_bo* %102)
  %104 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %105 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 1
  store i8* %103, i8** %106, align 8
  %107 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %12, align 8
  %108 = call i32* @amdgpu_bo_kptr(%struct.amdgpu_bo* %107)
  %109 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %110 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %109, i32 0, i32 1
  store i32* %108, i32** %110, align 8
  %111 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %12, align 8
  %112 = call i8* @amdgpu_bo_size(%struct.amdgpu_bo* %111)
  %113 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %114 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %113, i32 0, i32 3
  store i8* %112, i8** %114, align 8
  %115 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %116 = load %struct.amdgpu_fbdev*, %struct.amdgpu_fbdev** %6, align 8
  %117 = getelementptr inbounds %struct.amdgpu_fbdev, %struct.amdgpu_fbdev* %116, i32 0, i32 0
  %118 = load %struct.drm_fb_helper_surface_size*, %struct.drm_fb_helper_surface_size** %5, align 8
  %119 = call i32 @drm_fb_helper_fill_info(%struct.fb_info* %115, %struct.TYPE_16__* %117, %struct.drm_fb_helper_surface_size* %118)
  %120 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %121 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %120, i32 0, i32 0
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %127 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %126, i32 0, i32 2
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i64 0
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 1
  store i32 %125, i32* %132, align 4
  %133 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %134 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %138 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %137, i32 0, i32 2
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i64 0
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 0
  store i32 %136, i32* %143, align 4
  %144 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %145 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %144, i32 0, i32 1
  %146 = load i32*, i32** %145, align 8
  %147 = icmp eq i32* %146, null
  br i1 %147, label %148, label %151

148:                                              ; preds = %76
  %149 = load i32, i32* @ENOSPC, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %13, align 4
  br label %185

151:                                              ; preds = %76
  %152 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %153 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = call i32 @DRM_INFO(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64 %155)
  %157 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %158 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = call i32 @DRM_INFO(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i64 %160)
  %162 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %12, align 8
  %163 = call i8* @amdgpu_bo_size(%struct.amdgpu_bo* %162)
  %164 = ptrtoint i8* %163 to i64
  %165 = call i32 @DRM_INFO(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i64 %164)
  %166 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %167 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %166, i32 0, i32 1
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = call i32 @DRM_INFO(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i64 %170)
  %172 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %173 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %172, i32 0, i32 0
  %174 = load i64*, i64** %173, align 8
  %175 = getelementptr inbounds i64, i64* %174, i64 0
  %176 = load i64, i64* %175, align 8
  %177 = call i32 @DRM_INFO(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i64 %176)
  %178 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %179 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %178, i32 0, i32 0
  %180 = load %struct.TYPE_17__*, %struct.TYPE_17__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %184 = call i32 @vga_switcheroo_client_fb_set(i32 %182, %struct.fb_info* %183)
  store i32 0, i32* %3, align 4
  br label %206

185:                                              ; preds = %148, %73, %60
  %186 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %12, align 8
  %187 = icmp ne %struct.amdgpu_bo* %186, null
  br i1 %187, label %188, label %189

188:                                              ; preds = %185
  br label %189

189:                                              ; preds = %188, %185
  %190 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %191 = icmp ne %struct.drm_framebuffer* %190, null
  br i1 %191, label %192, label %204

192:                                              ; preds = %189
  %193 = load i32, i32* %13, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %204

195:                                              ; preds = %192
  %196 = load %struct.drm_gem_object*, %struct.drm_gem_object** %11, align 8
  %197 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %196)
  %198 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %199 = call i32 @drm_framebuffer_unregister_private(%struct.drm_framebuffer* %198)
  %200 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %201 = call i32 @drm_framebuffer_cleanup(%struct.drm_framebuffer* %200)
  %202 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %203 = call i32 @kfree(%struct.drm_framebuffer* %202)
  br label %204

204:                                              ; preds = %195, %192, %189
  %205 = load i32, i32* %13, align 4
  store i32 %205, i32* %3, align 4
  br label %206

206:                                              ; preds = %204, %151, %48
  %207 = load i32, i32* %3, align 4
  ret i32 %207
}

declare dso_local i32 @drm_mode_legacy_fb_format(i32, i32) #1

declare dso_local i32 @amdgpufb_create_pinned_object(%struct.amdgpu_fbdev*, %struct.drm_mode_fb_cmd2*, %struct.drm_gem_object**) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local %struct.amdgpu_bo* @gem_to_amdgpu_bo(%struct.drm_gem_object*) #1

declare dso_local %struct.fb_info* @drm_fb_helper_alloc_fbi(%struct.drm_fb_helper*) #1

declare dso_local i64 @IS_ERR(%struct.fb_info*) #1

declare dso_local i32 @PTR_ERR(%struct.fb_info*) #1

declare dso_local i32 @amdgpu_display_framebuffer_init(%struct.TYPE_17__*, %struct.TYPE_18__*, %struct.drm_mode_fb_cmd2*, %struct.drm_gem_object*) #1

declare dso_local i64 @amdgpu_bo_gpu_offset(%struct.amdgpu_bo*) #1

declare dso_local i8* @amdgpu_bo_size(%struct.amdgpu_bo*) #1

declare dso_local i32* @amdgpu_bo_kptr(%struct.amdgpu_bo*) #1

declare dso_local i32 @drm_fb_helper_fill_info(%struct.fb_info*, %struct.TYPE_16__*, %struct.drm_fb_helper_surface_size*) #1

declare dso_local i32 @DRM_INFO(i8*, i64) #1

declare dso_local i32 @vga_switcheroo_client_fb_set(i32, %struct.fb_info*) #1

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object*) #1

declare dso_local i32 @drm_framebuffer_unregister_private(%struct.drm_framebuffer*) #1

declare dso_local i32 @drm_framebuffer_cleanup(%struct.drm_framebuffer*) #1

declare dso_local i32 @kfree(%struct.drm_framebuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

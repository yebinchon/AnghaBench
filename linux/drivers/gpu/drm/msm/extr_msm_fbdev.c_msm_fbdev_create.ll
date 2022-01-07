; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_fbdev.c_msm_fbdev_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_fbdev.c_msm_fbdev_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_fb_helper = type { %struct.fb_info*, %struct.drm_device* }
%struct.fb_info = type { %struct.drm_device*, %struct.fb_info*, %struct.TYPE_8__, i32, %struct.TYPE_7__, i32, %struct.fb_info*, i32* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i8* }
%struct.drm_device = type { i32, %struct.TYPE_6__, i32, %struct.msm_drm_private* }
%struct.TYPE_6__ = type { i8* }
%struct.msm_drm_private = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.drm_fb_helper_surface_size = type { i32, i32, i32, i32, i32, i32 }
%struct.msm_fbdev = type { %struct.fb_info* }
%struct.drm_framebuffer = type { %struct.drm_device*, %struct.drm_framebuffer*, %struct.TYPE_8__, i32, %struct.TYPE_7__, i32, %struct.drm_framebuffer*, i32* }
%struct.drm_gem_object = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"create fbdev: %dx%d@%d (%dx%d)\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"failed to allocate fb\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"failed to get buffer obj iova: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"failed to allocate fb info\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"fbi=%p, dev=%p\00", align 1
@msm_fb_ops = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"par=%p, %dx%d\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"allocated %dx%d fb\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_fb_helper*, %struct.drm_fb_helper_surface_size*)* @msm_fbdev_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msm_fbdev_create(%struct.drm_fb_helper* %0, %struct.drm_fb_helper_surface_size* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_fb_helper*, align 8
  %5 = alloca %struct.drm_fb_helper_surface_size*, align 8
  %6 = alloca %struct.msm_fbdev*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.msm_drm_private*, align 8
  %9 = alloca %struct.drm_framebuffer*, align 8
  %10 = alloca %struct.drm_gem_object*, align 8
  %11 = alloca %struct.fb_info*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.drm_fb_helper* %0, %struct.drm_fb_helper** %4, align 8
  store %struct.drm_fb_helper_surface_size* %1, %struct.drm_fb_helper_surface_size** %5, align 8
  %16 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %4, align 8
  %17 = call %struct.msm_fbdev* @to_msm_fbdev(%struct.drm_fb_helper* %16)
  store %struct.msm_fbdev* %17, %struct.msm_fbdev** %6, align 8
  %18 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %4, align 8
  %19 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %18, i32 0, i32 1
  %20 = load %struct.drm_device*, %struct.drm_device** %19, align 8
  store %struct.drm_device* %20, %struct.drm_device** %7, align 8
  %21 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %22 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %21, i32 0, i32 3
  %23 = load %struct.msm_drm_private*, %struct.msm_drm_private** %22, align 8
  store %struct.msm_drm_private* %23, %struct.msm_drm_private** %8, align 8
  store %struct.drm_framebuffer* null, %struct.drm_framebuffer** %9, align 8
  store %struct.fb_info* null, %struct.fb_info** %11, align 8
  %24 = load %struct.drm_fb_helper_surface_size*, %struct.drm_fb_helper_surface_size** %5, align 8
  %25 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.drm_fb_helper_surface_size*, %struct.drm_fb_helper_surface_size** %5, align 8
  %28 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @drm_mode_legacy_fb_format(i32 %26, i32 %29)
  store i32 %30, i32* %13, align 4
  %31 = load %struct.drm_fb_helper_surface_size*, %struct.drm_fb_helper_surface_size** %5, align 8
  %32 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to %struct.fb_info*
  %36 = load %struct.drm_fb_helper_surface_size*, %struct.drm_fb_helper_surface_size** %5, align 8
  %37 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to %struct.drm_device*
  %41 = load %struct.drm_fb_helper_surface_size*, %struct.drm_fb_helper_surface_size** %5, align 8
  %42 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.drm_fb_helper_surface_size*, %struct.drm_fb_helper_surface_size** %5, align 8
  %45 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.drm_fb_helper_surface_size*, %struct.drm_fb_helper_surface_size** %5, align 8
  %48 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i8*, %struct.fb_info*, %struct.drm_device*, ...) @DBG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.fb_info* %35, %struct.drm_device* %40, i32 %43, i32 %46, i32 %49)
  %51 = load %struct.drm_fb_helper_surface_size*, %struct.drm_fb_helper_surface_size** %5, align 8
  %52 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.drm_fb_helper_surface_size*, %struct.drm_fb_helper_surface_size** %5, align 8
  %55 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @align_pitch(i32 %53, i32 %56)
  store i32 %57, i32* %15, align 4
  %58 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %59 = load %struct.drm_fb_helper_surface_size*, %struct.drm_fb_helper_surface_size** %5, align 8
  %60 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.drm_fb_helper_surface_size*, %struct.drm_fb_helper_surface_size** %5, align 8
  %63 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* %13, align 4
  %67 = call %struct.fb_info* @msm_alloc_stolen_fb(%struct.drm_device* %58, i32 %61, i32 %64, i32 %65, i32 %66)
  %68 = bitcast %struct.fb_info* %67 to %struct.drm_framebuffer*
  store %struct.drm_framebuffer* %68, %struct.drm_framebuffer** %9, align 8
  %69 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %70 = bitcast %struct.drm_framebuffer* %69 to %struct.fb_info*
  %71 = call i64 @IS_ERR(%struct.fb_info* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %2
  %74 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %75 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i32 (i32, i8*, ...) @DRM_DEV_ERROR(i32 %76, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %78 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %79 = bitcast %struct.drm_framebuffer* %78 to %struct.fb_info*
  %80 = call i32 @PTR_ERR(%struct.fb_info* %79)
  store i32 %80, i32* %3, align 4
  br label %206

81:                                               ; preds = %2
  %82 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %83 = bitcast %struct.drm_framebuffer* %82 to %struct.fb_info*
  %84 = call %struct.drm_gem_object* @msm_framebuffer_bo(%struct.fb_info* %83, i32 0)
  store %struct.drm_gem_object* %84, %struct.drm_gem_object** %10, align 8
  %85 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %86 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %85, i32 0, i32 0
  %87 = call i32 @mutex_lock(i32* %86)
  %88 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %89 = load %struct.msm_drm_private*, %struct.msm_drm_private** %8, align 8
  %90 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %89, i32 0, i32 0
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @msm_gem_get_and_pin_iova(%struct.drm_gem_object* %88, i32 %93, i8** %12)
  store i32 %94, i32* %14, align 4
  %95 = load i32, i32* %14, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %81
  %98 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %99 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %14, align 4
  %102 = call i32 (i32, i8*, ...) @DRM_DEV_ERROR(i32 %100, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  br label %198

103:                                              ; preds = %81
  %104 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %4, align 8
  %105 = call %struct.fb_info* @drm_fb_helper_alloc_fbi(%struct.drm_fb_helper* %104)
  store %struct.fb_info* %105, %struct.fb_info** %11, align 8
  %106 = load %struct.fb_info*, %struct.fb_info** %11, align 8
  %107 = call i64 @IS_ERR(%struct.fb_info* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %103
  %110 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %111 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = call i32 (i32, i8*, ...) @DRM_DEV_ERROR(i32 %112, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %114 = load %struct.fb_info*, %struct.fb_info** %11, align 8
  %115 = call i32 @PTR_ERR(%struct.fb_info* %114)
  store i32 %115, i32* %14, align 4
  br label %198

116:                                              ; preds = %103
  %117 = load %struct.fb_info*, %struct.fb_info** %11, align 8
  %118 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %119 = call i32 (i8*, %struct.fb_info*, %struct.drm_device*, ...) @DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), %struct.fb_info* %117, %struct.drm_device* %118)
  %120 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %121 = bitcast %struct.drm_framebuffer* %120 to %struct.fb_info*
  %122 = load %struct.msm_fbdev*, %struct.msm_fbdev** %6, align 8
  %123 = getelementptr inbounds %struct.msm_fbdev, %struct.msm_fbdev* %122, i32 0, i32 0
  store %struct.fb_info* %121, %struct.fb_info** %123, align 8
  %124 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %125 = bitcast %struct.drm_framebuffer* %124 to %struct.fb_info*
  %126 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %4, align 8
  %127 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %126, i32 0, i32 0
  store %struct.fb_info* %125, %struct.fb_info** %127, align 8
  %128 = load %struct.fb_info*, %struct.fb_info** %11, align 8
  %129 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %128, i32 0, i32 7
  store i32* @msm_fb_ops, i32** %129, align 8
  %130 = load %struct.fb_info*, %struct.fb_info** %11, align 8
  %131 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %4, align 8
  %132 = load %struct.drm_fb_helper_surface_size*, %struct.drm_fb_helper_surface_size** %5, align 8
  %133 = call i32 @drm_fb_helper_fill_info(%struct.fb_info* %130, %struct.drm_fb_helper* %131, %struct.drm_fb_helper_surface_size* %132)
  %134 = load i8*, i8** %12, align 8
  %135 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %136 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  store i8* %134, i8** %137, align 8
  %138 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %139 = call %struct.fb_info* @msm_gem_get_vaddr(%struct.drm_gem_object* %138)
  %140 = load %struct.fb_info*, %struct.fb_info** %11, align 8
  %141 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %140, i32 0, i32 6
  store %struct.fb_info* %139, %struct.fb_info** %141, align 8
  %142 = load %struct.fb_info*, %struct.fb_info** %11, align 8
  %143 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %142, i32 0, i32 6
  %144 = load %struct.fb_info*, %struct.fb_info** %143, align 8
  %145 = call i64 @IS_ERR(%struct.fb_info* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %116
  %148 = load %struct.fb_info*, %struct.fb_info** %11, align 8
  %149 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %148, i32 0, i32 6
  %150 = load %struct.fb_info*, %struct.fb_info** %149, align 8
  %151 = call i32 @PTR_ERR(%struct.fb_info* %150)
  store i32 %151, i32* %14, align 4
  br label %198

152:                                              ; preds = %116
  %153 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %154 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.fb_info*, %struct.fb_info** %11, align 8
  %157 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %156, i32 0, i32 5
  store i32 %155, i32* %157, align 8
  %158 = load i8*, i8** %12, align 8
  %159 = load %struct.fb_info*, %struct.fb_info** %11, align 8
  %160 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %159, i32 0, i32 4
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 1
  store i8* %158, i8** %161, align 8
  %162 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %163 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.fb_info*, %struct.fb_info** %11, align 8
  %166 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %165, i32 0, i32 4
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 0
  store i32 %164, i32* %167, align 8
  %168 = load %struct.fb_info*, %struct.fb_info** %11, align 8
  %169 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 8
  %171 = sext i32 %170 to i64
  %172 = inttoptr i64 %171 to %struct.fb_info*
  %173 = load %struct.fb_info*, %struct.fb_info** %11, align 8
  %174 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = sext i32 %176 to i64
  %178 = inttoptr i64 %177 to %struct.drm_device*
  %179 = load %struct.fb_info*, %struct.fb_info** %11, align 8
  %180 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = call i32 (i8*, %struct.fb_info*, %struct.drm_device*, ...) @DBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), %struct.fb_info* %172, %struct.drm_device* %178, i32 %182)
  %184 = load %struct.msm_fbdev*, %struct.msm_fbdev** %6, align 8
  %185 = getelementptr inbounds %struct.msm_fbdev, %struct.msm_fbdev* %184, i32 0, i32 0
  %186 = load %struct.fb_info*, %struct.fb_info** %185, align 8
  %187 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %186, i32 0, i32 1
  %188 = load %struct.fb_info*, %struct.fb_info** %187, align 8
  %189 = load %struct.msm_fbdev*, %struct.msm_fbdev** %6, align 8
  %190 = getelementptr inbounds %struct.msm_fbdev, %struct.msm_fbdev* %189, i32 0, i32 0
  %191 = load %struct.fb_info*, %struct.fb_info** %190, align 8
  %192 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %191, i32 0, i32 0
  %193 = load %struct.drm_device*, %struct.drm_device** %192, align 8
  %194 = call i32 (i8*, %struct.fb_info*, %struct.drm_device*, ...) @DBG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), %struct.fb_info* %188, %struct.drm_device* %193)
  %195 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %196 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %195, i32 0, i32 0
  %197 = call i32 @mutex_unlock(i32* %196)
  store i32 0, i32* %3, align 4
  br label %206

198:                                              ; preds = %147, %109, %97
  %199 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %200 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %199, i32 0, i32 0
  %201 = call i32 @mutex_unlock(i32* %200)
  %202 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %203 = bitcast %struct.drm_framebuffer* %202 to %struct.fb_info*
  %204 = call i32 @drm_framebuffer_remove(%struct.fb_info* %203)
  %205 = load i32, i32* %14, align 4
  store i32 %205, i32* %3, align 4
  br label %206

206:                                              ; preds = %198, %152, %73
  %207 = load i32, i32* %3, align 4
  ret i32 %207
}

declare dso_local %struct.msm_fbdev* @to_msm_fbdev(%struct.drm_fb_helper*) #1

declare dso_local i32 @drm_mode_legacy_fb_format(i32, i32) #1

declare dso_local i32 @DBG(i8*, %struct.fb_info*, %struct.drm_device*, ...) #1

declare dso_local i32 @align_pitch(i32, i32) #1

declare dso_local %struct.fb_info* @msm_alloc_stolen_fb(%struct.drm_device*, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.fb_info*) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.fb_info*) #1

declare dso_local %struct.drm_gem_object* @msm_framebuffer_bo(%struct.fb_info*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @msm_gem_get_and_pin_iova(%struct.drm_gem_object*, i32, i8**) #1

declare dso_local %struct.fb_info* @drm_fb_helper_alloc_fbi(%struct.drm_fb_helper*) #1

declare dso_local i32 @drm_fb_helper_fill_info(%struct.fb_info*, %struct.drm_fb_helper*, %struct.drm_fb_helper_surface_size*) #1

declare dso_local %struct.fb_info* @msm_gem_get_vaddr(%struct.drm_gem_object*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @drm_framebuffer_remove(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_fbdev.c_rockchip_drm_fbdev_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_fbdev.c_rockchip_drm_fbdev_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_fb_helper = type { %struct.rockchip_gem_object*, %struct.drm_device* }
%struct.rockchip_gem_object = type { i64*, %struct.TYPE_11__, i64, %struct.TYPE_10__*, i32, i32, %struct.TYPE_9__, i32, i64, %struct.TYPE_7__, i32* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32, i64 }
%struct.drm_device = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.drm_fb_helper_surface_size = type { i32, i64, i32, i32 }
%struct.rockchip_drm_private = type { %struct.TYPE_11__* }
%struct.drm_mode_fb_cmd2 = type { i32, i64, i32*, i32, i32 }
%struct.drm_framebuffer = type { i64*, %struct.TYPE_11__, i64, %struct.TYPE_10__*, i32, i32, %struct.TYPE_9__, i32, i64, %struct.TYPE_7__, i32* }
%struct.fb_info = type { i64*, %struct.TYPE_11__, i64, %struct.TYPE_10__*, i32, i32, %struct.TYPE_9__, i32, i64, %struct.TYPE_7__, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to create framebuffer info.\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to allocate DRM framebuffer.\0A\00", align 1
@rockchip_drm_fbdev_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"FB [%dx%d]-%d kvaddr=%p offset=%ld size=%zu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_fb_helper*, %struct.drm_fb_helper_surface_size*)* @rockchip_drm_fbdev_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_drm_fbdev_create(%struct.drm_fb_helper* %0, %struct.drm_fb_helper_surface_size* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_fb_helper*, align 8
  %5 = alloca %struct.drm_fb_helper_surface_size*, align 8
  %6 = alloca %struct.rockchip_drm_private*, align 8
  %7 = alloca %struct.drm_mode_fb_cmd2, align 8
  %8 = alloca %struct.drm_device*, align 8
  %9 = alloca %struct.rockchip_gem_object*, align 8
  %10 = alloca %struct.drm_framebuffer*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.fb_info*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.drm_fb_helper* %0, %struct.drm_fb_helper** %4, align 8
  store %struct.drm_fb_helper_surface_size* %1, %struct.drm_fb_helper_surface_size** %5, align 8
  %16 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %4, align 8
  %17 = call %struct.rockchip_drm_private* @to_drm_private(%struct.drm_fb_helper* %16)
  store %struct.rockchip_drm_private* %17, %struct.rockchip_drm_private** %6, align 8
  %18 = bitcast %struct.drm_mode_fb_cmd2* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 32, i1 false)
  %19 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %4, align 8
  %20 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %19, i32 0, i32 1
  %21 = load %struct.drm_device*, %struct.drm_device** %20, align 8
  store %struct.drm_device* %21, %struct.drm_device** %8, align 8
  %22 = load %struct.drm_fb_helper_surface_size*, %struct.drm_fb_helper_surface_size** %5, align 8
  %23 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @DIV_ROUND_UP(i32 %24, i32 8)
  store i32 %25, i32* %11, align 4
  %26 = load %struct.drm_fb_helper_surface_size*, %struct.drm_fb_helper_surface_size** %5, align 8
  %27 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %7, i32 0, i32 0
  store i32 %28, i32* %29, align 8
  %30 = load %struct.drm_fb_helper_surface_size*, %struct.drm_fb_helper_surface_size** %5, align 8
  %31 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %7, i32 0, i32 1
  store i64 %32, i64* %33, align 8
  %34 = load %struct.drm_fb_helper_surface_size*, %struct.drm_fb_helper_surface_size** %5, align 8
  %35 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %11, align 4
  %38 = mul i32 %36, %37
  %39 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %7, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  store i32 %38, i32* %41, align 4
  %42 = load %struct.drm_fb_helper_surface_size*, %struct.drm_fb_helper_surface_size** %5, align 8
  %43 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.drm_fb_helper_surface_size*, %struct.drm_fb_helper_surface_size** %5, align 8
  %46 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @drm_mode_legacy_fb_format(i32 %44, i32 %47)
  %49 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %7, i32 0, i32 3
  store i32 %48, i32* %49, align 8
  %50 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %7, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %7, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = mul i64 %54, %56
  store i64 %57, i64* %14, align 8
  %58 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %59 = load i64, i64* %14, align 8
  %60 = call %struct.rockchip_gem_object* @rockchip_gem_create_object(%struct.drm_device* %58, i64 %59, i32 1)
  store %struct.rockchip_gem_object* %60, %struct.rockchip_gem_object** %9, align 8
  %61 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %9, align 8
  %62 = call i64 @IS_ERR(%struct.rockchip_gem_object* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %2
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %185

67:                                               ; preds = %2
  %68 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %9, align 8
  %69 = getelementptr inbounds %struct.rockchip_gem_object, %struct.rockchip_gem_object* %68, i32 0, i32 1
  %70 = load %struct.rockchip_drm_private*, %struct.rockchip_drm_private** %6, align 8
  %71 = getelementptr inbounds %struct.rockchip_drm_private, %struct.rockchip_drm_private* %70, i32 0, i32 0
  store %struct.TYPE_11__* %69, %struct.TYPE_11__** %71, align 8
  %72 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %4, align 8
  %73 = call %struct.rockchip_gem_object* @drm_fb_helper_alloc_fbi(%struct.drm_fb_helper* %72)
  %74 = bitcast %struct.rockchip_gem_object* %73 to %struct.fb_info*
  store %struct.fb_info* %74, %struct.fb_info** %13, align 8
  %75 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %76 = bitcast %struct.fb_info* %75 to %struct.rockchip_gem_object*
  %77 = call i64 @IS_ERR(%struct.rockchip_gem_object* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %67
  %80 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %81 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @DRM_DEV_ERROR(i32 %82, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %84 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %85 = bitcast %struct.fb_info* %84 to %struct.rockchip_gem_object*
  %86 = call i32 @PTR_ERR(%struct.rockchip_gem_object* %85)
  store i32 %86, i32* %15, align 4
  br label %180

87:                                               ; preds = %67
  %88 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %89 = load %struct.rockchip_drm_private*, %struct.rockchip_drm_private** %6, align 8
  %90 = getelementptr inbounds %struct.rockchip_drm_private, %struct.rockchip_drm_private* %89, i32 0, i32 0
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %90, align 8
  %92 = call %struct.rockchip_gem_object* @rockchip_drm_framebuffer_init(%struct.drm_device* %88, %struct.drm_mode_fb_cmd2* %7, %struct.TYPE_11__* %91)
  %93 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %4, align 8
  %94 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %93, i32 0, i32 0
  store %struct.rockchip_gem_object* %92, %struct.rockchip_gem_object** %94, align 8
  %95 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %4, align 8
  %96 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %95, i32 0, i32 0
  %97 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %96, align 8
  %98 = call i64 @IS_ERR(%struct.rockchip_gem_object* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %87
  %101 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %102 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @DRM_DEV_ERROR(i32 %103, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %105 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %4, align 8
  %106 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %105, i32 0, i32 0
  %107 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %106, align 8
  %108 = call i32 @PTR_ERR(%struct.rockchip_gem_object* %107)
  store i32 %108, i32* %15, align 4
  br label %180

109:                                              ; preds = %87
  %110 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %111 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %110, i32 0, i32 10
  store i32* @rockchip_drm_fbdev_ops, i32** %111, align 8
  %112 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %4, align 8
  %113 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %112, i32 0, i32 0
  %114 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %113, align 8
  %115 = bitcast %struct.rockchip_gem_object* %114 to %struct.drm_framebuffer*
  store %struct.drm_framebuffer* %115, %struct.drm_framebuffer** %10, align 8
  %116 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %117 = bitcast %struct.fb_info* %116 to %struct.rockchip_gem_object*
  %118 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %4, align 8
  %119 = load %struct.drm_fb_helper_surface_size*, %struct.drm_fb_helper_surface_size** %5, align 8
  %120 = call i32 @drm_fb_helper_fill_info(%struct.rockchip_gem_object* %117, %struct.drm_fb_helper* %118, %struct.drm_fb_helper_surface_size* %119)
  %121 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %122 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %121, i32 0, i32 9
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* %11, align 4
  %126 = mul i32 %124, %125
  %127 = zext i32 %126 to i64
  store i64 %127, i64* %12, align 8
  %128 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %129 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %128, i32 0, i32 9
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %133 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %132, i32 0, i32 0
  %134 = load i64*, i64** %133, align 8
  %135 = getelementptr inbounds i64, i64* %134, i64 0
  %136 = load i64, i64* %135, align 8
  %137 = mul i64 %131, %136
  %138 = load i64, i64* %12, align 8
  %139 = add i64 %138, %137
  store i64 %139, i64* %12, align 8
  %140 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %141 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  store i64 0, i64* %142, align 8
  %143 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %9, align 8
  %144 = getelementptr inbounds %struct.rockchip_gem_object, %struct.rockchip_gem_object* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* %12, align 8
  %147 = add i64 %145, %146
  %148 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %149 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %148, i32 0, i32 8
  store i64 %147, i64* %149, align 8
  %150 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %9, align 8
  %151 = getelementptr inbounds %struct.rockchip_gem_object, %struct.rockchip_gem_object* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %155 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %154, i32 0, i32 7
  store i32 %153, i32* %155, align 4
  %156 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %9, align 8
  %157 = getelementptr inbounds %struct.rockchip_gem_object, %struct.rockchip_gem_object* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %161 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %160, i32 0, i32 6
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 0
  store i32 %159, i32* %162, align 8
  %163 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %164 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %163, i32 0, i32 5
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %167 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %170 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %169, i32 0, i32 3
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %9, align 8
  %175 = getelementptr inbounds %struct.rockchip_gem_object, %struct.rockchip_gem_object* %174, i32 0, i32 2
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* %12, align 8
  %178 = load i64, i64* %14, align 8
  %179 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %165, i32 %168, i32 %173, i64 %176, i64 %177, i64 %178)
  store i32 0, i32* %3, align 4
  br label %185

180:                                              ; preds = %100, %79
  %181 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %9, align 8
  %182 = getelementptr inbounds %struct.rockchip_gem_object, %struct.rockchip_gem_object* %181, i32 0, i32 1
  %183 = call i32 @rockchip_gem_free_object(%struct.TYPE_11__* %182)
  %184 = load i32, i32* %15, align 4
  store i32 %184, i32* %3, align 4
  br label %185

185:                                              ; preds = %180, %109, %64
  %186 = load i32, i32* %3, align 4
  ret i32 %186
}

declare dso_local %struct.rockchip_drm_private* @to_drm_private(%struct.drm_fb_helper*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @drm_mode_legacy_fb_format(i32, i32) #1

declare dso_local %struct.rockchip_gem_object* @rockchip_gem_create_object(%struct.drm_device*, i64, i32) #1

declare dso_local i64 @IS_ERR(%struct.rockchip_gem_object*) #1

declare dso_local %struct.rockchip_gem_object* @drm_fb_helper_alloc_fbi(%struct.drm_fb_helper*) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.rockchip_gem_object*) #1

declare dso_local %struct.rockchip_gem_object* @rockchip_drm_framebuffer_init(%struct.drm_device*, %struct.drm_mode_fb_cmd2*, %struct.TYPE_11__*) #1

declare dso_local i32 @drm_fb_helper_fill_info(%struct.rockchip_gem_object*, %struct.drm_fb_helper*, %struct.drm_fb_helper_surface_size*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, i32, i64, i64, i64) #1

declare dso_local i32 @rockchip_gem_free_object(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

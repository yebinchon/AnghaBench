; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/virtio/extr_virtgpu_display.c_virtio_gpu_user_framebuffer_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/virtio/extr_virtgpu_display.c_virtio_gpu_user_framebuffer_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_framebuffer = type { i32 }
%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_mode_fb_cmd2 = type { i64, i32* }
%struct.drm_gem_object = type { i32 }
%struct.virtio_gpu_framebuffer = type { %struct.drm_framebuffer }

@DRM_FORMAT_HOST_XRGB8888 = common dso_local global i64 0, align 8
@DRM_FORMAT_HOST_ARGB8888 = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_framebuffer* (%struct.drm_device*, %struct.drm_file*, %struct.drm_mode_fb_cmd2*)* @virtio_gpu_user_framebuffer_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_framebuffer* @virtio_gpu_user_framebuffer_create(%struct.drm_device* %0, %struct.drm_file* %1, %struct.drm_mode_fb_cmd2* %2) #0 {
  %4 = alloca %struct.drm_framebuffer*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_file*, align 8
  %7 = alloca %struct.drm_mode_fb_cmd2*, align 8
  %8 = alloca %struct.drm_gem_object*, align 8
  %9 = alloca %struct.virtio_gpu_framebuffer*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.drm_file* %1, %struct.drm_file** %6, align 8
  store %struct.drm_mode_fb_cmd2* %2, %struct.drm_mode_fb_cmd2** %7, align 8
  store %struct.drm_gem_object* null, %struct.drm_gem_object** %8, align 8
  %11 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %12 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @DRM_FORMAT_HOST_XRGB8888, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %3
  %17 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %18 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @DRM_FORMAT_HOST_ARGB8888, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load i32, i32* @ENOENT, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.drm_framebuffer* @ERR_PTR(i32 %24)
  store %struct.drm_framebuffer* %25, %struct.drm_framebuffer** %4, align 8
  br label %65

26:                                               ; preds = %16, %3
  %27 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %28 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %29 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file* %27, i32 %32)
  store %struct.drm_gem_object* %33, %struct.drm_gem_object** %8, align 8
  %34 = load %struct.drm_gem_object*, %struct.drm_gem_object** %8, align 8
  %35 = icmp ne %struct.drm_gem_object* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %26
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  %39 = call %struct.drm_framebuffer* @ERR_PTR(i32 %38)
  store %struct.drm_framebuffer* %39, %struct.drm_framebuffer** %4, align 8
  br label %65

40:                                               ; preds = %26
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call %struct.virtio_gpu_framebuffer* @kzalloc(i32 4, i32 %41)
  store %struct.virtio_gpu_framebuffer* %42, %struct.virtio_gpu_framebuffer** %9, align 8
  %43 = load %struct.virtio_gpu_framebuffer*, %struct.virtio_gpu_framebuffer** %9, align 8
  %44 = icmp eq %struct.virtio_gpu_framebuffer* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  %48 = call %struct.drm_framebuffer* @ERR_PTR(i32 %47)
  store %struct.drm_framebuffer* %48, %struct.drm_framebuffer** %4, align 8
  br label %65

49:                                               ; preds = %40
  %50 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %51 = load %struct.virtio_gpu_framebuffer*, %struct.virtio_gpu_framebuffer** %9, align 8
  %52 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %53 = load %struct.drm_gem_object*, %struct.drm_gem_object** %8, align 8
  %54 = call i32 @virtio_gpu_framebuffer_init(%struct.drm_device* %50, %struct.virtio_gpu_framebuffer* %51, %struct.drm_mode_fb_cmd2* %52, %struct.drm_gem_object* %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %49
  %58 = load %struct.virtio_gpu_framebuffer*, %struct.virtio_gpu_framebuffer** %9, align 8
  %59 = call i32 @kfree(%struct.virtio_gpu_framebuffer* %58)
  %60 = load %struct.drm_gem_object*, %struct.drm_gem_object** %8, align 8
  %61 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %60)
  store %struct.drm_framebuffer* null, %struct.drm_framebuffer** %4, align 8
  br label %65

62:                                               ; preds = %49
  %63 = load %struct.virtio_gpu_framebuffer*, %struct.virtio_gpu_framebuffer** %9, align 8
  %64 = getelementptr inbounds %struct.virtio_gpu_framebuffer, %struct.virtio_gpu_framebuffer* %63, i32 0, i32 0
  store %struct.drm_framebuffer* %64, %struct.drm_framebuffer** %4, align 8
  br label %65

65:                                               ; preds = %62, %57, %45, %36, %22
  %66 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  ret %struct.drm_framebuffer* %66
}

declare dso_local %struct.drm_framebuffer* @ERR_PTR(i32) #1

declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file*, i32) #1

declare dso_local %struct.virtio_gpu_framebuffer* @kzalloc(i32, i32) #1

declare dso_local i32 @virtio_gpu_framebuffer_init(%struct.drm_device*, %struct.virtio_gpu_framebuffer*, %struct.drm_mode_fb_cmd2*, %struct.drm_gem_object*) #1

declare dso_local i32 @kfree(%struct.virtio_gpu_framebuffer*) #1

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

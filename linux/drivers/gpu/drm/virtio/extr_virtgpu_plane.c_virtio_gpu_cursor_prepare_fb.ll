; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/virtio/extr_virtgpu_plane.c_virtio_gpu_cursor_prepare_fb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/virtio/extr_virtgpu_plane.c_virtio_gpu_cursor_prepare_fb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.TYPE_4__*, %struct.drm_device* }
%struct.TYPE_4__ = type { i64 }
%struct.drm_device = type { %struct.virtio_gpu_device* }
%struct.virtio_gpu_device = type { i32 }
%struct.drm_plane_state = type { i64 }
%struct.virtio_gpu_framebuffer = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.virtio_gpu_object = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_plane*, %struct.drm_plane_state*)* @virtio_gpu_cursor_prepare_fb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtio_gpu_cursor_prepare_fb(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_plane*, align 8
  %5 = alloca %struct.drm_plane_state*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.virtio_gpu_device*, align 8
  %8 = alloca %struct.virtio_gpu_framebuffer*, align 8
  %9 = alloca %struct.virtio_gpu_object*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %4, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %5, align 8
  %10 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %11 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %10, i32 0, i32 1
  %12 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  store %struct.drm_device* %12, %struct.drm_device** %6, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %14, align 8
  store %struct.virtio_gpu_device* %15, %struct.virtio_gpu_device** %7, align 8
  %16 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %17 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %64

21:                                               ; preds = %2
  %22 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %23 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call %struct.virtio_gpu_framebuffer* @to_virtio_gpu_framebuffer(i64 %24)
  store %struct.virtio_gpu_framebuffer* %25, %struct.virtio_gpu_framebuffer** %8, align 8
  %26 = load %struct.virtio_gpu_framebuffer*, %struct.virtio_gpu_framebuffer** %8, align 8
  %27 = getelementptr inbounds %struct.virtio_gpu_framebuffer, %struct.virtio_gpu_framebuffer* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.virtio_gpu_object* @gem_to_virtio_gpu_obj(i32 %31)
  store %struct.virtio_gpu_object* %32, %struct.virtio_gpu_object** %9, align 8
  %33 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %9, align 8
  %34 = icmp ne %struct.virtio_gpu_object* %33, null
  br i1 %34, label %35, label %63

35:                                               ; preds = %21
  %36 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %9, align 8
  %37 = getelementptr inbounds %struct.virtio_gpu_object, %struct.virtio_gpu_object* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %63

40:                                               ; preds = %35
  %41 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %42 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %47 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %45, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %40
  %51 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %7, align 8
  %52 = call i32 @virtio_gpu_fence_alloc(%struct.virtio_gpu_device* %51)
  %53 = load %struct.virtio_gpu_framebuffer*, %struct.virtio_gpu_framebuffer** %8, align 8
  %54 = getelementptr inbounds %struct.virtio_gpu_framebuffer, %struct.virtio_gpu_framebuffer* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.virtio_gpu_framebuffer*, %struct.virtio_gpu_framebuffer** %8, align 8
  %56 = getelementptr inbounds %struct.virtio_gpu_framebuffer, %struct.virtio_gpu_framebuffer* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %50
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %64

62:                                               ; preds = %50
  br label %63

63:                                               ; preds = %62, %40, %35, %21
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %59, %20
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local %struct.virtio_gpu_framebuffer* @to_virtio_gpu_framebuffer(i64) #1

declare dso_local %struct.virtio_gpu_object* @gem_to_virtio_gpu_obj(i32) #1

declare dso_local i32 @virtio_gpu_fence_alloc(%struct.virtio_gpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

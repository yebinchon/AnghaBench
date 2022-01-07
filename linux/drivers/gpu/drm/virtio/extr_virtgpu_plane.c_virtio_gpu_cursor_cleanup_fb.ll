; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/virtio/extr_virtgpu_plane.c_virtio_gpu_cursor_cleanup_fb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/virtio/extr_virtgpu_plane.c_virtio_gpu_cursor_cleanup_fb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.drm_plane_state = type { i32 }
%struct.virtio_gpu_framebuffer = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane*, %struct.drm_plane_state*)* @virtio_gpu_cursor_cleanup_fb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @virtio_gpu_cursor_cleanup_fb(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.drm_plane_state*, align 8
  %5 = alloca %struct.virtio_gpu_framebuffer*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %3, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %4, align 8
  %6 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %7 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %32

13:                                               ; preds = %2
  %14 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %15 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.virtio_gpu_framebuffer* @to_virtio_gpu_framebuffer(i32 %18)
  store %struct.virtio_gpu_framebuffer* %19, %struct.virtio_gpu_framebuffer** %5, align 8
  %20 = load %struct.virtio_gpu_framebuffer*, %struct.virtio_gpu_framebuffer** %5, align 8
  %21 = getelementptr inbounds %struct.virtio_gpu_framebuffer, %struct.virtio_gpu_framebuffer* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = icmp ne %struct.TYPE_4__* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %13
  %25 = load %struct.virtio_gpu_framebuffer*, %struct.virtio_gpu_framebuffer** %5, align 8
  %26 = getelementptr inbounds %struct.virtio_gpu_framebuffer, %struct.virtio_gpu_framebuffer* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = call i32 @dma_fence_put(i32* %28)
  %30 = load %struct.virtio_gpu_framebuffer*, %struct.virtio_gpu_framebuffer** %5, align 8
  %31 = getelementptr inbounds %struct.virtio_gpu_framebuffer, %struct.virtio_gpu_framebuffer* %30, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %31, align 8
  br label %32

32:                                               ; preds = %12, %24, %13
  ret void
}

declare dso_local %struct.virtio_gpu_framebuffer* @to_virtio_gpu_framebuffer(i32) #1

declare dso_local i32 @dma_fence_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

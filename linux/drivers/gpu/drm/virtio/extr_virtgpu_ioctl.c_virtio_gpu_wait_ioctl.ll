; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/virtio/extr_virtgpu_ioctl.c_virtio_gpu_wait_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/virtio/extr_virtgpu_ioctl.c_virtio_gpu_wait_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_virtgpu_3d_wait = type { i32, i32 }
%struct.drm_gem_object = type { i32 }
%struct.virtio_gpu_object = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@VIRTGPU_WAIT_NOWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i8*, %struct.drm_file*)* @virtio_gpu_wait_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtio_gpu_wait_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_virtgpu_3d_wait*, align 8
  %9 = alloca %struct.drm_gem_object*, align 8
  %10 = alloca %struct.virtio_gpu_object*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.drm_virtgpu_3d_wait*
  store %struct.drm_virtgpu_3d_wait* %14, %struct.drm_virtgpu_3d_wait** %8, align 8
  store %struct.drm_gem_object* null, %struct.drm_gem_object** %9, align 8
  store %struct.virtio_gpu_object* null, %struct.virtio_gpu_object** %10, align 8
  store i32 0, i32* %12, align 4
  %15 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %16 = load %struct.drm_virtgpu_3d_wait*, %struct.drm_virtgpu_3d_wait** %8, align 8
  %17 = getelementptr inbounds %struct.drm_virtgpu_3d_wait, %struct.drm_virtgpu_3d_wait* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file* %15, i32 %18)
  store %struct.drm_gem_object* %19, %struct.drm_gem_object** %9, align 8
  %20 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %21 = icmp eq %struct.drm_gem_object* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @ENOENT, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %42

25:                                               ; preds = %3
  %26 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %27 = call %struct.virtio_gpu_object* @gem_to_virtio_gpu_obj(%struct.drm_gem_object* %26)
  store %struct.virtio_gpu_object* %27, %struct.virtio_gpu_object** %10, align 8
  %28 = load %struct.drm_virtgpu_3d_wait*, %struct.drm_virtgpu_3d_wait** %8, align 8
  %29 = getelementptr inbounds %struct.drm_virtgpu_3d_wait, %struct.drm_virtgpu_3d_wait* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @VIRTGPU_WAIT_NOWAIT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  store i32 1, i32* %12, align 4
  br label %35

35:                                               ; preds = %34, %25
  %36 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %10, align 8
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @virtio_gpu_object_wait(%struct.virtio_gpu_object* %36, i32 %37)
  store i32 %38, i32* %11, align 4
  %39 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %40 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %39)
  %41 = load i32, i32* %11, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %35, %22
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file*, i32) #1

declare dso_local %struct.virtio_gpu_object* @gem_to_virtio_gpu_obj(%struct.drm_gem_object*) #1

declare dso_local i32 @virtio_gpu_object_wait(%struct.virtio_gpu_object*, i32) #1

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

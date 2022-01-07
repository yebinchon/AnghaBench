; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/virtio/extr_virtgpu_gem.c_virtio_gpu_alloc_object.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/virtio/extr_virtgpu_gem.c_virtio_gpu_alloc_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_gpu_object = type { i32 }
%struct.drm_device = type { %struct.virtio_gpu_device* }
%struct.virtio_gpu_device = type { i32 }
%struct.virtio_gpu_object_params = type { i32 }
%struct.virtio_gpu_fence = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.virtio_gpu_object* @virtio_gpu_alloc_object(%struct.drm_device* %0, %struct.virtio_gpu_object_params* %1, %struct.virtio_gpu_fence* %2) #0 {
  %4 = alloca %struct.virtio_gpu_object*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.virtio_gpu_object_params*, align 8
  %7 = alloca %struct.virtio_gpu_fence*, align 8
  %8 = alloca %struct.virtio_gpu_device*, align 8
  %9 = alloca %struct.virtio_gpu_object*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.virtio_gpu_object_params* %1, %struct.virtio_gpu_object_params** %6, align 8
  store %struct.virtio_gpu_fence* %2, %struct.virtio_gpu_fence** %7, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %12, align 8
  store %struct.virtio_gpu_device* %13, %struct.virtio_gpu_device** %8, align 8
  %14 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %8, align 8
  %15 = load %struct.virtio_gpu_object_params*, %struct.virtio_gpu_object_params** %6, align 8
  %16 = load %struct.virtio_gpu_fence*, %struct.virtio_gpu_fence** %7, align 8
  %17 = call i32 @virtio_gpu_object_create(%struct.virtio_gpu_device* %14, %struct.virtio_gpu_object_params* %15, %struct.virtio_gpu_object** %9, %struct.virtio_gpu_fence* %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* %10, align 4
  %22 = call %struct.virtio_gpu_object* @ERR_PTR(i32 %21)
  store %struct.virtio_gpu_object* %22, %struct.virtio_gpu_object** %4, align 8
  br label %25

23:                                               ; preds = %3
  %24 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %9, align 8
  store %struct.virtio_gpu_object* %24, %struct.virtio_gpu_object** %4, align 8
  br label %25

25:                                               ; preds = %23, %20
  %26 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %4, align 8
  ret %struct.virtio_gpu_object* %26
}

declare dso_local i32 @virtio_gpu_object_create(%struct.virtio_gpu_device*, %struct.virtio_gpu_object_params*, %struct.virtio_gpu_object**, %struct.virtio_gpu_fence*) #1

declare dso_local %struct.virtio_gpu_object* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

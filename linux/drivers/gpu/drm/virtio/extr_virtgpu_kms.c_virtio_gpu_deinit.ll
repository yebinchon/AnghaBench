; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/virtio/extr_virtgpu_kms.c_virtio_gpu_deinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/virtio/extr_virtgpu_kms.c_virtio_gpu_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.virtio_gpu_device* }
%struct.virtio_gpu_device = type { i32, %struct.virtio_gpu_device*, %struct.TYPE_9__*, i32, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @virtio_gpu_deinit(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.virtio_gpu_device*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %4 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %5 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %4, i32 0, i32 0
  %6 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %5, align 8
  store %struct.virtio_gpu_device* %6, %struct.virtio_gpu_device** %3, align 8
  %7 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %3, align 8
  %8 = getelementptr inbounds %struct.virtio_gpu_device, %struct.virtio_gpu_device* %7, i32 0, i32 0
  store i32 0, i32* %8, align 8
  %9 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %3, align 8
  %10 = getelementptr inbounds %struct.virtio_gpu_device, %struct.virtio_gpu_device* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = call i32 @flush_work(i32* %11)
  %13 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %3, align 8
  %14 = getelementptr inbounds %struct.virtio_gpu_device, %struct.virtio_gpu_device* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = call i32 @flush_work(i32* %15)
  %17 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %3, align 8
  %18 = getelementptr inbounds %struct.virtio_gpu_device, %struct.virtio_gpu_device* %17, i32 0, i32 3
  %19 = call i32 @flush_work(i32* %18)
  %20 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %3, align 8
  %21 = getelementptr inbounds %struct.virtio_gpu_device, %struct.virtio_gpu_device* %20, i32 0, i32 2
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %25, align 8
  %27 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %3, align 8
  %28 = getelementptr inbounds %struct.virtio_gpu_device, %struct.virtio_gpu_device* %27, i32 0, i32 2
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = call i32 %26(%struct.TYPE_9__* %29)
  %31 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %3, align 8
  %32 = getelementptr inbounds %struct.virtio_gpu_device, %struct.virtio_gpu_device* %31, i32 0, i32 2
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %36, align 8
  %38 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %3, align 8
  %39 = getelementptr inbounds %struct.virtio_gpu_device, %struct.virtio_gpu_device* %38, i32 0, i32 2
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  %41 = call i32 %37(%struct.TYPE_9__* %40)
  %42 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %3, align 8
  %43 = call i32 @virtio_gpu_modeset_fini(%struct.virtio_gpu_device* %42)
  %44 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %3, align 8
  %45 = call i32 @virtio_gpu_ttm_fini(%struct.virtio_gpu_device* %44)
  %46 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %3, align 8
  %47 = call i32 @virtio_gpu_free_vbufs(%struct.virtio_gpu_device* %46)
  %48 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %3, align 8
  %49 = call i32 @virtio_gpu_cleanup_cap_cache(%struct.virtio_gpu_device* %48)
  %50 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %3, align 8
  %51 = getelementptr inbounds %struct.virtio_gpu_device, %struct.virtio_gpu_device* %50, i32 0, i32 1
  %52 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %51, align 8
  %53 = call i32 @kfree(%struct.virtio_gpu_device* %52)
  %54 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %3, align 8
  %55 = call i32 @kfree(%struct.virtio_gpu_device* %54)
  ret void
}

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @virtio_gpu_modeset_fini(%struct.virtio_gpu_device*) #1

declare dso_local i32 @virtio_gpu_ttm_fini(%struct.virtio_gpu_device*) #1

declare dso_local i32 @virtio_gpu_free_vbufs(%struct.virtio_gpu_device*) #1

declare dso_local i32 @virtio_gpu_cleanup_cap_cache(%struct.virtio_gpu_device*) #1

declare dso_local i32 @kfree(%struct.virtio_gpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

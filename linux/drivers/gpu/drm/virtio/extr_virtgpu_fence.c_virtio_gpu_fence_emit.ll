; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/virtio/extr_virtgpu_fence.c_virtio_gpu_fence_emit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/virtio/extr_virtgpu_fence.c_virtio_gpu_fence_emit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_gpu_device = type { %struct.virtio_gpu_fence_driver }
%struct.virtio_gpu_fence_driver = type { i32, i32, i64 }
%struct.virtio_gpu_ctrl_hdr = type { i32, i32 }
%struct.virtio_gpu_fence = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64 }

@VIRTIO_GPU_FLAG_FENCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @virtio_gpu_fence_emit(%struct.virtio_gpu_device* %0, %struct.virtio_gpu_ctrl_hdr* %1, %struct.virtio_gpu_fence* %2) #0 {
  %4 = alloca %struct.virtio_gpu_device*, align 8
  %5 = alloca %struct.virtio_gpu_ctrl_hdr*, align 8
  %6 = alloca %struct.virtio_gpu_fence*, align 8
  %7 = alloca %struct.virtio_gpu_fence_driver*, align 8
  %8 = alloca i64, align 8
  store %struct.virtio_gpu_device* %0, %struct.virtio_gpu_device** %4, align 8
  store %struct.virtio_gpu_ctrl_hdr* %1, %struct.virtio_gpu_ctrl_hdr** %5, align 8
  store %struct.virtio_gpu_fence* %2, %struct.virtio_gpu_fence** %6, align 8
  %9 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %4, align 8
  %10 = getelementptr inbounds %struct.virtio_gpu_device, %struct.virtio_gpu_device* %9, i32 0, i32 0
  store %struct.virtio_gpu_fence_driver* %10, %struct.virtio_gpu_fence_driver** %7, align 8
  %11 = load %struct.virtio_gpu_fence_driver*, %struct.virtio_gpu_fence_driver** %7, align 8
  %12 = getelementptr inbounds %struct.virtio_gpu_fence_driver, %struct.virtio_gpu_fence_driver* %11, i32 0, i32 0
  %13 = load i64, i64* %8, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.virtio_gpu_fence_driver*, %struct.virtio_gpu_fence_driver** %7, align 8
  %16 = getelementptr inbounds %struct.virtio_gpu_fence_driver, %struct.virtio_gpu_fence_driver* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, 1
  store i64 %18, i64* %16, align 8
  %19 = load %struct.virtio_gpu_fence*, %struct.virtio_gpu_fence** %6, align 8
  %20 = getelementptr inbounds %struct.virtio_gpu_fence, %struct.virtio_gpu_fence* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i64 %18, i64* %21, align 8
  %22 = load %struct.virtio_gpu_fence*, %struct.virtio_gpu_fence** %6, align 8
  %23 = getelementptr inbounds %struct.virtio_gpu_fence, %struct.virtio_gpu_fence* %22, i32 0, i32 0
  %24 = call i32 @dma_fence_get(%struct.TYPE_3__* %23)
  %25 = load %struct.virtio_gpu_fence*, %struct.virtio_gpu_fence** %6, align 8
  %26 = getelementptr inbounds %struct.virtio_gpu_fence, %struct.virtio_gpu_fence* %25, i32 0, i32 1
  %27 = load %struct.virtio_gpu_fence_driver*, %struct.virtio_gpu_fence_driver** %7, align 8
  %28 = getelementptr inbounds %struct.virtio_gpu_fence_driver, %struct.virtio_gpu_fence_driver* %27, i32 0, i32 1
  %29 = call i32 @list_add_tail(i32* %26, i32* %28)
  %30 = load %struct.virtio_gpu_fence_driver*, %struct.virtio_gpu_fence_driver** %7, align 8
  %31 = getelementptr inbounds %struct.virtio_gpu_fence_driver, %struct.virtio_gpu_fence_driver* %30, i32 0, i32 0
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  %34 = load %struct.virtio_gpu_fence*, %struct.virtio_gpu_fence** %6, align 8
  %35 = getelementptr inbounds %struct.virtio_gpu_fence, %struct.virtio_gpu_fence* %34, i32 0, i32 0
  %36 = call i32 @trace_dma_fence_emit(%struct.TYPE_3__* %35)
  %37 = load i32, i32* @VIRTIO_GPU_FLAG_FENCE, align 4
  %38 = call i32 @cpu_to_le32(i32 %37)
  %39 = load %struct.virtio_gpu_ctrl_hdr*, %struct.virtio_gpu_ctrl_hdr** %5, align 8
  %40 = getelementptr inbounds %struct.virtio_gpu_ctrl_hdr, %struct.virtio_gpu_ctrl_hdr* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = load %struct.virtio_gpu_fence*, %struct.virtio_gpu_fence** %6, align 8
  %44 = getelementptr inbounds %struct.virtio_gpu_fence, %struct.virtio_gpu_fence* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @cpu_to_le64(i64 %46)
  %48 = load %struct.virtio_gpu_ctrl_hdr*, %struct.virtio_gpu_ctrl_hdr** %5, align 8
  %49 = getelementptr inbounds %struct.virtio_gpu_ctrl_hdr, %struct.virtio_gpu_ctrl_hdr* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dma_fence_get(%struct.TYPE_3__*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @trace_dma_fence_emit(%struct.TYPE_3__*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_le64(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/virtio/extr_virtgpu_plane.c_virtio_gpu_translate_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/virtio/extr_virtgpu_plane.c_virtio_gpu_translate_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VIRTIO_GPU_FORMAT_B8G8R8X8_UNORM = common dso_local global i32 0, align 4
@VIRTIO_GPU_FORMAT_B8G8R8A8_UNORM = common dso_local global i32 0, align 4
@VIRTIO_GPU_FORMAT_X8R8G8B8_UNORM = common dso_local global i32 0, align 4
@VIRTIO_GPU_FORMAT_A8R8G8B8_UNORM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @virtio_gpu_translate_format(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  switch i32 %4, label %13 [
    i32 128, label %5
    i32 131, label %7
    i32 129, label %9
    i32 130, label %11
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @VIRTIO_GPU_FORMAT_B8G8R8X8_UNORM, align 4
  store i32 %6, i32* %3, align 4
  br label %14

7:                                                ; preds = %1
  %8 = load i32, i32* @VIRTIO_GPU_FORMAT_B8G8R8A8_UNORM, align 4
  store i32 %8, i32* %3, align 4
  br label %14

9:                                                ; preds = %1
  %10 = load i32, i32* @VIRTIO_GPU_FORMAT_X8R8G8B8_UNORM, align 4
  store i32 %10, i32* %3, align 4
  br label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @VIRTIO_GPU_FORMAT_A8R8G8B8_UNORM, align 4
  store i32 %12, i32* %3, align 4
  br label %14

13:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %13, %11, %9, %7, %5
  %15 = load i32, i32* %3, align 4
  %16 = icmp eq i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @WARN_ON(i32 %17)
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

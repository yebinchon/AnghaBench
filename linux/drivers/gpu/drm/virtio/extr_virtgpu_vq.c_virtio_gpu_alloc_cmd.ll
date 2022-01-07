; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/virtio/extr_virtgpu_vq.c_virtio_gpu_alloc_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/virtio/extr_virtgpu_vq.c_virtio_gpu_alloc_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_gpu_device = type { i32 }
%struct.virtio_gpu_vbuffer = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.virtio_gpu_device*, %struct.virtio_gpu_vbuffer**, i32)* @virtio_gpu_alloc_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @virtio_gpu_alloc_cmd(%struct.virtio_gpu_device* %0, %struct.virtio_gpu_vbuffer** %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.virtio_gpu_device*, align 8
  %6 = alloca %struct.virtio_gpu_vbuffer**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.virtio_gpu_vbuffer*, align 8
  store %struct.virtio_gpu_device* %0, %struct.virtio_gpu_device** %5, align 8
  store %struct.virtio_gpu_vbuffer** %1, %struct.virtio_gpu_vbuffer*** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %5, align 8
  %10 = load i32, i32* %7, align 4
  %11 = call %struct.virtio_gpu_vbuffer* @virtio_gpu_get_vbuf(%struct.virtio_gpu_device* %9, i32 %10, i32 4, i32* null, i32* null)
  store %struct.virtio_gpu_vbuffer* %11, %struct.virtio_gpu_vbuffer** %8, align 8
  %12 = load %struct.virtio_gpu_vbuffer*, %struct.virtio_gpu_vbuffer** %8, align 8
  %13 = call i64 @IS_ERR(%struct.virtio_gpu_vbuffer* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load %struct.virtio_gpu_vbuffer**, %struct.virtio_gpu_vbuffer*** %6, align 8
  store %struct.virtio_gpu_vbuffer* null, %struct.virtio_gpu_vbuffer** %16, align 8
  %17 = load %struct.virtio_gpu_vbuffer*, %struct.virtio_gpu_vbuffer** %8, align 8
  %18 = call i8* @ERR_CAST(%struct.virtio_gpu_vbuffer* %17)
  store i8* %18, i8** %4, align 8
  br label %25

19:                                               ; preds = %3
  %20 = load %struct.virtio_gpu_vbuffer*, %struct.virtio_gpu_vbuffer** %8, align 8
  %21 = load %struct.virtio_gpu_vbuffer**, %struct.virtio_gpu_vbuffer*** %6, align 8
  store %struct.virtio_gpu_vbuffer* %20, %struct.virtio_gpu_vbuffer** %21, align 8
  %22 = load %struct.virtio_gpu_vbuffer*, %struct.virtio_gpu_vbuffer** %8, align 8
  %23 = getelementptr inbounds %struct.virtio_gpu_vbuffer, %struct.virtio_gpu_vbuffer* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %4, align 8
  br label %25

25:                                               ; preds = %19, %15
  %26 = load i8*, i8** %4, align 8
  ret i8* %26
}

declare dso_local %struct.virtio_gpu_vbuffer* @virtio_gpu_get_vbuf(%struct.virtio_gpu_device*, i32, i32, i32*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.virtio_gpu_vbuffer*) #1

declare dso_local i8* @ERR_CAST(%struct.virtio_gpu_vbuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/virtio/extr_virtgpu_vq.c_virtio_gpu_alloc_cmd_resp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/virtio/extr_virtgpu_vq.c_virtio_gpu_alloc_cmd_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_gpu_device = type { i32 }
%struct.virtio_gpu_vbuffer = type { i64 }
%struct.virtio_gpu_command = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.virtio_gpu_device*, i32, %struct.virtio_gpu_vbuffer**, i32, i32, i8*)* @virtio_gpu_alloc_cmd_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @virtio_gpu_alloc_cmd_resp(%struct.virtio_gpu_device* %0, i32 %1, %struct.virtio_gpu_vbuffer** %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca %struct.virtio_gpu_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.virtio_gpu_vbuffer**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.virtio_gpu_vbuffer*, align 8
  store %struct.virtio_gpu_device* %0, %struct.virtio_gpu_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.virtio_gpu_vbuffer** %2, %struct.virtio_gpu_vbuffer*** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %15 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %8, align 8
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* %12, align 4
  %18 = load i8*, i8** %13, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call %struct.virtio_gpu_vbuffer* @virtio_gpu_get_vbuf(%struct.virtio_gpu_device* %15, i32 %16, i32 %17, i8* %18, i32 %19)
  store %struct.virtio_gpu_vbuffer* %20, %struct.virtio_gpu_vbuffer** %14, align 8
  %21 = load %struct.virtio_gpu_vbuffer*, %struct.virtio_gpu_vbuffer** %14, align 8
  %22 = call i64 @IS_ERR(%struct.virtio_gpu_vbuffer* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %6
  %25 = load %struct.virtio_gpu_vbuffer**, %struct.virtio_gpu_vbuffer*** %10, align 8
  store %struct.virtio_gpu_vbuffer* null, %struct.virtio_gpu_vbuffer** %25, align 8
  %26 = load %struct.virtio_gpu_vbuffer*, %struct.virtio_gpu_vbuffer** %14, align 8
  %27 = call i8* @ERR_CAST(%struct.virtio_gpu_vbuffer* %26)
  store i8* %27, i8** %7, align 8
  br label %36

28:                                               ; preds = %6
  %29 = load %struct.virtio_gpu_vbuffer*, %struct.virtio_gpu_vbuffer** %14, align 8
  %30 = load %struct.virtio_gpu_vbuffer**, %struct.virtio_gpu_vbuffer*** %10, align 8
  store %struct.virtio_gpu_vbuffer* %29, %struct.virtio_gpu_vbuffer** %30, align 8
  %31 = load %struct.virtio_gpu_vbuffer*, %struct.virtio_gpu_vbuffer** %14, align 8
  %32 = getelementptr inbounds %struct.virtio_gpu_vbuffer, %struct.virtio_gpu_vbuffer* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.virtio_gpu_command*
  %35 = bitcast %struct.virtio_gpu_command* %34 to i8*
  store i8* %35, i8** %7, align 8
  br label %36

36:                                               ; preds = %28, %24
  %37 = load i8*, i8** %7, align 8
  ret i8* %37
}

declare dso_local %struct.virtio_gpu_vbuffer* @virtio_gpu_get_vbuf(%struct.virtio_gpu_device*, i32, i32, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.virtio_gpu_vbuffer*) #1

declare dso_local i8* @ERR_CAST(%struct.virtio_gpu_vbuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

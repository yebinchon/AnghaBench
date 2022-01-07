; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/virtio/extr_virtgpu_vq.c_virtio_gpu_get_vbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/virtio/extr_virtgpu_vq.c_virtio_gpu_get_vbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_gpu_vbuffer = type { i32, i32, i8*, i8*, i32 }
%struct.virtio_gpu_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MAX_INLINE_CMD_SIZE = common dso_local global i32 0, align 4
@MAX_INLINE_RESP_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.virtio_gpu_vbuffer* (%struct.virtio_gpu_device*, i32, i32, i8*, i32)* @virtio_gpu_get_vbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.virtio_gpu_vbuffer* @virtio_gpu_get_vbuf(%struct.virtio_gpu_device* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.virtio_gpu_vbuffer*, align 8
  %7 = alloca %struct.virtio_gpu_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.virtio_gpu_vbuffer*, align 8
  store %struct.virtio_gpu_device* %0, %struct.virtio_gpu_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %7, align 8
  %14 = getelementptr inbounds %struct.virtio_gpu_device, %struct.virtio_gpu_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.virtio_gpu_vbuffer* @kmem_cache_zalloc(i32 %15, i32 %16)
  store %struct.virtio_gpu_vbuffer* %17, %struct.virtio_gpu_vbuffer** %12, align 8
  %18 = load %struct.virtio_gpu_vbuffer*, %struct.virtio_gpu_vbuffer** %12, align 8
  %19 = icmp ne %struct.virtio_gpu_vbuffer* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.virtio_gpu_vbuffer* @ERR_PTR(i32 %22)
  store %struct.virtio_gpu_vbuffer* %23, %struct.virtio_gpu_vbuffer** %6, align 8
  br label %69

24:                                               ; preds = %5
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @MAX_INLINE_CMD_SIZE, align 4
  %27 = icmp sgt i32 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @BUG_ON(i32 %28)
  %30 = load %struct.virtio_gpu_vbuffer*, %struct.virtio_gpu_vbuffer** %12, align 8
  %31 = bitcast %struct.virtio_gpu_vbuffer* %30 to i8*
  %32 = getelementptr i8, i8* %31, i64 32
  %33 = load %struct.virtio_gpu_vbuffer*, %struct.virtio_gpu_vbuffer** %12, align 8
  %34 = getelementptr inbounds %struct.virtio_gpu_vbuffer, %struct.virtio_gpu_vbuffer* %33, i32 0, i32 3
  store i8* %32, i8** %34, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.virtio_gpu_vbuffer*, %struct.virtio_gpu_vbuffer** %12, align 8
  %37 = getelementptr inbounds %struct.virtio_gpu_vbuffer, %struct.virtio_gpu_vbuffer* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* %11, align 4
  %39 = load %struct.virtio_gpu_vbuffer*, %struct.virtio_gpu_vbuffer** %12, align 8
  %40 = getelementptr inbounds %struct.virtio_gpu_vbuffer, %struct.virtio_gpu_vbuffer* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.virtio_gpu_vbuffer*, %struct.virtio_gpu_vbuffer** %12, align 8
  %43 = getelementptr inbounds %struct.virtio_gpu_vbuffer, %struct.virtio_gpu_vbuffer* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @MAX_INLINE_RESP_SIZE, align 4
  %46 = icmp sle i32 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %24
  %48 = load %struct.virtio_gpu_vbuffer*, %struct.virtio_gpu_vbuffer** %12, align 8
  %49 = getelementptr inbounds %struct.virtio_gpu_vbuffer, %struct.virtio_gpu_vbuffer* %48, i32 0, i32 3
  %50 = load i8*, i8** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr i8, i8* %50, i64 %52
  %54 = load %struct.virtio_gpu_vbuffer*, %struct.virtio_gpu_vbuffer** %12, align 8
  %55 = getelementptr inbounds %struct.virtio_gpu_vbuffer, %struct.virtio_gpu_vbuffer* %54, i32 0, i32 2
  store i8* %53, i8** %55, align 8
  br label %60

56:                                               ; preds = %24
  %57 = load i8*, i8** %10, align 8
  %58 = load %struct.virtio_gpu_vbuffer*, %struct.virtio_gpu_vbuffer** %12, align 8
  %59 = getelementptr inbounds %struct.virtio_gpu_vbuffer, %struct.virtio_gpu_vbuffer* %58, i32 0, i32 2
  store i8* %57, i8** %59, align 8
  br label %60

60:                                               ; preds = %56, %47
  %61 = load %struct.virtio_gpu_vbuffer*, %struct.virtio_gpu_vbuffer** %12, align 8
  %62 = getelementptr inbounds %struct.virtio_gpu_vbuffer, %struct.virtio_gpu_vbuffer* %61, i32 0, i32 2
  %63 = load i8*, i8** %62, align 8
  %64 = icmp ne i8* %63, null
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = call i32 @BUG_ON(i32 %66)
  %68 = load %struct.virtio_gpu_vbuffer*, %struct.virtio_gpu_vbuffer** %12, align 8
  store %struct.virtio_gpu_vbuffer* %68, %struct.virtio_gpu_vbuffer** %6, align 8
  br label %69

69:                                               ; preds = %60, %20
  %70 = load %struct.virtio_gpu_vbuffer*, %struct.virtio_gpu_vbuffer** %6, align 8
  ret %struct.virtio_gpu_vbuffer* %70
}

declare dso_local %struct.virtio_gpu_vbuffer* @kmem_cache_zalloc(i32, i32) #1

declare dso_local %struct.virtio_gpu_vbuffer* @ERR_PTR(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

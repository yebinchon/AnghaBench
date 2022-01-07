; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/virtio/extr_virtgpu_ttm.c_virtio_gpu_ttm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/virtio/extr_virtgpu_ttm.c_virtio_gpu_ttm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_gpu_device = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@virtio_gpu_bo_driver = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"failed initializing buffer object driver(%d).\0A\00", align 1
@TTM_PL_TT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed initializing GTT heap.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @virtio_gpu_ttm_init(%struct.virtio_gpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.virtio_gpu_device*, align 8
  %4 = alloca i32, align 4
  store %struct.virtio_gpu_device* %0, %struct.virtio_gpu_device** %3, align 8
  %5 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %3, align 8
  %6 = getelementptr inbounds %struct.virtio_gpu_device, %struct.virtio_gpu_device* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %3, align 8
  %9 = getelementptr inbounds %struct.virtio_gpu_device, %struct.virtio_gpu_device* %8, i32 0, i32 1
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ttm_bo_device_init(i32* %7, i32* @virtio_gpu_bo_driver, i32 %14, i32 0)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  %20 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %37

21:                                               ; preds = %1
  %22 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %3, align 8
  %23 = getelementptr inbounds %struct.virtio_gpu_device, %struct.virtio_gpu_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* @TTM_PL_TT, align 4
  %26 = call i32 @ttm_bo_init_mm(i32* %24, i32 %25, i32 0)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %32

31:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %39

32:                                               ; preds = %29
  %33 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %3, align 8
  %34 = getelementptr inbounds %struct.virtio_gpu_device, %struct.virtio_gpu_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = call i32 @ttm_bo_device_release(i32* %35)
  br label %37

37:                                               ; preds = %32, %18
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %37, %31
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @ttm_bo_device_init(i32*, i32*, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @ttm_bo_init_mm(i32*, i32, i32) #1

declare dso_local i32 @ttm_bo_device_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

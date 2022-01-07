; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/virtio/extr_virtgpu_kms.c_virtio_gpu_driver_postclose.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/virtio/extr_virtgpu_kms.c_virtio_gpu_driver_postclose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.virtio_gpu_device* }
%struct.virtio_gpu_device = type { i32 }
%struct.drm_file = type { %struct.virtio_gpu_fpriv* }
%struct.virtio_gpu_fpriv = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @virtio_gpu_driver_postclose(%struct.drm_device* %0, %struct.drm_file* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_file*, align 8
  %5 = alloca %struct.virtio_gpu_device*, align 8
  %6 = alloca %struct.virtio_gpu_fpriv*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.drm_file* %1, %struct.drm_file** %4, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %8 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %7, i32 0, i32 0
  %9 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %8, align 8
  store %struct.virtio_gpu_device* %9, %struct.virtio_gpu_device** %5, align 8
  %10 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %5, align 8
  %11 = getelementptr inbounds %struct.virtio_gpu_device, %struct.virtio_gpu_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %28

15:                                               ; preds = %2
  %16 = load %struct.drm_file*, %struct.drm_file** %4, align 8
  %17 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %16, i32 0, i32 0
  %18 = load %struct.virtio_gpu_fpriv*, %struct.virtio_gpu_fpriv** %17, align 8
  store %struct.virtio_gpu_fpriv* %18, %struct.virtio_gpu_fpriv** %6, align 8
  %19 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %5, align 8
  %20 = load %struct.virtio_gpu_fpriv*, %struct.virtio_gpu_fpriv** %6, align 8
  %21 = getelementptr inbounds %struct.virtio_gpu_fpriv, %struct.virtio_gpu_fpriv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @virtio_gpu_context_destroy(%struct.virtio_gpu_device* %19, i32 %22)
  %24 = load %struct.virtio_gpu_fpriv*, %struct.virtio_gpu_fpriv** %6, align 8
  %25 = call i32 @kfree(%struct.virtio_gpu_fpriv* %24)
  %26 = load %struct.drm_file*, %struct.drm_file** %4, align 8
  %27 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %26, i32 0, i32 0
  store %struct.virtio_gpu_fpriv* null, %struct.virtio_gpu_fpriv** %27, align 8
  br label %28

28:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @virtio_gpu_context_destroy(%struct.virtio_gpu_device*, i32) #1

declare dso_local i32 @kfree(%struct.virtio_gpu_fpriv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

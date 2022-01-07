; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/virtio/extr_virtgpu_object.c_virtio_gpu_object_kmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/virtio/extr_virtgpu_object.c_virtio_gpu_object_kmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_gpu_object = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @virtio_gpu_object_kmap(%struct.virtio_gpu_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.virtio_gpu_object*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.virtio_gpu_object* %0, %struct.virtio_gpu_object** %3, align 8
  %6 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %3, align 8
  %7 = getelementptr inbounds %struct.virtio_gpu_object, %struct.virtio_gpu_object* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @WARN_ON(i32 %8)
  %10 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %3, align 8
  %11 = getelementptr inbounds %struct.virtio_gpu_object, %struct.virtio_gpu_object* %10, i32 0, i32 2
  %12 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %3, align 8
  %13 = getelementptr inbounds %struct.virtio_gpu_object, %struct.virtio_gpu_object* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %3, align 8
  %17 = getelementptr inbounds %struct.virtio_gpu_object, %struct.virtio_gpu_object* %16, i32 0, i32 0
  %18 = call i32 @ttm_bo_kmap(%struct.TYPE_2__* %11, i32 0, i32 %15, i32* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %2, align 4
  br label %29

23:                                               ; preds = %1
  %24 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %3, align 8
  %25 = getelementptr inbounds %struct.virtio_gpu_object, %struct.virtio_gpu_object* %24, i32 0, i32 0
  %26 = call i32 @ttm_kmap_obj_virtual(i32* %25, i32* %4)
  %27 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %3, align 8
  %28 = getelementptr inbounds %struct.virtio_gpu_object, %struct.virtio_gpu_object* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %23, %21
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @ttm_bo_kmap(%struct.TYPE_2__*, i32, i32, i32*) #1

declare dso_local i32 @ttm_kmap_obj_virtual(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

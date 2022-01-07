; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/virtio/extr_virtgpu_gem.c_virtio_gpu_gem_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/virtio/extr_virtgpu_gem.c_virtio_gpu_gem_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_file = type { i32 }
%struct.drm_device = type { i32 }
%struct.virtio_gpu_object_params = type { i32 }
%struct.drm_gem_object = type { i32 }
%struct.virtio_gpu_object = type { %struct.drm_gem_object }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @virtio_gpu_gem_create(%struct.drm_file* %0, %struct.drm_device* %1, %struct.virtio_gpu_object_params* %2, %struct.drm_gem_object** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_device*, align 8
  %9 = alloca %struct.virtio_gpu_object_params*, align 8
  %10 = alloca %struct.drm_gem_object**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.virtio_gpu_object*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.drm_file* %0, %struct.drm_file** %7, align 8
  store %struct.drm_device* %1, %struct.drm_device** %8, align 8
  store %struct.virtio_gpu_object_params* %2, %struct.virtio_gpu_object_params** %9, align 8
  store %struct.drm_gem_object** %3, %struct.drm_gem_object*** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %16 = load %struct.virtio_gpu_object_params*, %struct.virtio_gpu_object_params** %9, align 8
  %17 = call %struct.virtio_gpu_object* @virtio_gpu_alloc_object(%struct.drm_device* %15, %struct.virtio_gpu_object_params* %16, i32* null)
  store %struct.virtio_gpu_object* %17, %struct.virtio_gpu_object** %12, align 8
  %18 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %12, align 8
  %19 = call i64 @IS_ERR(%struct.virtio_gpu_object* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %5
  %22 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %12, align 8
  %23 = call i32 @PTR_ERR(%struct.virtio_gpu_object* %22)
  store i32 %23, i32* %6, align 4
  br label %45

24:                                               ; preds = %5
  %25 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %26 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %12, align 8
  %27 = getelementptr inbounds %struct.virtio_gpu_object, %struct.virtio_gpu_object* %26, i32 0, i32 0
  %28 = call i32 @drm_gem_handle_create(%struct.drm_file* %25, %struct.drm_gem_object* %27, i32* %14)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %12, align 8
  %33 = getelementptr inbounds %struct.virtio_gpu_object, %struct.virtio_gpu_object* %32, i32 0, i32 0
  %34 = call i32 @drm_gem_object_release(%struct.drm_gem_object* %33)
  %35 = load i32, i32* %13, align 4
  store i32 %35, i32* %6, align 4
  br label %45

36:                                               ; preds = %24
  %37 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %12, align 8
  %38 = getelementptr inbounds %struct.virtio_gpu_object, %struct.virtio_gpu_object* %37, i32 0, i32 0
  %39 = load %struct.drm_gem_object**, %struct.drm_gem_object*** %10, align 8
  store %struct.drm_gem_object* %38, %struct.drm_gem_object** %39, align 8
  %40 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %12, align 8
  %41 = getelementptr inbounds %struct.virtio_gpu_object, %struct.virtio_gpu_object* %40, i32 0, i32 0
  %42 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %41)
  %43 = load i32, i32* %14, align 4
  %44 = load i32*, i32** %11, align 8
  store i32 %43, i32* %44, align 4
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %36, %31, %21
  %46 = load i32, i32* %6, align 4
  ret i32 %46
}

declare dso_local %struct.virtio_gpu_object* @virtio_gpu_alloc_object(%struct.drm_device*, %struct.virtio_gpu_object_params*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.virtio_gpu_object*) #1

declare dso_local i32 @PTR_ERR(%struct.virtio_gpu_object*) #1

declare dso_local i32 @drm_gem_handle_create(%struct.drm_file*, %struct.drm_gem_object*, i32*) #1

declare dso_local i32 @drm_gem_object_release(%struct.drm_gem_object*) #1

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

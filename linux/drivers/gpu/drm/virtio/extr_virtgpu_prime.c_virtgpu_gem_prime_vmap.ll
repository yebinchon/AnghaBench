; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/virtio/extr_virtgpu_prime.c_virtgpu_gem_prime_vmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/virtio/extr_virtgpu_prime.c_virtgpu_gem_prime_vmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32 }
%struct.virtio_gpu_object = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @virtgpu_gem_prime_vmap(%struct.drm_gem_object* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.drm_gem_object*, align 8
  %4 = alloca %struct.virtio_gpu_object*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %3, align 8
  %6 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %7 = call %struct.virtio_gpu_object* @gem_to_virtio_gpu_obj(%struct.drm_gem_object* %6)
  store %struct.virtio_gpu_object* %7, %struct.virtio_gpu_object** %4, align 8
  %8 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %4, align 8
  %9 = call i32 @virtio_gpu_object_kmap(%struct.virtio_gpu_object* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %17

13:                                               ; preds = %1
  %14 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %4, align 8
  %15 = getelementptr inbounds %struct.virtio_gpu_object, %struct.virtio_gpu_object* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %2, align 8
  br label %17

17:                                               ; preds = %13, %12
  %18 = load i8*, i8** %2, align 8
  ret i8* %18
}

declare dso_local %struct.virtio_gpu_object* @gem_to_virtio_gpu_obj(%struct.drm_gem_object*) #1

declare dso_local i32 @virtio_gpu_object_kmap(%struct.virtio_gpu_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

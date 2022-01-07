; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_dma_buf.c_amdgpu_gem_prime_import.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_dma_buf.c_amdgpu_gem_prime_import.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.dma_buf = type { %struct.drm_gem_object*, i32* }

@amdgpu_dmabuf_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_gem_object* @amdgpu_gem_prime_import(%struct.drm_device* %0, %struct.dma_buf* %1) #0 {
  %3 = alloca %struct.drm_gem_object*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.dma_buf*, align 8
  %6 = alloca %struct.drm_gem_object*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.dma_buf* %1, %struct.dma_buf** %5, align 8
  %7 = load %struct.dma_buf*, %struct.dma_buf** %5, align 8
  %8 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, @amdgpu_dmabuf_ops
  br i1 %10, label %11, label %25

11:                                               ; preds = %2
  %12 = load %struct.dma_buf*, %struct.dma_buf** %5, align 8
  %13 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %12, i32 0, i32 0
  %14 = load %struct.drm_gem_object*, %struct.drm_gem_object** %13, align 8
  store %struct.drm_gem_object* %14, %struct.drm_gem_object** %6, align 8
  %15 = load %struct.drm_gem_object*, %struct.drm_gem_object** %6, align 8
  %16 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %15, i32 0, i32 0
  %17 = load %struct.drm_device*, %struct.drm_device** %16, align 8
  %18 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %19 = icmp eq %struct.drm_device* %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %11
  %21 = load %struct.drm_gem_object*, %struct.drm_gem_object** %6, align 8
  %22 = call i32 @drm_gem_object_get(%struct.drm_gem_object* %21)
  %23 = load %struct.drm_gem_object*, %struct.drm_gem_object** %6, align 8
  store %struct.drm_gem_object* %23, %struct.drm_gem_object** %3, align 8
  br label %29

24:                                               ; preds = %11
  br label %25

25:                                               ; preds = %24, %2
  %26 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %27 = load %struct.dma_buf*, %struct.dma_buf** %5, align 8
  %28 = call %struct.drm_gem_object* @drm_gem_prime_import(%struct.drm_device* %26, %struct.dma_buf* %27)
  store %struct.drm_gem_object* %28, %struct.drm_gem_object** %3, align 8
  br label %29

29:                                               ; preds = %25, %20
  %30 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  ret %struct.drm_gem_object* %30
}

declare dso_local i32 @drm_gem_object_get(%struct.drm_gem_object*) #1

declare dso_local %struct.drm_gem_object* @drm_gem_prime_import(%struct.drm_device*, %struct.dma_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

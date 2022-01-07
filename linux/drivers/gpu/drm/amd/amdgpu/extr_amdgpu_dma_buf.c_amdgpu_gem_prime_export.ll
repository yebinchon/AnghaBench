; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_dma_buf.c_amdgpu_gem_prime_export.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_dma_buf.c_amdgpu_gem_prime_export.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_buf = type { i32*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.drm_gem_object = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.amdgpu_bo = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@AMDGPU_GEM_CREATE_VM_ALWAYS_VALID = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@amdgpu_dmabuf_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dma_buf* @amdgpu_gem_prime_export(%struct.drm_gem_object* %0, i32 %1) #0 {
  %3 = alloca %struct.dma_buf*, align 8
  %4 = alloca %struct.drm_gem_object*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_bo*, align 8
  %7 = alloca %struct.dma_buf*, align 8
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  %9 = call %struct.amdgpu_bo* @gem_to_amdgpu_bo(%struct.drm_gem_object* %8)
  store %struct.amdgpu_bo* %9, %struct.amdgpu_bo** %6, align 8
  %10 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %11 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @amdgpu_ttm_tt_get_usermm(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %2
  %17 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %18 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @AMDGPU_GEM_CREATE_VM_ALWAYS_VALID, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %16, %2
  %24 = load i32, i32* @EPERM, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.dma_buf* @ERR_PTR(i32 %25)
  store %struct.dma_buf* %26, %struct.dma_buf** %3, align 8
  br label %50

27:                                               ; preds = %16
  %28 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call %struct.dma_buf* @drm_gem_prime_export(%struct.drm_gem_object* %28, i32 %29)
  store %struct.dma_buf* %30, %struct.dma_buf** %7, align 8
  %31 = load %struct.dma_buf*, %struct.dma_buf** %7, align 8
  %32 = call i32 @IS_ERR(%struct.dma_buf* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %48, label %34

34:                                               ; preds = %27
  %35 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  %36 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.dma_buf*, %struct.dma_buf** %7, align 8
  %43 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %42, i32 0, i32 1
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  store i32 %41, i32* %45, align 4
  %46 = load %struct.dma_buf*, %struct.dma_buf** %7, align 8
  %47 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %46, i32 0, i32 0
  store i32* @amdgpu_dmabuf_ops, i32** %47, align 8
  br label %48

48:                                               ; preds = %34, %27
  %49 = load %struct.dma_buf*, %struct.dma_buf** %7, align 8
  store %struct.dma_buf* %49, %struct.dma_buf** %3, align 8
  br label %50

50:                                               ; preds = %48, %23
  %51 = load %struct.dma_buf*, %struct.dma_buf** %3, align 8
  ret %struct.dma_buf* %51
}

declare dso_local %struct.amdgpu_bo* @gem_to_amdgpu_bo(%struct.drm_gem_object*) #1

declare dso_local i64 @amdgpu_ttm_tt_get_usermm(i32) #1

declare dso_local %struct.dma_buf* @ERR_PTR(i32) #1

declare dso_local %struct.dma_buf* @drm_gem_prime_export(%struct.drm_gem_object*, i32) #1

declare dso_local i32 @IS_ERR(%struct.dma_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

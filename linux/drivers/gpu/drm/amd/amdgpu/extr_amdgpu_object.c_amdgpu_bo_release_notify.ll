; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_object.c_amdgpu_bo_release_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_object.c_amdgpu_bo_release_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.dma_fence = type { i32 }
%struct.amdgpu_bo = type { i32, i64 }

@TTM_PL_VRAM = common dso_local global i64 0, align 8
@AMDGPU_GEM_CREATE_VRAM_WIPE_ON_RELEASE = common dso_local global i32 0, align 4
@AMDGPU_POISON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_bo_release_notify(%struct.ttm_buffer_object* %0) #0 {
  %2 = alloca %struct.ttm_buffer_object*, align 8
  %3 = alloca %struct.dma_fence*, align 8
  %4 = alloca %struct.amdgpu_bo*, align 8
  %5 = alloca i32, align 4
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %2, align 8
  store %struct.dma_fence* null, %struct.dma_fence** %3, align 8
  %6 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %7 = call i32 @amdgpu_bo_is_amdgpu_bo(%struct.ttm_buffer_object* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %69

10:                                               ; preds = %1
  %11 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %12 = call %struct.amdgpu_bo* @ttm_to_amdgpu_bo(%struct.ttm_buffer_object* %11)
  store %struct.amdgpu_bo* %12, %struct.amdgpu_bo** %4, align 8
  %13 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %4, align 8
  %14 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %4, align 8
  %19 = call i32 @amdgpu_amdkfd_unreserve_memory_limit(%struct.amdgpu_bo* %18)
  br label %20

20:                                               ; preds = %17, %10
  %21 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %22 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @TTM_PL_VRAM, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %40, label %27

27:                                               ; preds = %20
  %28 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %29 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %4, align 8
  %35 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @AMDGPU_GEM_CREATE_VRAM_WIPE_ON_RELEASE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %33, %27, %20
  br label %69

41:                                               ; preds = %33
  %42 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %43 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @dma_resv_lock(i32 %45, i32* null)
  %47 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %4, align 8
  %48 = load i32, i32* @AMDGPU_POISON, align 4
  %49 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %50 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @amdgpu_fill_buffer(%struct.amdgpu_bo* %47, i32 %48, i32 %52, %struct.dma_fence** %3)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @WARN_ON(i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %41
  %58 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %4, align 8
  %59 = load %struct.dma_fence*, %struct.dma_fence** %3, align 8
  %60 = call i32 @amdgpu_bo_fence(%struct.amdgpu_bo* %58, %struct.dma_fence* %59, i32 0)
  %61 = load %struct.dma_fence*, %struct.dma_fence** %3, align 8
  %62 = call i32 @dma_fence_put(%struct.dma_fence* %61)
  br label %63

63:                                               ; preds = %57, %41
  %64 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %65 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @dma_resv_unlock(i32 %67)
  br label %69

69:                                               ; preds = %63, %40, %9
  ret void
}

declare dso_local i32 @amdgpu_bo_is_amdgpu_bo(%struct.ttm_buffer_object*) #1

declare dso_local %struct.amdgpu_bo* @ttm_to_amdgpu_bo(%struct.ttm_buffer_object*) #1

declare dso_local i32 @amdgpu_amdkfd_unreserve_memory_limit(%struct.amdgpu_bo*) #1

declare dso_local i32 @dma_resv_lock(i32, i32*) #1

declare dso_local i32 @amdgpu_fill_buffer(%struct.amdgpu_bo*, i32, i32, %struct.dma_fence**) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @amdgpu_bo_fence(%struct.amdgpu_bo*, %struct.dma_fence*, i32) #1

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #1

declare dso_local i32 @dma_resv_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

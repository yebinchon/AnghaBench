; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_gem.c_amdgpu_gem_object_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_gem.c_amdgpu_gem_object_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32 }
%struct.drm_file = type { %struct.amdgpu_fpriv* }
%struct.amdgpu_fpriv = type { %struct.amdgpu_vm }
%struct.amdgpu_vm = type { i32 }
%struct.amdgpu_bo = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.amdgpu_device = type { i32 }
%struct.amdgpu_bo_list_entry = type { i32 }
%struct.list_head = type { i32 }
%struct.ttm_validate_buffer = type { i32, i32, %struct.TYPE_2__* }
%struct.ww_acquire_ctx = type { i32 }
%struct.amdgpu_bo_va = type { i64 }
%struct.dma_fence = type { i32 }

@.str = private unnamed_addr constant [50 x i8] c"leaking bo va because we fail to reserve bo (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"failed to clear page tables on GEM object close (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_gem_object_close(%struct.drm_gem_object* %0, %struct.drm_file* %1) #0 {
  %3 = alloca %struct.drm_gem_object*, align 8
  %4 = alloca %struct.drm_file*, align 8
  %5 = alloca %struct.amdgpu_bo*, align 8
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca %struct.amdgpu_fpriv*, align 8
  %8 = alloca %struct.amdgpu_vm*, align 8
  %9 = alloca %struct.amdgpu_bo_list_entry, align 4
  %10 = alloca %struct.list_head, align 4
  %11 = alloca %struct.list_head, align 4
  %12 = alloca %struct.ttm_validate_buffer, align 8
  %13 = alloca %struct.ww_acquire_ctx, align 4
  %14 = alloca %struct.amdgpu_bo_va*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.dma_fence*, align 8
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %3, align 8
  store %struct.drm_file* %1, %struct.drm_file** %4, align 8
  %17 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %18 = call %struct.amdgpu_bo* @gem_to_amdgpu_bo(%struct.drm_gem_object* %17)
  store %struct.amdgpu_bo* %18, %struct.amdgpu_bo** %5, align 8
  %19 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %5, align 8
  %20 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.amdgpu_device* @amdgpu_ttm_adev(i32 %22)
  store %struct.amdgpu_device* %23, %struct.amdgpu_device** %6, align 8
  %24 = load %struct.drm_file*, %struct.drm_file** %4, align 8
  %25 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %24, i32 0, i32 0
  %26 = load %struct.amdgpu_fpriv*, %struct.amdgpu_fpriv** %25, align 8
  store %struct.amdgpu_fpriv* %26, %struct.amdgpu_fpriv** %7, align 8
  %27 = load %struct.amdgpu_fpriv*, %struct.amdgpu_fpriv** %7, align 8
  %28 = getelementptr inbounds %struct.amdgpu_fpriv, %struct.amdgpu_fpriv* %27, i32 0, i32 0
  store %struct.amdgpu_vm* %28, %struct.amdgpu_vm** %8, align 8
  %29 = call i32 @INIT_LIST_HEAD(%struct.list_head* %10)
  %30 = call i32 @INIT_LIST_HEAD(%struct.list_head* %11)
  %31 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %5, align 8
  %32 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.ttm_validate_buffer, %struct.ttm_validate_buffer* %12, i32 0, i32 2
  store %struct.TYPE_2__* %32, %struct.TYPE_2__** %33, align 8
  %34 = getelementptr inbounds %struct.ttm_validate_buffer, %struct.ttm_validate_buffer* %12, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = getelementptr inbounds %struct.ttm_validate_buffer, %struct.ttm_validate_buffer* %12, i32 0, i32 1
  %36 = call i32 @list_add(i32* %35, %struct.list_head* %10)
  %37 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %8, align 8
  %38 = call i32 @amdgpu_vm_get_pd_bo(%struct.amdgpu_vm* %37, %struct.list_head* %10, %struct.amdgpu_bo_list_entry* %9)
  %39 = call i32 @ttm_eu_reserve_buffers(%struct.ww_acquire_ctx* %13, %struct.list_head* %10, i32 0, %struct.list_head* %11, i32 0)
  store i32 %39, i32* %15, align 4
  %40 = load i32, i32* %15, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %2
  %43 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %44 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %15, align 4
  %47 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %93

48:                                               ; preds = %2
  %49 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %8, align 8
  %50 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %5, align 8
  %51 = call %struct.amdgpu_bo_va* @amdgpu_vm_bo_find(%struct.amdgpu_vm* %49, %struct.amdgpu_bo* %50)
  store %struct.amdgpu_bo_va* %51, %struct.amdgpu_bo_va** %14, align 8
  %52 = load %struct.amdgpu_bo_va*, %struct.amdgpu_bo_va** %14, align 8
  %53 = icmp ne %struct.amdgpu_bo_va* %52, null
  br i1 %53, label %54, label %91

54:                                               ; preds = %48
  %55 = load %struct.amdgpu_bo_va*, %struct.amdgpu_bo_va** %14, align 8
  %56 = getelementptr inbounds %struct.amdgpu_bo_va, %struct.amdgpu_bo_va* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, -1
  store i64 %58, i64* %56, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %91

60:                                               ; preds = %54
  %61 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %62 = load %struct.amdgpu_bo_va*, %struct.amdgpu_bo_va** %14, align 8
  %63 = call i32 @amdgpu_vm_bo_rmv(%struct.amdgpu_device* %61, %struct.amdgpu_bo_va* %62)
  %64 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %8, align 8
  %65 = call i64 @amdgpu_vm_ready(%struct.amdgpu_vm* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %90

67:                                               ; preds = %60
  store %struct.dma_fence* null, %struct.dma_fence** %16, align 8
  %68 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %69 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %8, align 8
  %70 = call i32 @amdgpu_vm_clear_freed(%struct.amdgpu_device* %68, %struct.amdgpu_vm* %69, %struct.dma_fence** %16)
  store i32 %70, i32* %15, align 4
  %71 = load i32, i32* %15, align 4
  %72 = call i64 @unlikely(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %67
  %75 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %76 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %15, align 4
  %79 = call i32 @dev_err(i32 %77, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %74, %67
  %81 = load %struct.dma_fence*, %struct.dma_fence** %16, align 8
  %82 = icmp ne %struct.dma_fence* %81, null
  br i1 %82, label %83, label %89

83:                                               ; preds = %80
  %84 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %5, align 8
  %85 = load %struct.dma_fence*, %struct.dma_fence** %16, align 8
  %86 = call i32 @amdgpu_bo_fence(%struct.amdgpu_bo* %84, %struct.dma_fence* %85, i32 1)
  %87 = load %struct.dma_fence*, %struct.dma_fence** %16, align 8
  %88 = call i32 @dma_fence_put(%struct.dma_fence* %87)
  br label %89

89:                                               ; preds = %83, %80
  br label %90

90:                                               ; preds = %89, %60
  br label %91

91:                                               ; preds = %90, %54, %48
  %92 = call i32 @ttm_eu_backoff_reservation(%struct.ww_acquire_ctx* %13, %struct.list_head* %10)
  br label %93

93:                                               ; preds = %91, %42
  ret void
}

declare dso_local %struct.amdgpu_bo* @gem_to_amdgpu_bo(%struct.drm_gem_object*) #1

declare dso_local %struct.amdgpu_device* @amdgpu_ttm_adev(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

declare dso_local i32 @list_add(i32*, %struct.list_head*) #1

declare dso_local i32 @amdgpu_vm_get_pd_bo(%struct.amdgpu_vm*, %struct.list_head*, %struct.amdgpu_bo_list_entry*) #1

declare dso_local i32 @ttm_eu_reserve_buffers(%struct.ww_acquire_ctx*, %struct.list_head*, i32, %struct.list_head*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local %struct.amdgpu_bo_va* @amdgpu_vm_bo_find(%struct.amdgpu_vm*, %struct.amdgpu_bo*) #1

declare dso_local i32 @amdgpu_vm_bo_rmv(%struct.amdgpu_device*, %struct.amdgpu_bo_va*) #1

declare dso_local i64 @amdgpu_vm_ready(%struct.amdgpu_vm*) #1

declare dso_local i32 @amdgpu_vm_clear_freed(%struct.amdgpu_device*, %struct.amdgpu_vm*, %struct.dma_fence**) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @amdgpu_bo_fence(%struct.amdgpu_bo*, %struct.dma_fence*, i32) #1

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #1

declare dso_local i32 @ttm_eu_backoff_reservation(%struct.ww_acquire_ctx*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_csa.c_amdgpu_map_static_csa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_csa.c_amdgpu_map_static_csa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.amdgpu_vm = type { i32 }
%struct.amdgpu_bo = type { i32 }
%struct.amdgpu_bo_va = type { i32 }
%struct.ww_acquire_ctx = type { i32 }
%struct.list_head = type { i32 }
%struct.amdgpu_bo_list_entry = type { i32 }
%struct.ttm_validate_buffer = type { i32, %struct.list_head, i32* }

@.str = private unnamed_addr constant [38 x i8] c"failed to reserve CSA,PD BOs: err=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"failed to create bo_va for static CSA\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@AMDGPU_PTE_READABLE = common dso_local global i32 0, align 4
@AMDGPU_PTE_WRITEABLE = common dso_local global i32 0, align 4
@AMDGPU_PTE_EXECUTABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"failed to do bo_map on static CSA, err=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_map_static_csa(%struct.amdgpu_device* %0, %struct.amdgpu_vm* %1, %struct.amdgpu_bo* %2, %struct.amdgpu_bo_va** %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.amdgpu_device*, align 8
  %9 = alloca %struct.amdgpu_vm*, align 8
  %10 = alloca %struct.amdgpu_bo*, align 8
  %11 = alloca %struct.amdgpu_bo_va**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ww_acquire_ctx, align 4
  %15 = alloca %struct.list_head, align 4
  %16 = alloca %struct.amdgpu_bo_list_entry, align 4
  %17 = alloca %struct.ttm_validate_buffer, align 8
  %18 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %8, align 8
  store %struct.amdgpu_vm* %1, %struct.amdgpu_vm** %9, align 8
  store %struct.amdgpu_bo* %2, %struct.amdgpu_bo** %10, align 8
  store %struct.amdgpu_bo_va** %3, %struct.amdgpu_bo_va*** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %19 = call i32 @INIT_LIST_HEAD(%struct.list_head* %15)
  %20 = getelementptr inbounds %struct.ttm_validate_buffer, %struct.ttm_validate_buffer* %17, i32 0, i32 1
  %21 = call i32 @INIT_LIST_HEAD(%struct.list_head* %20)
  %22 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %10, align 8
  %23 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.ttm_validate_buffer, %struct.ttm_validate_buffer* %17, i32 0, i32 2
  store i32* %23, i32** %24, align 8
  %25 = getelementptr inbounds %struct.ttm_validate_buffer, %struct.ttm_validate_buffer* %17, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = getelementptr inbounds %struct.ttm_validate_buffer, %struct.ttm_validate_buffer* %17, i32 0, i32 1
  %27 = call i32 @list_add(%struct.list_head* %26, %struct.list_head* %15)
  %28 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %9, align 8
  %29 = call i32 @amdgpu_vm_get_pd_bo(%struct.amdgpu_vm* %28, %struct.list_head* %15, %struct.amdgpu_bo_list_entry* %16)
  %30 = call i32 @ttm_eu_reserve_buffers(%struct.ww_acquire_ctx* %14, %struct.list_head* %15, i32 1, i32* null, i32 0)
  store i32 %30, i32* %18, align 4
  %31 = load i32, i32* %18, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %6
  %34 = load i32, i32* %18, align 4
  %35 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %18, align 4
  store i32 %36, i32* %7, align 4
  br label %76

37:                                               ; preds = %6
  %38 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %39 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %9, align 8
  %40 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %10, align 8
  %41 = call %struct.amdgpu_bo_va* @amdgpu_vm_bo_add(%struct.amdgpu_device* %38, %struct.amdgpu_vm* %39, %struct.amdgpu_bo* %40)
  %42 = load %struct.amdgpu_bo_va**, %struct.amdgpu_bo_va*** %11, align 8
  store %struct.amdgpu_bo_va* %41, %struct.amdgpu_bo_va** %42, align 8
  %43 = load %struct.amdgpu_bo_va**, %struct.amdgpu_bo_va*** %11, align 8
  %44 = load %struct.amdgpu_bo_va*, %struct.amdgpu_bo_va** %43, align 8
  %45 = icmp ne %struct.amdgpu_bo_va* %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %37
  %47 = call i32 @ttm_eu_backoff_reservation(%struct.ww_acquire_ctx* %14, %struct.list_head* %15)
  %48 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %7, align 4
  br label %76

51:                                               ; preds = %37
  %52 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %53 = load %struct.amdgpu_bo_va**, %struct.amdgpu_bo_va*** %11, align 8
  %54 = load %struct.amdgpu_bo_va*, %struct.amdgpu_bo_va** %53, align 8
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* @AMDGPU_PTE_READABLE, align 4
  %58 = load i32, i32* @AMDGPU_PTE_WRITEABLE, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @AMDGPU_PTE_EXECUTABLE, align 4
  %61 = or i32 %59, %60
  %62 = call i32 @amdgpu_vm_bo_map(%struct.amdgpu_device* %52, %struct.amdgpu_bo_va* %54, i32 %55, i32 0, i32 %56, i32 %61)
  store i32 %62, i32* %18, align 4
  %63 = load i32, i32* %18, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %51
  %66 = load i32, i32* %18, align 4
  %67 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  %68 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %69 = load %struct.amdgpu_bo_va**, %struct.amdgpu_bo_va*** %11, align 8
  %70 = load %struct.amdgpu_bo_va*, %struct.amdgpu_bo_va** %69, align 8
  %71 = call i32 @amdgpu_vm_bo_rmv(%struct.amdgpu_device* %68, %struct.amdgpu_bo_va* %70)
  %72 = call i32 @ttm_eu_backoff_reservation(%struct.ww_acquire_ctx* %14, %struct.list_head* %15)
  %73 = load i32, i32* %18, align 4
  store i32 %73, i32* %7, align 4
  br label %76

74:                                               ; preds = %51
  %75 = call i32 @ttm_eu_backoff_reservation(%struct.ww_acquire_ctx* %14, %struct.list_head* %15)
  store i32 0, i32* %7, align 4
  br label %76

76:                                               ; preds = %74, %65, %46, %33
  %77 = load i32, i32* %7, align 4
  ret i32 %77
}

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

declare dso_local i32 @list_add(%struct.list_head*, %struct.list_head*) #1

declare dso_local i32 @amdgpu_vm_get_pd_bo(%struct.amdgpu_vm*, %struct.list_head*, %struct.amdgpu_bo_list_entry*) #1

declare dso_local i32 @ttm_eu_reserve_buffers(%struct.ww_acquire_ctx*, %struct.list_head*, i32, i32*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local %struct.amdgpu_bo_va* @amdgpu_vm_bo_add(%struct.amdgpu_device*, %struct.amdgpu_vm*, %struct.amdgpu_bo*) #1

declare dso_local i32 @ttm_eu_backoff_reservation(%struct.ww_acquire_ctx*, %struct.list_head*) #1

declare dso_local i32 @amdgpu_vm_bo_map(%struct.amdgpu_device*, %struct.amdgpu_bo_va*, i32, i32, i32, i32) #1

declare dso_local i32 @amdgpu_vm_bo_rmv(%struct.amdgpu_device*, %struct.amdgpu_bo_va*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gpuvm.c_add_kgd_mem_to_kfd_bo_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gpuvm.c_add_kgd_mem_to_kfd_bo_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kgd_mem = type { %struct.amdgpu_bo*, %struct.ttm_validate_buffer }
%struct.amdgpu_bo = type { i32 }
%struct.ttm_validate_buffer = type { i32, i32, i32* }
%struct.amdkfd_process_info = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kgd_mem*, %struct.amdkfd_process_info*, i32)* @add_kgd_mem_to_kfd_bo_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_kgd_mem_to_kfd_bo_list(%struct.kgd_mem* %0, %struct.amdkfd_process_info* %1, i32 %2) #0 {
  %4 = alloca %struct.kgd_mem*, align 8
  %5 = alloca %struct.amdkfd_process_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ttm_validate_buffer*, align 8
  %8 = alloca %struct.amdgpu_bo*, align 8
  store %struct.kgd_mem* %0, %struct.kgd_mem** %4, align 8
  store %struct.amdkfd_process_info* %1, %struct.amdkfd_process_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.kgd_mem*, %struct.kgd_mem** %4, align 8
  %10 = getelementptr inbounds %struct.kgd_mem, %struct.kgd_mem* %9, i32 0, i32 1
  store %struct.ttm_validate_buffer* %10, %struct.ttm_validate_buffer** %7, align 8
  %11 = load %struct.kgd_mem*, %struct.kgd_mem** %4, align 8
  %12 = getelementptr inbounds %struct.kgd_mem, %struct.kgd_mem* %11, i32 0, i32 0
  %13 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %12, align 8
  store %struct.amdgpu_bo* %13, %struct.amdgpu_bo** %8, align 8
  %14 = load %struct.ttm_validate_buffer*, %struct.ttm_validate_buffer** %7, align 8
  %15 = getelementptr inbounds %struct.ttm_validate_buffer, %struct.ttm_validate_buffer* %14, i32 0, i32 1
  %16 = call i32 @INIT_LIST_HEAD(i32* %15)
  %17 = load %struct.ttm_validate_buffer*, %struct.ttm_validate_buffer** %7, align 8
  %18 = getelementptr inbounds %struct.ttm_validate_buffer, %struct.ttm_validate_buffer* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %8, align 8
  %20 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %19, i32 0, i32 0
  %21 = load %struct.ttm_validate_buffer*, %struct.ttm_validate_buffer** %7, align 8
  %22 = getelementptr inbounds %struct.ttm_validate_buffer, %struct.ttm_validate_buffer* %21, i32 0, i32 2
  store i32* %20, i32** %22, align 8
  %23 = load %struct.amdkfd_process_info*, %struct.amdkfd_process_info** %5, align 8
  %24 = getelementptr inbounds %struct.amdkfd_process_info, %struct.amdkfd_process_info* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %3
  %29 = load %struct.ttm_validate_buffer*, %struct.ttm_validate_buffer** %7, align 8
  %30 = getelementptr inbounds %struct.ttm_validate_buffer, %struct.ttm_validate_buffer* %29, i32 0, i32 1
  %31 = load %struct.amdkfd_process_info*, %struct.amdkfd_process_info** %5, align 8
  %32 = getelementptr inbounds %struct.amdkfd_process_info, %struct.amdkfd_process_info* %31, i32 0, i32 2
  %33 = call i32 @list_add_tail(i32* %30, i32* %32)
  br label %40

34:                                               ; preds = %3
  %35 = load %struct.ttm_validate_buffer*, %struct.ttm_validate_buffer** %7, align 8
  %36 = getelementptr inbounds %struct.ttm_validate_buffer, %struct.ttm_validate_buffer* %35, i32 0, i32 1
  %37 = load %struct.amdkfd_process_info*, %struct.amdkfd_process_info** %5, align 8
  %38 = getelementptr inbounds %struct.amdkfd_process_info, %struct.amdkfd_process_info* %37, i32 0, i32 1
  %39 = call i32 @list_add_tail(i32* %36, i32* %38)
  br label %40

40:                                               ; preds = %34, %28
  %41 = load %struct.amdkfd_process_info*, %struct.amdkfd_process_info** %5, align 8
  %42 = getelementptr inbounds %struct.amdkfd_process_info, %struct.amdkfd_process_info* %41, i32 0, i32 0
  %43 = call i32 @mutex_unlock(i32* %42)
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

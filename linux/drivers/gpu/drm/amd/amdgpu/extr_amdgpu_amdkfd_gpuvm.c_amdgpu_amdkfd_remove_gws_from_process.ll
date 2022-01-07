; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gpuvm.c_amdgpu_amdkfd_remove_gws_from_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gpuvm.c_amdgpu_amdkfd_remove_gws_from_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdkfd_process_info = type { i32 }
%struct.kgd_mem = type { i32, i32, %struct.amdgpu_bo* }
%struct.amdgpu_bo = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Reserve gws bo failed %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_amdkfd_remove_gws_from_process(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.amdkfd_process_info*, align 8
  %8 = alloca %struct.kgd_mem*, align 8
  %9 = alloca %struct.amdgpu_bo*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.amdkfd_process_info*
  store %struct.amdkfd_process_info* %11, %struct.amdkfd_process_info** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.kgd_mem*
  store %struct.kgd_mem* %13, %struct.kgd_mem** %8, align 8
  %14 = load %struct.kgd_mem*, %struct.kgd_mem** %8, align 8
  %15 = getelementptr inbounds %struct.kgd_mem, %struct.kgd_mem* %14, i32 0, i32 2
  %16 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %15, align 8
  store %struct.amdgpu_bo* %16, %struct.amdgpu_bo** %9, align 8
  %17 = load %struct.kgd_mem*, %struct.kgd_mem** %8, align 8
  %18 = load %struct.amdkfd_process_info*, %struct.amdkfd_process_info** %7, align 8
  %19 = call i32 @remove_kgd_mem_from_kfd_bo_list(%struct.kgd_mem* %17, %struct.amdkfd_process_info* %18)
  %20 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %9, align 8
  %21 = call i32 @amdgpu_bo_reserve(%struct.amdgpu_bo* %20, i32 0)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %46

29:                                               ; preds = %2
  %30 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %9, align 8
  %31 = load %struct.amdkfd_process_info*, %struct.amdkfd_process_info** %7, align 8
  %32 = getelementptr inbounds %struct.amdkfd_process_info, %struct.amdkfd_process_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @amdgpu_amdkfd_remove_eviction_fence(%struct.amdgpu_bo* %30, i32 %33)
  %35 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %9, align 8
  %36 = call i32 @amdgpu_bo_unreserve(%struct.amdgpu_bo* %35)
  %37 = load %struct.kgd_mem*, %struct.kgd_mem** %8, align 8
  %38 = getelementptr inbounds %struct.kgd_mem, %struct.kgd_mem* %37, i32 0, i32 1
  %39 = call i32 @amdgpu_sync_free(i32* %38)
  %40 = call i32 @amdgpu_bo_unref(%struct.amdgpu_bo** %9)
  %41 = load %struct.kgd_mem*, %struct.kgd_mem** %8, align 8
  %42 = getelementptr inbounds %struct.kgd_mem, %struct.kgd_mem* %41, i32 0, i32 0
  %43 = call i32 @mutex_destroy(i32* %42)
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 @kfree(i8* %44)
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %29, %25
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @remove_kgd_mem_from_kfd_bo_list(%struct.kgd_mem*, %struct.amdkfd_process_info*) #1

declare dso_local i32 @amdgpu_bo_reserve(%struct.amdgpu_bo*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @amdgpu_amdkfd_remove_eviction_fence(%struct.amdgpu_bo*, i32) #1

declare dso_local i32 @amdgpu_bo_unreserve(%struct.amdgpu_bo*) #1

declare dso_local i32 @amdgpu_sync_free(i32*) #1

declare dso_local i32 @amdgpu_bo_unref(%struct.amdgpu_bo**) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gpuvm.c_amdgpu_amdkfd_evict_userptr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gpuvm.c_amdgpu_amdkfd_evict_userptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kgd_mem = type { i32, %struct.amdkfd_process_info* }
%struct.amdkfd_process_info = type { i32, i32 }
%struct.mm_struct = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Failed to quiesce KFD\0A\00", align 1
@AMDGPU_USERPTR_RESTORE_DELAY_MS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_amdkfd_evict_userptr(%struct.kgd_mem* %0, %struct.mm_struct* %1) #0 {
  %3 = alloca %struct.kgd_mem*, align 8
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca %struct.amdkfd_process_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.kgd_mem* %0, %struct.kgd_mem** %3, align 8
  store %struct.mm_struct* %1, %struct.mm_struct** %4, align 8
  %9 = load %struct.kgd_mem*, %struct.kgd_mem** %3, align 8
  %10 = getelementptr inbounds %struct.kgd_mem, %struct.kgd_mem* %9, i32 0, i32 1
  %11 = load %struct.amdkfd_process_info*, %struct.amdkfd_process_info** %10, align 8
  store %struct.amdkfd_process_info* %11, %struct.amdkfd_process_info** %5, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.kgd_mem*, %struct.kgd_mem** %3, align 8
  %13 = getelementptr inbounds %struct.kgd_mem, %struct.kgd_mem* %12, i32 0, i32 0
  %14 = call i32 @atomic_inc_return(i32* %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.amdkfd_process_info*, %struct.amdkfd_process_info** %5, align 8
  %16 = getelementptr inbounds %struct.amdkfd_process_info, %struct.amdkfd_process_info* %15, i32 0, i32 1
  %17 = call i32 @atomic_inc_return(i32* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %33

20:                                               ; preds = %2
  %21 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %22 = call i32 @kgd2kfd_quiesce_mm(%struct.mm_struct* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %20
  %28 = load %struct.amdkfd_process_info*, %struct.amdkfd_process_info** %5, align 8
  %29 = getelementptr inbounds %struct.amdkfd_process_info, %struct.amdkfd_process_info* %28, i32 0, i32 0
  %30 = load i32, i32* @AMDGPU_USERPTR_RESTORE_DELAY_MS, align 4
  %31 = call i32 @msecs_to_jiffies(i32 %30)
  %32 = call i32 @schedule_delayed_work(i32* %29, i32 %31)
  br label %33

33:                                               ; preds = %27, %2
  %34 = load i32, i32* %8, align 4
  ret i32 %34
}

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @kgd2kfd_quiesce_mm(%struct.mm_struct*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

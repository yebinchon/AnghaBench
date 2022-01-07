; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_sched.c_lima_sched_free_job.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_sched.c_lima_sched_free_job.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_sched_job = type { i32 }
%struct.lima_sched_task = type { i32, i32, %struct.lima_bo**, %struct.lima_vm* }
%struct.lima_bo = type { i32 }
%struct.lima_vm = type { i32 }
%struct.lima_sched_pipe = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_sched_job*)* @lima_sched_free_job to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lima_sched_free_job(%struct.drm_sched_job* %0) #0 {
  %2 = alloca %struct.drm_sched_job*, align 8
  %3 = alloca %struct.lima_sched_task*, align 8
  %4 = alloca %struct.lima_sched_pipe*, align 8
  %5 = alloca %struct.lima_vm*, align 8
  %6 = alloca %struct.lima_bo**, align 8
  %7 = alloca i32, align 4
  store %struct.drm_sched_job* %0, %struct.drm_sched_job** %2, align 8
  %8 = load %struct.drm_sched_job*, %struct.drm_sched_job** %2, align 8
  %9 = call %struct.lima_sched_task* @to_lima_task(%struct.drm_sched_job* %8)
  store %struct.lima_sched_task* %9, %struct.lima_sched_task** %3, align 8
  %10 = load %struct.drm_sched_job*, %struct.drm_sched_job** %2, align 8
  %11 = getelementptr inbounds %struct.drm_sched_job, %struct.drm_sched_job* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.lima_sched_pipe* @to_lima_pipe(i32 %12)
  store %struct.lima_sched_pipe* %13, %struct.lima_sched_pipe** %4, align 8
  %14 = load %struct.lima_sched_task*, %struct.lima_sched_task** %3, align 8
  %15 = getelementptr inbounds %struct.lima_sched_task, %struct.lima_sched_task* %14, i32 0, i32 3
  %16 = load %struct.lima_vm*, %struct.lima_vm** %15, align 8
  store %struct.lima_vm* %16, %struct.lima_vm** %5, align 8
  %17 = load %struct.lima_sched_task*, %struct.lima_sched_task** %3, align 8
  %18 = getelementptr inbounds %struct.lima_sched_task, %struct.lima_sched_task* %17, i32 0, i32 2
  %19 = load %struct.lima_bo**, %struct.lima_bo*** %18, align 8
  store %struct.lima_bo** %19, %struct.lima_bo*** %6, align 8
  %20 = load %struct.lima_sched_task*, %struct.lima_sched_task** %3, align 8
  %21 = getelementptr inbounds %struct.lima_sched_task, %struct.lima_sched_task* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dma_fence_put(i32 %22)
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %38, %1
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.lima_sched_task*, %struct.lima_sched_task** %3, align 8
  %27 = getelementptr inbounds %struct.lima_sched_task, %struct.lima_sched_task* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %24
  %31 = load %struct.lima_vm*, %struct.lima_vm** %5, align 8
  %32 = load %struct.lima_bo**, %struct.lima_bo*** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.lima_bo*, %struct.lima_bo** %32, i64 %34
  %36 = load %struct.lima_bo*, %struct.lima_bo** %35, align 8
  %37 = call i32 @lima_vm_bo_del(%struct.lima_vm* %31, %struct.lima_bo* %36)
  br label %38

38:                                               ; preds = %30
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %24

41:                                               ; preds = %24
  %42 = load %struct.lima_sched_task*, %struct.lima_sched_task** %3, align 8
  %43 = call i32 @lima_sched_task_fini(%struct.lima_sched_task* %42)
  %44 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %4, align 8
  %45 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.lima_sched_task*, %struct.lima_sched_task** %3, align 8
  %48 = call i32 @kmem_cache_free(i32 %46, %struct.lima_sched_task* %47)
  ret void
}

declare dso_local %struct.lima_sched_task* @to_lima_task(%struct.drm_sched_job*) #1

declare dso_local %struct.lima_sched_pipe* @to_lima_pipe(i32) #1

declare dso_local i32 @dma_fence_put(i32) #1

declare dso_local i32 @lima_vm_bo_del(%struct.lima_vm*, %struct.lima_bo*) #1

declare dso_local i32 @lima_sched_task_fini(%struct.lima_sched_task*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.lima_sched_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

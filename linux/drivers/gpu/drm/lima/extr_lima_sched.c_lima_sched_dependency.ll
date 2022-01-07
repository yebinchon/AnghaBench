; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_sched.c_lima_sched_dependency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_sched.c_lima_sched_dependency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_fence = type { i32 }
%struct.drm_sched_job = type { i32 }
%struct.drm_sched_entity = type { i32 }
%struct.lima_sched_task = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_fence* (%struct.drm_sched_job*, %struct.drm_sched_entity*)* @lima_sched_dependency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_fence* @lima_sched_dependency(%struct.drm_sched_job* %0, %struct.drm_sched_entity* %1) #0 {
  %3 = alloca %struct.dma_fence*, align 8
  %4 = alloca %struct.drm_sched_job*, align 8
  %5 = alloca %struct.drm_sched_entity*, align 8
  %6 = alloca %struct.lima_sched_task*, align 8
  store %struct.drm_sched_job* %0, %struct.drm_sched_job** %4, align 8
  store %struct.drm_sched_entity* %1, %struct.drm_sched_entity** %5, align 8
  %7 = load %struct.drm_sched_job*, %struct.drm_sched_job** %4, align 8
  %8 = call %struct.lima_sched_task* @to_lima_task(%struct.drm_sched_job* %7)
  store %struct.lima_sched_task* %8, %struct.lima_sched_task** %6, align 8
  %9 = load %struct.lima_sched_task*, %struct.lima_sched_task** %6, align 8
  %10 = getelementptr inbounds %struct.lima_sched_task, %struct.lima_sched_task* %9, i32 0, i32 1
  %11 = call i32 @xa_empty(i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %2
  %14 = load %struct.lima_sched_task*, %struct.lima_sched_task** %6, align 8
  %15 = getelementptr inbounds %struct.lima_sched_task, %struct.lima_sched_task* %14, i32 0, i32 1
  %16 = load %struct.lima_sched_task*, %struct.lima_sched_task** %6, align 8
  %17 = getelementptr inbounds %struct.lima_sched_task, %struct.lima_sched_task* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 4
  %20 = call %struct.dma_fence* @xa_erase(i32* %15, i32 %18)
  store %struct.dma_fence* %20, %struct.dma_fence** %3, align 8
  br label %22

21:                                               ; preds = %2
  store %struct.dma_fence* null, %struct.dma_fence** %3, align 8
  br label %22

22:                                               ; preds = %21, %13
  %23 = load %struct.dma_fence*, %struct.dma_fence** %3, align 8
  ret %struct.dma_fence* %23
}

declare dso_local %struct.lima_sched_task* @to_lima_task(%struct.drm_sched_job*) #1

declare dso_local i32 @xa_empty(i32*) #1

declare dso_local %struct.dma_fence* @xa_erase(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

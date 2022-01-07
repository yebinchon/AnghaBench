; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_sched.c_lima_sched_pipe_task_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_sched.c_lima_sched_pipe_task_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lima_sched_pipe = type { i32 (%struct.lima_sched_pipe*)*, %struct.lima_sched_task*, i32, i64 }
%struct.lima_sched_task = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lima_sched_pipe_task_done(%struct.lima_sched_pipe* %0) #0 {
  %2 = alloca %struct.lima_sched_pipe*, align 8
  %3 = alloca %struct.lima_sched_task*, align 8
  store %struct.lima_sched_pipe* %0, %struct.lima_sched_pipe** %2, align 8
  %4 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %2, align 8
  %5 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %4, i32 0, i32 3
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %2, align 8
  %10 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %9, i32 0, i32 2
  %11 = call i32 @schedule_work(i32* %10)
  br label %25

12:                                               ; preds = %1
  %13 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %2, align 8
  %14 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %13, i32 0, i32 1
  %15 = load %struct.lima_sched_task*, %struct.lima_sched_task** %14, align 8
  store %struct.lima_sched_task* %15, %struct.lima_sched_task** %3, align 8
  %16 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %2, align 8
  %17 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %16, i32 0, i32 0
  %18 = load i32 (%struct.lima_sched_pipe*)*, i32 (%struct.lima_sched_pipe*)** %17, align 8
  %19 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %2, align 8
  %20 = call i32 %18(%struct.lima_sched_pipe* %19)
  %21 = load %struct.lima_sched_task*, %struct.lima_sched_task** %3, align 8
  %22 = getelementptr inbounds %struct.lima_sched_task, %struct.lima_sched_task* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dma_fence_signal(i32 %23)
  br label %25

25:                                               ; preds = %12, %8
  ret void
}

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @dma_fence_signal(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

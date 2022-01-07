; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_sched.c_lima_sched_pipe_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_sched.c_lima_sched_pipe_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lima_sched_pipe = type { i32, i32, i32, i32 }

@lima_sched_timeout_ms = common dso_local global i32 0, align 4
@lima_sched_error_work = common dso_local global i32 0, align 4
@lima_sched_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lima_sched_pipe_init(%struct.lima_sched_pipe* %0, i8* %1) #0 {
  %3 = alloca %struct.lima_sched_pipe*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.lima_sched_pipe* %0, %struct.lima_sched_pipe** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i32, i32* @lima_sched_timeout_ms, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, i32* @lima_sched_timeout_ms, align 4
  br label %11

10:                                               ; preds = %2
  br label %11

11:                                               ; preds = %10, %8
  %12 = phi i32 [ %9, %8 ], [ 500, %10 ]
  store i32 %12, i32* %5, align 4
  %13 = call i32 @dma_fence_context_alloc(i32 1)
  %14 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %3, align 8
  %15 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 4
  %16 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %3, align 8
  %17 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %16, i32 0, i32 2
  %18 = call i32 @spin_lock_init(i32* %17)
  %19 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %3, align 8
  %20 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %19, i32 0, i32 1
  %21 = load i32, i32* @lima_sched_error_work, align 4
  %22 = call i32 @INIT_WORK(i32* %20, i32 %21)
  %23 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %3, align 8
  %24 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %23, i32 0, i32 0
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @msecs_to_jiffies(i32 %25)
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @drm_sched_init(i32* %24, i32* @lima_sched_ops, i32 1, i32 0, i32 %26, i8* %27)
  ret i32 %28
}

declare dso_local i32 @dma_fence_context_alloc(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @drm_sched_init(i32*, i32*, i32, i32, i32, i8*) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

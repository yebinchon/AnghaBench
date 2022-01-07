; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_sched.c_lima_sched_handle_error_task.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_sched.c_lima_sched_handle_error_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lima_sched_pipe = type { i32, i32, i32*, i32*, i64*, i64, i32 (%struct.lima_sched_pipe*)* }
%struct.lima_sched_task = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lima_sched_pipe*, %struct.lima_sched_task*)* @lima_sched_handle_error_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lima_sched_handle_error_task(%struct.lima_sched_pipe* %0, %struct.lima_sched_task* %1) #0 {
  %3 = alloca %struct.lima_sched_pipe*, align 8
  %4 = alloca %struct.lima_sched_task*, align 8
  %5 = alloca i32, align 4
  store %struct.lima_sched_pipe* %0, %struct.lima_sched_pipe** %3, align 8
  store %struct.lima_sched_task* %1, %struct.lima_sched_task** %4, align 8
  %6 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %3, align 8
  %7 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %6, i32 0, i32 1
  %8 = load %struct.lima_sched_task*, %struct.lima_sched_task** %4, align 8
  %9 = getelementptr inbounds %struct.lima_sched_task, %struct.lima_sched_task* %8, i32 0, i32 0
  %10 = call i32 @drm_sched_stop(i32* %7, i32* %9)
  %11 = load %struct.lima_sched_task*, %struct.lima_sched_task** %4, align 8
  %12 = icmp ne %struct.lima_sched_task* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.lima_sched_task*, %struct.lima_sched_task** %4, align 8
  %15 = getelementptr inbounds %struct.lima_sched_task, %struct.lima_sched_task* %14, i32 0, i32 0
  %16 = call i32 @drm_sched_increase_karma(i32* %15)
  br label %17

17:                                               ; preds = %13, %2
  %18 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %3, align 8
  %19 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %18, i32 0, i32 6
  %20 = load i32 (%struct.lima_sched_pipe*)*, i32 (%struct.lima_sched_pipe*)** %19, align 8
  %21 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %3, align 8
  %22 = call i32 %20(%struct.lima_sched_pipe* %21)
  %23 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %3, align 8
  %24 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %23, i32 0, i32 5
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %17
  %28 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %3, align 8
  %29 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %28, i32 0, i32 5
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @lima_mmu_page_fault_resume(i64 %30)
  br label %52

32:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %48, %32
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %3, align 8
  %36 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %33
  %40 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %3, align 8
  %41 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %40, i32 0, i32 4
  %42 = load i64*, i64** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @lima_mmu_page_fault_resume(i64 %46)
  br label %48

48:                                               ; preds = %39
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %33

51:                                               ; preds = %33
  br label %52

52:                                               ; preds = %51, %27
  %53 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %3, align 8
  %54 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %3, align 8
  %59 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %58, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @lima_vm_put(i32* %60)
  br label %62

62:                                               ; preds = %57, %52
  %63 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %3, align 8
  %64 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %63, i32 0, i32 3
  store i32* null, i32** %64, align 8
  %65 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %3, align 8
  %66 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %65, i32 0, i32 2
  store i32* null, i32** %66, align 8
  %67 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %3, align 8
  %68 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %67, i32 0, i32 1
  %69 = call i32 @drm_sched_resubmit_jobs(i32* %68)
  %70 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %3, align 8
  %71 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %70, i32 0, i32 1
  %72 = call i32 @drm_sched_start(i32* %71, i32 1)
  ret void
}

declare dso_local i32 @drm_sched_stop(i32*, i32*) #1

declare dso_local i32 @drm_sched_increase_karma(i32*) #1

declare dso_local i32 @lima_mmu_page_fault_resume(i64) #1

declare dso_local i32 @lima_vm_put(i32*) #1

declare dso_local i32 @drm_sched_resubmit_jobs(i32*) #1

declare dso_local i32 @drm_sched_start(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

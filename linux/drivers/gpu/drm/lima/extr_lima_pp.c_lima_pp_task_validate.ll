; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_pp.c_lima_pp_task_validate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_pp.c_lima_pp_task_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lima_sched_pipe = type { i64, i64 }
%struct.lima_sched_task = type { %struct.drm_lima_m450_pp_frame* }
%struct.drm_lima_m450_pp_frame = type { i64, i64 }
%struct.drm_lima_m400_pp_frame = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lima_sched_pipe*, %struct.lima_sched_task*)* @lima_pp_task_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lima_pp_task_validate(%struct.lima_sched_pipe* %0, %struct.lima_sched_task* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lima_sched_pipe*, align 8
  %5 = alloca %struct.lima_sched_task*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.drm_lima_m450_pp_frame*, align 8
  %8 = alloca %struct.drm_lima_m400_pp_frame*, align 8
  store %struct.lima_sched_pipe* %0, %struct.lima_sched_pipe** %4, align 8
  store %struct.lima_sched_task* %1, %struct.lima_sched_task** %5, align 8
  %9 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %4, align 8
  %10 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %2
  %14 = load %struct.lima_sched_task*, %struct.lima_sched_task** %5, align 8
  %15 = getelementptr inbounds %struct.lima_sched_task, %struct.lima_sched_task* %14, i32 0, i32 0
  %16 = load %struct.drm_lima_m450_pp_frame*, %struct.drm_lima_m450_pp_frame** %15, align 8
  store %struct.drm_lima_m450_pp_frame* %16, %struct.drm_lima_m450_pp_frame** %7, align 8
  %17 = load %struct.drm_lima_m450_pp_frame*, %struct.drm_lima_m450_pp_frame** %7, align 8
  %18 = getelementptr inbounds %struct.drm_lima_m450_pp_frame, %struct.drm_lima_m450_pp_frame* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %6, align 8
  %20 = load %struct.drm_lima_m450_pp_frame*, %struct.drm_lima_m450_pp_frame** %7, align 8
  %21 = getelementptr inbounds %struct.drm_lima_m450_pp_frame, %struct.drm_lima_m450_pp_frame* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %13
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %49

27:                                               ; preds = %13
  br label %36

28:                                               ; preds = %2
  %29 = load %struct.lima_sched_task*, %struct.lima_sched_task** %5, align 8
  %30 = getelementptr inbounds %struct.lima_sched_task, %struct.lima_sched_task* %29, i32 0, i32 0
  %31 = load %struct.drm_lima_m450_pp_frame*, %struct.drm_lima_m450_pp_frame** %30, align 8
  %32 = bitcast %struct.drm_lima_m450_pp_frame* %31 to %struct.drm_lima_m400_pp_frame*
  store %struct.drm_lima_m400_pp_frame* %32, %struct.drm_lima_m400_pp_frame** %8, align 8
  %33 = load %struct.drm_lima_m400_pp_frame*, %struct.drm_lima_m400_pp_frame** %8, align 8
  %34 = getelementptr inbounds %struct.drm_lima_m400_pp_frame, %struct.drm_lima_m400_pp_frame* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %6, align 8
  br label %36

36:                                               ; preds = %28, %27
  %37 = load i64, i64* %6, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %36
  %40 = load i64, i64* %6, align 8
  %41 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %4, align 8
  %42 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp sgt i64 %40, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %39, %36
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %49

48:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %45, %24
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

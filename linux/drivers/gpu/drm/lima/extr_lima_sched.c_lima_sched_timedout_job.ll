; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_sched.c_lima_sched_timedout_job.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_sched.c_lima_sched_timedout_job.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_sched_job = type { i32 }
%struct.lima_sched_pipe = type { i32 }
%struct.lima_sched_task = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"lima job timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_sched_job*)* @lima_sched_timedout_job to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lima_sched_timedout_job(%struct.drm_sched_job* %0) #0 {
  %2 = alloca %struct.drm_sched_job*, align 8
  %3 = alloca %struct.lima_sched_pipe*, align 8
  %4 = alloca %struct.lima_sched_task*, align 8
  store %struct.drm_sched_job* %0, %struct.drm_sched_job** %2, align 8
  %5 = load %struct.drm_sched_job*, %struct.drm_sched_job** %2, align 8
  %6 = getelementptr inbounds %struct.drm_sched_job, %struct.drm_sched_job* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.lima_sched_pipe* @to_lima_pipe(i32 %7)
  store %struct.lima_sched_pipe* %8, %struct.lima_sched_pipe** %3, align 8
  %9 = load %struct.drm_sched_job*, %struct.drm_sched_job** %2, align 8
  %10 = call %struct.lima_sched_task* @to_lima_task(%struct.drm_sched_job* %9)
  store %struct.lima_sched_task* %10, %struct.lima_sched_task** %4, align 8
  %11 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %3, align 8
  %13 = load %struct.lima_sched_task*, %struct.lima_sched_task** %4, align 8
  %14 = call i32 @lima_sched_handle_error_task(%struct.lima_sched_pipe* %12, %struct.lima_sched_task* %13)
  ret void
}

declare dso_local %struct.lima_sched_pipe* @to_lima_pipe(i32) #1

declare dso_local %struct.lima_sched_task* @to_lima_task(%struct.drm_sched_job*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @lima_sched_handle_error_task(%struct.lima_sched_pipe*, %struct.lima_sched_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

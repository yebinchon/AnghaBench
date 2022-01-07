; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_sched.c_v3d_generic_job_timedout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_sched.c_v3d_generic_job_timedout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_sched_job = type { i32 }
%struct.v3d_job = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_sched_job*)* @v3d_generic_job_timedout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @v3d_generic_job_timedout(%struct.drm_sched_job* %0) #0 {
  %2 = alloca %struct.drm_sched_job*, align 8
  %3 = alloca %struct.v3d_job*, align 8
  store %struct.drm_sched_job* %0, %struct.drm_sched_job** %2, align 8
  %4 = load %struct.drm_sched_job*, %struct.drm_sched_job** %2, align 8
  %5 = call %struct.v3d_job* @to_v3d_job(%struct.drm_sched_job* %4)
  store %struct.v3d_job* %5, %struct.v3d_job** %3, align 8
  %6 = load %struct.v3d_job*, %struct.v3d_job** %3, align 8
  %7 = getelementptr inbounds %struct.v3d_job, %struct.v3d_job* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.drm_sched_job*, %struct.drm_sched_job** %2, align 8
  %10 = call i32 @v3d_gpu_reset_for_timeout(i32 %8, %struct.drm_sched_job* %9)
  ret void
}

declare dso_local %struct.v3d_job* @to_v3d_job(%struct.drm_sched_job*) #1

declare dso_local i32 @v3d_gpu_reset_for_timeout(i32, %struct.drm_sched_job*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

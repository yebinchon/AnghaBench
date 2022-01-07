; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_sched.c_etnaviv_sched_free_job.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_sched.c_etnaviv_sched_free_job.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_sched_job = type { i32 }
%struct.etnaviv_gem_submit = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_sched_job*)* @etnaviv_sched_free_job to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @etnaviv_sched_free_job(%struct.drm_sched_job* %0) #0 {
  %2 = alloca %struct.drm_sched_job*, align 8
  %3 = alloca %struct.etnaviv_gem_submit*, align 8
  store %struct.drm_sched_job* %0, %struct.drm_sched_job** %2, align 8
  %4 = load %struct.drm_sched_job*, %struct.drm_sched_job** %2, align 8
  %5 = call %struct.etnaviv_gem_submit* @to_etnaviv_submit(%struct.drm_sched_job* %4)
  store %struct.etnaviv_gem_submit* %5, %struct.etnaviv_gem_submit** %3, align 8
  %6 = load %struct.drm_sched_job*, %struct.drm_sched_job** %2, align 8
  %7 = call i32 @drm_sched_job_cleanup(%struct.drm_sched_job* %6)
  %8 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %3, align 8
  %9 = call i32 @etnaviv_submit_put(%struct.etnaviv_gem_submit* %8)
  ret void
}

declare dso_local %struct.etnaviv_gem_submit* @to_etnaviv_submit(%struct.drm_sched_job*) #1

declare dso_local i32 @drm_sched_job_cleanup(%struct.drm_sched_job*) #1

declare dso_local i32 @etnaviv_submit_put(%struct.etnaviv_gem_submit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

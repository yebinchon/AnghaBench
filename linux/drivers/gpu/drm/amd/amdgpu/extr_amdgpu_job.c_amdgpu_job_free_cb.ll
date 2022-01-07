; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_job.c_amdgpu_job_free_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_job.c_amdgpu_job_free_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_sched_job = type { i32, i32 }
%struct.amdgpu_ring = type { i32 }
%struct.amdgpu_job = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_sched_job*)* @amdgpu_job_free_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amdgpu_job_free_cb(%struct.drm_sched_job* %0) #0 {
  %2 = alloca %struct.drm_sched_job*, align 8
  %3 = alloca %struct.amdgpu_ring*, align 8
  %4 = alloca %struct.amdgpu_job*, align 8
  store %struct.drm_sched_job* %0, %struct.drm_sched_job** %2, align 8
  %5 = load %struct.drm_sched_job*, %struct.drm_sched_job** %2, align 8
  %6 = getelementptr inbounds %struct.drm_sched_job, %struct.drm_sched_job* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.amdgpu_ring* @to_amdgpu_ring(i32 %7)
  store %struct.amdgpu_ring* %8, %struct.amdgpu_ring** %3, align 8
  %9 = load %struct.drm_sched_job*, %struct.drm_sched_job** %2, align 8
  %10 = call %struct.amdgpu_job* @to_amdgpu_job(%struct.drm_sched_job* %9)
  store %struct.amdgpu_job* %10, %struct.amdgpu_job** %4, align 8
  %11 = load %struct.drm_sched_job*, %struct.drm_sched_job** %2, align 8
  %12 = call i32 @drm_sched_job_cleanup(%struct.drm_sched_job* %11)
  %13 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %14 = load %struct.drm_sched_job*, %struct.drm_sched_job** %2, align 8
  %15 = getelementptr inbounds %struct.drm_sched_job, %struct.drm_sched_job* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @amdgpu_ring_priority_put(%struct.amdgpu_ring* %13, i32 %16)
  %18 = load %struct.amdgpu_job*, %struct.amdgpu_job** %4, align 8
  %19 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @dma_fence_put(i32 %20)
  %22 = load %struct.amdgpu_job*, %struct.amdgpu_job** %4, align 8
  %23 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %22, i32 0, i32 1
  %24 = call i32 @amdgpu_sync_free(i32* %23)
  %25 = load %struct.amdgpu_job*, %struct.amdgpu_job** %4, align 8
  %26 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %25, i32 0, i32 0
  %27 = call i32 @amdgpu_sync_free(i32* %26)
  %28 = load %struct.amdgpu_job*, %struct.amdgpu_job** %4, align 8
  %29 = call i32 @kfree(%struct.amdgpu_job* %28)
  ret void
}

declare dso_local %struct.amdgpu_ring* @to_amdgpu_ring(i32) #1

declare dso_local %struct.amdgpu_job* @to_amdgpu_job(%struct.drm_sched_job*) #1

declare dso_local i32 @drm_sched_job_cleanup(%struct.drm_sched_job*) #1

declare dso_local i32 @amdgpu_ring_priority_put(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @dma_fence_put(i32) #1

declare dso_local i32 @amdgpu_sync_free(i32*) #1

declare dso_local i32 @kfree(%struct.amdgpu_job*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

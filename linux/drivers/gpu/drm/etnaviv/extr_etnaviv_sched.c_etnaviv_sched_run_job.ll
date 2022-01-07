; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_sched.c_etnaviv_sched_run_job.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_sched.c_etnaviv_sched_run_job.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_fence = type { i32 }
%struct.drm_sched_job = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.etnaviv_gem_submit = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"skipping bad job\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_fence* (%struct.drm_sched_job*)* @etnaviv_sched_run_job to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_fence* @etnaviv_sched_run_job(%struct.drm_sched_job* %0) #0 {
  %2 = alloca %struct.drm_sched_job*, align 8
  %3 = alloca %struct.etnaviv_gem_submit*, align 8
  %4 = alloca %struct.dma_fence*, align 8
  store %struct.drm_sched_job* %0, %struct.drm_sched_job** %2, align 8
  %5 = load %struct.drm_sched_job*, %struct.drm_sched_job** %2, align 8
  %6 = call %struct.etnaviv_gem_submit* @to_etnaviv_submit(%struct.drm_sched_job* %5)
  store %struct.etnaviv_gem_submit* %6, %struct.etnaviv_gem_submit** %3, align 8
  store %struct.dma_fence* null, %struct.dma_fence** %4, align 8
  %7 = load %struct.drm_sched_job*, %struct.drm_sched_job** %2, align 8
  %8 = getelementptr inbounds %struct.drm_sched_job, %struct.drm_sched_job* %7, i32 0, i32 0
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @likely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %3, align 8
  %20 = call %struct.dma_fence* @etnaviv_gpu_submit(%struct.etnaviv_gem_submit* %19)
  store %struct.dma_fence* %20, %struct.dma_fence** %4, align 8
  br label %28

21:                                               ; preds = %1
  %22 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %3, align 8
  %23 = getelementptr inbounds %struct.etnaviv_gem_submit, %struct.etnaviv_gem_submit* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dev_dbg(i32 %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %21, %18
  %29 = load %struct.dma_fence*, %struct.dma_fence** %4, align 8
  ret %struct.dma_fence* %29
}

declare dso_local %struct.etnaviv_gem_submit* @to_etnaviv_submit(%struct.drm_sched_job*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local %struct.dma_fence* @etnaviv_gpu_submit(%struct.etnaviv_gem_submit*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

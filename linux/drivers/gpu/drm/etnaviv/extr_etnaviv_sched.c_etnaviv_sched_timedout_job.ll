; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_sched.c_etnaviv_sched_timedout_job.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_sched.c_etnaviv_sched_timedout_job.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_sched_job = type { i32 }
%struct.etnaviv_gem_submit = type { i32, %struct.etnaviv_gpu* }
%struct.etnaviv_gpu = type { i8*, i32 }

@VIVS_FE_DMA_ADDRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_sched_job*)* @etnaviv_sched_timedout_job to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @etnaviv_sched_timedout_job(%struct.drm_sched_job* %0) #0 {
  %2 = alloca %struct.drm_sched_job*, align 8
  %3 = alloca %struct.etnaviv_gem_submit*, align 8
  %4 = alloca %struct.etnaviv_gpu*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_sched_job* %0, %struct.drm_sched_job** %2, align 8
  %7 = load %struct.drm_sched_job*, %struct.drm_sched_job** %2, align 8
  %8 = call %struct.etnaviv_gem_submit* @to_etnaviv_submit(%struct.drm_sched_job* %7)
  store %struct.etnaviv_gem_submit* %8, %struct.etnaviv_gem_submit** %3, align 8
  %9 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %3, align 8
  %10 = getelementptr inbounds %struct.etnaviv_gem_submit, %struct.etnaviv_gem_submit* %9, i32 0, i32 1
  %11 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %10, align 8
  store %struct.etnaviv_gpu* %11, %struct.etnaviv_gpu** %4, align 8
  %12 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %3, align 8
  %13 = getelementptr inbounds %struct.etnaviv_gem_submit, %struct.etnaviv_gem_submit* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @dma_fence_is_signaled(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %60

18:                                               ; preds = %1
  %19 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %4, align 8
  %20 = load i32, i32* @VIVS_FE_DMA_ADDRESS, align 4
  %21 = call i8* @gpu_read(%struct.etnaviv_gpu* %19, i32 %20)
  store i8* %21, i8** %5, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %4, align 8
  %24 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = ptrtoint i8* %22 to i64
  %27 = ptrtoint i8* %25 to i64
  %28 = sub i64 %26, %27
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %18
  %33 = load i32, i32* %6, align 4
  %34 = icmp sgt i32 %33, 16
  br i1 %34, label %35, label %39

35:                                               ; preds = %32, %18
  %36 = load i8*, i8** %5, align 8
  %37 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %4, align 8
  %38 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  br label %60

39:                                               ; preds = %32
  %40 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %4, align 8
  %41 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %40, i32 0, i32 1
  %42 = load %struct.drm_sched_job*, %struct.drm_sched_job** %2, align 8
  %43 = call i32 @drm_sched_stop(i32* %41, %struct.drm_sched_job* %42)
  %44 = load %struct.drm_sched_job*, %struct.drm_sched_job** %2, align 8
  %45 = icmp ne %struct.drm_sched_job* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load %struct.drm_sched_job*, %struct.drm_sched_job** %2, align 8
  %48 = call i32 @drm_sched_increase_karma(%struct.drm_sched_job* %47)
  br label %49

49:                                               ; preds = %46, %39
  %50 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %3, align 8
  %51 = call i32 @etnaviv_core_dump(%struct.etnaviv_gem_submit* %50)
  %52 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %4, align 8
  %53 = call i32 @etnaviv_gpu_recover_hang(%struct.etnaviv_gpu* %52)
  %54 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %4, align 8
  %55 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %54, i32 0, i32 1
  %56 = call i32 @drm_sched_resubmit_jobs(i32* %55)
  %57 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %4, align 8
  %58 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %57, i32 0, i32 1
  %59 = call i32 @drm_sched_start(i32* %58, i32 1)
  br label %60

60:                                               ; preds = %49, %35, %17
  ret void
}

declare dso_local %struct.etnaviv_gem_submit* @to_etnaviv_submit(%struct.drm_sched_job*) #1

declare dso_local i64 @dma_fence_is_signaled(i32) #1

declare dso_local i8* @gpu_read(%struct.etnaviv_gpu*, i32) #1

declare dso_local i32 @drm_sched_stop(i32*, %struct.drm_sched_job*) #1

declare dso_local i32 @drm_sched_increase_karma(%struct.drm_sched_job*) #1

declare dso_local i32 @etnaviv_core_dump(%struct.etnaviv_gem_submit*) #1

declare dso_local i32 @etnaviv_gpu_recover_hang(%struct.etnaviv_gpu*) #1

declare dso_local i32 @drm_sched_resubmit_jobs(i32*) #1

declare dso_local i32 @drm_sched_start(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

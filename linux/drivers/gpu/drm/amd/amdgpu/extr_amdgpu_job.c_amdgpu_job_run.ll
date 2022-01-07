; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_job.c_amdgpu_job_run.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_job.c_amdgpu_job_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_fence = type { i64 }
%struct.drm_sched_job = type { i32 }
%struct.amdgpu_ring = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.amdgpu_job = type { i64, i32, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.dma_fence }

@ECANCELED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Skip scheduling IBs!\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Error scheduling IBs (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_fence* (%struct.drm_sched_job*)* @amdgpu_job_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_fence* @amdgpu_job_run(%struct.drm_sched_job* %0) #0 {
  %2 = alloca %struct.drm_sched_job*, align 8
  %3 = alloca %struct.amdgpu_ring*, align 8
  %4 = alloca %struct.dma_fence*, align 8
  %5 = alloca %struct.dma_fence*, align 8
  %6 = alloca %struct.amdgpu_job*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_sched_job* %0, %struct.drm_sched_job** %2, align 8
  %8 = load %struct.drm_sched_job*, %struct.drm_sched_job** %2, align 8
  %9 = getelementptr inbounds %struct.drm_sched_job, %struct.drm_sched_job* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.amdgpu_ring* @to_amdgpu_ring(i32 %10)
  store %struct.amdgpu_ring* %11, %struct.amdgpu_ring** %3, align 8
  store %struct.dma_fence* null, %struct.dma_fence** %4, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.drm_sched_job*, %struct.drm_sched_job** %2, align 8
  %13 = call %struct.amdgpu_job* @to_amdgpu_job(%struct.drm_sched_job* %12)
  store %struct.amdgpu_job* %13, %struct.amdgpu_job** %6, align 8
  %14 = load %struct.amdgpu_job*, %struct.amdgpu_job** %6, align 8
  %15 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %14, i32 0, i32 5
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store %struct.dma_fence* %18, %struct.dma_fence** %5, align 8
  %19 = load %struct.amdgpu_job*, %struct.amdgpu_job** %6, align 8
  %20 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %19, i32 0, i32 4
  %21 = call i32 @amdgpu_sync_peek_fence(i32* %20, i32* null)
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load %struct.amdgpu_job*, %struct.amdgpu_job** %6, align 8
  %24 = call i32 @trace_amdgpu_sched_run_job(%struct.amdgpu_job* %23)
  %25 = load %struct.amdgpu_job*, %struct.amdgpu_job** %6, align 8
  %26 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %29 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = call i64 @atomic_read(i32* %31)
  %33 = icmp ne i64 %27, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %1
  %35 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %36 = load i32, i32* @ECANCELED, align 4
  %37 = sub nsw i32 0, %36
  %38 = call i32 @dma_fence_set_error(%struct.dma_fence* %35, i32 %37)
  br label %39

39:                                               ; preds = %34, %1
  %40 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %41 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = call i32 @DRM_INFO(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %62

46:                                               ; preds = %39
  %47 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %48 = load %struct.amdgpu_job*, %struct.amdgpu_job** %6, align 8
  %49 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.amdgpu_job*, %struct.amdgpu_job** %6, align 8
  %52 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.amdgpu_job*, %struct.amdgpu_job** %6, align 8
  %55 = call i32 @amdgpu_ib_schedule(%struct.amdgpu_ring* %47, i32 %50, i32 %53, %struct.amdgpu_job* %54, %struct.dma_fence** %4)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %46
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %58, %46
  br label %62

62:                                               ; preds = %61, %44
  %63 = load %struct.amdgpu_job*, %struct.amdgpu_job** %6, align 8
  %64 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @dma_fence_put(i32 %65)
  %67 = load %struct.dma_fence*, %struct.dma_fence** %4, align 8
  %68 = call i32 @dma_fence_get(%struct.dma_fence* %67)
  %69 = load %struct.amdgpu_job*, %struct.amdgpu_job** %6, align 8
  %70 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 8
  %71 = load %struct.amdgpu_job*, %struct.amdgpu_job** %6, align 8
  %72 = call i32 @amdgpu_job_free_resources(%struct.amdgpu_job* %71)
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %62
  %76 = load i32, i32* %7, align 4
  %77 = call %struct.dma_fence* @ERR_PTR(i32 %76)
  br label %80

78:                                               ; preds = %62
  %79 = load %struct.dma_fence*, %struct.dma_fence** %4, align 8
  br label %80

80:                                               ; preds = %78, %75
  %81 = phi %struct.dma_fence* [ %77, %75 ], [ %79, %78 ]
  store %struct.dma_fence* %81, %struct.dma_fence** %4, align 8
  %82 = load %struct.dma_fence*, %struct.dma_fence** %4, align 8
  ret %struct.dma_fence* %82
}

declare dso_local %struct.amdgpu_ring* @to_amdgpu_ring(i32) #1

declare dso_local %struct.amdgpu_job* @to_amdgpu_job(%struct.drm_sched_job*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @amdgpu_sync_peek_fence(i32*, i32*) #1

declare dso_local i32 @trace_amdgpu_sched_run_job(%struct.amdgpu_job*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @dma_fence_set_error(%struct.dma_fence*, i32) #1

declare dso_local i32 @DRM_INFO(i8*) #1

declare dso_local i32 @amdgpu_ib_schedule(%struct.amdgpu_ring*, i32, i32, %struct.amdgpu_job*, %struct.dma_fence**) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @dma_fence_put(i32) #1

declare dso_local i32 @dma_fence_get(%struct.dma_fence*) #1

declare dso_local i32 @amdgpu_job_free_resources(%struct.amdgpu_job*) #1

declare dso_local %struct.dma_fence* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

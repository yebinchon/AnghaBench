; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_job.c_amdgpu_job_submit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_job.c_amdgpu_job_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_job = type { %struct.TYPE_7__, i8* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.drm_sched_entity = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.dma_fence = type { i32 }
%struct.amdgpu_ring = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_job_submit(%struct.amdgpu_job* %0, %struct.drm_sched_entity* %1, i8* %2, %struct.dma_fence** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_job*, align 8
  %7 = alloca %struct.drm_sched_entity*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.dma_fence**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.amdgpu_ring*, align 8
  %12 = alloca i32, align 4
  store %struct.amdgpu_job* %0, %struct.amdgpu_job** %6, align 8
  store %struct.drm_sched_entity* %1, %struct.drm_sched_entity** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.dma_fence** %3, %struct.dma_fence*** %9, align 8
  %13 = load %struct.dma_fence**, %struct.dma_fence*** %9, align 8
  %14 = icmp ne %struct.dma_fence** %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %58

18:                                               ; preds = %4
  %19 = load %struct.amdgpu_job*, %struct.amdgpu_job** %6, align 8
  %20 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %19, i32 0, i32 0
  %21 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %7, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @drm_sched_job_init(%struct.TYPE_7__* %20, %struct.drm_sched_entity* %21, i8* %22)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32, i32* %12, align 4
  store i32 %27, i32* %5, align 4
  br label %58

28:                                               ; preds = %18
  %29 = load i8*, i8** %8, align 8
  %30 = load %struct.amdgpu_job*, %struct.amdgpu_job** %6, align 8
  %31 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = load %struct.amdgpu_job*, %struct.amdgpu_job** %6, align 8
  %33 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = call %struct.dma_fence* @dma_fence_get(i32* %36)
  %38 = load %struct.dma_fence**, %struct.dma_fence*** %9, align 8
  store %struct.dma_fence* %37, %struct.dma_fence** %38, align 8
  %39 = load %struct.amdgpu_job*, %struct.amdgpu_job** %6, align 8
  %40 = call i32 @amdgpu_job_free_resources(%struct.amdgpu_job* %39)
  %41 = load %struct.amdgpu_job*, %struct.amdgpu_job** %6, align 8
  %42 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %10, align 4
  %45 = load %struct.amdgpu_job*, %struct.amdgpu_job** %6, align 8
  %46 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %45, i32 0, i32 0
  %47 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %7, align 8
  %48 = call i32 @drm_sched_entity_push_job(%struct.TYPE_7__* %46, %struct.drm_sched_entity* %47)
  %49 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %7, align 8
  %50 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call %struct.amdgpu_ring* @to_amdgpu_ring(i32 %53)
  store %struct.amdgpu_ring* %54, %struct.amdgpu_ring** %11, align 8
  %55 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %11, align 8
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @amdgpu_ring_priority_get(%struct.amdgpu_ring* %55, i32 %56)
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %28, %26, %15
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @drm_sched_job_init(%struct.TYPE_7__*, %struct.drm_sched_entity*, i8*) #1

declare dso_local %struct.dma_fence* @dma_fence_get(i32*) #1

declare dso_local i32 @amdgpu_job_free_resources(%struct.amdgpu_job*) #1

declare dso_local i32 @drm_sched_entity_push_job(%struct.TYPE_7__*, %struct.drm_sched_entity*) #1

declare dso_local %struct.amdgpu_ring* @to_amdgpu_ring(i32) #1

declare dso_local i32 @amdgpu_ring_priority_get(%struct.amdgpu_ring*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

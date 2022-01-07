; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_job.c_amdgpu_job_dependency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_job.c_amdgpu_job_dependency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_fence = type { i32 }
%struct.drm_sched_job = type { i32 }
%struct.drm_sched_entity = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.amdgpu_ring = type { i32 }
%struct.amdgpu_job = type { i32, %struct.TYPE_6__, i32, i32, %struct.amdgpu_vm* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.amdgpu_vm = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Error adding fence (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Error getting VM ID (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_fence* (%struct.drm_sched_job*, %struct.drm_sched_entity*)* @amdgpu_job_dependency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_fence* @amdgpu_job_dependency(%struct.drm_sched_job* %0, %struct.drm_sched_entity* %1) #0 {
  %3 = alloca %struct.drm_sched_job*, align 8
  %4 = alloca %struct.drm_sched_entity*, align 8
  %5 = alloca %struct.amdgpu_ring*, align 8
  %6 = alloca %struct.amdgpu_job*, align 8
  %7 = alloca %struct.amdgpu_vm*, align 8
  %8 = alloca %struct.dma_fence*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_sched_job* %0, %struct.drm_sched_job** %3, align 8
  store %struct.drm_sched_entity* %1, %struct.drm_sched_entity** %4, align 8
  %11 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %4, align 8
  %12 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.amdgpu_ring* @to_amdgpu_ring(i32 %15)
  store %struct.amdgpu_ring* %16, %struct.amdgpu_ring** %5, align 8
  %17 = load %struct.drm_sched_job*, %struct.drm_sched_job** %3, align 8
  %18 = call %struct.amdgpu_job* @to_amdgpu_job(%struct.drm_sched_job* %17)
  store %struct.amdgpu_job* %18, %struct.amdgpu_job** %6, align 8
  %19 = load %struct.amdgpu_job*, %struct.amdgpu_job** %6, align 8
  %20 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %19, i32 0, i32 4
  %21 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %20, align 8
  store %struct.amdgpu_vm* %21, %struct.amdgpu_vm** %7, align 8
  store i32 0, i32* %9, align 4
  %22 = load %struct.amdgpu_job*, %struct.amdgpu_job** %6, align 8
  %23 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %22, i32 0, i32 0
  %24 = call %struct.dma_fence* @amdgpu_sync_get_fence(i32* %23, i32* %9)
  store %struct.dma_fence* %24, %struct.dma_fence** %8, align 8
  %25 = load %struct.dma_fence*, %struct.dma_fence** %8, align 8
  %26 = icmp ne %struct.dma_fence* %25, null
  br i1 %26, label %27, label %50

27:                                               ; preds = %2
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %50

30:                                               ; preds = %27
  %31 = load %struct.dma_fence*, %struct.dma_fence** %8, align 8
  %32 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %4, align 8
  %33 = call i64 @drm_sched_dependency_optimized(%struct.dma_fence* %31, %struct.drm_sched_entity* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %30
  %36 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %37 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.amdgpu_job*, %struct.amdgpu_job** %6, align 8
  %40 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %39, i32 0, i32 3
  %41 = load %struct.dma_fence*, %struct.dma_fence** %8, align 8
  %42 = call i32 @amdgpu_sync_fence(i32 %38, i32* %40, %struct.dma_fence* %41, i32 0)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %35
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %45, %35
  br label %49

49:                                               ; preds = %48, %30
  br label %50

50:                                               ; preds = %49, %27, %2
  br label %51

51:                                               ; preds = %82, %50
  %52 = load %struct.dma_fence*, %struct.dma_fence** %8, align 8
  %53 = icmp eq %struct.dma_fence* %52, null
  br i1 %53, label %54, label %63

54:                                               ; preds = %51
  %55 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %7, align 8
  %56 = icmp ne %struct.amdgpu_vm* %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load %struct.amdgpu_job*, %struct.amdgpu_job** %6, align 8
  %59 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  br label %63

63:                                               ; preds = %57, %54, %51
  %64 = phi i1 [ false, %54 ], [ false, %51 ], [ %62, %57 ]
  br i1 %64, label %65, label %86

65:                                               ; preds = %63
  %66 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %7, align 8
  %67 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %68 = load %struct.amdgpu_job*, %struct.amdgpu_job** %6, align 8
  %69 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %68, i32 0, i32 0
  %70 = load %struct.amdgpu_job*, %struct.amdgpu_job** %6, align 8
  %71 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load %struct.amdgpu_job*, %struct.amdgpu_job** %6, align 8
  %76 = call i32 @amdgpu_vmid_grab(%struct.amdgpu_vm* %66, %struct.amdgpu_ring* %67, i32* %69, i32* %74, %struct.amdgpu_job* %75)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %65
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %79, %65
  %83 = load %struct.amdgpu_job*, %struct.amdgpu_job** %6, align 8
  %84 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %83, i32 0, i32 0
  %85 = call %struct.dma_fence* @amdgpu_sync_get_fence(i32* %84, i32* null)
  store %struct.dma_fence* %85, %struct.dma_fence** %8, align 8
  br label %51

86:                                               ; preds = %63
  %87 = load %struct.dma_fence*, %struct.dma_fence** %8, align 8
  ret %struct.dma_fence* %87
}

declare dso_local %struct.amdgpu_ring* @to_amdgpu_ring(i32) #1

declare dso_local %struct.amdgpu_job* @to_amdgpu_job(%struct.drm_sched_job*) #1

declare dso_local %struct.dma_fence* @amdgpu_sync_get_fence(i32*, i32*) #1

declare dso_local i64 @drm_sched_dependency_optimized(%struct.dma_fence*, %struct.drm_sched_entity*) #1

declare dso_local i32 @amdgpu_sync_fence(i32, i32*, %struct.dma_fence*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @amdgpu_vmid_grab(%struct.amdgpu_vm*, %struct.amdgpu_ring*, i32*, i32*, %struct.amdgpu_job*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

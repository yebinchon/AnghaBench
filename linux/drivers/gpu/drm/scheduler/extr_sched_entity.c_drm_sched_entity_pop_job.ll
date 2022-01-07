; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/scheduler/extr_sched_entity.c_drm_sched_entity_pop_job.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/scheduler/extr_sched_entity.c_drm_sched_entity_pop_job.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_sched_job = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.drm_sched_entity = type { i32, i32, i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.drm_gpu_scheduler* }
%struct.drm_gpu_scheduler = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.drm_sched_job*, %struct.drm_sched_entity*)* }

@ECANCELED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_sched_job* @drm_sched_entity_pop_job(%struct.drm_sched_entity* %0) #0 {
  %2 = alloca %struct.drm_sched_job*, align 8
  %3 = alloca %struct.drm_sched_entity*, align 8
  %4 = alloca %struct.drm_gpu_scheduler*, align 8
  %5 = alloca %struct.drm_sched_job*, align 8
  store %struct.drm_sched_entity* %0, %struct.drm_sched_entity** %3, align 8
  %6 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %3, align 8
  %7 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %6, i32 0, i32 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.drm_gpu_scheduler*, %struct.drm_gpu_scheduler** %9, align 8
  store %struct.drm_gpu_scheduler* %10, %struct.drm_gpu_scheduler** %4, align 8
  %11 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %3, align 8
  %12 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %11, i32 0, i32 0
  %13 = call i32 @spsc_queue_peek(i32* %12)
  %14 = call %struct.drm_sched_job* @to_drm_sched_job(i32 %13)
  store %struct.drm_sched_job* %14, %struct.drm_sched_job** %5, align 8
  %15 = load %struct.drm_sched_job*, %struct.drm_sched_job** %5, align 8
  %16 = icmp ne %struct.drm_sched_job* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store %struct.drm_sched_job* null, %struct.drm_sched_job** %2, align 8
  br label %77

18:                                               ; preds = %1
  br label %19

19:                                               ; preds = %41, %18
  %20 = load %struct.drm_gpu_scheduler*, %struct.drm_gpu_scheduler** %4, align 8
  %21 = getelementptr inbounds %struct.drm_gpu_scheduler, %struct.drm_gpu_scheduler* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32 (%struct.drm_sched_job*, %struct.drm_sched_entity*)*, i32 (%struct.drm_sched_job*, %struct.drm_sched_entity*)** %23, align 8
  %25 = load %struct.drm_sched_job*, %struct.drm_sched_job** %5, align 8
  %26 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %3, align 8
  %27 = call i32 %24(%struct.drm_sched_job* %25, %struct.drm_sched_entity* %26)
  %28 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %3, align 8
  %29 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 8
  %30 = icmp ne i32 %27, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %19
  %32 = load %struct.drm_sched_job*, %struct.drm_sched_job** %5, align 8
  %33 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %3, align 8
  %34 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @trace_drm_sched_job_wait_dep(%struct.drm_sched_job* %32, i32 %35)
  %37 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %3, align 8
  %38 = call i64 @drm_sched_entity_add_dependency_cb(%struct.drm_sched_entity* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  store %struct.drm_sched_job* null, %struct.drm_sched_job** %2, align 8
  br label %77

41:                                               ; preds = %31
  br label %19

42:                                               ; preds = %19
  %43 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %3, align 8
  %44 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %42
  %48 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %3, align 8
  %49 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = call i64 @atomic_read(i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %47
  %54 = load %struct.drm_sched_job*, %struct.drm_sched_job** %5, align 8
  %55 = getelementptr inbounds %struct.drm_sched_job, %struct.drm_sched_job* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* @ECANCELED, align 4
  %59 = sub nsw i32 0, %58
  %60 = call i32 @dma_fence_set_error(i32* %57, i32 %59)
  br label %61

61:                                               ; preds = %53, %47, %42
  %62 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %3, align 8
  %63 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @dma_fence_put(i32 %64)
  %66 = load %struct.drm_sched_job*, %struct.drm_sched_job** %5, align 8
  %67 = getelementptr inbounds %struct.drm_sched_job, %struct.drm_sched_job* %66, i32 0, i32 0
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = call i32 @dma_fence_get(i32* %69)
  %71 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %3, align 8
  %72 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %3, align 8
  %74 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %73, i32 0, i32 0
  %75 = call i32 @spsc_queue_pop(i32* %74)
  %76 = load %struct.drm_sched_job*, %struct.drm_sched_job** %5, align 8
  store %struct.drm_sched_job* %76, %struct.drm_sched_job** %2, align 8
  br label %77

77:                                               ; preds = %61, %40, %17
  %78 = load %struct.drm_sched_job*, %struct.drm_sched_job** %2, align 8
  ret %struct.drm_sched_job* %78
}

declare dso_local %struct.drm_sched_job* @to_drm_sched_job(i32) #1

declare dso_local i32 @spsc_queue_peek(i32*) #1

declare dso_local i32 @trace_drm_sched_job_wait_dep(%struct.drm_sched_job*, i32) #1

declare dso_local i64 @drm_sched_entity_add_dependency_cb(%struct.drm_sched_entity*) #1

declare dso_local i64 @atomic_read(i64) #1

declare dso_local i32 @dma_fence_set_error(i32*, i32) #1

declare dso_local i32 @dma_fence_put(i32) #1

declare dso_local i32 @dma_fence_get(i32*) #1

declare dso_local i32 @spsc_queue_pop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

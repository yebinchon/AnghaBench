; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/scheduler/extr_sched_entity.c_drm_sched_entity_kill_jobs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/scheduler/extr_sched_entity.c_drm_sched_entity_kill_jobs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_sched_entity = type { i32, i32 }
%struct.drm_sched_job = type { i32, %struct.drm_sched_fence* }
%struct.drm_sched_fence = type { i32 }

@ESRCH = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"fence add callback failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_sched_entity*)* @drm_sched_entity_kill_jobs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drm_sched_entity_kill_jobs(%struct.drm_sched_entity* %0) #0 {
  %2 = alloca %struct.drm_sched_entity*, align 8
  %3 = alloca %struct.drm_sched_job*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_sched_fence*, align 8
  store %struct.drm_sched_entity* %0, %struct.drm_sched_entity** %2, align 8
  br label %6

6:                                                ; preds = %53, %27, %1
  %7 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %2, align 8
  %8 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %7, i32 0, i32 1
  %9 = call i32 @spsc_queue_pop(i32* %8)
  %10 = call %struct.drm_sched_job* @to_drm_sched_job(i32 %9)
  store %struct.drm_sched_job* %10, %struct.drm_sched_job** %3, align 8
  %11 = icmp ne %struct.drm_sched_job* %10, null
  br i1 %11, label %12, label %54

12:                                               ; preds = %6
  %13 = load %struct.drm_sched_job*, %struct.drm_sched_job** %3, align 8
  %14 = getelementptr inbounds %struct.drm_sched_job, %struct.drm_sched_job* %13, i32 0, i32 1
  %15 = load %struct.drm_sched_fence*, %struct.drm_sched_fence** %14, align 8
  store %struct.drm_sched_fence* %15, %struct.drm_sched_fence** %5, align 8
  %16 = load %struct.drm_sched_fence*, %struct.drm_sched_fence** %5, align 8
  %17 = call i32 @drm_sched_fence_scheduled(%struct.drm_sched_fence* %16)
  %18 = load %struct.drm_sched_fence*, %struct.drm_sched_fence** %5, align 8
  %19 = getelementptr inbounds %struct.drm_sched_fence, %struct.drm_sched_fence* %18, i32 0, i32 0
  %20 = load i32, i32* @ESRCH, align 4
  %21 = sub nsw i32 0, %20
  %22 = call i32 @dma_fence_set_error(i32* %19, i32 %21)
  %23 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %2, align 8
  %24 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %12
  %28 = load %struct.drm_sched_job*, %struct.drm_sched_job** %3, align 8
  %29 = getelementptr inbounds %struct.drm_sched_job, %struct.drm_sched_job* %28, i32 0, i32 0
  %30 = call i32 @drm_sched_entity_kill_jobs_cb(i32* null, i32* %29)
  br label %6

31:                                               ; preds = %12
  %32 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %2, align 8
  %33 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.drm_sched_job*, %struct.drm_sched_job** %3, align 8
  %36 = getelementptr inbounds %struct.drm_sched_job, %struct.drm_sched_job* %35, i32 0, i32 0
  %37 = call i32 @dma_fence_add_callback(i32 %34, i32* %36, i32 (i32*, i32*)* @drm_sched_entity_kill_jobs_cb)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @ENOENT, align 4
  %40 = sub nsw i32 0, %39
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %31
  %43 = load %struct.drm_sched_job*, %struct.drm_sched_job** %3, align 8
  %44 = getelementptr inbounds %struct.drm_sched_job, %struct.drm_sched_job* %43, i32 0, i32 0
  %45 = call i32 @drm_sched_entity_kill_jobs_cb(i32* null, i32* %44)
  br label %53

46:                                               ; preds = %31
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %49, %46
  br label %53

53:                                               ; preds = %52, %42
  br label %6

54:                                               ; preds = %6
  ret void
}

declare dso_local %struct.drm_sched_job* @to_drm_sched_job(i32) #1

declare dso_local i32 @spsc_queue_pop(i32*) #1

declare dso_local i32 @drm_sched_fence_scheduled(%struct.drm_sched_fence*) #1

declare dso_local i32 @dma_fence_set_error(i32*, i32) #1

declare dso_local i32 @drm_sched_entity_kill_jobs_cb(i32*, i32*) #1

declare dso_local i32 @dma_fence_add_callback(i32, i32*, i32 (i32*, i32*)*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

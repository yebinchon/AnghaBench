; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/scheduler/extr_sched_main.c_drm_sched_job_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/scheduler/extr_sched_main.c_drm_sched_job_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_sched_job = type { i32, i32, i32, %struct.TYPE_2__*, %struct.drm_sched_entity*, %struct.drm_gpu_scheduler* }
%struct.TYPE_2__ = type { %struct.drm_gpu_scheduler* }
%struct.drm_gpu_scheduler = type { i32, i32 }
%struct.drm_sched_entity = type { %struct.TYPE_2__* }

@ENOENT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_sched_job_init(%struct.drm_sched_job* %0, %struct.drm_sched_entity* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_sched_job*, align 8
  %6 = alloca %struct.drm_sched_entity*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.drm_gpu_scheduler*, align 8
  store %struct.drm_sched_job* %0, %struct.drm_sched_job** %5, align 8
  store %struct.drm_sched_entity* %1, %struct.drm_sched_entity** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %6, align 8
  %10 = call i32 @drm_sched_entity_select_rq(%struct.drm_sched_entity* %9)
  %11 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %6, align 8
  %12 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOENT, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %62

18:                                               ; preds = %3
  %19 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %6, align 8
  %20 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.drm_gpu_scheduler*, %struct.drm_gpu_scheduler** %22, align 8
  store %struct.drm_gpu_scheduler* %23, %struct.drm_gpu_scheduler** %8, align 8
  %24 = load %struct.drm_gpu_scheduler*, %struct.drm_gpu_scheduler** %8, align 8
  %25 = load %struct.drm_sched_job*, %struct.drm_sched_job** %5, align 8
  %26 = getelementptr inbounds %struct.drm_sched_job, %struct.drm_sched_job* %25, i32 0, i32 5
  store %struct.drm_gpu_scheduler* %24, %struct.drm_gpu_scheduler** %26, align 8
  %27 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %6, align 8
  %28 = load %struct.drm_sched_job*, %struct.drm_sched_job** %5, align 8
  %29 = getelementptr inbounds %struct.drm_sched_job, %struct.drm_sched_job* %28, i32 0, i32 4
  store %struct.drm_sched_entity* %27, %struct.drm_sched_entity** %29, align 8
  %30 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %6, align 8
  %31 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load %struct.drm_gpu_scheduler*, %struct.drm_gpu_scheduler** %8, align 8
  %34 = getelementptr inbounds %struct.drm_gpu_scheduler, %struct.drm_gpu_scheduler* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = sub i64 0, %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %37
  %39 = load %struct.drm_sched_job*, %struct.drm_sched_job** %5, align 8
  %40 = getelementptr inbounds %struct.drm_sched_job, %struct.drm_sched_job* %39, i32 0, i32 3
  store %struct.TYPE_2__* %38, %struct.TYPE_2__** %40, align 8
  %41 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %6, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 @drm_sched_fence_create(%struct.drm_sched_entity* %41, i8* %42)
  %44 = load %struct.drm_sched_job*, %struct.drm_sched_job** %5, align 8
  %45 = getelementptr inbounds %struct.drm_sched_job, %struct.drm_sched_job* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load %struct.drm_sched_job*, %struct.drm_sched_job** %5, align 8
  %47 = getelementptr inbounds %struct.drm_sched_job, %struct.drm_sched_job* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %18
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %62

53:                                               ; preds = %18
  %54 = load %struct.drm_gpu_scheduler*, %struct.drm_gpu_scheduler** %8, align 8
  %55 = getelementptr inbounds %struct.drm_gpu_scheduler, %struct.drm_gpu_scheduler* %54, i32 0, i32 1
  %56 = call i32 @atomic64_inc_return(i32* %55)
  %57 = load %struct.drm_sched_job*, %struct.drm_sched_job** %5, align 8
  %58 = getelementptr inbounds %struct.drm_sched_job, %struct.drm_sched_job* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.drm_sched_job*, %struct.drm_sched_job** %5, align 8
  %60 = getelementptr inbounds %struct.drm_sched_job, %struct.drm_sched_job* %59, i32 0, i32 0
  %61 = call i32 @INIT_LIST_HEAD(i32* %60)
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %53, %50, %15
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @drm_sched_entity_select_rq(%struct.drm_sched_entity*) #1

declare dso_local i32 @drm_sched_fence_create(%struct.drm_sched_entity*, i8*) #1

declare dso_local i32 @atomic64_inc_return(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/scheduler/extr_sched_entity.c_drm_sched_entity_push_job.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/scheduler/extr_sched_entity.c_drm_sched_entity_push_job.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.drm_sched_job = type { i32 }
%struct.drm_sched_entity = type { %struct.TYPE_5__*, i32, i64, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@current = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [35 x i8] c"Trying to push to a killed entity\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_sched_entity_push_job(%struct.drm_sched_job* %0, %struct.drm_sched_entity* %1) #0 {
  %3 = alloca %struct.drm_sched_job*, align 8
  %4 = alloca %struct.drm_sched_entity*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_sched_job* %0, %struct.drm_sched_job** %3, align 8
  store %struct.drm_sched_entity* %1, %struct.drm_sched_entity** %4, align 8
  %6 = load %struct.drm_sched_job*, %struct.drm_sched_job** %3, align 8
  %7 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %4, align 8
  %8 = call i32 @trace_drm_sched_job(%struct.drm_sched_job* %6, %struct.drm_sched_entity* %7)
  %9 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %4, align 8
  %10 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = call i32 @atomic_inc(i32* %14)
  %16 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %4, align 8
  %17 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @WRITE_ONCE(i32 %18, i32 %21)
  %23 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %4, align 8
  %24 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %23, i32 0, i32 3
  %25 = load %struct.drm_sched_job*, %struct.drm_sched_job** %3, align 8
  %26 = getelementptr inbounds %struct.drm_sched_job, %struct.drm_sched_job* %25, i32 0, i32 0
  %27 = call i32 @spsc_queue_push(i32* %24, i32* %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %58

30:                                               ; preds = %2
  %31 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %4, align 8
  %32 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %31, i32 0, i32 1
  %33 = call i32 @spin_lock(i32* %32)
  %34 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %4, align 8
  %35 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %30
  %39 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %4, align 8
  %40 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %39, i32 0, i32 1
  %41 = call i32 @spin_unlock(i32* %40)
  %42 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %58

43:                                               ; preds = %30
  %44 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %4, align 8
  %45 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %44, i32 0, i32 0
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %4, align 8
  %48 = call i32 @drm_sched_rq_add_entity(%struct.TYPE_5__* %46, %struct.drm_sched_entity* %47)
  %49 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %4, align 8
  %50 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %49, i32 0, i32 1
  %51 = call i32 @spin_unlock(i32* %50)
  %52 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %4, align 8
  %53 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %52, i32 0, i32 0
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = call i32 @drm_sched_wakeup(%struct.TYPE_4__* %56)
  br label %58

58:                                               ; preds = %38, %43, %2
  ret void
}

declare dso_local i32 @trace_drm_sched_job(%struct.drm_sched_job*, %struct.drm_sched_entity*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @spsc_queue_push(i32*, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @drm_sched_rq_add_entity(%struct.TYPE_5__*, %struct.drm_sched_entity*) #1

declare dso_local i32 @drm_sched_wakeup(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

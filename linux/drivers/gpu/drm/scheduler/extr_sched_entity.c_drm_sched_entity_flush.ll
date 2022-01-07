; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/scheduler/extr_sched_entity.c_drm_sched_entity_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/scheduler/extr_sched_entity.c_drm_sched_entity_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, %struct.task_struct* }
%struct.task_struct = type { i32 }
%struct.drm_sched_entity = type { i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { %struct.drm_gpu_scheduler* }
%struct.drm_gpu_scheduler = type { i32 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@PF_EXITING = common dso_local global i32 0, align 4
@SIGKILL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @drm_sched_entity_flush(%struct.drm_sched_entity* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.drm_sched_entity*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.drm_gpu_scheduler*, align 8
  %7 = alloca %struct.task_struct*, align 8
  %8 = alloca i64, align 8
  store %struct.drm_sched_entity* %0, %struct.drm_sched_entity** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  store i64 %9, i64* %8, align 8
  %10 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %4, align 8
  %11 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %10, i32 0, i32 2
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = icmp ne %struct.TYPE_3__* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %90

15:                                               ; preds = %2
  %16 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %4, align 8
  %17 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %16, i32 0, i32 2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.drm_gpu_scheduler*, %struct.drm_gpu_scheduler** %19, align 8
  store %struct.drm_gpu_scheduler* %20, %struct.drm_gpu_scheduler** %6, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @PF_EXITING, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %15
  %28 = load i64, i64* %5, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load %struct.drm_gpu_scheduler*, %struct.drm_gpu_scheduler** %6, align 8
  %32 = getelementptr inbounds %struct.drm_gpu_scheduler, %struct.drm_gpu_scheduler* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %4, align 8
  %35 = call i32 @drm_sched_entity_is_idle(%struct.drm_sched_entity* %34)
  %36 = load i64, i64* %5, align 8
  %37 = call i64 @wait_event_timeout(i32 %33, i32 %35, i64 %36)
  store i64 %37, i64* %8, align 8
  br label %38

38:                                               ; preds = %30, %27
  br label %46

39:                                               ; preds = %15
  %40 = load %struct.drm_gpu_scheduler*, %struct.drm_gpu_scheduler** %6, align 8
  %41 = getelementptr inbounds %struct.drm_gpu_scheduler, %struct.drm_gpu_scheduler* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %4, align 8
  %44 = call i32 @drm_sched_entity_is_idle(%struct.drm_sched_entity* %43)
  %45 = call i32 @wait_event_killable(i32 %42, i32 %44)
  br label %46

46:                                               ; preds = %39, %38
  %47 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %4, align 8
  %48 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %47, i32 0, i32 3
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  %51 = load %struct.task_struct*, %struct.task_struct** %50, align 8
  %52 = call %struct.task_struct* @cmpxchg(i32* %48, %struct.task_struct* %51, i32* null)
  store %struct.task_struct* %52, %struct.task_struct** %7, align 8
  %53 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %54 = icmp ne %struct.task_struct* %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %46
  %56 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  %59 = load %struct.task_struct*, %struct.task_struct** %58, align 8
  %60 = icmp eq %struct.task_struct* %56, %59
  br i1 %60, label %61, label %88

61:                                               ; preds = %55, %46
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @PF_EXITING, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %88

68:                                               ; preds = %61
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @SIGKILL, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %88

74:                                               ; preds = %68
  %75 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %4, align 8
  %76 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %75, i32 0, i32 1
  %77 = call i32 @spin_lock(i32* %76)
  %78 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %4, align 8
  %79 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %78, i32 0, i32 0
  store i32 1, i32* %79, align 8
  %80 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %4, align 8
  %81 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %80, i32 0, i32 2
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %4, align 8
  %84 = call i32 @drm_sched_rq_remove_entity(%struct.TYPE_3__* %82, %struct.drm_sched_entity* %83)
  %85 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %4, align 8
  %86 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %85, i32 0, i32 1
  %87 = call i32 @spin_unlock(i32* %86)
  br label %88

88:                                               ; preds = %74, %68, %61, %55
  %89 = load i64, i64* %8, align 8
  store i64 %89, i64* %3, align 8
  br label %90

90:                                               ; preds = %88, %14
  %91 = load i64, i64* %3, align 8
  ret i64 %91
}

declare dso_local i64 @wait_event_timeout(i32, i32, i64) #1

declare dso_local i32 @drm_sched_entity_is_idle(%struct.drm_sched_entity*) #1

declare dso_local i32 @wait_event_killable(i32, i32) #1

declare dso_local %struct.task_struct* @cmpxchg(i32*, %struct.task_struct*, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @drm_sched_rq_remove_entity(%struct.TYPE_3__*, %struct.drm_sched_entity*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

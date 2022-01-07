; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/scheduler/extr_sched_main.c_drm_sched_rq_remove_entity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/scheduler/extr_sched_main.c_drm_sched_rq_remove_entity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_sched_rq = type { i32, %struct.drm_sched_entity* }
%struct.drm_sched_entity = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_sched_rq_remove_entity(%struct.drm_sched_rq* %0, %struct.drm_sched_entity* %1) #0 {
  %3 = alloca %struct.drm_sched_rq*, align 8
  %4 = alloca %struct.drm_sched_entity*, align 8
  store %struct.drm_sched_rq* %0, %struct.drm_sched_rq** %3, align 8
  store %struct.drm_sched_entity* %1, %struct.drm_sched_entity** %4, align 8
  %5 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %4, align 8
  %6 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %5, i32 0, i32 0
  %7 = call i64 @list_empty(i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %29

10:                                               ; preds = %2
  %11 = load %struct.drm_sched_rq*, %struct.drm_sched_rq** %3, align 8
  %12 = getelementptr inbounds %struct.drm_sched_rq, %struct.drm_sched_rq* %11, i32 0, i32 0
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %4, align 8
  %15 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %14, i32 0, i32 0
  %16 = call i32 @list_del_init(i32* %15)
  %17 = load %struct.drm_sched_rq*, %struct.drm_sched_rq** %3, align 8
  %18 = getelementptr inbounds %struct.drm_sched_rq, %struct.drm_sched_rq* %17, i32 0, i32 1
  %19 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %18, align 8
  %20 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %4, align 8
  %21 = icmp eq %struct.drm_sched_entity* %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %10
  %23 = load %struct.drm_sched_rq*, %struct.drm_sched_rq** %3, align 8
  %24 = getelementptr inbounds %struct.drm_sched_rq, %struct.drm_sched_rq* %23, i32 0, i32 1
  store %struct.drm_sched_entity* null, %struct.drm_sched_entity** %24, align 8
  br label %25

25:                                               ; preds = %22, %10
  %26 = load %struct.drm_sched_rq*, %struct.drm_sched_rq** %3, align 8
  %27 = getelementptr inbounds %struct.drm_sched_rq, %struct.drm_sched_rq* %26, i32 0, i32 0
  %28 = call i32 @spin_unlock(i32* %27)
  br label %29

29:                                               ; preds = %25, %9
  ret void
}

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

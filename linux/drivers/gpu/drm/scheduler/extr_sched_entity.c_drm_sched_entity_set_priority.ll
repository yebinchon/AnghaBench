; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/scheduler/extr_sched_entity.c_drm_sched_entity_set_priority.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/scheduler/extr_sched_entity.c_drm_sched_entity_set_priority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_sched_entity = type { i32, i32, i64, i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_sched_entity_set_priority(%struct.drm_sched_entity* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_sched_entity*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.drm_sched_entity* %0, %struct.drm_sched_entity** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %3, align 8
  %7 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %6, i32 0, i32 1
  %8 = call i32 @spin_lock(i32* %7)
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %24, %2
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %3, align 8
  %12 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ult i32 %10, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %9
  %16 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %3, align 8
  %17 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %16, i32 0, i32 3
  %18 = load i64*, i64** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @drm_sched_entity_set_rq_priority(i64* %21, i32 %22)
  br label %24

24:                                               ; preds = %15
  %25 = load i32, i32* %5, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %5, align 4
  br label %9

27:                                               ; preds = %9
  %28 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %3, align 8
  %29 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %27
  %33 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %3, align 8
  %34 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %3, align 8
  %37 = call i32 @drm_sched_rq_remove_entity(i64 %35, %struct.drm_sched_entity* %36)
  %38 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %3, align 8
  %39 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %38, i32 0, i32 2
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @drm_sched_entity_set_rq_priority(i64* %39, i32 %40)
  %42 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %3, align 8
  %43 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %3, align 8
  %46 = call i32 @drm_sched_rq_add_entity(i64 %44, %struct.drm_sched_entity* %45)
  br label %47

47:                                               ; preds = %32, %27
  %48 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %3, align 8
  %49 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %48, i32 0, i32 1
  %50 = call i32 @spin_unlock(i32* %49)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @drm_sched_entity_set_rq_priority(i64*, i32) #1

declare dso_local i32 @drm_sched_rq_remove_entity(i64, %struct.drm_sched_entity*) #1

declare dso_local i32 @drm_sched_rq_add_entity(i64, %struct.drm_sched_entity*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

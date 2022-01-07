; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/scheduler/extr_sched_entity.c_drm_sched_entity_select_rq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/scheduler/extr_sched_entity.c_drm_sched_entity_select_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_sched_entity = type { i32, i32, %struct.drm_sched_rq*, i32, i32 }
%struct.drm_sched_rq = type { i32 }
%struct.dma_fence = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_sched_entity_select_rq(%struct.drm_sched_entity* %0) #0 {
  %2 = alloca %struct.drm_sched_entity*, align 8
  %3 = alloca %struct.dma_fence*, align 8
  %4 = alloca %struct.drm_sched_rq*, align 8
  store %struct.drm_sched_entity* %0, %struct.drm_sched_entity** %2, align 8
  %5 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %2, align 8
  %6 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %5, i32 0, i32 4
  %7 = call i64 @spsc_queue_count(i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %2, align 8
  %11 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp sle i32 %12, 1
  br i1 %13, label %14, label %15

14:                                               ; preds = %9, %1
  br label %51

15:                                               ; preds = %9
  %16 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %2, align 8
  %17 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.dma_fence* @READ_ONCE(i32 %18)
  store %struct.dma_fence* %19, %struct.dma_fence** %3, align 8
  %20 = load %struct.dma_fence*, %struct.dma_fence** %3, align 8
  %21 = icmp ne %struct.dma_fence* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %15
  %23 = load %struct.dma_fence*, %struct.dma_fence** %3, align 8
  %24 = call i32 @dma_fence_is_signaled(%struct.dma_fence* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  br label %51

27:                                               ; preds = %22, %15
  %28 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %2, align 8
  %29 = call %struct.drm_sched_rq* @drm_sched_entity_get_free_sched(%struct.drm_sched_entity* %28)
  store %struct.drm_sched_rq* %29, %struct.drm_sched_rq** %4, align 8
  %30 = load %struct.drm_sched_rq*, %struct.drm_sched_rq** %4, align 8
  %31 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %2, align 8
  %32 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %31, i32 0, i32 2
  %33 = load %struct.drm_sched_rq*, %struct.drm_sched_rq** %32, align 8
  %34 = icmp eq %struct.drm_sched_rq* %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %51

36:                                               ; preds = %27
  %37 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %2, align 8
  %38 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %37, i32 0, i32 1
  %39 = call i32 @spin_lock(i32* %38)
  %40 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %2, align 8
  %41 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %40, i32 0, i32 2
  %42 = load %struct.drm_sched_rq*, %struct.drm_sched_rq** %41, align 8
  %43 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %2, align 8
  %44 = call i32 @drm_sched_rq_remove_entity(%struct.drm_sched_rq* %42, %struct.drm_sched_entity* %43)
  %45 = load %struct.drm_sched_rq*, %struct.drm_sched_rq** %4, align 8
  %46 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %2, align 8
  %47 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %46, i32 0, i32 2
  store %struct.drm_sched_rq* %45, %struct.drm_sched_rq** %47, align 8
  %48 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %2, align 8
  %49 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %48, i32 0, i32 1
  %50 = call i32 @spin_unlock(i32* %49)
  br label %51

51:                                               ; preds = %36, %35, %26, %14
  ret void
}

declare dso_local i64 @spsc_queue_count(i32*) #1

declare dso_local %struct.dma_fence* @READ_ONCE(i32) #1

declare dso_local i32 @dma_fence_is_signaled(%struct.dma_fence*) #1

declare dso_local %struct.drm_sched_rq* @drm_sched_entity_get_free_sched(%struct.drm_sched_entity*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @drm_sched_rq_remove_entity(%struct.drm_sched_rq*, %struct.drm_sched_entity*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

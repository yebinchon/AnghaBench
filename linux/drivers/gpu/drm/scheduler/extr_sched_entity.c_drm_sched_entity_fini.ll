; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/scheduler/extr_sched_entity.c_drm_sched_entity_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/scheduler/extr_sched_entity.c_drm_sched_entity_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_sched_entity = type { i32, i32*, i32*, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.drm_gpu_scheduler* }
%struct.drm_gpu_scheduler = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_sched_entity_fini(%struct.drm_sched_entity* %0) #0 {
  %2 = alloca %struct.drm_sched_entity*, align 8
  %3 = alloca %struct.drm_gpu_scheduler*, align 8
  store %struct.drm_sched_entity* %0, %struct.drm_sched_entity** %2, align 8
  store %struct.drm_gpu_scheduler* null, %struct.drm_gpu_scheduler** %3, align 8
  %4 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %2, align 8
  %5 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %4, i32 0, i32 5
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = icmp ne %struct.TYPE_2__* %6, null
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %2, align 8
  %10 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %9, i32 0, i32 5
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.drm_gpu_scheduler*, %struct.drm_gpu_scheduler** %12, align 8
  store %struct.drm_gpu_scheduler* %13, %struct.drm_gpu_scheduler** %3, align 8
  %14 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %2, align 8
  %15 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %14, i32 0, i32 5
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %2, align 8
  %18 = call i32 @drm_sched_rq_remove_entity(%struct.TYPE_2__* %16, %struct.drm_sched_entity* %17)
  br label %19

19:                                               ; preds = %8, %1
  %20 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %2, align 8
  %21 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %20, i32 0, i32 4
  %22 = call i64 @spsc_queue_count(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %57

24:                                               ; preds = %19
  %25 = load %struct.drm_gpu_scheduler*, %struct.drm_gpu_scheduler** %3, align 8
  %26 = icmp ne %struct.drm_gpu_scheduler* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %24
  %28 = load %struct.drm_gpu_scheduler*, %struct.drm_gpu_scheduler** %3, align 8
  %29 = getelementptr inbounds %struct.drm_gpu_scheduler, %struct.drm_gpu_scheduler* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @kthread_park(i32 %30)
  %32 = load %struct.drm_gpu_scheduler*, %struct.drm_gpu_scheduler** %3, align 8
  %33 = getelementptr inbounds %struct.drm_gpu_scheduler, %struct.drm_gpu_scheduler* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @kthread_unpark(i32 %34)
  br label %36

36:                                               ; preds = %27, %24
  %37 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %2, align 8
  %38 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %54

41:                                               ; preds = %36
  %42 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %2, align 8
  %43 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %2, align 8
  %46 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %45, i32 0, i32 3
  %47 = call i32 @dma_fence_remove_callback(i32* %44, i32* %46)
  %48 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %2, align 8
  %49 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @dma_fence_put(i32* %50)
  %52 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %2, align 8
  %53 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %52, i32 0, i32 2
  store i32* null, i32** %53, align 8
  br label %54

54:                                               ; preds = %41, %36
  %55 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %2, align 8
  %56 = call i32 @drm_sched_entity_kill_jobs(%struct.drm_sched_entity* %55)
  br label %57

57:                                               ; preds = %54, %19
  %58 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %2, align 8
  %59 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @dma_fence_put(i32* %60)
  %62 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %2, align 8
  %63 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %62, i32 0, i32 1
  store i32* null, i32** %63, align 8
  %64 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %2, align 8
  %65 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @kfree(i32 %66)
  ret void
}

declare dso_local i32 @drm_sched_rq_remove_entity(%struct.TYPE_2__*, %struct.drm_sched_entity*) #1

declare dso_local i64 @spsc_queue_count(i32*) #1

declare dso_local i32 @kthread_park(i32) #1

declare dso_local i32 @kthread_unpark(i32) #1

declare dso_local i32 @dma_fence_remove_callback(i32*, i32*) #1

declare dso_local i32 @dma_fence_put(i32*) #1

declare dso_local i32 @drm_sched_entity_kill_jobs(%struct.drm_sched_entity*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

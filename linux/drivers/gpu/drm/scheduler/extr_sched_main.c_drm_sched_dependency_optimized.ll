; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/scheduler/extr_sched_main.c_drm_sched_dependency_optimized.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/scheduler/extr_sched_main.c_drm_sched_dependency_optimized.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_fence = type { i64 }
%struct.drm_sched_entity = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.drm_gpu_scheduler* }
%struct.drm_gpu_scheduler = type { i32 }
%struct.drm_sched_fence = type { %struct.drm_gpu_scheduler* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_sched_dependency_optimized(%struct.dma_fence* %0, %struct.drm_sched_entity* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dma_fence*, align 8
  %5 = alloca %struct.drm_sched_entity*, align 8
  %6 = alloca %struct.drm_gpu_scheduler*, align 8
  %7 = alloca %struct.drm_sched_fence*, align 8
  store %struct.dma_fence* %0, %struct.dma_fence** %4, align 8
  store %struct.drm_sched_entity* %1, %struct.drm_sched_entity** %5, align 8
  %8 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %5, align 8
  %9 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.drm_gpu_scheduler*, %struct.drm_gpu_scheduler** %11, align 8
  store %struct.drm_gpu_scheduler* %12, %struct.drm_gpu_scheduler** %6, align 8
  %13 = load %struct.dma_fence*, %struct.dma_fence** %4, align 8
  %14 = icmp ne %struct.dma_fence* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.dma_fence*, %struct.dma_fence** %4, align 8
  %17 = call i64 @dma_fence_is_signaled(%struct.dma_fence* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %2
  store i32 0, i32* %3, align 4
  br label %42

20:                                               ; preds = %15
  %21 = load %struct.dma_fence*, %struct.dma_fence** %4, align 8
  %22 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %5, align 8
  %25 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i32 1, i32* %3, align 4
  br label %42

29:                                               ; preds = %20
  %30 = load %struct.dma_fence*, %struct.dma_fence** %4, align 8
  %31 = call %struct.drm_sched_fence* @to_drm_sched_fence(%struct.dma_fence* %30)
  store %struct.drm_sched_fence* %31, %struct.drm_sched_fence** %7, align 8
  %32 = load %struct.drm_sched_fence*, %struct.drm_sched_fence** %7, align 8
  %33 = icmp ne %struct.drm_sched_fence* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load %struct.drm_sched_fence*, %struct.drm_sched_fence** %7, align 8
  %36 = getelementptr inbounds %struct.drm_sched_fence, %struct.drm_sched_fence* %35, i32 0, i32 0
  %37 = load %struct.drm_gpu_scheduler*, %struct.drm_gpu_scheduler** %36, align 8
  %38 = load %struct.drm_gpu_scheduler*, %struct.drm_gpu_scheduler** %6, align 8
  %39 = icmp eq %struct.drm_gpu_scheduler* %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 1, i32* %3, align 4
  br label %42

41:                                               ; preds = %34, %29
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %40, %28, %19
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i64 @dma_fence_is_signaled(%struct.dma_fence*) #1

declare dso_local %struct.drm_sched_fence* @to_drm_sched_fence(%struct.dma_fence*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/scheduler/extr_sched_entity.c_drm_sched_entity_add_dependency_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/scheduler/extr_sched_entity.c_drm_sched_entity_add_dependency_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_sched_entity = type { i64, %struct.dma_fence*, i32, %struct.TYPE_2__* }
%struct.dma_fence = type { i64 }
%struct.TYPE_2__ = type { %struct.drm_gpu_scheduler* }
%struct.drm_gpu_scheduler = type { i32 }
%struct.drm_sched_fence = type { i32, %struct.drm_gpu_scheduler* }

@drm_sched_entity_clear_dep = common dso_local global i32 0, align 4
@drm_sched_entity_wakeup = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_sched_entity*)* @drm_sched_entity_add_dependency_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_sched_entity_add_dependency_cb(%struct.drm_sched_entity* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_sched_entity*, align 8
  %4 = alloca %struct.drm_gpu_scheduler*, align 8
  %5 = alloca %struct.dma_fence*, align 8
  %6 = alloca %struct.drm_sched_fence*, align 8
  store %struct.drm_sched_entity* %0, %struct.drm_sched_entity** %3, align 8
  %7 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %3, align 8
  %8 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %7, i32 0, i32 3
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.drm_gpu_scheduler*, %struct.drm_gpu_scheduler** %10, align 8
  store %struct.drm_gpu_scheduler* %11, %struct.drm_gpu_scheduler** %4, align 8
  %12 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %3, align 8
  %13 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %12, i32 0, i32 1
  %14 = load %struct.dma_fence*, %struct.dma_fence** %13, align 8
  store %struct.dma_fence* %14, %struct.dma_fence** %5, align 8
  %15 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %16 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %3, align 8
  %19 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %17, %20
  br i1 %21, label %31, label %22

22:                                               ; preds = %1
  %23 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %24 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %3, align 8
  %27 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, 1
  %30 = icmp eq i64 %25, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %22, %1
  %32 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %3, align 8
  %33 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %32, i32 0, i32 1
  %34 = load %struct.dma_fence*, %struct.dma_fence** %33, align 8
  %35 = call i32 @dma_fence_put(%struct.dma_fence* %34)
  store i32 0, i32* %2, align 4
  br label %83

36:                                               ; preds = %22
  %37 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %38 = call %struct.drm_sched_fence* @to_drm_sched_fence(%struct.dma_fence* %37)
  store %struct.drm_sched_fence* %38, %struct.drm_sched_fence** %6, align 8
  %39 = load %struct.drm_sched_fence*, %struct.drm_sched_fence** %6, align 8
  %40 = icmp ne %struct.drm_sched_fence* %39, null
  br i1 %40, label %41, label %68

41:                                               ; preds = %36
  %42 = load %struct.drm_sched_fence*, %struct.drm_sched_fence** %6, align 8
  %43 = getelementptr inbounds %struct.drm_sched_fence, %struct.drm_sched_fence* %42, i32 0, i32 1
  %44 = load %struct.drm_gpu_scheduler*, %struct.drm_gpu_scheduler** %43, align 8
  %45 = load %struct.drm_gpu_scheduler*, %struct.drm_gpu_scheduler** %4, align 8
  %46 = icmp eq %struct.drm_gpu_scheduler* %44, %45
  br i1 %46, label %47, label %68

47:                                               ; preds = %41
  %48 = load %struct.drm_sched_fence*, %struct.drm_sched_fence** %6, align 8
  %49 = getelementptr inbounds %struct.drm_sched_fence, %struct.drm_sched_fence* %48, i32 0, i32 0
  %50 = call %struct.dma_fence* @dma_fence_get(i32* %49)
  store %struct.dma_fence* %50, %struct.dma_fence** %5, align 8
  %51 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %3, align 8
  %52 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %51, i32 0, i32 1
  %53 = load %struct.dma_fence*, %struct.dma_fence** %52, align 8
  %54 = call i32 @dma_fence_put(%struct.dma_fence* %53)
  %55 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %56 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %3, align 8
  %57 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %56, i32 0, i32 1
  store %struct.dma_fence* %55, %struct.dma_fence** %57, align 8
  %58 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %59 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %3, align 8
  %60 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %59, i32 0, i32 2
  %61 = load i32, i32* @drm_sched_entity_clear_dep, align 4
  %62 = call i32 @dma_fence_add_callback(%struct.dma_fence* %58, i32* %60, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %47
  store i32 1, i32* %2, align 4
  br label %83

65:                                               ; preds = %47
  %66 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %67 = call i32 @dma_fence_put(%struct.dma_fence* %66)
  store i32 0, i32* %2, align 4
  br label %83

68:                                               ; preds = %41, %36
  %69 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %3, align 8
  %70 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %69, i32 0, i32 1
  %71 = load %struct.dma_fence*, %struct.dma_fence** %70, align 8
  %72 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %3, align 8
  %73 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %72, i32 0, i32 2
  %74 = load i32, i32* @drm_sched_entity_wakeup, align 4
  %75 = call i32 @dma_fence_add_callback(%struct.dma_fence* %71, i32* %73, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %68
  store i32 1, i32* %2, align 4
  br label %83

78:                                               ; preds = %68
  %79 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %3, align 8
  %80 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %79, i32 0, i32 1
  %81 = load %struct.dma_fence*, %struct.dma_fence** %80, align 8
  %82 = call i32 @dma_fence_put(%struct.dma_fence* %81)
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %78, %77, %65, %64, %31
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #1

declare dso_local %struct.drm_sched_fence* @to_drm_sched_fence(%struct.dma_fence*) #1

declare dso_local %struct.dma_fence* @dma_fence_get(i32*) #1

declare dso_local i32 @dma_fence_add_callback(%struct.dma_fence*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

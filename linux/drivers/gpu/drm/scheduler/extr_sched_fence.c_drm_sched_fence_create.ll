; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/scheduler/extr_sched_fence.c_drm_sched_fence_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/scheduler/extr_sched_fence.c_drm_sched_fence_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_sched_fence = type { i32, i32, i32, i32, i8* }
%struct.drm_sched_entity = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@sched_fence_slab = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@drm_sched_fence_ops_scheduled = common dso_local global i32 0, align 4
@drm_sched_fence_ops_finished = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_sched_fence* @drm_sched_fence_create(%struct.drm_sched_entity* %0, i8* %1) #0 {
  %3 = alloca %struct.drm_sched_fence*, align 8
  %4 = alloca %struct.drm_sched_entity*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.drm_sched_fence*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_sched_entity* %0, %struct.drm_sched_entity** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.drm_sched_fence* null, %struct.drm_sched_fence** %6, align 8
  %8 = load i32, i32* @sched_fence_slab, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.drm_sched_fence* @kmem_cache_zalloc(i32 %8, i32 %9)
  store %struct.drm_sched_fence* %10, %struct.drm_sched_fence** %6, align 8
  %11 = load %struct.drm_sched_fence*, %struct.drm_sched_fence** %6, align 8
  %12 = icmp eq %struct.drm_sched_fence* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store %struct.drm_sched_fence* null, %struct.drm_sched_fence** %3, align 8
  br label %51

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8
  %16 = load %struct.drm_sched_fence*, %struct.drm_sched_fence** %6, align 8
  %17 = getelementptr inbounds %struct.drm_sched_fence, %struct.drm_sched_fence* %16, i32 0, i32 4
  store i8* %15, i8** %17, align 8
  %18 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %4, align 8
  %19 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.drm_sched_fence*, %struct.drm_sched_fence** %6, align 8
  %24 = getelementptr inbounds %struct.drm_sched_fence, %struct.drm_sched_fence* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  %25 = load %struct.drm_sched_fence*, %struct.drm_sched_fence** %6, align 8
  %26 = getelementptr inbounds %struct.drm_sched_fence, %struct.drm_sched_fence* %25, i32 0, i32 0
  %27 = call i32 @spin_lock_init(i32* %26)
  %28 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %4, align 8
  %29 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %28, i32 0, i32 1
  %30 = call i32 @atomic_inc_return(i32* %29)
  store i32 %30, i32* %7, align 4
  %31 = load %struct.drm_sched_fence*, %struct.drm_sched_fence** %6, align 8
  %32 = getelementptr inbounds %struct.drm_sched_fence, %struct.drm_sched_fence* %31, i32 0, i32 2
  %33 = load %struct.drm_sched_fence*, %struct.drm_sched_fence** %6, align 8
  %34 = getelementptr inbounds %struct.drm_sched_fence, %struct.drm_sched_fence* %33, i32 0, i32 0
  %35 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %4, align 8
  %36 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @dma_fence_init(i32* %32, i32* @drm_sched_fence_ops_scheduled, i32* %34, i64 %37, i32 %38)
  %40 = load %struct.drm_sched_fence*, %struct.drm_sched_fence** %6, align 8
  %41 = getelementptr inbounds %struct.drm_sched_fence, %struct.drm_sched_fence* %40, i32 0, i32 1
  %42 = load %struct.drm_sched_fence*, %struct.drm_sched_fence** %6, align 8
  %43 = getelementptr inbounds %struct.drm_sched_fence, %struct.drm_sched_fence* %42, i32 0, i32 0
  %44 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %4, align 8
  %45 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, 1
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @dma_fence_init(i32* %41, i32* @drm_sched_fence_ops_finished, i32* %43, i64 %47, i32 %48)
  %50 = load %struct.drm_sched_fence*, %struct.drm_sched_fence** %6, align 8
  store %struct.drm_sched_fence* %50, %struct.drm_sched_fence** %3, align 8
  br label %51

51:                                               ; preds = %14, %13
  %52 = load %struct.drm_sched_fence*, %struct.drm_sched_fence** %3, align 8
  ret %struct.drm_sched_fence* %52
}

declare dso_local %struct.drm_sched_fence* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @dma_fence_init(i32*, i32*, i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

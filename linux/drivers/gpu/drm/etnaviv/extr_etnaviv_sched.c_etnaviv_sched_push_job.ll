; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_sched.c_etnaviv_sched_push_job.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_sched.c_etnaviv_sched_push_job.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_sched_entity = type { i32 }
%struct.etnaviv_gem_submit = type { i64, %struct.TYPE_7__*, %struct.TYPE_8__, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@INT_MAX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @etnaviv_sched_push_job(%struct.drm_sched_entity* %0, %struct.etnaviv_gem_submit* %1) #0 {
  %3 = alloca %struct.drm_sched_entity*, align 8
  %4 = alloca %struct.etnaviv_gem_submit*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_sched_entity* %0, %struct.drm_sched_entity** %3, align 8
  store %struct.etnaviv_gem_submit* %1, %struct.etnaviv_gem_submit** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %4, align 8
  %7 = getelementptr inbounds %struct.etnaviv_gem_submit, %struct.etnaviv_gem_submit* %6, i32 0, i32 1
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %4, align 8
  %12 = getelementptr inbounds %struct.etnaviv_gem_submit, %struct.etnaviv_gem_submit* %11, i32 0, i32 2
  %13 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %3, align 8
  %14 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %4, align 8
  %15 = getelementptr inbounds %struct.etnaviv_gem_submit, %struct.etnaviv_gem_submit* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @drm_sched_job_init(%struct.TYPE_8__* %12, %struct.drm_sched_entity* %13, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %60

21:                                               ; preds = %2
  %22 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %4, align 8
  %23 = getelementptr inbounds %struct.etnaviv_gem_submit, %struct.etnaviv_gem_submit* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = call i32 @dma_fence_get(i32* %26)
  %28 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %4, align 8
  %29 = getelementptr inbounds %struct.etnaviv_gem_submit, %struct.etnaviv_gem_submit* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 4
  %30 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %4, align 8
  %31 = getelementptr inbounds %struct.etnaviv_gem_submit, %struct.etnaviv_gem_submit* %30, i32 0, i32 1
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %4, align 8
  %35 = getelementptr inbounds %struct.etnaviv_gem_submit, %struct.etnaviv_gem_submit* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @INT_MAX, align 4
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call i64 @idr_alloc_cyclic(i32* %33, i32 %36, i32 0, i32 %37, i32 %38)
  %40 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %4, align 8
  %41 = getelementptr inbounds %struct.etnaviv_gem_submit, %struct.etnaviv_gem_submit* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %4, align 8
  %43 = getelementptr inbounds %struct.etnaviv_gem_submit, %struct.etnaviv_gem_submit* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %21
  %47 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %4, align 8
  %48 = getelementptr inbounds %struct.etnaviv_gem_submit, %struct.etnaviv_gem_submit* %47, i32 0, i32 2
  %49 = call i32 @drm_sched_job_cleanup(%struct.TYPE_8__* %48)
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %60

52:                                               ; preds = %21
  %53 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %4, align 8
  %54 = getelementptr inbounds %struct.etnaviv_gem_submit, %struct.etnaviv_gem_submit* %53, i32 0, i32 3
  %55 = call i32 @kref_get(i32* %54)
  %56 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %4, align 8
  %57 = getelementptr inbounds %struct.etnaviv_gem_submit, %struct.etnaviv_gem_submit* %56, i32 0, i32 2
  %58 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %3, align 8
  %59 = call i32 @drm_sched_entity_push_job(%struct.TYPE_8__* %57, %struct.drm_sched_entity* %58)
  br label %60

60:                                               ; preds = %52, %46, %20
  %61 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %4, align 8
  %62 = getelementptr inbounds %struct.etnaviv_gem_submit, %struct.etnaviv_gem_submit* %61, i32 0, i32 1
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = call i32 @mutex_unlock(i32* %64)
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @drm_sched_job_init(%struct.TYPE_8__*, %struct.drm_sched_entity*, i32) #1

declare dso_local i32 @dma_fence_get(i32*) #1

declare dso_local i64 @idr_alloc_cyclic(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @drm_sched_job_cleanup(%struct.TYPE_8__*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @drm_sched_entity_push_job(%struct.TYPE_8__*, %struct.drm_sched_entity*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_job.c_panfrost_job_push.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_job.c_panfrost_job_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.panfrost_job = type { i32, i32, i32, %struct.TYPE_7__, i32, i32, %struct.TYPE_5__*, %struct.panfrost_device* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.drm_sched_entity* }
%struct.drm_sched_entity = type { i32 }
%struct.panfrost_device = type { i32 }
%struct.ww_acquire_ctx = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @panfrost_job_push(%struct.panfrost_job* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.panfrost_job*, align 8
  %4 = alloca %struct.panfrost_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_sched_entity*, align 8
  %7 = alloca %struct.ww_acquire_ctx, align 4
  %8 = alloca i32, align 4
  store %struct.panfrost_job* %0, %struct.panfrost_job** %3, align 8
  %9 = load %struct.panfrost_job*, %struct.panfrost_job** %3, align 8
  %10 = getelementptr inbounds %struct.panfrost_job, %struct.panfrost_job* %9, i32 0, i32 7
  %11 = load %struct.panfrost_device*, %struct.panfrost_device** %10, align 8
  store %struct.panfrost_device* %11, %struct.panfrost_device** %4, align 8
  %12 = load %struct.panfrost_job*, %struct.panfrost_job** %3, align 8
  %13 = call i32 @panfrost_job_get_slot(%struct.panfrost_job* %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.panfrost_job*, %struct.panfrost_job** %3, align 8
  %15 = getelementptr inbounds %struct.panfrost_job, %struct.panfrost_job* %14, i32 0, i32 6
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %18, i64 %20
  store %struct.drm_sched_entity* %21, %struct.drm_sched_entity** %6, align 8
  store i32 0, i32* %8, align 4
  %22 = load %struct.panfrost_device*, %struct.panfrost_device** %4, align 8
  %23 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.panfrost_job*, %struct.panfrost_job** %3, align 8
  %26 = getelementptr inbounds %struct.panfrost_job, %struct.panfrost_job* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.panfrost_job*, %struct.panfrost_job** %3, align 8
  %29 = getelementptr inbounds %struct.panfrost_job, %struct.panfrost_job* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @drm_gem_lock_reservations(i32 %27, i32 %30, %struct.ww_acquire_ctx* %7)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %1
  %35 = load %struct.panfrost_device*, %struct.panfrost_device** %4, align 8
  %36 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %35, i32 0, i32 0
  %37 = call i32 @mutex_unlock(i32* %36)
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %2, align 4
  br label %98

39:                                               ; preds = %1
  %40 = load %struct.panfrost_job*, %struct.panfrost_job** %3, align 8
  %41 = getelementptr inbounds %struct.panfrost_job, %struct.panfrost_job* %40, i32 0, i32 3
  %42 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %6, align 8
  %43 = call i32 @drm_sched_job_init(%struct.TYPE_7__* %41, %struct.drm_sched_entity* %42, i32* null)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = load %struct.panfrost_device*, %struct.panfrost_device** %4, align 8
  %48 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %47, i32 0, i32 0
  %49 = call i32 @mutex_unlock(i32* %48)
  br label %89

50:                                               ; preds = %39
  %51 = load %struct.panfrost_job*, %struct.panfrost_job** %3, align 8
  %52 = getelementptr inbounds %struct.panfrost_job, %struct.panfrost_job* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = call i32 @dma_fence_get(i32* %55)
  %57 = load %struct.panfrost_job*, %struct.panfrost_job** %3, align 8
  %58 = getelementptr inbounds %struct.panfrost_job, %struct.panfrost_job* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  %59 = load %struct.panfrost_job*, %struct.panfrost_job** %3, align 8
  %60 = getelementptr inbounds %struct.panfrost_job, %struct.panfrost_job* %59, i32 0, i32 5
  %61 = call i32 @kref_get(i32* %60)
  %62 = load %struct.panfrost_job*, %struct.panfrost_job** %3, align 8
  %63 = getelementptr inbounds %struct.panfrost_job, %struct.panfrost_job* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.panfrost_job*, %struct.panfrost_job** %3, align 8
  %66 = getelementptr inbounds %struct.panfrost_job, %struct.panfrost_job* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.panfrost_job*, %struct.panfrost_job** %3, align 8
  %69 = getelementptr inbounds %struct.panfrost_job, %struct.panfrost_job* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @panfrost_acquire_object_fences(i32 %64, i32 %67, i32 %70)
  %72 = load %struct.panfrost_job*, %struct.panfrost_job** %3, align 8
  %73 = getelementptr inbounds %struct.panfrost_job, %struct.panfrost_job* %72, i32 0, i32 3
  %74 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %6, align 8
  %75 = call i32 @drm_sched_entity_push_job(%struct.TYPE_7__* %73, %struct.drm_sched_entity* %74)
  %76 = load %struct.panfrost_device*, %struct.panfrost_device** %4, align 8
  %77 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %76, i32 0, i32 0
  %78 = call i32 @mutex_unlock(i32* %77)
  %79 = load %struct.panfrost_job*, %struct.panfrost_job** %3, align 8
  %80 = getelementptr inbounds %struct.panfrost_job, %struct.panfrost_job* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.panfrost_job*, %struct.panfrost_job** %3, align 8
  %83 = getelementptr inbounds %struct.panfrost_job, %struct.panfrost_job* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.panfrost_job*, %struct.panfrost_job** %3, align 8
  %86 = getelementptr inbounds %struct.panfrost_job, %struct.panfrost_job* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @panfrost_attach_object_fences(i32 %81, i32 %84, i32 %87)
  br label %89

89:                                               ; preds = %50, %46
  %90 = load %struct.panfrost_job*, %struct.panfrost_job** %3, align 8
  %91 = getelementptr inbounds %struct.panfrost_job, %struct.panfrost_job* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.panfrost_job*, %struct.panfrost_job** %3, align 8
  %94 = getelementptr inbounds %struct.panfrost_job, %struct.panfrost_job* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @drm_gem_unlock_reservations(i32 %92, i32 %95, %struct.ww_acquire_ctx* %7)
  %97 = load i32, i32* %8, align 4
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %89, %34
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @panfrost_job_get_slot(%struct.panfrost_job*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @drm_gem_lock_reservations(i32, i32, %struct.ww_acquire_ctx*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @drm_sched_job_init(%struct.TYPE_7__*, %struct.drm_sched_entity*, i32*) #1

declare dso_local i32 @dma_fence_get(i32*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @panfrost_acquire_object_fences(i32, i32, i32) #1

declare dso_local i32 @drm_sched_entity_push_job(%struct.TYPE_7__*, %struct.drm_sched_entity*) #1

declare dso_local i32 @panfrost_attach_object_fences(i32, i32, i32) #1

declare dso_local i32 @drm_gem_unlock_reservations(i32, i32, %struct.ww_acquire_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

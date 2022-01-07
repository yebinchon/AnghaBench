; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_sched.c_v3d_render_job_run.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_sched.c_v3d_render_job_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_fence = type { i32 }
%struct.drm_sched_job = type { i32 }
%struct.v3d_render_job = type { i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__, %struct.v3d_dev* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.v3d_dev = type { %struct.v3d_render_job*, %struct.drm_device }
%struct.drm_device = type { i32 }
%struct.TYPE_10__ = type { i32 }

@V3D_RENDER = common dso_local global i32 0, align 4
@V3D_CLE_CT1QBA = common dso_local global i32 0, align 4
@V3D_CLE_CT1QEA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_fence* (%struct.drm_sched_job*)* @v3d_render_job_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_fence* @v3d_render_job_run(%struct.drm_sched_job* %0) #0 {
  %2 = alloca %struct.dma_fence*, align 8
  %3 = alloca %struct.drm_sched_job*, align 8
  %4 = alloca %struct.v3d_render_job*, align 8
  %5 = alloca %struct.v3d_dev*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.dma_fence*, align 8
  store %struct.drm_sched_job* %0, %struct.drm_sched_job** %3, align 8
  %8 = load %struct.drm_sched_job*, %struct.drm_sched_job** %3, align 8
  %9 = call %struct.v3d_render_job* @to_render_job(%struct.drm_sched_job* %8)
  store %struct.v3d_render_job* %9, %struct.v3d_render_job** %4, align 8
  %10 = load %struct.v3d_render_job*, %struct.v3d_render_job** %4, align 8
  %11 = getelementptr inbounds %struct.v3d_render_job, %struct.v3d_render_job* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 2
  %13 = load %struct.v3d_dev*, %struct.v3d_dev** %12, align 8
  store %struct.v3d_dev* %13, %struct.v3d_dev** %5, align 8
  %14 = load %struct.v3d_dev*, %struct.v3d_dev** %5, align 8
  %15 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %14, i32 0, i32 1
  store %struct.drm_device* %15, %struct.drm_device** %6, align 8
  %16 = load %struct.v3d_render_job*, %struct.v3d_render_job** %4, align 8
  %17 = getelementptr inbounds %struct.v3d_render_job, %struct.v3d_render_job* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  store %struct.dma_fence* null, %struct.dma_fence** %2, align 8
  br label %81

27:                                               ; preds = %1
  %28 = load %struct.v3d_render_job*, %struct.v3d_render_job** %4, align 8
  %29 = load %struct.v3d_dev*, %struct.v3d_dev** %5, align 8
  %30 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %29, i32 0, i32 0
  store %struct.v3d_render_job* %28, %struct.v3d_render_job** %30, align 8
  %31 = load %struct.v3d_dev*, %struct.v3d_dev** %5, align 8
  %32 = call i32 @v3d_invalidate_caches(%struct.v3d_dev* %31)
  %33 = load %struct.v3d_dev*, %struct.v3d_dev** %5, align 8
  %34 = load i32, i32* @V3D_RENDER, align 4
  %35 = call %struct.dma_fence* @v3d_fence_create(%struct.v3d_dev* %33, i32 %34)
  store %struct.dma_fence* %35, %struct.dma_fence** %7, align 8
  %36 = load %struct.dma_fence*, %struct.dma_fence** %7, align 8
  %37 = call i64 @IS_ERR(%struct.dma_fence* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %27
  store %struct.dma_fence* null, %struct.dma_fence** %2, align 8
  br label %81

40:                                               ; preds = %27
  %41 = load %struct.v3d_render_job*, %struct.v3d_render_job** %4, align 8
  %42 = getelementptr inbounds %struct.v3d_render_job, %struct.v3d_render_job* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load %struct.v3d_render_job*, %struct.v3d_render_job** %4, align 8
  %48 = getelementptr inbounds %struct.v3d_render_job, %struct.v3d_render_job* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @dma_fence_put(i64 %50)
  br label %52

52:                                               ; preds = %46, %40
  %53 = load %struct.dma_fence*, %struct.dma_fence** %7, align 8
  %54 = call i64 @dma_fence_get(%struct.dma_fence* %53)
  %55 = load %struct.v3d_render_job*, %struct.v3d_render_job** %4, align 8
  %56 = getelementptr inbounds %struct.v3d_render_job, %struct.v3d_render_job* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  store i64 %54, i64* %57, align 8
  %58 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %59 = load %struct.dma_fence*, %struct.dma_fence** %7, align 8
  %60 = call %struct.TYPE_10__* @to_v3d_fence(%struct.dma_fence* %59)
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.v3d_render_job*, %struct.v3d_render_job** %4, align 8
  %64 = getelementptr inbounds %struct.v3d_render_job, %struct.v3d_render_job* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.v3d_render_job*, %struct.v3d_render_job** %4, align 8
  %67 = getelementptr inbounds %struct.v3d_render_job, %struct.v3d_render_job* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @trace_v3d_submit_cl(%struct.drm_device* %58, i32 1, i32 %62, i32 %65, i32 %68)
  %70 = load i32, i32* @V3D_CLE_CT1QBA, align 4
  %71 = load %struct.v3d_render_job*, %struct.v3d_render_job** %4, align 8
  %72 = getelementptr inbounds %struct.v3d_render_job, %struct.v3d_render_job* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @V3D_CORE_WRITE(i32 0, i32 %70, i32 %73)
  %75 = load i32, i32* @V3D_CLE_CT1QEA, align 4
  %76 = load %struct.v3d_render_job*, %struct.v3d_render_job** %4, align 8
  %77 = getelementptr inbounds %struct.v3d_render_job, %struct.v3d_render_job* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @V3D_CORE_WRITE(i32 0, i32 %75, i32 %78)
  %80 = load %struct.dma_fence*, %struct.dma_fence** %7, align 8
  store %struct.dma_fence* %80, %struct.dma_fence** %2, align 8
  br label %81

81:                                               ; preds = %52, %39, %26
  %82 = load %struct.dma_fence*, %struct.dma_fence** %2, align 8
  ret %struct.dma_fence* %82
}

declare dso_local %struct.v3d_render_job* @to_render_job(%struct.drm_sched_job*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @v3d_invalidate_caches(%struct.v3d_dev*) #1

declare dso_local %struct.dma_fence* @v3d_fence_create(%struct.v3d_dev*, i32) #1

declare dso_local i64 @IS_ERR(%struct.dma_fence*) #1

declare dso_local i32 @dma_fence_put(i64) #1

declare dso_local i64 @dma_fence_get(%struct.dma_fence*) #1

declare dso_local i32 @trace_v3d_submit_cl(%struct.drm_device*, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_10__* @to_v3d_fence(%struct.dma_fence*) #1

declare dso_local i32 @V3D_CORE_WRITE(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

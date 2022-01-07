; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_sched.c_v3d_csd_job_run.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_sched.c_v3d_csd_job_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_fence = type { i32 }
%struct.drm_sched_job = type { i32 }
%struct.v3d_csd_job = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i64, %struct.v3d_dev* }
%struct.v3d_dev = type { %struct.v3d_csd_job*, %struct.drm_device }
%struct.drm_device = type { i32 }
%struct.TYPE_6__ = type { i32 }

@V3D_CSD = common dso_local global i32 0, align 4
@V3D_CSD_QUEUED_CFG0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_fence* (%struct.drm_sched_job*)* @v3d_csd_job_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_fence* @v3d_csd_job_run(%struct.drm_sched_job* %0) #0 {
  %2 = alloca %struct.dma_fence*, align 8
  %3 = alloca %struct.drm_sched_job*, align 8
  %4 = alloca %struct.v3d_csd_job*, align 8
  %5 = alloca %struct.v3d_dev*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.dma_fence*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_sched_job* %0, %struct.drm_sched_job** %3, align 8
  %9 = load %struct.drm_sched_job*, %struct.drm_sched_job** %3, align 8
  %10 = call %struct.v3d_csd_job* @to_csd_job(%struct.drm_sched_job* %9)
  store %struct.v3d_csd_job* %10, %struct.v3d_csd_job** %4, align 8
  %11 = load %struct.v3d_csd_job*, %struct.v3d_csd_job** %4, align 8
  %12 = getelementptr inbounds %struct.v3d_csd_job, %struct.v3d_csd_job* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load %struct.v3d_dev*, %struct.v3d_dev** %13, align 8
  store %struct.v3d_dev* %14, %struct.v3d_dev** %5, align 8
  %15 = load %struct.v3d_dev*, %struct.v3d_dev** %5, align 8
  %16 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %15, i32 0, i32 1
  store %struct.drm_device* %16, %struct.drm_device** %6, align 8
  %17 = load %struct.v3d_csd_job*, %struct.v3d_csd_job** %4, align 8
  %18 = load %struct.v3d_dev*, %struct.v3d_dev** %5, align 8
  %19 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %18, i32 0, i32 0
  store %struct.v3d_csd_job* %17, %struct.v3d_csd_job** %19, align 8
  %20 = load %struct.v3d_dev*, %struct.v3d_dev** %5, align 8
  %21 = call i32 @v3d_invalidate_caches(%struct.v3d_dev* %20)
  %22 = load %struct.v3d_dev*, %struct.v3d_dev** %5, align 8
  %23 = load i32, i32* @V3D_CSD, align 4
  %24 = call %struct.dma_fence* @v3d_fence_create(%struct.v3d_dev* %22, i32 %23)
  store %struct.dma_fence* %24, %struct.dma_fence** %7, align 8
  %25 = load %struct.dma_fence*, %struct.dma_fence** %7, align 8
  %26 = call i64 @IS_ERR(%struct.dma_fence* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  store %struct.dma_fence* null, %struct.dma_fence** %2, align 8
  br label %84

29:                                               ; preds = %1
  %30 = load %struct.v3d_csd_job*, %struct.v3d_csd_job** %4, align 8
  %31 = getelementptr inbounds %struct.v3d_csd_job, %struct.v3d_csd_job* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load %struct.v3d_csd_job*, %struct.v3d_csd_job** %4, align 8
  %37 = getelementptr inbounds %struct.v3d_csd_job, %struct.v3d_csd_job* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @dma_fence_put(i64 %39)
  br label %41

41:                                               ; preds = %35, %29
  %42 = load %struct.dma_fence*, %struct.dma_fence** %7, align 8
  %43 = call i64 @dma_fence_get(%struct.dma_fence* %42)
  %44 = load %struct.v3d_csd_job*, %struct.v3d_csd_job** %4, align 8
  %45 = getelementptr inbounds %struct.v3d_csd_job, %struct.v3d_csd_job* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store i64 %43, i64* %46, align 8
  %47 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %48 = load %struct.dma_fence*, %struct.dma_fence** %7, align 8
  %49 = call %struct.TYPE_6__* @to_v3d_fence(%struct.dma_fence* %48)
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @trace_v3d_submit_csd(%struct.drm_device* %47, i32 %51)
  store i32 1, i32* %8, align 4
  br label %53

53:                                               ; preds = %71, %41
  %54 = load i32, i32* %8, align 4
  %55 = icmp sle i32 %54, 6
  br i1 %55, label %56, label %74

56:                                               ; preds = %53
  %57 = load i64, i64* @V3D_CSD_QUEUED_CFG0, align 8
  %58 = load i32, i32* %8, align 4
  %59 = mul nsw i32 4, %58
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %57, %60
  %62 = load %struct.v3d_csd_job*, %struct.v3d_csd_job** %4, align 8
  %63 = getelementptr inbounds %struct.v3d_csd_job, %struct.v3d_csd_job* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @V3D_CORE_WRITE(i32 0, i64 %61, i32 %69)
  br label %71

71:                                               ; preds = %56
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %8, align 4
  br label %53

74:                                               ; preds = %53
  %75 = load i64, i64* @V3D_CSD_QUEUED_CFG0, align 8
  %76 = load %struct.v3d_csd_job*, %struct.v3d_csd_job** %4, align 8
  %77 = getelementptr inbounds %struct.v3d_csd_job, %struct.v3d_csd_job* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @V3D_CORE_WRITE(i32 0, i64 %75, i32 %81)
  %83 = load %struct.dma_fence*, %struct.dma_fence** %7, align 8
  store %struct.dma_fence* %83, %struct.dma_fence** %2, align 8
  br label %84

84:                                               ; preds = %74, %28
  %85 = load %struct.dma_fence*, %struct.dma_fence** %2, align 8
  ret %struct.dma_fence* %85
}

declare dso_local %struct.v3d_csd_job* @to_csd_job(%struct.drm_sched_job*) #1

declare dso_local i32 @v3d_invalidate_caches(%struct.v3d_dev*) #1

declare dso_local %struct.dma_fence* @v3d_fence_create(%struct.v3d_dev*, i32) #1

declare dso_local i64 @IS_ERR(%struct.dma_fence*) #1

declare dso_local i32 @dma_fence_put(i64) #1

declare dso_local i64 @dma_fence_get(%struct.dma_fence*) #1

declare dso_local i32 @trace_v3d_submit_csd(%struct.drm_device*, i32) #1

declare dso_local %struct.TYPE_6__* @to_v3d_fence(%struct.dma_fence*) #1

declare dso_local i32 @V3D_CORE_WRITE(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

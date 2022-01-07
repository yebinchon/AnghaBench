; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_sched.c_v3d_bin_job_run.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_sched.c_v3d_bin_job_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_fence = type { i32 }
%struct.drm_sched_job = type { i32 }
%struct.v3d_bin_job = type { i32, i32, i32, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__, %struct.v3d_dev* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.v3d_dev = type { i32, %struct.v3d_bin_job*, %struct.drm_device }
%struct.drm_device = type { i32 }
%struct.TYPE_10__ = type { i32 }

@V3D_PTB_BPOS = common dso_local global i32 0, align 4
@V3D_BIN = common dso_local global i32 0, align 4
@V3D_CLE_CT0QMA = common dso_local global i32 0, align 4
@V3D_CLE_CT0QMS = common dso_local global i32 0, align 4
@V3D_CLE_CT0QTS = common dso_local global i32 0, align 4
@V3D_CLE_CT0QTS_ENABLE = common dso_local global i32 0, align 4
@V3D_CLE_CT0QBA = common dso_local global i32 0, align 4
@V3D_CLE_CT0QEA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_fence* (%struct.drm_sched_job*)* @v3d_bin_job_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_fence* @v3d_bin_job_run(%struct.drm_sched_job* %0) #0 {
  %2 = alloca %struct.dma_fence*, align 8
  %3 = alloca %struct.drm_sched_job*, align 8
  %4 = alloca %struct.v3d_bin_job*, align 8
  %5 = alloca %struct.v3d_dev*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.dma_fence*, align 8
  %8 = alloca i64, align 8
  store %struct.drm_sched_job* %0, %struct.drm_sched_job** %3, align 8
  %9 = load %struct.drm_sched_job*, %struct.drm_sched_job** %3, align 8
  %10 = call %struct.v3d_bin_job* @to_bin_job(%struct.drm_sched_job* %9)
  store %struct.v3d_bin_job* %10, %struct.v3d_bin_job** %4, align 8
  %11 = load %struct.v3d_bin_job*, %struct.v3d_bin_job** %4, align 8
  %12 = getelementptr inbounds %struct.v3d_bin_job, %struct.v3d_bin_job* %11, i32 0, i32 5
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  %14 = load %struct.v3d_dev*, %struct.v3d_dev** %13, align 8
  store %struct.v3d_dev* %14, %struct.v3d_dev** %5, align 8
  %15 = load %struct.v3d_dev*, %struct.v3d_dev** %5, align 8
  %16 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %15, i32 0, i32 2
  store %struct.drm_device* %16, %struct.drm_device** %6, align 8
  %17 = load %struct.v3d_bin_job*, %struct.v3d_bin_job** %4, align 8
  %18 = getelementptr inbounds %struct.v3d_bin_job, %struct.v3d_bin_job* %17, i32 0, i32 5
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  store %struct.dma_fence* null, %struct.dma_fence** %2, align 8
  br label %121

28:                                               ; preds = %1
  %29 = load %struct.v3d_dev*, %struct.v3d_dev** %5, align 8
  %30 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %29, i32 0, i32 0
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load %struct.v3d_bin_job*, %struct.v3d_bin_job** %4, align 8
  %34 = load %struct.v3d_dev*, %struct.v3d_dev** %5, align 8
  %35 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %34, i32 0, i32 1
  store %struct.v3d_bin_job* %33, %struct.v3d_bin_job** %35, align 8
  %36 = load i32, i32* @V3D_PTB_BPOS, align 4
  %37 = call i32 @V3D_CORE_WRITE(i32 0, i32 %36, i32 0)
  %38 = load %struct.v3d_dev*, %struct.v3d_dev** %5, align 8
  %39 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %38, i32 0, i32 0
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  %42 = load %struct.v3d_dev*, %struct.v3d_dev** %5, align 8
  %43 = call i32 @v3d_invalidate_caches(%struct.v3d_dev* %42)
  %44 = load %struct.v3d_dev*, %struct.v3d_dev** %5, align 8
  %45 = load i32, i32* @V3D_BIN, align 4
  %46 = call %struct.dma_fence* @v3d_fence_create(%struct.v3d_dev* %44, i32 %45)
  store %struct.dma_fence* %46, %struct.dma_fence** %7, align 8
  %47 = load %struct.dma_fence*, %struct.dma_fence** %7, align 8
  %48 = call i64 @IS_ERR(%struct.dma_fence* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %28
  store %struct.dma_fence* null, %struct.dma_fence** %2, align 8
  br label %121

51:                                               ; preds = %28
  %52 = load %struct.v3d_bin_job*, %struct.v3d_bin_job** %4, align 8
  %53 = getelementptr inbounds %struct.v3d_bin_job, %struct.v3d_bin_job* %52, i32 0, i32 5
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %51
  %58 = load %struct.v3d_bin_job*, %struct.v3d_bin_job** %4, align 8
  %59 = getelementptr inbounds %struct.v3d_bin_job, %struct.v3d_bin_job* %58, i32 0, i32 5
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @dma_fence_put(i64 %61)
  br label %63

63:                                               ; preds = %57, %51
  %64 = load %struct.dma_fence*, %struct.dma_fence** %7, align 8
  %65 = call i64 @dma_fence_get(%struct.dma_fence* %64)
  %66 = load %struct.v3d_bin_job*, %struct.v3d_bin_job** %4, align 8
  %67 = getelementptr inbounds %struct.v3d_bin_job, %struct.v3d_bin_job* %66, i32 0, i32 5
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  store i64 %65, i64* %68, align 8
  %69 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %70 = load %struct.dma_fence*, %struct.dma_fence** %7, align 8
  %71 = call %struct.TYPE_10__* @to_v3d_fence(%struct.dma_fence* %70)
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.v3d_bin_job*, %struct.v3d_bin_job** %4, align 8
  %75 = getelementptr inbounds %struct.v3d_bin_job, %struct.v3d_bin_job* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.v3d_bin_job*, %struct.v3d_bin_job** %4, align 8
  %78 = getelementptr inbounds %struct.v3d_bin_job, %struct.v3d_bin_job* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @trace_v3d_submit_cl(%struct.drm_device* %69, i32 0, i32 %73, i32 %76, i32 %79)
  %81 = load %struct.v3d_bin_job*, %struct.v3d_bin_job** %4, align 8
  %82 = getelementptr inbounds %struct.v3d_bin_job, %struct.v3d_bin_job* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %63
  %86 = load i32, i32* @V3D_CLE_CT0QMA, align 4
  %87 = load %struct.v3d_bin_job*, %struct.v3d_bin_job** %4, align 8
  %88 = getelementptr inbounds %struct.v3d_bin_job, %struct.v3d_bin_job* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @V3D_CORE_WRITE(i32 0, i32 %86, i32 %89)
  %91 = load i32, i32* @V3D_CLE_CT0QMS, align 4
  %92 = load %struct.v3d_bin_job*, %struct.v3d_bin_job** %4, align 8
  %93 = getelementptr inbounds %struct.v3d_bin_job, %struct.v3d_bin_job* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @V3D_CORE_WRITE(i32 0, i32 %91, i32 %94)
  br label %96

96:                                               ; preds = %85, %63
  %97 = load %struct.v3d_bin_job*, %struct.v3d_bin_job** %4, align 8
  %98 = getelementptr inbounds %struct.v3d_bin_job, %struct.v3d_bin_job* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %96
  %102 = load i32, i32* @V3D_CLE_CT0QTS, align 4
  %103 = load i32, i32* @V3D_CLE_CT0QTS_ENABLE, align 4
  %104 = load %struct.v3d_bin_job*, %struct.v3d_bin_job** %4, align 8
  %105 = getelementptr inbounds %struct.v3d_bin_job, %struct.v3d_bin_job* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = or i32 %103, %106
  %108 = call i32 @V3D_CORE_WRITE(i32 0, i32 %102, i32 %107)
  br label %109

109:                                              ; preds = %101, %96
  %110 = load i32, i32* @V3D_CLE_CT0QBA, align 4
  %111 = load %struct.v3d_bin_job*, %struct.v3d_bin_job** %4, align 8
  %112 = getelementptr inbounds %struct.v3d_bin_job, %struct.v3d_bin_job* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @V3D_CORE_WRITE(i32 0, i32 %110, i32 %113)
  %115 = load i32, i32* @V3D_CLE_CT0QEA, align 4
  %116 = load %struct.v3d_bin_job*, %struct.v3d_bin_job** %4, align 8
  %117 = getelementptr inbounds %struct.v3d_bin_job, %struct.v3d_bin_job* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @V3D_CORE_WRITE(i32 0, i32 %115, i32 %118)
  %120 = load %struct.dma_fence*, %struct.dma_fence** %7, align 8
  store %struct.dma_fence* %120, %struct.dma_fence** %2, align 8
  br label %121

121:                                              ; preds = %109, %50, %27
  %122 = load %struct.dma_fence*, %struct.dma_fence** %2, align 8
  ret %struct.dma_fence* %122
}

declare dso_local %struct.v3d_bin_job* @to_bin_job(%struct.drm_sched_job*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @V3D_CORE_WRITE(i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @v3d_invalidate_caches(%struct.v3d_dev*) #1

declare dso_local %struct.dma_fence* @v3d_fence_create(%struct.v3d_dev*, i32) #1

declare dso_local i64 @IS_ERR(%struct.dma_fence*) #1

declare dso_local i32 @dma_fence_put(i64) #1

declare dso_local i64 @dma_fence_get(%struct.dma_fence*) #1

declare dso_local i32 @trace_v3d_submit_cl(%struct.drm_device*, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_10__* @to_v3d_fence(%struct.dma_fence*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

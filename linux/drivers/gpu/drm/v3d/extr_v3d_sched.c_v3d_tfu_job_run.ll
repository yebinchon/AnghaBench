; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_sched.c_v3d_tfu_job_run.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_sched.c_v3d_tfu_job_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_fence = type { i32 }
%struct.drm_sched_job = type { i32 }
%struct.v3d_tfu_job = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32*, i32 }
%struct.TYPE_4__ = type { i64, %struct.v3d_dev* }
%struct.v3d_dev = type { %struct.v3d_tfu_job*, %struct.drm_device }
%struct.drm_device = type { i32 }
%struct.TYPE_6__ = type { i32 }

@V3D_TFU = common dso_local global i32 0, align 4
@V3D_TFU_IIA = common dso_local global i32 0, align 4
@V3D_TFU_IIS = common dso_local global i32 0, align 4
@V3D_TFU_ICA = common dso_local global i32 0, align 4
@V3D_TFU_IUA = common dso_local global i32 0, align 4
@V3D_TFU_IOA = common dso_local global i32 0, align 4
@V3D_TFU_IOS = common dso_local global i32 0, align 4
@V3D_TFU_COEF0 = common dso_local global i32 0, align 4
@V3D_TFU_COEF0_USECOEF = common dso_local global i32 0, align 4
@V3D_TFU_COEF1 = common dso_local global i32 0, align 4
@V3D_TFU_COEF2 = common dso_local global i32 0, align 4
@V3D_TFU_COEF3 = common dso_local global i32 0, align 4
@V3D_TFU_ICFG = common dso_local global i32 0, align 4
@V3D_TFU_ICFG_IOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_fence* (%struct.drm_sched_job*)* @v3d_tfu_job_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_fence* @v3d_tfu_job_run(%struct.drm_sched_job* %0) #0 {
  %2 = alloca %struct.dma_fence*, align 8
  %3 = alloca %struct.drm_sched_job*, align 8
  %4 = alloca %struct.v3d_tfu_job*, align 8
  %5 = alloca %struct.v3d_dev*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.dma_fence*, align 8
  store %struct.drm_sched_job* %0, %struct.drm_sched_job** %3, align 8
  %8 = load %struct.drm_sched_job*, %struct.drm_sched_job** %3, align 8
  %9 = call %struct.v3d_tfu_job* @to_tfu_job(%struct.drm_sched_job* %8)
  store %struct.v3d_tfu_job* %9, %struct.v3d_tfu_job** %4, align 8
  %10 = load %struct.v3d_tfu_job*, %struct.v3d_tfu_job** %4, align 8
  %11 = getelementptr inbounds %struct.v3d_tfu_job, %struct.v3d_tfu_job* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load %struct.v3d_dev*, %struct.v3d_dev** %12, align 8
  store %struct.v3d_dev* %13, %struct.v3d_dev** %5, align 8
  %14 = load %struct.v3d_dev*, %struct.v3d_dev** %5, align 8
  %15 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %14, i32 0, i32 1
  store %struct.drm_device* %15, %struct.drm_device** %6, align 8
  %16 = load %struct.v3d_dev*, %struct.v3d_dev** %5, align 8
  %17 = load i32, i32* @V3D_TFU, align 4
  %18 = call %struct.dma_fence* @v3d_fence_create(%struct.v3d_dev* %16, i32 %17)
  store %struct.dma_fence* %18, %struct.dma_fence** %7, align 8
  %19 = load %struct.dma_fence*, %struct.dma_fence** %7, align 8
  %20 = call i64 @IS_ERR(%struct.dma_fence* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  store %struct.dma_fence* null, %struct.dma_fence** %2, align 8
  br label %138

23:                                               ; preds = %1
  %24 = load %struct.v3d_tfu_job*, %struct.v3d_tfu_job** %4, align 8
  %25 = load %struct.v3d_dev*, %struct.v3d_dev** %5, align 8
  %26 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %25, i32 0, i32 0
  store %struct.v3d_tfu_job* %24, %struct.v3d_tfu_job** %26, align 8
  %27 = load %struct.v3d_tfu_job*, %struct.v3d_tfu_job** %4, align 8
  %28 = getelementptr inbounds %struct.v3d_tfu_job, %struct.v3d_tfu_job* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %23
  %33 = load %struct.v3d_tfu_job*, %struct.v3d_tfu_job** %4, align 8
  %34 = getelementptr inbounds %struct.v3d_tfu_job, %struct.v3d_tfu_job* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @dma_fence_put(i64 %36)
  br label %38

38:                                               ; preds = %32, %23
  %39 = load %struct.dma_fence*, %struct.dma_fence** %7, align 8
  %40 = call i64 @dma_fence_get(%struct.dma_fence* %39)
  %41 = load %struct.v3d_tfu_job*, %struct.v3d_tfu_job** %4, align 8
  %42 = getelementptr inbounds %struct.v3d_tfu_job, %struct.v3d_tfu_job* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i64 %40, i64* %43, align 8
  %44 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %45 = load %struct.dma_fence*, %struct.dma_fence** %7, align 8
  %46 = call %struct.TYPE_6__* @to_v3d_fence(%struct.dma_fence* %45)
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @trace_v3d_submit_tfu(%struct.drm_device* %44, i32 %48)
  %50 = load i32, i32* @V3D_TFU_IIA, align 4
  %51 = load %struct.v3d_tfu_job*, %struct.v3d_tfu_job** %4, align 8
  %52 = getelementptr inbounds %struct.v3d_tfu_job, %struct.v3d_tfu_job* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @V3D_WRITE(i32 %50, i32 %54)
  %56 = load i32, i32* @V3D_TFU_IIS, align 4
  %57 = load %struct.v3d_tfu_job*, %struct.v3d_tfu_job** %4, align 8
  %58 = getelementptr inbounds %struct.v3d_tfu_job, %struct.v3d_tfu_job* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @V3D_WRITE(i32 %56, i32 %60)
  %62 = load i32, i32* @V3D_TFU_ICA, align 4
  %63 = load %struct.v3d_tfu_job*, %struct.v3d_tfu_job** %4, align 8
  %64 = getelementptr inbounds %struct.v3d_tfu_job, %struct.v3d_tfu_job* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @V3D_WRITE(i32 %62, i32 %66)
  %68 = load i32, i32* @V3D_TFU_IUA, align 4
  %69 = load %struct.v3d_tfu_job*, %struct.v3d_tfu_job** %4, align 8
  %70 = getelementptr inbounds %struct.v3d_tfu_job, %struct.v3d_tfu_job* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @V3D_WRITE(i32 %68, i32 %72)
  %74 = load i32, i32* @V3D_TFU_IOA, align 4
  %75 = load %struct.v3d_tfu_job*, %struct.v3d_tfu_job** %4, align 8
  %76 = getelementptr inbounds %struct.v3d_tfu_job, %struct.v3d_tfu_job* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @V3D_WRITE(i32 %74, i32 %78)
  %80 = load i32, i32* @V3D_TFU_IOS, align 4
  %81 = load %struct.v3d_tfu_job*, %struct.v3d_tfu_job** %4, align 8
  %82 = getelementptr inbounds %struct.v3d_tfu_job, %struct.v3d_tfu_job* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @V3D_WRITE(i32 %80, i32 %84)
  %86 = load i32, i32* @V3D_TFU_COEF0, align 4
  %87 = load %struct.v3d_tfu_job*, %struct.v3d_tfu_job** %4, align 8
  %88 = getelementptr inbounds %struct.v3d_tfu_job, %struct.v3d_tfu_job* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 6
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @V3D_WRITE(i32 %86, i32 %92)
  %94 = load %struct.v3d_tfu_job*, %struct.v3d_tfu_job** %4, align 8
  %95 = getelementptr inbounds %struct.v3d_tfu_job, %struct.v3d_tfu_job* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 6
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @V3D_TFU_COEF0_USECOEF, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %128

103:                                              ; preds = %38
  %104 = load i32, i32* @V3D_TFU_COEF1, align 4
  %105 = load %struct.v3d_tfu_job*, %struct.v3d_tfu_job** %4, align 8
  %106 = getelementptr inbounds %struct.v3d_tfu_job, %struct.v3d_tfu_job* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 6
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @V3D_WRITE(i32 %104, i32 %110)
  %112 = load i32, i32* @V3D_TFU_COEF2, align 4
  %113 = load %struct.v3d_tfu_job*, %struct.v3d_tfu_job** %4, align 8
  %114 = getelementptr inbounds %struct.v3d_tfu_job, %struct.v3d_tfu_job* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 6
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 2
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @V3D_WRITE(i32 %112, i32 %118)
  %120 = load i32, i32* @V3D_TFU_COEF3, align 4
  %121 = load %struct.v3d_tfu_job*, %struct.v3d_tfu_job** %4, align 8
  %122 = getelementptr inbounds %struct.v3d_tfu_job, %struct.v3d_tfu_job* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 6
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 3
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @V3D_WRITE(i32 %120, i32 %126)
  br label %128

128:                                              ; preds = %103, %38
  %129 = load i32, i32* @V3D_TFU_ICFG, align 4
  %130 = load %struct.v3d_tfu_job*, %struct.v3d_tfu_job** %4, align 8
  %131 = getelementptr inbounds %struct.v3d_tfu_job, %struct.v3d_tfu_job* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 7
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @V3D_TFU_ICFG_IOC, align 4
  %135 = or i32 %133, %134
  %136 = call i32 @V3D_WRITE(i32 %129, i32 %135)
  %137 = load %struct.dma_fence*, %struct.dma_fence** %7, align 8
  store %struct.dma_fence* %137, %struct.dma_fence** %2, align 8
  br label %138

138:                                              ; preds = %128, %22
  %139 = load %struct.dma_fence*, %struct.dma_fence** %2, align 8
  ret %struct.dma_fence* %139
}

declare dso_local %struct.v3d_tfu_job* @to_tfu_job(%struct.drm_sched_job*) #1

declare dso_local %struct.dma_fence* @v3d_fence_create(%struct.v3d_dev*, i32) #1

declare dso_local i64 @IS_ERR(%struct.dma_fence*) #1

declare dso_local i32 @dma_fence_put(i64) #1

declare dso_local i64 @dma_fence_get(%struct.dma_fence*) #1

declare dso_local i32 @trace_v3d_submit_tfu(%struct.drm_device*, i32) #1

declare dso_local %struct.TYPE_6__* @to_v3d_fence(%struct.dma_fence*) #1

declare dso_local i32 @V3D_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

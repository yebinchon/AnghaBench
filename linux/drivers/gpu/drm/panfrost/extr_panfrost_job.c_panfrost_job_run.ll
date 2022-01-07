; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_job.c_panfrost_job_run.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_job.c_panfrost_job_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_fence = type { i32 }
%struct.drm_sched_job = type { i32 }
%struct.panfrost_job = type { i64, %struct.TYPE_4__, %struct.panfrost_device* }
%struct.TYPE_4__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.panfrost_device = type { %struct.panfrost_job** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_fence* (%struct.drm_sched_job*)* @panfrost_job_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_fence* @panfrost_job_run(%struct.drm_sched_job* %0) #0 {
  %2 = alloca %struct.dma_fence*, align 8
  %3 = alloca %struct.drm_sched_job*, align 8
  %4 = alloca %struct.panfrost_job*, align 8
  %5 = alloca %struct.panfrost_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dma_fence*, align 8
  store %struct.drm_sched_job* %0, %struct.drm_sched_job** %3, align 8
  %8 = load %struct.drm_sched_job*, %struct.drm_sched_job** %3, align 8
  %9 = call %struct.panfrost_job* @to_panfrost_job(%struct.drm_sched_job* %8)
  store %struct.panfrost_job* %9, %struct.panfrost_job** %4, align 8
  %10 = load %struct.panfrost_job*, %struct.panfrost_job** %4, align 8
  %11 = getelementptr inbounds %struct.panfrost_job, %struct.panfrost_job* %10, i32 0, i32 2
  %12 = load %struct.panfrost_device*, %struct.panfrost_device** %11, align 8
  store %struct.panfrost_device* %12, %struct.panfrost_device** %5, align 8
  %13 = load %struct.panfrost_job*, %struct.panfrost_job** %4, align 8
  %14 = call i32 @panfrost_job_get_slot(%struct.panfrost_job* %13)
  store i32 %14, i32* %6, align 4
  store %struct.dma_fence* null, %struct.dma_fence** %7, align 8
  %15 = load %struct.panfrost_job*, %struct.panfrost_job** %4, align 8
  %16 = getelementptr inbounds %struct.panfrost_job, %struct.panfrost_job* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  store %struct.dma_fence* null, %struct.dma_fence** %2, align 8
  br label %59

25:                                               ; preds = %1
  %26 = load %struct.panfrost_job*, %struct.panfrost_job** %4, align 8
  %27 = load %struct.panfrost_device*, %struct.panfrost_device** %5, align 8
  %28 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %27, i32 0, i32 0
  %29 = load %struct.panfrost_job**, %struct.panfrost_job*** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.panfrost_job*, %struct.panfrost_job** %29, i64 %31
  store %struct.panfrost_job* %26, %struct.panfrost_job** %32, align 8
  %33 = load %struct.panfrost_device*, %struct.panfrost_device** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call %struct.dma_fence* @panfrost_fence_create(%struct.panfrost_device* %33, i32 %34)
  store %struct.dma_fence* %35, %struct.dma_fence** %7, align 8
  %36 = load %struct.dma_fence*, %struct.dma_fence** %7, align 8
  %37 = call i64 @IS_ERR(%struct.dma_fence* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %25
  store %struct.dma_fence* null, %struct.dma_fence** %2, align 8
  br label %59

40:                                               ; preds = %25
  %41 = load %struct.panfrost_job*, %struct.panfrost_job** %4, align 8
  %42 = getelementptr inbounds %struct.panfrost_job, %struct.panfrost_job* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.panfrost_job*, %struct.panfrost_job** %4, align 8
  %47 = getelementptr inbounds %struct.panfrost_job, %struct.panfrost_job* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @dma_fence_put(i64 %48)
  br label %50

50:                                               ; preds = %45, %40
  %51 = load %struct.dma_fence*, %struct.dma_fence** %7, align 8
  %52 = call i64 @dma_fence_get(%struct.dma_fence* %51)
  %53 = load %struct.panfrost_job*, %struct.panfrost_job** %4, align 8
  %54 = getelementptr inbounds %struct.panfrost_job, %struct.panfrost_job* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load %struct.panfrost_job*, %struct.panfrost_job** %4, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @panfrost_job_hw_submit(%struct.panfrost_job* %55, i32 %56)
  %58 = load %struct.dma_fence*, %struct.dma_fence** %7, align 8
  store %struct.dma_fence* %58, %struct.dma_fence** %2, align 8
  br label %59

59:                                               ; preds = %50, %39, %24
  %60 = load %struct.dma_fence*, %struct.dma_fence** %2, align 8
  ret %struct.dma_fence* %60
}

declare dso_local %struct.panfrost_job* @to_panfrost_job(%struct.drm_sched_job*) #1

declare dso_local i32 @panfrost_job_get_slot(%struct.panfrost_job*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.dma_fence* @panfrost_fence_create(%struct.panfrost_device*, i32) #1

declare dso_local i64 @IS_ERR(%struct.dma_fence*) #1

declare dso_local i32 @dma_fence_put(i64) #1

declare dso_local i64 @dma_fence_get(%struct.dma_fence*) #1

declare dso_local i32 @panfrost_job_hw_submit(%struct.panfrost_job*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

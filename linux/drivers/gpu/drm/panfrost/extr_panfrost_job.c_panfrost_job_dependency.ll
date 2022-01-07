; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_job.c_panfrost_job_dependency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_job.c_panfrost_job_dependency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_fence = type { i32 }
%struct.drm_sched_job = type { i32 }
%struct.drm_sched_entity = type { i32 }
%struct.panfrost_job = type { i32, i32, %struct.dma_fence**, %struct.dma_fence** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_fence* (%struct.drm_sched_job*, %struct.drm_sched_entity*)* @panfrost_job_dependency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_fence* @panfrost_job_dependency(%struct.drm_sched_job* %0, %struct.drm_sched_entity* %1) #0 {
  %3 = alloca %struct.dma_fence*, align 8
  %4 = alloca %struct.drm_sched_job*, align 8
  %5 = alloca %struct.drm_sched_entity*, align 8
  %6 = alloca %struct.panfrost_job*, align 8
  %7 = alloca %struct.dma_fence*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_sched_job* %0, %struct.drm_sched_job** %4, align 8
  store %struct.drm_sched_entity* %1, %struct.drm_sched_entity** %5, align 8
  %9 = load %struct.drm_sched_job*, %struct.drm_sched_job** %4, align 8
  %10 = call %struct.panfrost_job* @to_panfrost_job(%struct.drm_sched_job* %9)
  store %struct.panfrost_job* %10, %struct.panfrost_job** %6, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %42, %2
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.panfrost_job*, %struct.panfrost_job** %6, align 8
  %14 = getelementptr inbounds %struct.panfrost_job, %struct.panfrost_job* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %45

17:                                               ; preds = %11
  %18 = load %struct.panfrost_job*, %struct.panfrost_job** %6, align 8
  %19 = getelementptr inbounds %struct.panfrost_job, %struct.panfrost_job* %18, i32 0, i32 3
  %20 = load %struct.dma_fence**, %struct.dma_fence*** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.dma_fence*, %struct.dma_fence** %20, i64 %22
  %24 = load %struct.dma_fence*, %struct.dma_fence** %23, align 8
  %25 = icmp ne %struct.dma_fence* %24, null
  br i1 %25, label %26, label %41

26:                                               ; preds = %17
  %27 = load %struct.panfrost_job*, %struct.panfrost_job** %6, align 8
  %28 = getelementptr inbounds %struct.panfrost_job, %struct.panfrost_job* %27, i32 0, i32 3
  %29 = load %struct.dma_fence**, %struct.dma_fence*** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.dma_fence*, %struct.dma_fence** %29, i64 %31
  %33 = load %struct.dma_fence*, %struct.dma_fence** %32, align 8
  store %struct.dma_fence* %33, %struct.dma_fence** %7, align 8
  %34 = load %struct.panfrost_job*, %struct.panfrost_job** %6, align 8
  %35 = getelementptr inbounds %struct.panfrost_job, %struct.panfrost_job* %34, i32 0, i32 3
  %36 = load %struct.dma_fence**, %struct.dma_fence*** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.dma_fence*, %struct.dma_fence** %36, i64 %38
  store %struct.dma_fence* null, %struct.dma_fence** %39, align 8
  %40 = load %struct.dma_fence*, %struct.dma_fence** %7, align 8
  store %struct.dma_fence* %40, %struct.dma_fence** %3, align 8
  br label %81

41:                                               ; preds = %17
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %8, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %11

45:                                               ; preds = %11
  store i32 0, i32* %8, align 4
  br label %46

46:                                               ; preds = %77, %45
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.panfrost_job*, %struct.panfrost_job** %6, align 8
  %49 = getelementptr inbounds %struct.panfrost_job, %struct.panfrost_job* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ult i32 %47, %50
  br i1 %51, label %52, label %80

52:                                               ; preds = %46
  %53 = load %struct.panfrost_job*, %struct.panfrost_job** %6, align 8
  %54 = getelementptr inbounds %struct.panfrost_job, %struct.panfrost_job* %53, i32 0, i32 2
  %55 = load %struct.dma_fence**, %struct.dma_fence*** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.dma_fence*, %struct.dma_fence** %55, i64 %57
  %59 = load %struct.dma_fence*, %struct.dma_fence** %58, align 8
  %60 = icmp ne %struct.dma_fence* %59, null
  br i1 %60, label %61, label %76

61:                                               ; preds = %52
  %62 = load %struct.panfrost_job*, %struct.panfrost_job** %6, align 8
  %63 = getelementptr inbounds %struct.panfrost_job, %struct.panfrost_job* %62, i32 0, i32 2
  %64 = load %struct.dma_fence**, %struct.dma_fence*** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.dma_fence*, %struct.dma_fence** %64, i64 %66
  %68 = load %struct.dma_fence*, %struct.dma_fence** %67, align 8
  store %struct.dma_fence* %68, %struct.dma_fence** %7, align 8
  %69 = load %struct.panfrost_job*, %struct.panfrost_job** %6, align 8
  %70 = getelementptr inbounds %struct.panfrost_job, %struct.panfrost_job* %69, i32 0, i32 2
  %71 = load %struct.dma_fence**, %struct.dma_fence*** %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.dma_fence*, %struct.dma_fence** %71, i64 %73
  store %struct.dma_fence* null, %struct.dma_fence** %74, align 8
  %75 = load %struct.dma_fence*, %struct.dma_fence** %7, align 8
  store %struct.dma_fence* %75, %struct.dma_fence** %3, align 8
  br label %81

76:                                               ; preds = %52
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %8, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %8, align 4
  br label %46

80:                                               ; preds = %46
  store %struct.dma_fence* null, %struct.dma_fence** %3, align 8
  br label %81

81:                                               ; preds = %80, %61, %26
  %82 = load %struct.dma_fence*, %struct.dma_fence** %3, align 8
  ret %struct.dma_fence* %82
}

declare dso_local %struct.panfrost_job* @to_panfrost_job(%struct.drm_sched_job*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

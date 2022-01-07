; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd.c_amdgpu_amdkfd_submit_ib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd.c_amdgpu_amdkfd_submit_ib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kgd_dev = type { i32 }
%struct.amdgpu_device = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.amdgpu_ring }
%struct.amdgpu_ring = type { i32 }
%struct.TYPE_4__ = type { %struct.amdgpu_ring* }
%struct.amdgpu_job = type { i8*, %struct.amdgpu_ib* }
%struct.amdgpu_ib = type { i8**, i8*, i32 }
%struct.dma_fence = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"Invalid engine in IB submission: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"amdgpu: failed to schedule IB.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_amdkfd_submit_ib(%struct.kgd_dev* %0, i32 %1, i8* %2, i32 %3, i8** %4, i8* %5) #0 {
  %7 = alloca %struct.kgd_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.amdgpu_device*, align 8
  %14 = alloca %struct.amdgpu_job*, align 8
  %15 = alloca %struct.amdgpu_ib*, align 8
  %16 = alloca %struct.amdgpu_ring*, align 8
  %17 = alloca %struct.dma_fence*, align 8
  %18 = alloca i32, align 4
  store %struct.kgd_dev* %0, %struct.kgd_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8** %4, i8*** %11, align 8
  store i8* %5, i8** %12, align 8
  %19 = load %struct.kgd_dev*, %struct.kgd_dev** %7, align 8
  %20 = bitcast %struct.kgd_dev* %19 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %20, %struct.amdgpu_device** %13, align 8
  store %struct.dma_fence* null, %struct.dma_fence** %17, align 8
  %21 = load i32, i32* %8, align 4
  switch i32 %21, label %42 [
    i32 130, label %22
    i32 129, label %28
    i32 128, label %35
  ]

22:                                               ; preds = %6
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %13, align 8
  %24 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %25, align 8
  %27 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %26, i64 0
  store %struct.amdgpu_ring* %27, %struct.amdgpu_ring** %16, align 8
  br label %47

28:                                               ; preds = %6
  %29 = load %struct.amdgpu_device*, %struct.amdgpu_device** %13, align 8
  %30 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store %struct.amdgpu_ring* %34, %struct.amdgpu_ring** %16, align 8
  br label %47

35:                                               ; preds = %6
  %36 = load %struct.amdgpu_device*, %struct.amdgpu_device** %13, align 8
  %37 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i64 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  store %struct.amdgpu_ring* %41, %struct.amdgpu_ring** %16, align 8
  br label %47

42:                                               ; preds = %6
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %18, align 4
  br label %88

47:                                               ; preds = %35, %28, %22
  %48 = load %struct.amdgpu_device*, %struct.amdgpu_device** %13, align 8
  %49 = call i32 @amdgpu_job_alloc(%struct.amdgpu_device* %48, i32 1, %struct.amdgpu_job** %14, i32* null)
  store i32 %49, i32* %18, align 4
  %50 = load i32, i32* %18, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %88

53:                                               ; preds = %47
  %54 = load %struct.amdgpu_job*, %struct.amdgpu_job** %14, align 8
  %55 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %54, i32 0, i32 1
  %56 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %55, align 8
  %57 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %56, i64 0
  store %struct.amdgpu_ib* %57, %struct.amdgpu_ib** %15, align 8
  %58 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %15, align 8
  %59 = call i32 @memset(%struct.amdgpu_ib* %58, i32 0, i32 24)
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %15, align 8
  %62 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load i8**, i8*** %11, align 8
  %64 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %15, align 8
  %65 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %64, i32 0, i32 0
  store i8** %63, i8*** %65, align 8
  %66 = load i8*, i8** %12, align 8
  %67 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %15, align 8
  %68 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %67, i32 0, i32 1
  store i8* %66, i8** %68, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = load %struct.amdgpu_job*, %struct.amdgpu_job** %14, align 8
  %71 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %70, i32 0, i32 0
  store i8* %69, i8** %71, align 8
  %72 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %16, align 8
  %73 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %15, align 8
  %74 = load %struct.amdgpu_job*, %struct.amdgpu_job** %14, align 8
  %75 = call i32 @amdgpu_ib_schedule(%struct.amdgpu_ring* %72, i32 1, %struct.amdgpu_ib* %73, %struct.amdgpu_job* %74, %struct.dma_fence** %17)
  store i32 %75, i32* %18, align 4
  %76 = load i32, i32* %18, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %53
  %79 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %83

80:                                               ; preds = %53
  %81 = load %struct.dma_fence*, %struct.dma_fence** %17, align 8
  %82 = call i32 @dma_fence_wait(%struct.dma_fence* %81, i32 0)
  store i32 %82, i32* %18, align 4
  br label %83

83:                                               ; preds = %80, %78
  %84 = load %struct.dma_fence*, %struct.dma_fence** %17, align 8
  %85 = call i32 @dma_fence_put(%struct.dma_fence* %84)
  %86 = load %struct.amdgpu_job*, %struct.amdgpu_job** %14, align 8
  %87 = call i32 @amdgpu_job_free(%struct.amdgpu_job* %86)
  br label %88

88:                                               ; preds = %83, %52, %42
  %89 = load i32, i32* %18, align 4
  ret i32 %89
}

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @amdgpu_job_alloc(%struct.amdgpu_device*, i32, %struct.amdgpu_job**, i32*) #1

declare dso_local i32 @memset(%struct.amdgpu_ib*, i32, i32) #1

declare dso_local i32 @amdgpu_ib_schedule(%struct.amdgpu_ring*, i32, %struct.amdgpu_ib*, %struct.amdgpu_job*, %struct.dma_fence**) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @dma_fence_wait(%struct.dma_fence*, i32) #1

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #1

declare dso_local i32 @amdgpu_job_free(%struct.amdgpu_job*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

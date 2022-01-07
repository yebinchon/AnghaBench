; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_job.c_amdgpu_job_free_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_job.c_amdgpu_job_free_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_job = type { i32, i32*, %struct.dma_fence*, %struct.TYPE_4__ }
%struct.dma_fence = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { %struct.dma_fence }
%struct.amdgpu_ring = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_job_free_resources(%struct.amdgpu_job* %0) #0 {
  %2 = alloca %struct.amdgpu_job*, align 8
  %3 = alloca %struct.amdgpu_ring*, align 8
  %4 = alloca %struct.dma_fence*, align 8
  %5 = alloca i32, align 4
  store %struct.amdgpu_job* %0, %struct.amdgpu_job** %2, align 8
  %6 = load %struct.amdgpu_job*, %struct.amdgpu_job** %2, align 8
  %7 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.amdgpu_ring* @to_amdgpu_ring(i32 %9)
  store %struct.amdgpu_ring* %10, %struct.amdgpu_ring** %3, align 8
  %11 = load %struct.amdgpu_job*, %struct.amdgpu_job** %2, align 8
  %12 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = icmp ne %struct.TYPE_3__* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.amdgpu_job*, %struct.amdgpu_job** %2, align 8
  %18 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  br label %26

22:                                               ; preds = %1
  %23 = load %struct.amdgpu_job*, %struct.amdgpu_job** %2, align 8
  %24 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %23, i32 0, i32 2
  %25 = load %struct.dma_fence*, %struct.dma_fence** %24, align 8
  br label %26

26:                                               ; preds = %22, %16
  %27 = phi %struct.dma_fence* [ %21, %16 ], [ %25, %22 ]
  store %struct.dma_fence* %27, %struct.dma_fence** %4, align 8
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %46, %26
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.amdgpu_job*, %struct.amdgpu_job** %2, align 8
  %31 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ult i32 %29, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %28
  %35 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %36 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.amdgpu_job*, %struct.amdgpu_job** %2, align 8
  %39 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load %struct.dma_fence*, %struct.dma_fence** %4, align 8
  %45 = call i32 @amdgpu_ib_free(i32 %37, i32* %43, %struct.dma_fence* %44)
  br label %46

46:                                               ; preds = %34
  %47 = load i32, i32* %5, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %28

49:                                               ; preds = %28
  ret void
}

declare dso_local %struct.amdgpu_ring* @to_amdgpu_ring(i32) #1

declare dso_local i32 @amdgpu_ib_free(i32, i32*, %struct.dma_fence*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

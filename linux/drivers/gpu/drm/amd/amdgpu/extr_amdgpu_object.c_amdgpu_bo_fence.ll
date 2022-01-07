; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_object.c_amdgpu_bo_fence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_object.c_amdgpu_bo_fence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_bo = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.dma_resv* }
%struct.dma_resv = type { i32 }
%struct.dma_fence = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_bo_fence(%struct.amdgpu_bo* %0, %struct.dma_fence* %1, i32 %2) #0 {
  %4 = alloca %struct.amdgpu_bo*, align 8
  %5 = alloca %struct.dma_fence*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dma_resv*, align 8
  store %struct.amdgpu_bo* %0, %struct.amdgpu_bo** %4, align 8
  store %struct.dma_fence* %1, %struct.dma_fence** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %4, align 8
  %9 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.dma_resv*, %struct.dma_resv** %11, align 8
  store %struct.dma_resv* %12, %struct.dma_resv** %7, align 8
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load %struct.dma_resv*, %struct.dma_resv** %7, align 8
  %17 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %18 = call i32 @dma_resv_add_shared_fence(%struct.dma_resv* %16, %struct.dma_fence* %17)
  br label %23

19:                                               ; preds = %3
  %20 = load %struct.dma_resv*, %struct.dma_resv** %7, align 8
  %21 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %22 = call i32 @dma_resv_add_excl_fence(%struct.dma_resv* %20, %struct.dma_fence* %21)
  br label %23

23:                                               ; preds = %19, %15
  ret void
}

declare dso_local i32 @dma_resv_add_shared_fence(%struct.dma_resv*, %struct.dma_fence*) #1

declare dso_local i32 @dma_resv_add_excl_fence(%struct.dma_resv*, %struct.dma_fence*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

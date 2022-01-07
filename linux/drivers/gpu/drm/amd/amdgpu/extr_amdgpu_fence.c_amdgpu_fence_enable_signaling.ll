; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_fence.c_amdgpu_fence_enable_signaling.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_fence.c_amdgpu_fence_enable_signaling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_fence = type { i32 }
%struct.amdgpu_fence = type { i32, %struct.amdgpu_ring* }
%struct.amdgpu_ring = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"armed on ring %i!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_fence*)* @amdgpu_fence_enable_signaling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_fence_enable_signaling(%struct.dma_fence* %0) #0 {
  %2 = alloca %struct.dma_fence*, align 8
  %3 = alloca %struct.amdgpu_fence*, align 8
  %4 = alloca %struct.amdgpu_ring*, align 8
  store %struct.dma_fence* %0, %struct.dma_fence** %2, align 8
  %5 = load %struct.dma_fence*, %struct.dma_fence** %2, align 8
  %6 = call %struct.amdgpu_fence* @to_amdgpu_fence(%struct.dma_fence* %5)
  store %struct.amdgpu_fence* %6, %struct.amdgpu_fence** %3, align 8
  %7 = load %struct.amdgpu_fence*, %struct.amdgpu_fence** %3, align 8
  %8 = getelementptr inbounds %struct.amdgpu_fence, %struct.amdgpu_fence* %7, i32 0, i32 1
  %9 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  store %struct.amdgpu_ring* %9, %struct.amdgpu_ring** %4, align 8
  %10 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %11 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i32 @timer_pending(i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %17 = call i32 @amdgpu_fence_schedule_fallback(%struct.amdgpu_ring* %16)
  br label %18

18:                                               ; preds = %15, %1
  %19 = load %struct.amdgpu_fence*, %struct.amdgpu_fence** %3, align 8
  %20 = getelementptr inbounds %struct.amdgpu_fence, %struct.amdgpu_fence* %19, i32 0, i32 0
  %21 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %22 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @DMA_FENCE_TRACE(i32* %20, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %23)
  ret i32 1
}

declare dso_local %struct.amdgpu_fence* @to_amdgpu_fence(%struct.dma_fence*) #1

declare dso_local i32 @timer_pending(i32*) #1

declare dso_local i32 @amdgpu_fence_schedule_fallback(%struct.amdgpu_ring*) #1

declare dso_local i32 @DMA_FENCE_TRACE(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

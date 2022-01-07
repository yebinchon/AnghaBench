; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ring.c_amdgpu_ring_soft_recovery.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ring.c_amdgpu_ring_soft_recovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 (%struct.amdgpu_ring*, i32)* }
%struct.TYPE_4__ = type { i32 }
%struct.dma_fence = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_ring_soft_recovery(%struct.amdgpu_ring* %0, i32 %1, %struct.dma_fence* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dma_fence*, align 8
  %8 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.dma_fence* %2, %struct.dma_fence** %7, align 8
  %9 = call i32 (...) @ktime_get()
  %10 = call i32 @ktime_add_us(i32 %9, i32 10000)
  store i32 %10, i32* %8, align 4
  %11 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %12 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = call i64 @amdgpu_sriov_vf(%struct.TYPE_4__* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %3
  %17 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %18 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32 (%struct.amdgpu_ring*, i32)*, i32 (%struct.amdgpu_ring*, i32)** %20, align 8
  %22 = icmp ne i32 (%struct.amdgpu_ring*, i32)* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load %struct.dma_fence*, %struct.dma_fence** %7, align 8
  %25 = icmp ne %struct.dma_fence* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23, %16, %3
  store i32 0, i32* %4, align 4
  br label %57

27:                                               ; preds = %23
  %28 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %29 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = call i32 @atomic_inc(i32* %31)
  br label %33

33:                                               ; preds = %45, %27
  %34 = load %struct.dma_fence*, %struct.dma_fence** %7, align 8
  %35 = call i32 @dma_fence_is_signaled(%struct.dma_fence* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %8, align 4
  %39 = call i32 (...) @ktime_get()
  %40 = call i32 @ktime_sub(i32 %38, i32 %39)
  %41 = call i64 @ktime_to_ns(i32 %40)
  %42 = icmp sgt i64 %41, 0
  br label %43

43:                                               ; preds = %37, %33
  %44 = phi i1 [ false, %33 ], [ %42, %37 ]
  br i1 %44, label %45, label %54

45:                                               ; preds = %43
  %46 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %47 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32 (%struct.amdgpu_ring*, i32)*, i32 (%struct.amdgpu_ring*, i32)** %49, align 8
  %51 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 %50(%struct.amdgpu_ring* %51, i32 %52)
  br label %33

54:                                               ; preds = %43
  %55 = load %struct.dma_fence*, %struct.dma_fence** %7, align 8
  %56 = call i32 @dma_fence_is_signaled(%struct.dma_fence* %55)
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %54, %26
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @ktime_add_us(i32, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i64 @amdgpu_sriov_vf(%struct.TYPE_4__*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @dma_fence_is_signaled(%struct.dma_fence*) #1

declare dso_local i64 @ktime_to_ns(i32) #1

declare dso_local i32 @ktime_sub(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_fence.c_amdgpu_fence_wait_empty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_fence.c_amdgpu_fence_wait_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.dma_fence**, i32 }
%struct.dma_fence = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_fence_wait_empty(%struct.amdgpu_ring* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_ring*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.dma_fence*, align 8
  %6 = alloca %struct.dma_fence**, align 8
  %7 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %3, align 8
  %8 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %9 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @READ_ONCE(i32 %11)
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* %4, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %47

16:                                               ; preds = %1
  %17 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %18 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load %struct.dma_fence**, %struct.dma_fence*** %19, align 8
  %21 = load i64, i64* %4, align 8
  %22 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %23 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = and i64 %21, %25
  %27 = getelementptr inbounds %struct.dma_fence*, %struct.dma_fence** %20, i64 %26
  store %struct.dma_fence** %27, %struct.dma_fence*** %6, align 8
  %28 = call i32 (...) @rcu_read_lock()
  %29 = load %struct.dma_fence**, %struct.dma_fence*** %6, align 8
  %30 = load %struct.dma_fence*, %struct.dma_fence** %29, align 8
  %31 = call %struct.dma_fence* @rcu_dereference(%struct.dma_fence* %30)
  store %struct.dma_fence* %31, %struct.dma_fence** %5, align 8
  %32 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %33 = icmp ne %struct.dma_fence* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %16
  %35 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %36 = call i32 @dma_fence_get_rcu(%struct.dma_fence* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %34, %16
  %39 = call i32 (...) @rcu_read_unlock()
  store i32 0, i32* %2, align 4
  br label %47

40:                                               ; preds = %34
  %41 = call i32 (...) @rcu_read_unlock()
  %42 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %43 = call i32 @dma_fence_wait(%struct.dma_fence* %42, i32 0)
  store i32 %43, i32* %7, align 4
  %44 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %45 = call i32 @dma_fence_put(%struct.dma_fence* %44)
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %40, %38, %15
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.dma_fence* @rcu_dereference(%struct.dma_fence*) #1

declare dso_local i32 @dma_fence_get_rcu(%struct.dma_fence*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @dma_fence_wait(%struct.dma_fence*, i32) #1

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

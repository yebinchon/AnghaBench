; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_benchmark.c_amdgpu_benchmark_do_move.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_benchmark.c_amdgpu_benchmark_do_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.amdgpu_ring* }
%struct.amdgpu_ring = type { i32 }
%struct.dma_fence = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, i32, i32, i32, i32)* @amdgpu_benchmark_do_move to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_benchmark_do_move(%struct.amdgpu_device* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.dma_fence*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.amdgpu_ring*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store %struct.dma_fence* null, %struct.dma_fence** %13, align 8
  %17 = load i64, i64* @jiffies, align 8
  store i64 %17, i64* %11, align 8
  store i32 0, i32* %14, align 4
  br label %18

18:                                               ; preds = %44, %5
  %19 = load i32, i32* %14, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %47

22:                                               ; preds = %18
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %24 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %25, align 8
  store %struct.amdgpu_ring* %26, %struct.amdgpu_ring** %16, align 8
  %27 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %16, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @amdgpu_copy_buffer(%struct.amdgpu_ring* %27, i32 %28, i32 %29, i32 %30, i32* null, %struct.dma_fence** %13, i32 0, i32 0)
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* %15, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %22
  br label %53

35:                                               ; preds = %22
  %36 = load %struct.dma_fence*, %struct.dma_fence** %13, align 8
  %37 = call i32 @dma_fence_wait(%struct.dma_fence* %36, i32 0)
  store i32 %37, i32* %15, align 4
  %38 = load i32, i32* %15, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %53

41:                                               ; preds = %35
  %42 = load %struct.dma_fence*, %struct.dma_fence** %13, align 8
  %43 = call i32 @dma_fence_put(%struct.dma_fence* %42)
  br label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %14, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %14, align 4
  br label %18

47:                                               ; preds = %18
  %48 = load i64, i64* @jiffies, align 8
  store i64 %48, i64* %12, align 8
  %49 = load i64, i64* %12, align 8
  %50 = load i64, i64* %11, align 8
  %51 = sub i64 %49, %50
  %52 = call i32 @jiffies_to_msecs(i64 %51)
  store i32 %52, i32* %15, align 4
  br label %53

53:                                               ; preds = %47, %40, %34
  %54 = load %struct.dma_fence*, %struct.dma_fence** %13, align 8
  %55 = icmp ne %struct.dma_fence* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load %struct.dma_fence*, %struct.dma_fence** %13, align 8
  %58 = call i32 @dma_fence_put(%struct.dma_fence* %57)
  br label %59

59:                                               ; preds = %56, %53
  %60 = load i32, i32* %15, align 4
  ret i32 %60
}

declare dso_local i32 @amdgpu_copy_buffer(%struct.amdgpu_ring*, i32, i32, i32, i32*, %struct.dma_fence**, i32, i32) #1

declare dso_local i32 @dma_fence_wait(%struct.dma_fence*, i32) #1

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

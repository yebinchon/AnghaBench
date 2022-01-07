; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gpu.c_etnaviv_gpu_fence_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gpu.c_etnaviv_gpu_fence_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_fence = type { i32 }
%struct.etnaviv_gpu = type { i32, i32, i32, i32 }
%struct.etnaviv_fence = type { %struct.dma_fence, %struct.etnaviv_gpu* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@etnaviv_fence_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_fence* (%struct.etnaviv_gpu*)* @etnaviv_gpu_fence_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_fence* @etnaviv_gpu_fence_alloc(%struct.etnaviv_gpu* %0) #0 {
  %2 = alloca %struct.dma_fence*, align 8
  %3 = alloca %struct.etnaviv_gpu*, align 8
  %4 = alloca %struct.etnaviv_fence*, align 8
  store %struct.etnaviv_gpu* %0, %struct.etnaviv_gpu** %3, align 8
  %5 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %6 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %5, i32 0, i32 3
  %7 = call i32 @lockdep_assert_held(i32* %6)
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.etnaviv_fence* @kzalloc(i32 16, i32 %8)
  store %struct.etnaviv_fence* %9, %struct.etnaviv_fence** %4, align 8
  %10 = load %struct.etnaviv_fence*, %struct.etnaviv_fence** %4, align 8
  %11 = icmp ne %struct.etnaviv_fence* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store %struct.dma_fence* null, %struct.dma_fence** %2, align 8
  br label %31

13:                                               ; preds = %1
  %14 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %15 = load %struct.etnaviv_fence*, %struct.etnaviv_fence** %4, align 8
  %16 = getelementptr inbounds %struct.etnaviv_fence, %struct.etnaviv_fence* %15, i32 0, i32 1
  store %struct.etnaviv_gpu* %14, %struct.etnaviv_gpu** %16, align 8
  %17 = load %struct.etnaviv_fence*, %struct.etnaviv_fence** %4, align 8
  %18 = getelementptr inbounds %struct.etnaviv_fence, %struct.etnaviv_fence* %17, i32 0, i32 0
  %19 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %20 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %19, i32 0, i32 2
  %21 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %22 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %25 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  %28 = call i32 @dma_fence_init(%struct.dma_fence* %18, i32* @etnaviv_fence_ops, i32* %20, i32 %23, i32 %27)
  %29 = load %struct.etnaviv_fence*, %struct.etnaviv_fence** %4, align 8
  %30 = getelementptr inbounds %struct.etnaviv_fence, %struct.etnaviv_fence* %29, i32 0, i32 0
  store %struct.dma_fence* %30, %struct.dma_fence** %2, align 8
  br label %31

31:                                               ; preds = %13, %12
  %32 = load %struct.dma_fence*, %struct.dma_fence** %2, align 8
  ret %struct.dma_fence* %32
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.etnaviv_fence* @kzalloc(i32, i32) #1

declare dso_local i32 @dma_fence_init(%struct.dma_fence*, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

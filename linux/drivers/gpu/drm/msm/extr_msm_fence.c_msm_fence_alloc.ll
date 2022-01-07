; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_fence.c_msm_fence_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_fence.c_msm_fence_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_fence = type { i32 }
%struct.msm_fence_context = type { i32, i32, i32 }
%struct.msm_fence = type { %struct.dma_fence, %struct.msm_fence_context* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@msm_fence_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dma_fence* @msm_fence_alloc(%struct.msm_fence_context* %0) #0 {
  %2 = alloca %struct.dma_fence*, align 8
  %3 = alloca %struct.msm_fence_context*, align 8
  %4 = alloca %struct.msm_fence*, align 8
  store %struct.msm_fence_context* %0, %struct.msm_fence_context** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.msm_fence* @kzalloc(i32 16, i32 %5)
  store %struct.msm_fence* %6, %struct.msm_fence** %4, align 8
  %7 = load %struct.msm_fence*, %struct.msm_fence** %4, align 8
  %8 = icmp ne %struct.msm_fence* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  %12 = call %struct.dma_fence* @ERR_PTR(i32 %11)
  store %struct.dma_fence* %12, %struct.dma_fence** %2, align 8
  br label %31

13:                                               ; preds = %1
  %14 = load %struct.msm_fence_context*, %struct.msm_fence_context** %3, align 8
  %15 = load %struct.msm_fence*, %struct.msm_fence** %4, align 8
  %16 = getelementptr inbounds %struct.msm_fence, %struct.msm_fence* %15, i32 0, i32 1
  store %struct.msm_fence_context* %14, %struct.msm_fence_context** %16, align 8
  %17 = load %struct.msm_fence*, %struct.msm_fence** %4, align 8
  %18 = getelementptr inbounds %struct.msm_fence, %struct.msm_fence* %17, i32 0, i32 0
  %19 = load %struct.msm_fence_context*, %struct.msm_fence_context** %3, align 8
  %20 = getelementptr inbounds %struct.msm_fence_context, %struct.msm_fence_context* %19, i32 0, i32 2
  %21 = load %struct.msm_fence_context*, %struct.msm_fence_context** %3, align 8
  %22 = getelementptr inbounds %struct.msm_fence_context, %struct.msm_fence_context* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.msm_fence_context*, %struct.msm_fence_context** %3, align 8
  %25 = getelementptr inbounds %struct.msm_fence_context, %struct.msm_fence_context* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  %28 = call i32 @dma_fence_init(%struct.dma_fence* %18, i32* @msm_fence_ops, i32* %20, i32 %23, i32 %27)
  %29 = load %struct.msm_fence*, %struct.msm_fence** %4, align 8
  %30 = getelementptr inbounds %struct.msm_fence, %struct.msm_fence* %29, i32 0, i32 0
  store %struct.dma_fence* %30, %struct.dma_fence** %2, align 8
  br label %31

31:                                               ; preds = %13, %9
  %32 = load %struct.dma_fence*, %struct.dma_fence** %2, align 8
  ret %struct.dma_fence* %32
}

declare dso_local %struct.msm_fence* @kzalloc(i32, i32) #1

declare dso_local %struct.dma_fence* @ERR_PTR(i32) #1

declare dso_local i32 @dma_fence_init(%struct.dma_fence*, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

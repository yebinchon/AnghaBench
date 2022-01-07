; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_sw_fence.c_alloc_dma_fence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_sw_fence.c_alloc_dma_fence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_fence = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@mock_fence_ops = common dso_local global i32 0, align 4
@mock_fence_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_fence* ()* @alloc_dma_fence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_fence* @alloc_dma_fence() #0 {
  %1 = alloca %struct.dma_fence*, align 8
  %2 = load i32, i32* @GFP_KERNEL, align 4
  %3 = call %struct.dma_fence* @kmalloc(i32 4, i32 %2)
  store %struct.dma_fence* %3, %struct.dma_fence** %1, align 8
  %4 = load %struct.dma_fence*, %struct.dma_fence** %1, align 8
  %5 = icmp ne %struct.dma_fence* %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load %struct.dma_fence*, %struct.dma_fence** %1, align 8
  %8 = call i32 @dma_fence_init(%struct.dma_fence* %7, i32* @mock_fence_ops, i32* @mock_fence_lock, i32 0, i32 0)
  br label %9

9:                                                ; preds = %6, %0
  %10 = load %struct.dma_fence*, %struct.dma_fence** %1, align 8
  ret %struct.dma_fence* %10
}

declare dso_local %struct.dma_fence* @kmalloc(i32, i32) #1

declare dso_local i32 @dma_fence_init(%struct.dma_fence*, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

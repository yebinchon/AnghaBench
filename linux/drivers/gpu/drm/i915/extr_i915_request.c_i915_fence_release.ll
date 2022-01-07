; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_request.c_i915_fence_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_request.c_i915_fence_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.dma_fence = type { i32 }
%struct.i915_request = type { i32, i32 }

@global = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_fence*)* @i915_fence_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i915_fence_release(%struct.dma_fence* %0) #0 {
  %2 = alloca %struct.dma_fence*, align 8
  %3 = alloca %struct.i915_request*, align 8
  store %struct.dma_fence* %0, %struct.dma_fence** %2, align 8
  %4 = load %struct.dma_fence*, %struct.dma_fence** %2, align 8
  %5 = call %struct.i915_request* @to_request(%struct.dma_fence* %4)
  store %struct.i915_request* %5, %struct.i915_request** %3, align 8
  %6 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %7 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %6, i32 0, i32 1
  %8 = call i32 @i915_sw_fence_fini(i32* %7)
  %9 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %10 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %9, i32 0, i32 0
  %11 = call i32 @i915_sw_fence_fini(i32* %10)
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @global, i32 0, i32 0), align 4
  %13 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %14 = call i32 @kmem_cache_free(i32 %12, %struct.i915_request* %13)
  ret void
}

declare dso_local %struct.i915_request* @to_request(%struct.dma_fence*) #1

declare dso_local i32 @i915_sw_fence_fini(i32*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.i915_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

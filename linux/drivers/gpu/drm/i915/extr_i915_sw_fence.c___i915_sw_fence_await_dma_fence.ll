; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_sw_fence.c___i915_sw_fence_await_dma_fence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_sw_fence.c___i915_sw_fence_await_dma_fence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_sw_fence = type { i32 }
%struct.dma_fence = type { i32 }
%struct.i915_sw_dma_fence_cb = type { i32, %struct.i915_sw_fence* }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__i915_sw_fence_await_dma_fence(%struct.i915_sw_fence* %0, %struct.dma_fence* %1, %struct.i915_sw_dma_fence_cb* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i915_sw_fence*, align 8
  %6 = alloca %struct.dma_fence*, align 8
  %7 = alloca %struct.i915_sw_dma_fence_cb*, align 8
  %8 = alloca i32, align 4
  store %struct.i915_sw_fence* %0, %struct.i915_sw_fence** %5, align 8
  store %struct.dma_fence* %1, %struct.dma_fence** %6, align 8
  store %struct.i915_sw_dma_fence_cb* %2, %struct.i915_sw_dma_fence_cb** %7, align 8
  %9 = load %struct.i915_sw_fence*, %struct.i915_sw_fence** %5, align 8
  %10 = call i32 @debug_fence_assert(%struct.i915_sw_fence* %9)
  %11 = load %struct.dma_fence*, %struct.dma_fence** %6, align 8
  %12 = call i64 @dma_fence_is_signaled(%struct.dma_fence* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %41

15:                                               ; preds = %3
  %16 = load %struct.i915_sw_fence*, %struct.i915_sw_fence** %5, align 8
  %17 = load %struct.i915_sw_dma_fence_cb*, %struct.i915_sw_dma_fence_cb** %7, align 8
  %18 = getelementptr inbounds %struct.i915_sw_dma_fence_cb, %struct.i915_sw_dma_fence_cb* %17, i32 0, i32 1
  store %struct.i915_sw_fence* %16, %struct.i915_sw_fence** %18, align 8
  %19 = load %struct.i915_sw_fence*, %struct.i915_sw_fence** %5, align 8
  %20 = call i32 @i915_sw_fence_await(%struct.i915_sw_fence* %19)
  %21 = load %struct.dma_fence*, %struct.dma_fence** %6, align 8
  %22 = load %struct.i915_sw_dma_fence_cb*, %struct.i915_sw_dma_fence_cb** %7, align 8
  %23 = getelementptr inbounds %struct.i915_sw_dma_fence_cb, %struct.i915_sw_dma_fence_cb* %22, i32 0, i32 0
  %24 = call i32 @dma_fence_add_callback(%struct.dma_fence* %21, i32* %23, i32 (%struct.dma_fence*, i32*)* @__dma_i915_sw_fence_wake)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %15
  store i32 1, i32* %8, align 4
  br label %39

28:                                               ; preds = %15
  %29 = load %struct.dma_fence*, %struct.dma_fence** %6, align 8
  %30 = load %struct.i915_sw_dma_fence_cb*, %struct.i915_sw_dma_fence_cb** %7, align 8
  %31 = getelementptr inbounds %struct.i915_sw_dma_fence_cb, %struct.i915_sw_dma_fence_cb* %30, i32 0, i32 0
  %32 = call i32 @__dma_i915_sw_fence_wake(%struct.dma_fence* %29, i32* %31)
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @ENOENT, align 4
  %35 = sub nsw i32 0, %34
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %37, %28
  br label %39

39:                                               ; preds = %38, %27
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %39, %14
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @debug_fence_assert(%struct.i915_sw_fence*) #1

declare dso_local i64 @dma_fence_is_signaled(%struct.dma_fence*) #1

declare dso_local i32 @i915_sw_fence_await(%struct.i915_sw_fence*) #1

declare dso_local i32 @dma_fence_add_callback(%struct.dma_fence*, i32*, i32 (%struct.dma_fence*, i32*)*) #1

declare dso_local i32 @__dma_i915_sw_fence_wake(%struct.dma_fence*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_sw_fence.c_wrap_dma_fence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_sw_fence.c_wrap_dma_fence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_sw_fence = type { i32 }
%struct.dma_fence = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_NOWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.i915_sw_fence* (%struct.dma_fence*, i64)* @wrap_dma_fence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.i915_sw_fence* @wrap_dma_fence(%struct.dma_fence* %0, i64 %1) #0 {
  %3 = alloca %struct.i915_sw_fence*, align 8
  %4 = alloca %struct.dma_fence*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.i915_sw_fence*, align 8
  %7 = alloca i32, align 4
  store %struct.dma_fence* %0, %struct.dma_fence** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = call %struct.i915_sw_fence* (...) @alloc_fence()
  store %struct.i915_sw_fence* %8, %struct.i915_sw_fence** %6, align 8
  %9 = load %struct.i915_sw_fence*, %struct.i915_sw_fence** %6, align 8
  %10 = icmp ne %struct.i915_sw_fence* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.i915_sw_fence* @ERR_PTR(i32 %13)
  store %struct.i915_sw_fence* %14, %struct.i915_sw_fence** %3, align 8
  br label %32

15:                                               ; preds = %2
  %16 = load %struct.i915_sw_fence*, %struct.i915_sw_fence** %6, align 8
  %17 = load %struct.dma_fence*, %struct.dma_fence** %4, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load i32, i32* @GFP_NOWAIT, align 4
  %20 = call i32 @i915_sw_fence_await_dma_fence(%struct.i915_sw_fence* %16, %struct.dma_fence* %17, i64 %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.i915_sw_fence*, %struct.i915_sw_fence** %6, align 8
  %22 = call i32 @i915_sw_fence_commit(%struct.i915_sw_fence* %21)
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %15
  %26 = load %struct.i915_sw_fence*, %struct.i915_sw_fence** %6, align 8
  %27 = call i32 @free_fence(%struct.i915_sw_fence* %26)
  %28 = load i32, i32* %7, align 4
  %29 = call %struct.i915_sw_fence* @ERR_PTR(i32 %28)
  store %struct.i915_sw_fence* %29, %struct.i915_sw_fence** %3, align 8
  br label %32

30:                                               ; preds = %15
  %31 = load %struct.i915_sw_fence*, %struct.i915_sw_fence** %6, align 8
  store %struct.i915_sw_fence* %31, %struct.i915_sw_fence** %3, align 8
  br label %32

32:                                               ; preds = %30, %25, %11
  %33 = load %struct.i915_sw_fence*, %struct.i915_sw_fence** %3, align 8
  ret %struct.i915_sw_fence* %33
}

declare dso_local %struct.i915_sw_fence* @alloc_fence(...) #1

declare dso_local %struct.i915_sw_fence* @ERR_PTR(i32) #1

declare dso_local i32 @i915_sw_fence_await_dma_fence(%struct.i915_sw_fence*, %struct.dma_fence*, i64, i32) #1

declare dso_local i32 @i915_sw_fence_commit(%struct.i915_sw_fence*) #1

declare dso_local i32 @free_fence(%struct.i915_sw_fence*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

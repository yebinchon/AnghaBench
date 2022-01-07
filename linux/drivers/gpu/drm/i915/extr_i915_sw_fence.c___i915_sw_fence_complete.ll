; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_sw_fence.c___i915_sw_fence_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_sw_fence.c___i915_sw_fence_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_sw_fence = type { i32 }
%struct.list_head = type { i32 }

@DEBUG_FENCE_IDLE = common dso_local global i32 0, align 4
@DEBUG_FENCE_NOTIFY = common dso_local global i32 0, align 4
@FENCE_COMPLETE = common dso_local global i32 0, align 4
@NOTIFY_DONE = common dso_local global i64 0, align 8
@FENCE_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i915_sw_fence*, %struct.list_head*)* @__i915_sw_fence_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__i915_sw_fence_complete(%struct.i915_sw_fence* %0, %struct.list_head* %1) #0 {
  %3 = alloca %struct.i915_sw_fence*, align 8
  %4 = alloca %struct.list_head*, align 8
  store %struct.i915_sw_fence* %0, %struct.i915_sw_fence** %3, align 8
  store %struct.list_head* %1, %struct.list_head** %4, align 8
  %5 = load %struct.i915_sw_fence*, %struct.i915_sw_fence** %3, align 8
  %6 = call i32 @debug_fence_assert(%struct.i915_sw_fence* %5)
  %7 = load %struct.i915_sw_fence*, %struct.i915_sw_fence** %3, align 8
  %8 = getelementptr inbounds %struct.i915_sw_fence, %struct.i915_sw_fence* %7, i32 0, i32 0
  %9 = call i32 @atomic_dec_and_test(i32* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %36

12:                                               ; preds = %2
  %13 = load %struct.i915_sw_fence*, %struct.i915_sw_fence** %3, align 8
  %14 = load i32, i32* @DEBUG_FENCE_IDLE, align 4
  %15 = load i32, i32* @DEBUG_FENCE_NOTIFY, align 4
  %16 = call i32 @debug_fence_set_state(%struct.i915_sw_fence* %13, i32 %14, i32 %15)
  %17 = load %struct.i915_sw_fence*, %struct.i915_sw_fence** %3, align 8
  %18 = load i32, i32* @FENCE_COMPLETE, align 4
  %19 = call i64 @__i915_sw_fence_notify(%struct.i915_sw_fence* %17, i32 %18)
  %20 = load i64, i64* @NOTIFY_DONE, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %12
  br label %36

23:                                               ; preds = %12
  %24 = load %struct.i915_sw_fence*, %struct.i915_sw_fence** %3, align 8
  %25 = load i32, i32* @DEBUG_FENCE_NOTIFY, align 4
  %26 = load i32, i32* @DEBUG_FENCE_IDLE, align 4
  %27 = call i32 @debug_fence_set_state(%struct.i915_sw_fence* %24, i32 %25, i32 %26)
  %28 = load %struct.i915_sw_fence*, %struct.i915_sw_fence** %3, align 8
  %29 = load %struct.list_head*, %struct.list_head** %4, align 8
  %30 = call i32 @__i915_sw_fence_wake_up_all(%struct.i915_sw_fence* %28, %struct.list_head* %29)
  %31 = load %struct.i915_sw_fence*, %struct.i915_sw_fence** %3, align 8
  %32 = call i32 @debug_fence_destroy(%struct.i915_sw_fence* %31)
  %33 = load %struct.i915_sw_fence*, %struct.i915_sw_fence** %3, align 8
  %34 = load i32, i32* @FENCE_FREE, align 4
  %35 = call i64 @__i915_sw_fence_notify(%struct.i915_sw_fence* %33, i32 %34)
  br label %36

36:                                               ; preds = %23, %22, %11
  ret void
}

declare dso_local i32 @debug_fence_assert(%struct.i915_sw_fence*) #1

declare dso_local i32 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @debug_fence_set_state(%struct.i915_sw_fence*, i32, i32) #1

declare dso_local i64 @__i915_sw_fence_notify(%struct.i915_sw_fence*, i32) #1

declare dso_local i32 @__i915_sw_fence_wake_up_all(%struct.i915_sw_fence*, %struct.list_head*) #1

declare dso_local i32 @debug_fence_destroy(%struct.i915_sw_fence*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_sw_fence.c_i915_sw_fence_check_if_after.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_sw_fence.c_i915_sw_fence_check_if_after.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_sw_fence = type { i32 }

@CONFIG_DRM_I915_SW_FENCE_CHECK_DAG = common dso_local global i32 0, align 4
@i915_sw_fence_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_sw_fence*, %struct.i915_sw_fence*)* @i915_sw_fence_check_if_after to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i915_sw_fence_check_if_after(%struct.i915_sw_fence* %0, %struct.i915_sw_fence* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i915_sw_fence*, align 8
  %5 = alloca %struct.i915_sw_fence*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.i915_sw_fence* %0, %struct.i915_sw_fence** %4, align 8
  store %struct.i915_sw_fence* %1, %struct.i915_sw_fence** %5, align 8
  %8 = load i32, i32* @CONFIG_DRM_I915_SW_FENCE_CHECK_DAG, align 4
  %9 = call i32 @IS_ENABLED(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %23

12:                                               ; preds = %2
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @spin_lock_irqsave(i32* @i915_sw_fence_lock, i64 %13)
  %15 = load %struct.i915_sw_fence*, %struct.i915_sw_fence** %4, align 8
  %16 = load %struct.i915_sw_fence*, %struct.i915_sw_fence** %5, align 8
  %17 = call i32 @__i915_sw_fence_check_if_after(%struct.i915_sw_fence* %15, %struct.i915_sw_fence* %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.i915_sw_fence*, %struct.i915_sw_fence** %4, align 8
  %19 = call i32 @__i915_sw_fence_clear_checked_bit(%struct.i915_sw_fence* %18)
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @spin_unlock_irqrestore(i32* @i915_sw_fence_lock, i64 %20)
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %12, %11
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__i915_sw_fence_check_if_after(%struct.i915_sw_fence*, %struct.i915_sw_fence*) #1

declare dso_local i32 @__i915_sw_fence_clear_checked_bit(%struct.i915_sw_fence*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

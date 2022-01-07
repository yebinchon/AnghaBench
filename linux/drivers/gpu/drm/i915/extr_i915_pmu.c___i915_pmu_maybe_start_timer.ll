; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_pmu.c___i915_pmu_maybe_start_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_pmu.c___i915_pmu_maybe_start_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_pmu = type { i32, i32, i32 }

@PERIOD = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL_PINNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i915_pmu*)* @__i915_pmu_maybe_start_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__i915_pmu_maybe_start_timer(%struct.i915_pmu* %0) #0 {
  %2 = alloca %struct.i915_pmu*, align 8
  store %struct.i915_pmu* %0, %struct.i915_pmu** %2, align 8
  %3 = load %struct.i915_pmu*, %struct.i915_pmu** %2, align 8
  %4 = getelementptr inbounds %struct.i915_pmu, %struct.i915_pmu* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %23, label %7

7:                                                ; preds = %1
  %8 = load %struct.i915_pmu*, %struct.i915_pmu** %2, align 8
  %9 = call i64 @pmu_needs_timer(%struct.i915_pmu* %8, i32 1)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %7
  %12 = load %struct.i915_pmu*, %struct.i915_pmu** %2, align 8
  %13 = getelementptr inbounds %struct.i915_pmu, %struct.i915_pmu* %12, i32 0, i32 0
  store i32 1, i32* %13, align 4
  %14 = call i32 (...) @ktime_get()
  %15 = load %struct.i915_pmu*, %struct.i915_pmu** %2, align 8
  %16 = getelementptr inbounds %struct.i915_pmu, %struct.i915_pmu* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  %17 = load %struct.i915_pmu*, %struct.i915_pmu** %2, align 8
  %18 = getelementptr inbounds %struct.i915_pmu, %struct.i915_pmu* %17, i32 0, i32 1
  %19 = load i32, i32* @PERIOD, align 4
  %20 = call i32 @ns_to_ktime(i32 %19)
  %21 = load i32, i32* @HRTIMER_MODE_REL_PINNED, align 4
  %22 = call i32 @hrtimer_start_range_ns(i32* %18, i32 %20, i32 0, i32 %21)
  br label %23

23:                                               ; preds = %11, %7, %1
  ret void
}

declare dso_local i64 @pmu_needs_timer(%struct.i915_pmu*, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @hrtimer_start_range_ns(i32*, i32, i32, i32) #1

declare dso_local i32 @ns_to_ktime(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

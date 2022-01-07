; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c_effective_prio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c_effective_prio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_request = type { i32 }

@I915_PRIORITY_UNPREEMPTABLE = common dso_local global i32 0, align 4
@I915_PRIORITY_NOSEMAPHORE = common dso_local global i32 0, align 4
@__NO_PREEMPTION = common dso_local global i32 0, align 4
@I915_PRIORITY_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_request*)* @effective_prio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @effective_prio(%struct.i915_request* %0) #0 {
  %2 = alloca %struct.i915_request*, align 8
  %3 = alloca i32, align 4
  store %struct.i915_request* %0, %struct.i915_request** %2, align 8
  %4 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %5 = call i32 @rq_prio(%struct.i915_request* %4)
  store i32 %5, i32* %3, align 4
  %6 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %7 = call i64 @i915_request_has_nopreempt(%struct.i915_request* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @I915_PRIORITY_UNPREEMPTABLE, align 4
  store i32 %10, i32* %3, align 4
  br label %11

11:                                               ; preds = %9, %1
  %12 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %13 = call i64 @__i915_request_has_started(%struct.i915_request* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load i32, i32* @I915_PRIORITY_NOSEMAPHORE, align 4
  %17 = load i32, i32* %3, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %15, %11
  %20 = load i32, i32* @__NO_PREEMPTION, align 4
  %21 = load i32, i32* @I915_PRIORITY_MASK, align 4
  %22 = xor i32 %21, -1
  %23 = and i32 %20, %22
  %24 = call i32 @BUILD_BUG_ON(i32 %23)
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @__NO_PREEMPTION, align 4
  %27 = or i32 %25, %26
  ret i32 %27
}

declare dso_local i32 @rq_prio(%struct.i915_request*) #1

declare dso_local i64 @i915_request_has_nopreempt(%struct.i915_request*) #1

declare dso_local i64 @__i915_request_has_started(%struct.i915_request*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

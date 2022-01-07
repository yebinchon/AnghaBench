; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_wait.c___fence_set_priority.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_wait.c___fence_set_priority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_fence = type { i32 }
%struct.i915_sched_attr = type { i32 }
%struct.i915_request = type { %struct.intel_engine_cs* }
%struct.intel_engine_cs = type { i32 (%struct.i915_request.0*, %struct.i915_sched_attr.1*)* }
%struct.i915_request.0 = type opaque
%struct.i915_sched_attr.1 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_fence*, %struct.i915_sched_attr*)* @__fence_set_priority to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__fence_set_priority(%struct.dma_fence* %0, %struct.i915_sched_attr* %1) #0 {
  %3 = alloca %struct.dma_fence*, align 8
  %4 = alloca %struct.i915_sched_attr*, align 8
  %5 = alloca %struct.i915_request*, align 8
  %6 = alloca %struct.intel_engine_cs*, align 8
  store %struct.dma_fence* %0, %struct.dma_fence** %3, align 8
  store %struct.i915_sched_attr* %1, %struct.i915_sched_attr** %4, align 8
  %7 = load %struct.dma_fence*, %struct.dma_fence** %3, align 8
  %8 = call i64 @dma_fence_is_signaled(%struct.dma_fence* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load %struct.dma_fence*, %struct.dma_fence** %3, align 8
  %12 = call i32 @dma_fence_is_i915(%struct.dma_fence* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10, %2
  br label %39

15:                                               ; preds = %10
  %16 = load %struct.dma_fence*, %struct.dma_fence** %3, align 8
  %17 = call %struct.i915_request* @to_request(%struct.dma_fence* %16)
  store %struct.i915_request* %17, %struct.i915_request** %5, align 8
  %18 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %19 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %18, i32 0, i32 0
  %20 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %19, align 8
  store %struct.intel_engine_cs* %20, %struct.intel_engine_cs** %6, align 8
  %21 = call i32 (...) @local_bh_disable()
  %22 = call i32 (...) @rcu_read_lock()
  %23 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %6, align 8
  %24 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %23, i32 0, i32 0
  %25 = load i32 (%struct.i915_request.0*, %struct.i915_sched_attr.1*)*, i32 (%struct.i915_request.0*, %struct.i915_sched_attr.1*)** %24, align 8
  %26 = icmp ne i32 (%struct.i915_request.0*, %struct.i915_sched_attr.1*)* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %15
  %28 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %6, align 8
  %29 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %28, i32 0, i32 0
  %30 = load i32 (%struct.i915_request.0*, %struct.i915_sched_attr.1*)*, i32 (%struct.i915_request.0*, %struct.i915_sched_attr.1*)** %29, align 8
  %31 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %32 = bitcast %struct.i915_request* %31 to %struct.i915_request.0*
  %33 = load %struct.i915_sched_attr*, %struct.i915_sched_attr** %4, align 8
  %34 = bitcast %struct.i915_sched_attr* %33 to %struct.i915_sched_attr.1*
  %35 = call i32 %30(%struct.i915_request.0* %32, %struct.i915_sched_attr.1* %34)
  br label %36

36:                                               ; preds = %27, %15
  %37 = call i32 (...) @rcu_read_unlock()
  %38 = call i32 (...) @local_bh_enable()
  br label %39

39:                                               ; preds = %36, %14
  ret void
}

declare dso_local i64 @dma_fence_is_signaled(%struct.dma_fence*) #1

declare dso_local i32 @dma_fence_is_i915(%struct.dma_fence*) #1

declare dso_local %struct.i915_request* @to_request(%struct.dma_fence*) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @local_bh_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

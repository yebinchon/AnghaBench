; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_scheduler.c_sched_lock_engine.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_scheduler.c_sched_lock_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_sched_node = type { i32 }
%struct.intel_engine_cs = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sched_cache = type { i32 }
%struct.i915_request = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.intel_engine_cs* (%struct.i915_sched_node*, %struct.intel_engine_cs*, %struct.sched_cache*)* @sched_lock_engine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.intel_engine_cs* @sched_lock_engine(%struct.i915_sched_node* %0, %struct.intel_engine_cs* %1, %struct.sched_cache* %2) #0 {
  %4 = alloca %struct.i915_sched_node*, align 8
  %5 = alloca %struct.intel_engine_cs*, align 8
  %6 = alloca %struct.sched_cache*, align 8
  %7 = alloca %struct.i915_request*, align 8
  %8 = alloca %struct.intel_engine_cs*, align 8
  store %struct.i915_sched_node* %0, %struct.i915_sched_node** %4, align 8
  store %struct.intel_engine_cs* %1, %struct.intel_engine_cs** %5, align 8
  store %struct.sched_cache* %2, %struct.sched_cache** %6, align 8
  %9 = load %struct.i915_sched_node*, %struct.i915_sched_node** %4, align 8
  %10 = call %struct.i915_request* @node_to_request(%struct.i915_sched_node* %9)
  store %struct.i915_request* %10, %struct.i915_request** %7, align 8
  %11 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %5, align 8
  %12 = icmp ne %struct.intel_engine_cs* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @GEM_BUG_ON(i32 %14)
  br label %16

16:                                               ; preds = %23, %3
  %17 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %5, align 8
  %18 = load %struct.i915_request*, %struct.i915_request** %7, align 8
  %19 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.intel_engine_cs* @READ_ONCE(i32 %20)
  store %struct.intel_engine_cs* %21, %struct.intel_engine_cs** %8, align 8
  %22 = icmp ne %struct.intel_engine_cs* %17, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %16
  %24 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %5, align 8
  %25 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = call i32 @spin_unlock(i32* %26)
  %28 = load %struct.sched_cache*, %struct.sched_cache** %6, align 8
  %29 = call i32 @memset(%struct.sched_cache* %28, i32 0, i32 4)
  %30 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %8, align 8
  %31 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = call i32 @spin_lock(i32* %32)
  %34 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %8, align 8
  store %struct.intel_engine_cs* %34, %struct.intel_engine_cs** %5, align 8
  br label %16

35:                                               ; preds = %16
  %36 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %5, align 8
  %37 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %8, align 8
  %38 = icmp ne %struct.intel_engine_cs* %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @GEM_BUG_ON(i32 %39)
  %41 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %5, align 8
  ret %struct.intel_engine_cs* %41
}

declare dso_local %struct.i915_request* @node_to_request(%struct.i915_sched_node*) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local %struct.intel_engine_cs* @READ_ONCE(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @memset(%struct.sched_cache*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

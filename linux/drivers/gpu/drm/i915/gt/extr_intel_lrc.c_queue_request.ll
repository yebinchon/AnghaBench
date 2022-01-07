; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c_queue_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c_queue_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { i32 }
%struct.i915_sched_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_engine_cs*, %struct.i915_sched_node*, i32)* @queue_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @queue_request(%struct.intel_engine_cs* %0, %struct.i915_sched_node* %1, i32 %2) #0 {
  %4 = alloca %struct.intel_engine_cs*, align 8
  %5 = alloca %struct.i915_sched_node*, align 8
  %6 = alloca i32, align 4
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %4, align 8
  store %struct.i915_sched_node* %1, %struct.i915_sched_node** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.i915_sched_node*, %struct.i915_sched_node** %5, align 8
  %8 = getelementptr inbounds %struct.i915_sched_node, %struct.i915_sched_node* %7, i32 0, i32 0
  %9 = call i32 @list_empty(i32* %8)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @GEM_BUG_ON(i32 %12)
  %14 = load %struct.i915_sched_node*, %struct.i915_sched_node** %5, align 8
  %15 = getelementptr inbounds %struct.i915_sched_node, %struct.i915_sched_node* %14, i32 0, i32 0
  %16 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @i915_sched_lookup_priolist(%struct.intel_engine_cs* %16, i32 %17)
  %19 = call i32 @list_add_tail(i32* %15, i32 %18)
  ret void
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32) #1

declare dso_local i32 @i915_sched_lookup_priolist(%struct.intel_engine_cs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

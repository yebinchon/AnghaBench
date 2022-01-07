; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c___execlists_schedule_in.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c___execlists_schedule_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { i32 }
%struct.i915_request = type { %struct.intel_context*, %struct.intel_engine_cs* }
%struct.intel_context = type { i32 }

@INTEL_CONTEXT_SCHEDULE_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.intel_engine_cs* (%struct.i915_request*)* @__execlists_schedule_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.intel_engine_cs* @__execlists_schedule_in(%struct.i915_request* %0) #0 {
  %2 = alloca %struct.i915_request*, align 8
  %3 = alloca %struct.intel_engine_cs*, align 8
  %4 = alloca %struct.intel_context*, align 8
  store %struct.i915_request* %0, %struct.i915_request** %2, align 8
  %5 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %6 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %5, i32 0, i32 1
  %7 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %6, align 8
  store %struct.intel_engine_cs* %7, %struct.intel_engine_cs** %3, align 8
  %8 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %9 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %8, i32 0, i32 0
  %10 = load %struct.intel_context*, %struct.intel_context** %9, align 8
  store %struct.intel_context* %10, %struct.intel_context** %4, align 8
  %11 = load %struct.intel_context*, %struct.intel_context** %4, align 8
  %12 = call i32 @intel_context_get(%struct.intel_context* %11)
  %13 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %14 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @intel_gt_pm_get(i32 %15)
  %17 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %18 = load i32, i32* @INTEL_CONTEXT_SCHEDULE_IN, align 4
  %19 = call i32 @execlists_context_status_change(%struct.i915_request* %17, i32 %18)
  %20 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %21 = call i32 @intel_engine_context_in(%struct.intel_engine_cs* %20)
  %22 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  ret %struct.intel_engine_cs* %22
}

declare dso_local i32 @intel_context_get(%struct.intel_context*) #1

declare dso_local i32 @intel_gt_pm_get(i32) #1

declare dso_local i32 @execlists_context_status_change(%struct.i915_request*, i32) #1

declare dso_local i32 @intel_engine_context_in(%struct.intel_engine_cs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

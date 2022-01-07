; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c___execlists_schedule_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c___execlists_schedule_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_request = type { %struct.intel_context* }
%struct.intel_context = type { %struct.intel_engine_cs* }
%struct.intel_engine_cs = type { i32 }

@INTEL_CONTEXT_SCHEDULE_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i915_request*, %struct.intel_engine_cs*)* @__execlists_schedule_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__execlists_schedule_out(%struct.i915_request* %0, %struct.intel_engine_cs* %1) #0 {
  %3 = alloca %struct.i915_request*, align 8
  %4 = alloca %struct.intel_engine_cs*, align 8
  %5 = alloca %struct.intel_context*, align 8
  store %struct.i915_request* %0, %struct.i915_request** %3, align 8
  store %struct.intel_engine_cs* %1, %struct.intel_engine_cs** %4, align 8
  %6 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %7 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %6, i32 0, i32 0
  %8 = load %struct.intel_context*, %struct.intel_context** %7, align 8
  store %struct.intel_context* %8, %struct.intel_context** %5, align 8
  %9 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %10 = call i32 @intel_engine_context_out(%struct.intel_engine_cs* %9)
  %11 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %12 = load i32, i32* @INTEL_CONTEXT_SCHEDULE_OUT, align 4
  %13 = call i32 @execlists_context_status_change(%struct.i915_request* %11, i32 %12)
  %14 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %15 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @intel_gt_pm_put(i32 %16)
  %18 = load %struct.intel_context*, %struct.intel_context** %5, align 8
  %19 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %18, i32 0, i32 0
  %20 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %19, align 8
  %21 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %22 = icmp ne %struct.intel_engine_cs* %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %25 = load %struct.intel_context*, %struct.intel_context** %5, align 8
  %26 = call i32 @kick_siblings(%struct.i915_request* %24, %struct.intel_context* %25)
  br label %27

27:                                               ; preds = %23, %2
  %28 = load %struct.intel_context*, %struct.intel_context** %5, align 8
  %29 = call i32 @intel_context_put(%struct.intel_context* %28)
  ret void
}

declare dso_local i32 @intel_engine_context_out(%struct.intel_engine_cs*) #1

declare dso_local i32 @execlists_context_status_change(%struct.i915_request*, i32) #1

declare dso_local i32 @intel_gt_pm_put(i32) #1

declare dso_local i32 @kick_siblings(%struct.i915_request*, %struct.intel_context*) #1

declare dso_local i32 @intel_context_put(%struct.intel_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

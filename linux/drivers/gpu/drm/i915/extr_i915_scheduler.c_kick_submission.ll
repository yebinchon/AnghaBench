; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_scheduler.c_kick_submission.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_scheduler.c_kick_submission.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.i915_request** }
%struct.i915_request = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_engine_cs*, i32)* @kick_submission to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kick_submission(%struct.intel_engine_cs* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_engine_cs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i915_request*, align 8
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %7 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load %struct.i915_request**, %struct.i915_request*** %8, align 8
  %10 = load %struct.i915_request*, %struct.i915_request** %9, align 8
  store %struct.i915_request* %10, %struct.i915_request** %5, align 8
  %11 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %12 = icmp ne %struct.i915_request* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %16 = call i32 @rq_prio(%struct.i915_request* %15)
  %17 = call i32 @i915_scheduler_need_preempt(i32 %14, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %13, %2
  br label %25

20:                                               ; preds = %13
  %21 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %22 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @tasklet_hi_schedule(i32* %23)
  br label %25

25:                                               ; preds = %20, %19
  ret void
}

declare dso_local i32 @i915_scheduler_need_preempt(i32, i32) #1

declare dso_local i32 @rq_prio(%struct.i915_request*) #1

declare dso_local i32 @tasklet_hi_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

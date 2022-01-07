; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c_submit_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c_submit_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { %struct.intel_engine_execlists }
%struct.intel_engine_execlists = type { i64 }
%struct.i915_request = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_engine_cs*, %struct.i915_request*)* @submit_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @submit_queue(%struct.intel_engine_cs* %0, %struct.i915_request* %1) #0 {
  %3 = alloca %struct.intel_engine_cs*, align 8
  %4 = alloca %struct.i915_request*, align 8
  %5 = alloca %struct.intel_engine_execlists*, align 8
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %3, align 8
  store %struct.i915_request* %1, %struct.i915_request** %4, align 8
  %6 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %7 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %6, i32 0, i32 0
  store %struct.intel_engine_execlists* %7, %struct.intel_engine_execlists** %5, align 8
  %8 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %9 = call i64 @rq_prio(%struct.i915_request* %8)
  %10 = load %struct.intel_engine_execlists*, %struct.intel_engine_execlists** %5, align 8
  %11 = getelementptr inbounds %struct.intel_engine_execlists, %struct.intel_engine_execlists* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sle i64 %9, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %22

15:                                               ; preds = %2
  %16 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %17 = call i64 @rq_prio(%struct.i915_request* %16)
  %18 = load %struct.intel_engine_execlists*, %struct.intel_engine_execlists** %5, align 8
  %19 = getelementptr inbounds %struct.intel_engine_execlists, %struct.intel_engine_execlists* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %21 = call i32 @__submit_queue_imm(%struct.intel_engine_cs* %20)
  br label %22

22:                                               ; preds = %15, %14
  ret void
}

declare dso_local i64 @rq_prio(%struct.i915_request*) #1

declare dso_local i32 @__submit_queue_imm(%struct.intel_engine_cs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

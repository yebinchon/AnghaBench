; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_submission.c_cancel_port_requests.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_submission.c_cancel_port_requests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_execlists = type { i32, %struct.i915_request** }
%struct.i915_request = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_engine_execlists*)* @cancel_port_requests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cancel_port_requests(%struct.intel_engine_execlists* %0) #0 {
  %2 = alloca %struct.intel_engine_execlists*, align 8
  %3 = alloca %struct.i915_request**, align 8
  %4 = alloca %struct.i915_request*, align 8
  store %struct.intel_engine_execlists* %0, %struct.intel_engine_execlists** %2, align 8
  %5 = load %struct.intel_engine_execlists*, %struct.intel_engine_execlists** %2, align 8
  %6 = getelementptr inbounds %struct.intel_engine_execlists, %struct.intel_engine_execlists* %5, i32 0, i32 1
  %7 = load %struct.i915_request**, %struct.i915_request*** %6, align 8
  store %struct.i915_request** %7, %struct.i915_request*** %3, align 8
  br label %8

8:                                                ; preds = %15, %1
  %9 = load %struct.i915_request**, %struct.i915_request*** %3, align 8
  %10 = load %struct.i915_request*, %struct.i915_request** %9, align 8
  store %struct.i915_request* %10, %struct.i915_request** %4, align 8
  %11 = icmp ne %struct.i915_request* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %8
  %13 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %14 = call i32 @schedule_out(%struct.i915_request* %13)
  br label %15

15:                                               ; preds = %12
  %16 = load %struct.i915_request**, %struct.i915_request*** %3, align 8
  %17 = getelementptr inbounds %struct.i915_request*, %struct.i915_request** %16, i32 1
  store %struct.i915_request** %17, %struct.i915_request*** %3, align 8
  br label %8

18:                                               ; preds = %8
  %19 = load %struct.intel_engine_execlists*, %struct.intel_engine_execlists** %2, align 8
  %20 = getelementptr inbounds %struct.intel_engine_execlists, %struct.intel_engine_execlists* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.i915_request** @memset(i32 %21, i32 0, i32 4)
  %23 = load %struct.intel_engine_execlists*, %struct.intel_engine_execlists** %2, align 8
  %24 = getelementptr inbounds %struct.intel_engine_execlists, %struct.intel_engine_execlists* %23, i32 0, i32 1
  store %struct.i915_request** %22, %struct.i915_request*** %24, align 8
  ret void
}

declare dso_local i32 @schedule_out(%struct.i915_request*) #1

declare dso_local %struct.i915_request** @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

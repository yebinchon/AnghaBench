; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c_execlists_schedule_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c_execlists_schedule_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_request = type { %struct.intel_context* }
%struct.intel_context = type { i32 }
%struct.intel_engine_cs = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i915_request*)* @execlists_schedule_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @execlists_schedule_out(%struct.i915_request* %0) #0 {
  %2 = alloca %struct.i915_request*, align 8
  %3 = alloca %struct.intel_context*, align 8
  %4 = alloca %struct.intel_engine_cs*, align 8
  %5 = alloca %struct.intel_engine_cs*, align 8
  store %struct.i915_request* %0, %struct.i915_request** %2, align 8
  %6 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %7 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %6, i32 0, i32 0
  %8 = load %struct.intel_context*, %struct.intel_context** %7, align 8
  store %struct.intel_context* %8, %struct.intel_context** %3, align 8
  %9 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %10 = call i32 @trace_i915_request_out(%struct.i915_request* %9)
  %11 = load %struct.intel_context*, %struct.intel_context** %3, align 8
  %12 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.intel_engine_cs* @READ_ONCE(i32 %13)
  store %struct.intel_engine_cs* %14, %struct.intel_engine_cs** %5, align 8
  br label %15

15:                                               ; preds = %25, %1
  %16 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %5, align 8
  %17 = call i64 @ptr_unmask_bits(%struct.intel_engine_cs* %16, i32 2)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %5, align 8
  %21 = call %struct.intel_engine_cs* @ptr_dec(%struct.intel_engine_cs* %20)
  br label %23

22:                                               ; preds = %15
  br label %23

23:                                               ; preds = %22, %19
  %24 = phi %struct.intel_engine_cs* [ %21, %19 ], [ null, %22 ]
  store %struct.intel_engine_cs* %24, %struct.intel_engine_cs** %4, align 8
  br label %25

25:                                               ; preds = %23
  %26 = load %struct.intel_context*, %struct.intel_context** %3, align 8
  %27 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %26, i32 0, i32 0
  %28 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %29 = call i32 @try_cmpxchg(i32* %27, %struct.intel_engine_cs** %5, %struct.intel_engine_cs* %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br i1 %31, label %15, label %32

32:                                               ; preds = %25
  %33 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %34 = icmp ne %struct.intel_engine_cs* %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %37 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %5, align 8
  %38 = call i32 @__execlists_schedule_out(%struct.i915_request* %36, %struct.intel_engine_cs* %37)
  br label %39

39:                                               ; preds = %35, %32
  %40 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %41 = call i32 @i915_request_put(%struct.i915_request* %40)
  ret void
}

declare dso_local i32 @trace_i915_request_out(%struct.i915_request*) #1

declare dso_local %struct.intel_engine_cs* @READ_ONCE(i32) #1

declare dso_local i64 @ptr_unmask_bits(%struct.intel_engine_cs*, i32) #1

declare dso_local %struct.intel_engine_cs* @ptr_dec(%struct.intel_engine_cs*) #1

declare dso_local i32 @try_cmpxchg(i32*, %struct.intel_engine_cs**, %struct.intel_engine_cs*) #1

declare dso_local i32 @__execlists_schedule_out(%struct.i915_request*, %struct.intel_engine_cs*) #1

declare dso_local i32 @i915_request_put(%struct.i915_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

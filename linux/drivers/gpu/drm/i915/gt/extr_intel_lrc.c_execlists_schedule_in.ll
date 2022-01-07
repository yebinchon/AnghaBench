; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c_execlists_schedule_in.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c_execlists_schedule_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_request = type { i64, %struct.intel_context* }
%struct.intel_context = type { i32 }
%struct.intel_engine_cs = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.i915_request* (%struct.i915_request*, i32)* @execlists_schedule_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.i915_request* @execlists_schedule_in(%struct.i915_request* %0, i32 %1) #0 {
  %3 = alloca %struct.i915_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_context*, align 8
  %6 = alloca %struct.intel_engine_cs*, align 8
  store %struct.i915_request* %0, %struct.i915_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %8 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %7, i32 0, i32 1
  %9 = load %struct.intel_context*, %struct.intel_context** %8, align 8
  store %struct.intel_context* %9, %struct.intel_context** %5, align 8
  %10 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %11 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @intel_engine_pm_is_awake(i64 %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @GEM_BUG_ON(i32 %16)
  %18 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @trace_i915_request_in(%struct.i915_request* %18, i32 %19)
  %21 = load %struct.intel_context*, %struct.intel_context** %5, align 8
  %22 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.intel_engine_cs* @READ_ONCE(i32 %23)
  store %struct.intel_engine_cs* %24, %struct.intel_engine_cs** %6, align 8
  br label %25

25:                                               ; preds = %36, %2
  %26 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %6, align 8
  %27 = icmp ne %struct.intel_engine_cs* %26, null
  br i1 %27, label %35, label %28

28:                                               ; preds = %25
  %29 = load %struct.intel_context*, %struct.intel_context** %5, align 8
  %30 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %33 = call i32 @__execlists_schedule_in(%struct.i915_request* %32)
  %34 = call i32 @WRITE_ONCE(i32 %31, i32 %33)
  br label %44

35:                                               ; preds = %25
  br label %36

36:                                               ; preds = %35
  %37 = load %struct.intel_context*, %struct.intel_context** %5, align 8
  %38 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %37, i32 0, i32 0
  %39 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %6, align 8
  %40 = call i32 @ptr_inc(%struct.intel_engine_cs* %39)
  %41 = call i32 @try_cmpxchg(i32* %38, %struct.intel_engine_cs** %6, i32 %40)
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  br i1 %43, label %25, label %44

44:                                               ; preds = %36, %28
  %45 = load %struct.intel_context*, %struct.intel_context** %5, align 8
  %46 = call i64 @intel_context_inflight(%struct.intel_context* %45)
  %47 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %48 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %46, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @GEM_BUG_ON(i32 %51)
  %53 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %54 = call %struct.i915_request* @i915_request_get(%struct.i915_request* %53)
  ret %struct.i915_request* %54
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @intel_engine_pm_is_awake(i64) #1

declare dso_local i32 @trace_i915_request_in(%struct.i915_request*, i32) #1

declare dso_local %struct.intel_engine_cs* @READ_ONCE(i32) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @__execlists_schedule_in(%struct.i915_request*) #1

declare dso_local i32 @try_cmpxchg(i32*, %struct.intel_engine_cs**, i32) #1

declare dso_local i32 @ptr_inc(%struct.intel_engine_cs*) #1

declare dso_local i64 @intel_context_inflight(%struct.intel_context*) #1

declare dso_local %struct.i915_request* @i915_request_get(%struct.i915_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

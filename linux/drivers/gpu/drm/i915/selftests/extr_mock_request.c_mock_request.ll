; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_mock_request.c_mock_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_mock_request.c_mock_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_request = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.intel_context = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.i915_request* @mock_request(%struct.intel_context* %0, i64 %1) #0 {
  %3 = alloca %struct.i915_request*, align 8
  %4 = alloca %struct.intel_context*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.i915_request*, align 8
  store %struct.intel_context* %0, %struct.intel_context** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.intel_context*, %struct.intel_context** %4, align 8
  %8 = call %struct.i915_request* @intel_context_create_request(%struct.intel_context* %7)
  store %struct.i915_request* %8, %struct.i915_request** %6, align 8
  %9 = load %struct.i915_request*, %struct.i915_request** %6, align 8
  %10 = call i64 @IS_ERR(%struct.i915_request* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store %struct.i915_request* null, %struct.i915_request** %3, align 8
  br label %19

13:                                               ; preds = %2
  %14 = load i64, i64* %5, align 8
  %15 = load %struct.i915_request*, %struct.i915_request** %6, align 8
  %16 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i64 %14, i64* %17, align 8
  %18 = load %struct.i915_request*, %struct.i915_request** %6, align 8
  store %struct.i915_request* %18, %struct.i915_request** %3, align 8
  br label %19

19:                                               ; preds = %13, %12
  %20 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  ret %struct.i915_request* %20
}

declare dso_local %struct.i915_request* @intel_context_create_request(%struct.intel_context*) #1

declare dso_local i64 @IS_ERR(%struct.i915_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

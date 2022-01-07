; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c_unwind_wa_tail.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c_unwind_wa_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_request = type { i32, i32, i64 }

@WA_TAIL_BYTES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i915_request*)* @unwind_wa_tail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unwind_wa_tail(%struct.i915_request* %0) #0 {
  %2 = alloca %struct.i915_request*, align 8
  store %struct.i915_request* %0, %struct.i915_request** %2, align 8
  %3 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %4 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %7 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @WA_TAIL_BYTES, align 8
  %10 = sub nsw i64 %8, %9
  %11 = call i32 @intel_ring_wrap(i32 %5, i64 %10)
  %12 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %13 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %15 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %18 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @assert_ring_tail_valid(i32 %16, i32 %19)
  ret void
}

declare dso_local i32 @intel_ring_wrap(i32, i64) #1

declare dso_local i32 @assert_ring_tail_valid(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

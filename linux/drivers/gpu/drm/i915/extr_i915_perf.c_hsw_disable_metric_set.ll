; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_perf.c_hsw_disable_metric_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_perf.c_hsw_disable_metric_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_perf_stream = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }

@GEN6_UCGCTL1 = common dso_local global i32 0, align 4
@GEN6_CSUNIT_CLOCK_GATE_DISABLE = common dso_local global i32 0, align 4
@GEN7_MISCCPCTL = common dso_local global i32 0, align 4
@GEN7_DOP_CLOCK_GATE_ENABLE = common dso_local global i32 0, align 4
@GDT_CHICKEN_BITS = common dso_local global i32 0, align 4
@GT_NOA_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i915_perf_stream*)* @hsw_disable_metric_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hsw_disable_metric_set(%struct.i915_perf_stream* %0) #0 {
  %2 = alloca %struct.i915_perf_stream*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  store %struct.i915_perf_stream* %0, %struct.i915_perf_stream** %2, align 8
  %4 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %2, align 8
  %5 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %4, i32 0, i32 0
  %6 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  store %struct.drm_i915_private* %6, %struct.drm_i915_private** %3, align 8
  %7 = load i32, i32* @GEN6_UCGCTL1, align 4
  %8 = load i32, i32* @GEN6_UCGCTL1, align 4
  %9 = call i32 @I915_READ(i32 %8)
  %10 = load i32, i32* @GEN6_CSUNIT_CLOCK_GATE_DISABLE, align 4
  %11 = xor i32 %10, -1
  %12 = and i32 %9, %11
  %13 = call i32 @I915_WRITE(i32 %7, i32 %12)
  %14 = load i32, i32* @GEN7_MISCCPCTL, align 4
  %15 = load i32, i32* @GEN7_MISCCPCTL, align 4
  %16 = call i32 @I915_READ(i32 %15)
  %17 = load i32, i32* @GEN7_DOP_CLOCK_GATE_ENABLE, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @I915_WRITE(i32 %14, i32 %18)
  %20 = load i32, i32* @GDT_CHICKEN_BITS, align 4
  %21 = load i32, i32* @GDT_CHICKEN_BITS, align 4
  %22 = call i32 @I915_READ(i32 %21)
  %23 = load i32, i32* @GT_NOA_ENABLE, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  %26 = call i32 @I915_WRITE(i32 %20, i32 %25)
  ret void
}

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @I915_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

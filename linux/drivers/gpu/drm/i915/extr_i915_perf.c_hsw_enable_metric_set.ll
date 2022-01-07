; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_perf.c_hsw_enable_metric_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_perf.c_hsw_enable_metric_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_perf_stream = type { %struct.i915_oa_config*, %struct.drm_i915_private* }
%struct.i915_oa_config = type { i32, i32, i32, i32 }
%struct.drm_i915_private = type { i32 }

@GEN7_MISCCPCTL = common dso_local global i32 0, align 4
@GEN7_DOP_CLOCK_GATE_ENABLE = common dso_local global i32 0, align 4
@GEN6_UCGCTL1 = common dso_local global i32 0, align 4
@GEN6_CSUNIT_CLOCK_GATE_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_perf_stream*)* @hsw_enable_metric_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hsw_enable_metric_set(%struct.i915_perf_stream* %0) #0 {
  %2 = alloca %struct.i915_perf_stream*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.i915_oa_config*, align 8
  store %struct.i915_perf_stream* %0, %struct.i915_perf_stream** %2, align 8
  %5 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %2, align 8
  %6 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %5, i32 0, i32 1
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  store %struct.drm_i915_private* %7, %struct.drm_i915_private** %3, align 8
  %8 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %2, align 8
  %9 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %8, i32 0, i32 0
  %10 = load %struct.i915_oa_config*, %struct.i915_oa_config** %9, align 8
  store %struct.i915_oa_config* %10, %struct.i915_oa_config** %4, align 8
  %11 = load i32, i32* @GEN7_MISCCPCTL, align 4
  %12 = load i32, i32* @GEN7_MISCCPCTL, align 4
  %13 = call i32 @I915_READ(i32 %12)
  %14 = load i32, i32* @GEN7_DOP_CLOCK_GATE_ENABLE, align 4
  %15 = xor i32 %14, -1
  %16 = and i32 %13, %15
  %17 = call i32 @I915_WRITE(i32 %11, i32 %16)
  %18 = load i32, i32* @GEN6_UCGCTL1, align 4
  %19 = load i32, i32* @GEN6_UCGCTL1, align 4
  %20 = call i32 @I915_READ(i32 %19)
  %21 = load i32, i32* @GEN6_CSUNIT_CLOCK_GATE_DISABLE, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @I915_WRITE(i32 %18, i32 %22)
  %24 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %25 = load %struct.i915_oa_config*, %struct.i915_oa_config** %4, align 8
  %26 = getelementptr inbounds %struct.i915_oa_config, %struct.i915_oa_config* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.i915_oa_config*, %struct.i915_oa_config** %4, align 8
  %29 = getelementptr inbounds %struct.i915_oa_config, %struct.i915_oa_config* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @config_oa_regs(%struct.drm_i915_private* %24, i32 %27, i32 %30)
  %32 = call i32 (...) @delay_after_mux()
  %33 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %34 = load %struct.i915_oa_config*, %struct.i915_oa_config** %4, align 8
  %35 = getelementptr inbounds %struct.i915_oa_config, %struct.i915_oa_config* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.i915_oa_config*, %struct.i915_oa_config** %4, align 8
  %38 = getelementptr inbounds %struct.i915_oa_config, %struct.i915_oa_config* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @config_oa_regs(%struct.drm_i915_private* %33, i32 %36, i32 %39)
  ret i32 0
}

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @config_oa_regs(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @delay_after_mux(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

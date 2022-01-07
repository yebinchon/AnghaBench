; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_i965gm_init_clock_gating.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_i965gm_init_clock_gating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.intel_uncore }
%struct.intel_uncore = type { i32 }

@RENCLK_GATE_D1 = common dso_local global i32 0, align 4
@I965_RCC_CLOCK_GATE_DISABLE = common dso_local global i32 0, align 4
@RENCLK_GATE_D2 = common dso_local global i32 0, align 4
@DSPCLK_GATE_D = common dso_local global i32 0, align 4
@RAMCLK_GATE_D = common dso_local global i32 0, align 4
@DEUC = common dso_local global i32 0, align 4
@MI_ARB_STATE = common dso_local global i32 0, align 4
@MI_ARB_DISPLAY_TRICKLE_FEED_DISABLE = common dso_local global i32 0, align 4
@CACHE_MODE_0 = common dso_local global i32 0, align 4
@RC_OP_FLUSH_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @i965gm_init_clock_gating to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i965gm_init_clock_gating(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca %struct.intel_uncore*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %4 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %5 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %4, i32 0, i32 0
  store %struct.intel_uncore* %5, %struct.intel_uncore** %3, align 8
  %6 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %7 = load i32, i32* @RENCLK_GATE_D1, align 4
  %8 = load i32, i32* @I965_RCC_CLOCK_GATE_DISABLE, align 4
  %9 = call i32 @intel_uncore_write(%struct.intel_uncore* %6, i32 %7, i32 %8)
  %10 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %11 = load i32, i32* @RENCLK_GATE_D2, align 4
  %12 = call i32 @intel_uncore_write(%struct.intel_uncore* %10, i32 %11, i32 0)
  %13 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %14 = load i32, i32* @DSPCLK_GATE_D, align 4
  %15 = call i32 @intel_uncore_write(%struct.intel_uncore* %13, i32 %14, i32 0)
  %16 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %17 = load i32, i32* @RAMCLK_GATE_D, align 4
  %18 = call i32 @intel_uncore_write(%struct.intel_uncore* %16, i32 %17, i32 0)
  %19 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %20 = load i32, i32* @DEUC, align 4
  %21 = call i32 @intel_uncore_write16(%struct.intel_uncore* %19, i32 %20, i32 0)
  %22 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %23 = load i32, i32* @MI_ARB_STATE, align 4
  %24 = load i32, i32* @MI_ARB_DISPLAY_TRICKLE_FEED_DISABLE, align 4
  %25 = call i32 @_MASKED_BIT_ENABLE(i32 %24)
  %26 = call i32 @intel_uncore_write(%struct.intel_uncore* %22, i32 %23, i32 %25)
  %27 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %28 = load i32, i32* @CACHE_MODE_0, align 4
  %29 = load i32, i32* @RC_OP_FLUSH_ENABLE, align 4
  %30 = call i32 @_MASKED_BIT_DISABLE(i32 %29)
  %31 = call i32 @intel_uncore_write(%struct.intel_uncore* %27, i32 %28, i32 %30)
  ret void
}

declare dso_local i32 @intel_uncore_write(%struct.intel_uncore*, i32, i32) #1

declare dso_local i32 @intel_uncore_write16(%struct.intel_uncore*, i32, i32) #1

declare dso_local i32 @_MASKED_BIT_ENABLE(i32) #1

declare dso_local i32 @_MASKED_BIT_DISABLE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

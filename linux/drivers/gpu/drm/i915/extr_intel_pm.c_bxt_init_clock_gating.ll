; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_bxt_init_clock_gating.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_bxt_init_clock_gating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@GEN8_UCGCTL6 = common dso_local global i32 0, align 4
@GEN8_SDEUNIT_CLOCK_GATE_DISABLE = common dso_local global i32 0, align 4
@GEN8_HDCUNIT_CLOCK_GATE_DISABLE_HDCREQ = common dso_local global i32 0, align 4
@GEN9_CLKGATE_DIS_0 = common dso_local global i32 0, align 4
@PWM1_GATING_DIS = common dso_local global i32 0, align 4
@PWM2_GATING_DIS = common dso_local global i32 0, align 4
@RM_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @bxt_init_clock_gating to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxt_init_clock_gating(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %3 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %4 = call i32 @gen9_init_clock_gating(%struct.drm_i915_private* %3)
  %5 = load i32, i32* @GEN8_UCGCTL6, align 4
  %6 = load i32, i32* @GEN8_UCGCTL6, align 4
  %7 = call i32 @I915_READ(i32 %6)
  %8 = load i32, i32* @GEN8_SDEUNIT_CLOCK_GATE_DISABLE, align 4
  %9 = or i32 %7, %8
  %10 = call i32 @I915_WRITE(i32 %5, i32 %9)
  %11 = load i32, i32* @GEN8_UCGCTL6, align 4
  %12 = load i32, i32* @GEN8_UCGCTL6, align 4
  %13 = call i32 @I915_READ(i32 %12)
  %14 = load i32, i32* @GEN8_HDCUNIT_CLOCK_GATE_DISABLE_HDCREQ, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @I915_WRITE(i32 %11, i32 %15)
  %17 = load i32, i32* @GEN9_CLKGATE_DIS_0, align 4
  %18 = load i32, i32* @GEN9_CLKGATE_DIS_0, align 4
  %19 = call i32 @I915_READ(i32 %18)
  %20 = load i32, i32* @PWM1_GATING_DIS, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @PWM2_GATING_DIS, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @I915_WRITE(i32 %17, i32 %23)
  %25 = load i32, i32* @RM_TIMEOUT, align 4
  %26 = call i32 @MMIO_TIMEOUT_US(i32 950)
  %27 = call i32 @I915_WRITE(i32 %25, i32 %26)
  ret void
}

declare dso_local i32 @gen9_init_clock_gating(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @MMIO_TIMEOUT_US(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

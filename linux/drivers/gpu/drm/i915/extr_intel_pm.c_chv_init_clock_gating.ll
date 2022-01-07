; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_chv_init_clock_gating.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_chv_init_clock_gating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@GEN7_FF_THREAD_MODE = common dso_local global i32 0, align 4
@GEN8_FF_DS_REF_CNT_FFME = common dso_local global i32 0, align 4
@GEN7_FF_VS_REF_CNT_FFME = common dso_local global i32 0, align 4
@GEN6_RC_SLEEP_PSMI_CONTROL = common dso_local global i32 0, align 4
@GEN8_RC_SEMA_IDLE_MSG_DISABLE = common dso_local global i32 0, align 4
@GEN6_UCGCTL1 = common dso_local global i32 0, align 4
@GEN6_CSUNIT_CLOCK_GATE_DISABLE = common dso_local global i32 0, align 4
@GEN8_UCGCTL6 = common dso_local global i32 0, align 4
@GEN8_SDEUNIT_CLOCK_GATE_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @chv_init_clock_gating to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chv_init_clock_gating(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %3 = load i32, i32* @GEN7_FF_THREAD_MODE, align 4
  %4 = load i32, i32* @GEN7_FF_THREAD_MODE, align 4
  %5 = call i32 @I915_READ(i32 %4)
  %6 = load i32, i32* @GEN8_FF_DS_REF_CNT_FFME, align 4
  %7 = load i32, i32* @GEN7_FF_VS_REF_CNT_FFME, align 4
  %8 = or i32 %6, %7
  %9 = xor i32 %8, -1
  %10 = and i32 %5, %9
  %11 = call i32 @I915_WRITE(i32 %3, i32 %10)
  %12 = load i32, i32* @GEN6_RC_SLEEP_PSMI_CONTROL, align 4
  %13 = load i32, i32* @GEN8_RC_SEMA_IDLE_MSG_DISABLE, align 4
  %14 = call i32 @_MASKED_BIT_ENABLE(i32 %13)
  %15 = call i32 @I915_WRITE(i32 %12, i32 %14)
  %16 = load i32, i32* @GEN6_UCGCTL1, align 4
  %17 = load i32, i32* @GEN6_UCGCTL1, align 4
  %18 = call i32 @I915_READ(i32 %17)
  %19 = load i32, i32* @GEN6_CSUNIT_CLOCK_GATE_DISABLE, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @I915_WRITE(i32 %16, i32 %20)
  %22 = load i32, i32* @GEN8_UCGCTL6, align 4
  %23 = load i32, i32* @GEN8_UCGCTL6, align 4
  %24 = call i32 @I915_READ(i32 %23)
  %25 = load i32, i32* @GEN8_SDEUNIT_CLOCK_GATE_DISABLE, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @I915_WRITE(i32 %22, i32 %26)
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %29 = call i32 @gen8_set_l3sqc_credits(%struct.drm_i915_private* %28, i32 38, i32 2)
  ret void
}

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @_MASKED_BIT_ENABLE(i32) #1

declare dso_local i32 @gen8_set_l3sqc_credits(%struct.drm_i915_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_i85x_init_clock_gating.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_i85x_init_clock_gating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@RENCLK_GATE_D1 = common dso_local global i32 0, align 4
@SV_CLOCK_GATE_DISABLE = common dso_local global i32 0, align 4
@MI_STATE = common dso_local global i32 0, align 4
@MI_AGPBUSY_INT_EN = common dso_local global i32 0, align 4
@MI_AGPBUSY_830_MODE = common dso_local global i32 0, align 4
@MEM_MODE = common dso_local global i32 0, align 4
@MEM_DISPLAY_TRICKLE_FEED_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @i85x_init_clock_gating to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i85x_init_clock_gating(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %3 = load i32, i32* @RENCLK_GATE_D1, align 4
  %4 = load i32, i32* @SV_CLOCK_GATE_DISABLE, align 4
  %5 = call i32 @I915_WRITE(i32 %3, i32 %4)
  %6 = load i32, i32* @MI_STATE, align 4
  %7 = load i32, i32* @MI_AGPBUSY_INT_EN, align 4
  %8 = call i32 @_MASKED_BIT_ENABLE(i32 %7)
  %9 = load i32, i32* @MI_AGPBUSY_830_MODE, align 4
  %10 = call i32 @_MASKED_BIT_DISABLE(i32 %9)
  %11 = or i32 %8, %10
  %12 = call i32 @I915_WRITE(i32 %6, i32 %11)
  %13 = load i32, i32* @MEM_MODE, align 4
  %14 = load i32, i32* @MEM_DISPLAY_TRICKLE_FEED_DISABLE, align 4
  %15 = call i32 @_MASKED_BIT_ENABLE(i32 %14)
  %16 = call i32 @I915_WRITE(i32 %13, i32 %15)
  ret void
}

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @_MASKED_BIT_ENABLE(i32) #1

declare dso_local i32 @_MASKED_BIT_DISABLE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

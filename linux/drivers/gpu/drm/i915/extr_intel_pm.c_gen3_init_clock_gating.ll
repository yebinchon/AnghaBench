; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_gen3_init_clock_gating.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_gen3_init_clock_gating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@D_STATE = common dso_local global i32 0, align 4
@DSTATE_PLL_D3_OFF = common dso_local global i32 0, align 4
@DSTATE_GFX_CLOCK_GATING = common dso_local global i32 0, align 4
@DSTATE_DOT_CLOCK_GATING = common dso_local global i32 0, align 4
@ECOSKPD = common dso_local global i32 0, align 4
@ECO_GATING_CX_ONLY = common dso_local global i32 0, align 4
@ECO_FLIP_DONE = common dso_local global i32 0, align 4
@INSTPM = common dso_local global i32 0, align 4
@INSTPM_AGPBUSY_INT_EN = common dso_local global i32 0, align 4
@MI_ARB_STATE = common dso_local global i32 0, align 4
@MI_ARB_C3_LP_WRITE_ENABLE = common dso_local global i32 0, align 4
@MI_ARB_DISPLAY_TRICKLE_FEED_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @gen3_init_clock_gating to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen3_init_clock_gating(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %4 = load i32, i32* @D_STATE, align 4
  %5 = call i32 @I915_READ(i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* @DSTATE_PLL_D3_OFF, align 4
  %7 = load i32, i32* @DSTATE_GFX_CLOCK_GATING, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @DSTATE_DOT_CLOCK_GATING, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* %3, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* @D_STATE, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @I915_WRITE(i32 %13, i32 %14)
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %17 = call i64 @IS_PINEVIEW(%struct.drm_i915_private* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load i32, i32* @ECOSKPD, align 4
  %21 = load i32, i32* @ECO_GATING_CX_ONLY, align 4
  %22 = call i32 @_MASKED_BIT_ENABLE(i32 %21)
  %23 = call i32 @I915_WRITE(i32 %20, i32 %22)
  br label %24

24:                                               ; preds = %19, %1
  %25 = load i32, i32* @ECOSKPD, align 4
  %26 = load i32, i32* @ECO_FLIP_DONE, align 4
  %27 = call i32 @_MASKED_BIT_DISABLE(i32 %26)
  %28 = call i32 @I915_WRITE(i32 %25, i32 %27)
  %29 = load i32, i32* @INSTPM, align 4
  %30 = load i32, i32* @INSTPM_AGPBUSY_INT_EN, align 4
  %31 = call i32 @_MASKED_BIT_ENABLE(i32 %30)
  %32 = call i32 @I915_WRITE(i32 %29, i32 %31)
  %33 = load i32, i32* @MI_ARB_STATE, align 4
  %34 = load i32, i32* @MI_ARB_C3_LP_WRITE_ENABLE, align 4
  %35 = call i32 @_MASKED_BIT_ENABLE(i32 %34)
  %36 = call i32 @I915_WRITE(i32 %33, i32 %35)
  %37 = load i32, i32* @MI_ARB_STATE, align 4
  %38 = load i32, i32* @MI_ARB_DISPLAY_TRICKLE_FEED_DISABLE, align 4
  %39 = call i32 @_MASKED_BIT_ENABLE(i32 %38)
  %40 = call i32 @I915_WRITE(i32 %37, i32 %39)
  ret void
}

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i64 @IS_PINEVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @_MASKED_BIT_ENABLE(i32) #1

declare dso_local i32 @_MASKED_BIT_DISABLE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

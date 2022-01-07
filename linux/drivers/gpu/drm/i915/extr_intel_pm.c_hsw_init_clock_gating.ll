; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_hsw_init_clock_gating.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_hsw_init_clock_gating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@HSW_SCRATCH1 = common dso_local global i32 0, align 4
@HSW_SCRATCH1_L3_DATA_ATOMICS_DISABLE = common dso_local global i32 0, align 4
@HSW_ROW_CHICKEN3 = common dso_local global i32 0, align 4
@HSW_ROW_CHICKEN3_L3_GLOBAL_ATOMICS_DISABLE = common dso_local global i32 0, align 4
@GEN7_SQ_CHICKEN_MBCUNIT_CONFIG = common dso_local global i32 0, align 4
@GEN7_SQ_CHICKEN_MBCUNIT_SQINTMOB = common dso_local global i32 0, align 4
@GEN7_FF_THREAD_MODE = common dso_local global i32 0, align 4
@GEN7_FF_VS_REF_CNT_FFME = common dso_local global i32 0, align 4
@CACHE_MODE_0_GEN7 = common dso_local global i32 0, align 4
@RC_OP_FLUSH_ENABLE = common dso_local global i32 0, align 4
@HIZ_RAW_STALL_OPT_DISABLE = common dso_local global i32 0, align 4
@CACHE_MODE_1 = common dso_local global i32 0, align 4
@PIXEL_SUBSPAN_COLLECT_OPT_DISABLE = common dso_local global i32 0, align 4
@GEN7_GT_MODE = common dso_local global i32 0, align 4
@GEN6_WIZ_HASHING_MASK = common dso_local global i32 0, align 4
@GEN6_WIZ_HASHING_16x4 = common dso_local global i32 0, align 4
@HALF_SLICE_CHICKEN3 = common dso_local global i32 0, align 4
@HSW_SAMPLE_C_PERFORMANCE = common dso_local global i32 0, align 4
@GAM_ECOCHK = common dso_local global i32 0, align 4
@HSW_ECOCHK_ARB_PRIO_SOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @hsw_init_clock_gating to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hsw_init_clock_gating(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %3 = load i32, i32* @HSW_SCRATCH1, align 4
  %4 = load i32, i32* @HSW_SCRATCH1_L3_DATA_ATOMICS_DISABLE, align 4
  %5 = call i32 @I915_WRITE(i32 %3, i32 %4)
  %6 = load i32, i32* @HSW_ROW_CHICKEN3, align 4
  %7 = load i32, i32* @HSW_ROW_CHICKEN3_L3_GLOBAL_ATOMICS_DISABLE, align 4
  %8 = call i32 @_MASKED_BIT_ENABLE(i32 %7)
  %9 = call i32 @I915_WRITE(i32 %6, i32 %8)
  %10 = load i32, i32* @GEN7_SQ_CHICKEN_MBCUNIT_CONFIG, align 4
  %11 = load i32, i32* @GEN7_SQ_CHICKEN_MBCUNIT_CONFIG, align 4
  %12 = call i32 @I915_READ(i32 %11)
  %13 = load i32, i32* @GEN7_SQ_CHICKEN_MBCUNIT_SQINTMOB, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @I915_WRITE(i32 %10, i32 %14)
  %16 = load i32, i32* @GEN7_FF_THREAD_MODE, align 4
  %17 = load i32, i32* @GEN7_FF_THREAD_MODE, align 4
  %18 = call i32 @I915_READ(i32 %17)
  %19 = load i32, i32* @GEN7_FF_VS_REF_CNT_FFME, align 4
  %20 = xor i32 %19, -1
  %21 = and i32 %18, %20
  %22 = call i32 @I915_WRITE(i32 %16, i32 %21)
  %23 = load i32, i32* @CACHE_MODE_0_GEN7, align 4
  %24 = load i32, i32* @RC_OP_FLUSH_ENABLE, align 4
  %25 = call i32 @_MASKED_BIT_DISABLE(i32 %24)
  %26 = call i32 @I915_WRITE(i32 %23, i32 %25)
  %27 = load i32, i32* @CACHE_MODE_0_GEN7, align 4
  %28 = load i32, i32* @HIZ_RAW_STALL_OPT_DISABLE, align 4
  %29 = call i32 @_MASKED_BIT_DISABLE(i32 %28)
  %30 = call i32 @I915_WRITE(i32 %27, i32 %29)
  %31 = load i32, i32* @CACHE_MODE_1, align 4
  %32 = load i32, i32* @PIXEL_SUBSPAN_COLLECT_OPT_DISABLE, align 4
  %33 = call i32 @_MASKED_BIT_ENABLE(i32 %32)
  %34 = call i32 @I915_WRITE(i32 %31, i32 %33)
  %35 = load i32, i32* @GEN7_GT_MODE, align 4
  %36 = load i32, i32* @GEN6_WIZ_HASHING_MASK, align 4
  %37 = load i32, i32* @GEN6_WIZ_HASHING_16x4, align 4
  %38 = call i32 @_MASKED_FIELD(i32 %36, i32 %37)
  %39 = call i32 @I915_WRITE(i32 %35, i32 %38)
  %40 = load i32, i32* @HALF_SLICE_CHICKEN3, align 4
  %41 = load i32, i32* @HSW_SAMPLE_C_PERFORMANCE, align 4
  %42 = call i32 @_MASKED_BIT_ENABLE(i32 %41)
  %43 = call i32 @I915_WRITE(i32 %40, i32 %42)
  %44 = load i32, i32* @GAM_ECOCHK, align 4
  %45 = load i32, i32* @GAM_ECOCHK, align 4
  %46 = call i32 @I915_READ(i32 %45)
  %47 = load i32, i32* @HSW_ECOCHK_ARB_PRIO_SOL, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @I915_WRITE(i32 %44, i32 %48)
  %50 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %51 = call i32 @lpt_init_clock_gating(%struct.drm_i915_private* %50)
  ret void
}

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @_MASKED_BIT_ENABLE(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @_MASKED_BIT_DISABLE(i32) #1

declare dso_local i32 @_MASKED_FIELD(i32, i32) #1

declare dso_local i32 @lpt_init_clock_gating(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

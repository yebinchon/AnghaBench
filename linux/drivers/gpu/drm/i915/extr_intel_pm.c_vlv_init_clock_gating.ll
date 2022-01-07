; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_vlv_init_clock_gating.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_vlv_init_clock_gating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@_3D_CHICKEN3 = common dso_local global i32 0, align 4
@_3D_CHICKEN_SF_DISABLE_OBJEND_CULL = common dso_local global i32 0, align 4
@IVB_CHICKEN3 = common dso_local global i32 0, align 4
@CHICKEN3_DGMG_REQ_OUT_FIX_DISABLE = common dso_local global i32 0, align 4
@CHICKEN3_DGMG_DONE_FIX_DISABLE = common dso_local global i32 0, align 4
@GEN7_HALF_SLICE_CHICKEN1 = common dso_local global i32 0, align 4
@GEN7_MAX_PS_THREAD_DEP = common dso_local global i32 0, align 4
@GEN7_PSD_SINGLE_PORT_DISPATCH_ENABLE = common dso_local global i32 0, align 4
@CACHE_MODE_0_GEN7 = common dso_local global i32 0, align 4
@RC_OP_FLUSH_ENABLE = common dso_local global i32 0, align 4
@GEN7_L3SQCREG4 = common dso_local global i32 0, align 4
@L3SQ_URB_READ_CAM_MATCH_DISABLE = common dso_local global i32 0, align 4
@GEN7_ROW_CHICKEN2 = common dso_local global i32 0, align 4
@DOP_CLOCK_GATING_DISABLE = common dso_local global i32 0, align 4
@GEN7_SQ_CHICKEN_MBCUNIT_CONFIG = common dso_local global i32 0, align 4
@GEN7_SQ_CHICKEN_MBCUNIT_SQINTMOB = common dso_local global i32 0, align 4
@GEN6_UCGCTL2 = common dso_local global i32 0, align 4
@GEN6_RCZUNIT_CLOCK_GATE_DISABLE = common dso_local global i32 0, align 4
@GEN7_UCGCTL4 = common dso_local global i32 0, align 4
@GEN7_L3BANK2X_CLOCK_GATE_DISABLE = common dso_local global i32 0, align 4
@CACHE_MODE_1 = common dso_local global i32 0, align 4
@PIXEL_SUBSPAN_COLLECT_OPT_DISABLE = common dso_local global i32 0, align 4
@GEN7_GT_MODE = common dso_local global i32 0, align 4
@GEN6_WIZ_HASHING_MASK = common dso_local global i32 0, align 4
@GEN6_WIZ_HASHING_16x4 = common dso_local global i32 0, align 4
@GEN7_L3SQCREG1 = common dso_local global i32 0, align 4
@VLV_B0_WA_L3SQCREG1_VALUE = common dso_local global i32 0, align 4
@VLV_GUNIT_CLOCK_GATE = common dso_local global i32 0, align 4
@GCFG_DIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @vlv_init_clock_gating to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlv_init_clock_gating(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %3 = load i32, i32* @_3D_CHICKEN3, align 4
  %4 = load i32, i32* @_3D_CHICKEN_SF_DISABLE_OBJEND_CULL, align 4
  %5 = call i32 @_MASKED_BIT_ENABLE(i32 %4)
  %6 = call i32 @I915_WRITE(i32 %3, i32 %5)
  %7 = load i32, i32* @IVB_CHICKEN3, align 4
  %8 = load i32, i32* @CHICKEN3_DGMG_REQ_OUT_FIX_DISABLE, align 4
  %9 = load i32, i32* @CHICKEN3_DGMG_DONE_FIX_DISABLE, align 4
  %10 = or i32 %8, %9
  %11 = call i32 @I915_WRITE(i32 %7, i32 %10)
  %12 = load i32, i32* @GEN7_HALF_SLICE_CHICKEN1, align 4
  %13 = load i32, i32* @GEN7_MAX_PS_THREAD_DEP, align 4
  %14 = load i32, i32* @GEN7_PSD_SINGLE_PORT_DISPATCH_ENABLE, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @_MASKED_BIT_ENABLE(i32 %15)
  %17 = call i32 @I915_WRITE(i32 %12, i32 %16)
  %18 = load i32, i32* @CACHE_MODE_0_GEN7, align 4
  %19 = load i32, i32* @RC_OP_FLUSH_ENABLE, align 4
  %20 = call i32 @_MASKED_BIT_DISABLE(i32 %19)
  %21 = call i32 @I915_WRITE(i32 %18, i32 %20)
  %22 = load i32, i32* @GEN7_L3SQCREG4, align 4
  %23 = load i32, i32* @GEN7_L3SQCREG4, align 4
  %24 = call i32 @I915_READ(i32 %23)
  %25 = load i32, i32* @L3SQ_URB_READ_CAM_MATCH_DISABLE, align 4
  %26 = xor i32 %25, -1
  %27 = and i32 %24, %26
  %28 = call i32 @I915_WRITE(i32 %22, i32 %27)
  %29 = load i32, i32* @GEN7_ROW_CHICKEN2, align 4
  %30 = load i32, i32* @DOP_CLOCK_GATING_DISABLE, align 4
  %31 = call i32 @_MASKED_BIT_ENABLE(i32 %30)
  %32 = call i32 @I915_WRITE(i32 %29, i32 %31)
  %33 = load i32, i32* @GEN7_SQ_CHICKEN_MBCUNIT_CONFIG, align 4
  %34 = load i32, i32* @GEN7_SQ_CHICKEN_MBCUNIT_CONFIG, align 4
  %35 = call i32 @I915_READ(i32 %34)
  %36 = load i32, i32* @GEN7_SQ_CHICKEN_MBCUNIT_SQINTMOB, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @I915_WRITE(i32 %33, i32 %37)
  %39 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %40 = call i32 @gen7_setup_fixed_func_scheduler(%struct.drm_i915_private* %39)
  %41 = load i32, i32* @GEN6_UCGCTL2, align 4
  %42 = load i32, i32* @GEN6_RCZUNIT_CLOCK_GATE_DISABLE, align 4
  %43 = call i32 @I915_WRITE(i32 %41, i32 %42)
  %44 = load i32, i32* @GEN7_UCGCTL4, align 4
  %45 = load i32, i32* @GEN7_UCGCTL4, align 4
  %46 = call i32 @I915_READ(i32 %45)
  %47 = load i32, i32* @GEN7_L3BANK2X_CLOCK_GATE_DISABLE, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @I915_WRITE(i32 %44, i32 %48)
  %50 = load i32, i32* @CACHE_MODE_1, align 4
  %51 = load i32, i32* @PIXEL_SUBSPAN_COLLECT_OPT_DISABLE, align 4
  %52 = call i32 @_MASKED_BIT_ENABLE(i32 %51)
  %53 = call i32 @I915_WRITE(i32 %50, i32 %52)
  %54 = load i32, i32* @GEN7_GT_MODE, align 4
  %55 = load i32, i32* @GEN6_WIZ_HASHING_MASK, align 4
  %56 = load i32, i32* @GEN6_WIZ_HASHING_16x4, align 4
  %57 = call i32 @_MASKED_FIELD(i32 %55, i32 %56)
  %58 = call i32 @I915_WRITE(i32 %54, i32 %57)
  %59 = load i32, i32* @GEN7_L3SQCREG1, align 4
  %60 = load i32, i32* @VLV_B0_WA_L3SQCREG1_VALUE, align 4
  %61 = call i32 @I915_WRITE(i32 %59, i32 %60)
  %62 = load i32, i32* @VLV_GUNIT_CLOCK_GATE, align 4
  %63 = load i32, i32* @GCFG_DIS, align 4
  %64 = call i32 @I915_WRITE(i32 %62, i32 %63)
  ret void
}

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @_MASKED_BIT_ENABLE(i32) #1

declare dso_local i32 @_MASKED_BIT_DISABLE(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @gen7_setup_fixed_func_scheduler(%struct.drm_i915_private*) #1

declare dso_local i32 @_MASKED_FIELD(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

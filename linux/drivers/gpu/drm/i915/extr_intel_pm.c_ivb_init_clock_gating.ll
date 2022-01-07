; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_ivb_init_clock_gating.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_ivb_init_clock_gating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@ILK_DSPCLK_GATE_D = common dso_local global i32 0, align 4
@ILK_VRHUNIT_CLOCK_GATE_DISABLE = common dso_local global i32 0, align 4
@_3D_CHICKEN3 = common dso_local global i32 0, align 4
@_3D_CHICKEN_SF_DISABLE_OBJEND_CULL = common dso_local global i32 0, align 4
@IVB_CHICKEN3 = common dso_local global i32 0, align 4
@CHICKEN3_DGMG_REQ_OUT_FIX_DISABLE = common dso_local global i32 0, align 4
@CHICKEN3_DGMG_DONE_FIX_DISABLE = common dso_local global i32 0, align 4
@GEN7_HALF_SLICE_CHICKEN1 = common dso_local global i32 0, align 4
@GEN7_PSD_SINGLE_PORT_DISPATCH_ENABLE = common dso_local global i32 0, align 4
@CACHE_MODE_0_GEN7 = common dso_local global i32 0, align 4
@RC_OP_FLUSH_ENABLE = common dso_local global i32 0, align 4
@GEN7_COMMON_SLICE_CHICKEN1 = common dso_local global i32 0, align 4
@GEN7_CSC1_RHWO_OPT_DISABLE_IN_RCC = common dso_local global i32 0, align 4
@GEN7_L3CNTLREG1 = common dso_local global i32 0, align 4
@GEN7_WA_FOR_GEN7_L3_CONTROL = common dso_local global i32 0, align 4
@GEN7_L3_CHICKEN_MODE_REGISTER = common dso_local global i32 0, align 4
@GEN7_WA_L3_CHICKEN_MODE = common dso_local global i32 0, align 4
@GEN7_ROW_CHICKEN2 = common dso_local global i32 0, align 4
@DOP_CLOCK_GATING_DISABLE = common dso_local global i32 0, align 4
@GEN7_ROW_CHICKEN2_GT2 = common dso_local global i32 0, align 4
@GEN7_L3SQCREG4 = common dso_local global i32 0, align 4
@L3SQ_URB_READ_CAM_MATCH_DISABLE = common dso_local global i32 0, align 4
@GEN6_UCGCTL2 = common dso_local global i32 0, align 4
@GEN6_RCZUNIT_CLOCK_GATE_DISABLE = common dso_local global i32 0, align 4
@GEN7_SQ_CHICKEN_MBCUNIT_CONFIG = common dso_local global i32 0, align 4
@GEN7_SQ_CHICKEN_MBCUNIT_SQINTMOB = common dso_local global i32 0, align 4
@CACHE_MODE_1 = common dso_local global i32 0, align 4
@PIXEL_SUBSPAN_COLLECT_OPT_DISABLE = common dso_local global i32 0, align 4
@GEN7_GT_MODE = common dso_local global i32 0, align 4
@GEN6_WIZ_HASHING_MASK = common dso_local global i32 0, align 4
@GEN6_WIZ_HASHING_16x4 = common dso_local global i32 0, align 4
@GEN6_MBCUNIT_SNPCR = common dso_local global i32 0, align 4
@GEN6_MBC_SNPCR_MASK = common dso_local global i32 0, align 4
@GEN6_MBC_SNPCR_MED = common dso_local global i32 0, align 4
@HIZ_RAW_STALL_OPT_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @ivb_init_clock_gating to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ivb_init_clock_gating(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %4 = load i32, i32* @ILK_DSPCLK_GATE_D, align 4
  %5 = load i32, i32* @ILK_VRHUNIT_CLOCK_GATE_DISABLE, align 4
  %6 = call i32 @I915_WRITE(i32 %4, i32 %5)
  %7 = load i32, i32* @_3D_CHICKEN3, align 4
  %8 = load i32, i32* @_3D_CHICKEN_SF_DISABLE_OBJEND_CULL, align 4
  %9 = call i32 @_MASKED_BIT_ENABLE(i32 %8)
  %10 = call i32 @I915_WRITE(i32 %7, i32 %9)
  %11 = load i32, i32* @IVB_CHICKEN3, align 4
  %12 = load i32, i32* @CHICKEN3_DGMG_REQ_OUT_FIX_DISABLE, align 4
  %13 = load i32, i32* @CHICKEN3_DGMG_DONE_FIX_DISABLE, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @I915_WRITE(i32 %11, i32 %14)
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %17 = call i64 @IS_IVB_GT1(%struct.drm_i915_private* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load i32, i32* @GEN7_HALF_SLICE_CHICKEN1, align 4
  %21 = load i32, i32* @GEN7_PSD_SINGLE_PORT_DISPATCH_ENABLE, align 4
  %22 = call i32 @_MASKED_BIT_ENABLE(i32 %21)
  %23 = call i32 @I915_WRITE(i32 %20, i32 %22)
  br label %24

24:                                               ; preds = %19, %1
  %25 = load i32, i32* @CACHE_MODE_0_GEN7, align 4
  %26 = load i32, i32* @RC_OP_FLUSH_ENABLE, align 4
  %27 = call i32 @_MASKED_BIT_DISABLE(i32 %26)
  %28 = call i32 @I915_WRITE(i32 %25, i32 %27)
  %29 = load i32, i32* @GEN7_COMMON_SLICE_CHICKEN1, align 4
  %30 = load i32, i32* @GEN7_CSC1_RHWO_OPT_DISABLE_IN_RCC, align 4
  %31 = call i32 @I915_WRITE(i32 %29, i32 %30)
  %32 = load i32, i32* @GEN7_L3CNTLREG1, align 4
  %33 = load i32, i32* @GEN7_WA_FOR_GEN7_L3_CONTROL, align 4
  %34 = call i32 @I915_WRITE(i32 %32, i32 %33)
  %35 = load i32, i32* @GEN7_L3_CHICKEN_MODE_REGISTER, align 4
  %36 = load i32, i32* @GEN7_WA_L3_CHICKEN_MODE, align 4
  %37 = call i32 @I915_WRITE(i32 %35, i32 %36)
  %38 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %39 = call i64 @IS_IVB_GT1(%struct.drm_i915_private* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %24
  %42 = load i32, i32* @GEN7_ROW_CHICKEN2, align 4
  %43 = load i32, i32* @DOP_CLOCK_GATING_DISABLE, align 4
  %44 = call i32 @_MASKED_BIT_ENABLE(i32 %43)
  %45 = call i32 @I915_WRITE(i32 %42, i32 %44)
  br label %55

46:                                               ; preds = %24
  %47 = load i32, i32* @GEN7_ROW_CHICKEN2, align 4
  %48 = load i32, i32* @DOP_CLOCK_GATING_DISABLE, align 4
  %49 = call i32 @_MASKED_BIT_ENABLE(i32 %48)
  %50 = call i32 @I915_WRITE(i32 %47, i32 %49)
  %51 = load i32, i32* @GEN7_ROW_CHICKEN2_GT2, align 4
  %52 = load i32, i32* @DOP_CLOCK_GATING_DISABLE, align 4
  %53 = call i32 @_MASKED_BIT_ENABLE(i32 %52)
  %54 = call i32 @I915_WRITE(i32 %51, i32 %53)
  br label %55

55:                                               ; preds = %46, %41
  %56 = load i32, i32* @GEN7_L3SQCREG4, align 4
  %57 = load i32, i32* @GEN7_L3SQCREG4, align 4
  %58 = call i32 @I915_READ(i32 %57)
  %59 = load i32, i32* @L3SQ_URB_READ_CAM_MATCH_DISABLE, align 4
  %60 = xor i32 %59, -1
  %61 = and i32 %58, %60
  %62 = call i32 @I915_WRITE(i32 %56, i32 %61)
  %63 = load i32, i32* @GEN6_UCGCTL2, align 4
  %64 = load i32, i32* @GEN6_RCZUNIT_CLOCK_GATE_DISABLE, align 4
  %65 = call i32 @I915_WRITE(i32 %63, i32 %64)
  %66 = load i32, i32* @GEN7_SQ_CHICKEN_MBCUNIT_CONFIG, align 4
  %67 = load i32, i32* @GEN7_SQ_CHICKEN_MBCUNIT_CONFIG, align 4
  %68 = call i32 @I915_READ(i32 %67)
  %69 = load i32, i32* @GEN7_SQ_CHICKEN_MBCUNIT_SQINTMOB, align 4
  %70 = or i32 %68, %69
  %71 = call i32 @I915_WRITE(i32 %66, i32 %70)
  %72 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %73 = call i32 @g4x_disable_trickle_feed(%struct.drm_i915_private* %72)
  %74 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %75 = call i32 @gen7_setup_fixed_func_scheduler(%struct.drm_i915_private* %74)
  %76 = load i32, i32* @CACHE_MODE_1, align 4
  %77 = load i32, i32* @PIXEL_SUBSPAN_COLLECT_OPT_DISABLE, align 4
  %78 = call i32 @_MASKED_BIT_ENABLE(i32 %77)
  %79 = call i32 @I915_WRITE(i32 %76, i32 %78)
  %80 = load i32, i32* @GEN7_GT_MODE, align 4
  %81 = load i32, i32* @GEN6_WIZ_HASHING_MASK, align 4
  %82 = load i32, i32* @GEN6_WIZ_HASHING_16x4, align 4
  %83 = call i32 @_MASKED_FIELD(i32 %81, i32 %82)
  %84 = call i32 @I915_WRITE(i32 %80, i32 %83)
  %85 = load i32, i32* @GEN6_MBCUNIT_SNPCR, align 4
  %86 = call i32 @I915_READ(i32 %85)
  store i32 %86, i32* %3, align 4
  %87 = load i32, i32* @GEN6_MBC_SNPCR_MASK, align 4
  %88 = xor i32 %87, -1
  %89 = load i32, i32* %3, align 4
  %90 = and i32 %89, %88
  store i32 %90, i32* %3, align 4
  %91 = load i32, i32* @GEN6_MBC_SNPCR_MED, align 4
  %92 = load i32, i32* %3, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %3, align 4
  %94 = load i32, i32* @GEN6_MBCUNIT_SNPCR, align 4
  %95 = load i32, i32* %3, align 4
  %96 = call i32 @I915_WRITE(i32 %94, i32 %95)
  %97 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %98 = call i32 @HAS_PCH_NOP(%struct.drm_i915_private* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %55
  %101 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %102 = call i32 @cpt_init_clock_gating(%struct.drm_i915_private* %101)
  br label %103

103:                                              ; preds = %100, %55
  %104 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %105 = call i32 @gen6_check_mch_setup(%struct.drm_i915_private* %104)
  ret void
}

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @_MASKED_BIT_ENABLE(i32) #1

declare dso_local i64 @IS_IVB_GT1(%struct.drm_i915_private*) #1

declare dso_local i32 @_MASKED_BIT_DISABLE(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @g4x_disable_trickle_feed(%struct.drm_i915_private*) #1

declare dso_local i32 @gen7_setup_fixed_func_scheduler(%struct.drm_i915_private*) #1

declare dso_local i32 @_MASKED_FIELD(i32, i32) #1

declare dso_local i32 @HAS_PCH_NOP(%struct.drm_i915_private*) #1

declare dso_local i32 @cpt_init_clock_gating(%struct.drm_i915_private*) #1

declare dso_local i32 @gen6_check_mch_setup(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

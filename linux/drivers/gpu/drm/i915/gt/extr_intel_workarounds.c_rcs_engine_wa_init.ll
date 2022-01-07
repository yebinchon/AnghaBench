; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_workarounds.c_rcs_engine_wa_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_workarounds.c_rcs_engine_wa_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.i915_wa_list = type { i32 }

@_3D_CHICKEN3 = common dso_local global i32 0, align 4
@_3D_CHICKEN3_AA_LINE_QUALITY_FIX_ENABLE = common dso_local global i32 0, align 4
@GEN8_L3SQCREG4 = common dso_local global i32 0, align 4
@GEN8_LQSC_FLUSH_COHERENT_LINES = common dso_local global i32 0, align 4
@GEN8_GARBCNTL = common dso_local global i32 0, align 4
@GEN11_ARBITRATION_PRIO_ORDER_MASK = common dso_local global i32 0, align 4
@GEN11_HASH_CTRL_EXCL_MASK = common dso_local global i32 0, align 4
@GEN11_HASH_CTRL_EXCL_BIT0 = common dso_local global i32 0, align 4
@GEN11_GLBLINVL = common dso_local global i32 0, align 4
@GEN11_BANK_HASH_ADDR_EXCL_MASK = common dso_local global i32 0, align 4
@GEN11_BANK_HASH_ADDR_EXCL_BIT0 = common dso_local global i32 0, align 4
@GEN11_LQSC_CLEAN_EVICT_DISABLE = common dso_local global i32 0, align 4
@GEN10_SCRATCH_LNCF2 = common dso_local global i32 0, align 4
@PMFLUSHDONE_LNICRSDROP = common dso_local global i32 0, align 4
@PMFLUSH_GAPL3UNBLOCK = common dso_local global i32 0, align 4
@PMFLUSHDONE_LNEBLK = common dso_local global i32 0, align 4
@ICL_REVID_A0 = common dso_local global i32 0, align 4
@ICL_REVID_B0 = common dso_local global i32 0, align 4
@GEN7_SARCHKMD = common dso_local global i32 0, align 4
@GEN7_DISABLE_DEMAND_PREFETCH = common dso_local global i32 0, align 4
@GEN7_DISABLE_SAMPLER_PREFETCH = common dso_local global i32 0, align 4
@GEN11_SCRATCH2 = common dso_local global i32 0, align 4
@GEN11_COHERENT_PARTIAL_WRITE_MERGE_ENABLE = common dso_local global i32 0, align 4
@GEN7_FF_SLICE_CS_CHICKEN1 = common dso_local global i32 0, align 4
@GEN9_FFSC_PERCTX_PREEMPT_CTRL = common dso_local global i32 0, align 4
@GEN9_GAPS_TSV_CREDIT_DISABLE = common dso_local global i32 0, align 4
@FF_SLICE_CS_CHICKEN2 = common dso_local global i32 0, align 4
@GEN9_POOLED_EU_LOAD_BALANCING_FIX_DISABLE = common dso_local global i32 0, align 4
@GEN9_CSFE_CHICKEN1_RCS = common dso_local global i32 0, align 4
@GEN9_PREEMPT_GPGPU_SYNC_SWITCH_DISABLE = common dso_local global i32 0, align 4
@BDW_SCRATCH1 = common dso_local global i32 0, align 4
@GEN9_LBS_SLA_RETRY_TIMER_DECREMENT_ENABLE = common dso_local global i32 0, align 4
@GEN8_L3SQCREG1 = common dso_local global i32 0, align 4
@L3_PRIO_CREDITS_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_engine_cs*, %struct.i915_wa_list*)* @rcs_engine_wa_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcs_engine_wa_init(%struct.intel_engine_cs* %0, %struct.i915_wa_list* %1) #0 {
  %3 = alloca %struct.intel_engine_cs*, align 8
  %4 = alloca %struct.i915_wa_list*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %3, align 8
  store %struct.i915_wa_list* %1, %struct.i915_wa_list** %4, align 8
  %6 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %7 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %6, i32 0, i32 0
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  store %struct.drm_i915_private* %8, %struct.drm_i915_private** %5, align 8
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %10 = call i64 @IS_GEN(%struct.drm_i915_private* %9, i32 11)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %66

12:                                               ; preds = %2
  %13 = load %struct.i915_wa_list*, %struct.i915_wa_list** %4, align 8
  %14 = load i32, i32* @_3D_CHICKEN3, align 4
  %15 = load i32, i32* @_3D_CHICKEN3_AA_LINE_QUALITY_FIX_ENABLE, align 4
  %16 = call i32 @wa_masked_en(%struct.i915_wa_list* %13, i32 %14, i32 %15)
  %17 = load %struct.i915_wa_list*, %struct.i915_wa_list** %4, align 8
  %18 = load i32, i32* @GEN8_L3SQCREG4, align 4
  %19 = load i32, i32* @GEN8_LQSC_FLUSH_COHERENT_LINES, align 4
  %20 = call i32 @wa_write_or(%struct.i915_wa_list* %17, i32 %18, i32 %19)
  %21 = load %struct.i915_wa_list*, %struct.i915_wa_list** %4, align 8
  %22 = load i32, i32* @GEN8_GARBCNTL, align 4
  %23 = load i32, i32* @GEN11_ARBITRATION_PRIO_ORDER_MASK, align 4
  %24 = call i32 @wa_write_or(%struct.i915_wa_list* %21, i32 %22, i32 %23)
  %25 = load %struct.i915_wa_list*, %struct.i915_wa_list** %4, align 8
  %26 = load i32, i32* @GEN8_GARBCNTL, align 4
  %27 = load i32, i32* @GEN11_HASH_CTRL_EXCL_MASK, align 4
  %28 = load i32, i32* @GEN11_HASH_CTRL_EXCL_BIT0, align 4
  %29 = call i32 @wa_write_masked_or(%struct.i915_wa_list* %25, i32 %26, i32 %27, i32 %28)
  %30 = load %struct.i915_wa_list*, %struct.i915_wa_list** %4, align 8
  %31 = load i32, i32* @GEN11_GLBLINVL, align 4
  %32 = load i32, i32* @GEN11_BANK_HASH_ADDR_EXCL_MASK, align 4
  %33 = load i32, i32* @GEN11_BANK_HASH_ADDR_EXCL_BIT0, align 4
  %34 = call i32 @wa_write_masked_or(%struct.i915_wa_list* %30, i32 %31, i32 %32, i32 %33)
  %35 = load %struct.i915_wa_list*, %struct.i915_wa_list** %4, align 8
  %36 = load i32, i32* @GEN8_L3SQCREG4, align 4
  %37 = load i32, i32* @GEN11_LQSC_CLEAN_EVICT_DISABLE, align 4
  %38 = call i32 @wa_write_or(%struct.i915_wa_list* %35, i32 %36, i32 %37)
  %39 = load %struct.i915_wa_list*, %struct.i915_wa_list** %4, align 8
  %40 = load i32, i32* @GEN10_SCRATCH_LNCF2, align 4
  %41 = load i32, i32* @PMFLUSHDONE_LNICRSDROP, align 4
  %42 = load i32, i32* @PMFLUSH_GAPL3UNBLOCK, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @PMFLUSHDONE_LNEBLK, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @wa_write_or(%struct.i915_wa_list* %39, i32 %40, i32 %45)
  %47 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %48 = load i32, i32* @ICL_REVID_A0, align 4
  %49 = load i32, i32* @ICL_REVID_B0, align 4
  %50 = call i64 @IS_ICL_REVID(%struct.drm_i915_private* %47, i32 %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %12
  %53 = load %struct.i915_wa_list*, %struct.i915_wa_list** %4, align 8
  %54 = load i32, i32* @GEN7_SARCHKMD, align 4
  %55 = load i32, i32* @GEN7_DISABLE_DEMAND_PREFETCH, align 4
  %56 = call i32 @wa_write_or(%struct.i915_wa_list* %53, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %52, %12
  %58 = load %struct.i915_wa_list*, %struct.i915_wa_list** %4, align 8
  %59 = load i32, i32* @GEN7_SARCHKMD, align 4
  %60 = load i32, i32* @GEN7_DISABLE_SAMPLER_PREFETCH, align 4
  %61 = call i32 @wa_write_or(%struct.i915_wa_list* %58, i32 %59, i32 %60)
  %62 = load %struct.i915_wa_list*, %struct.i915_wa_list** %4, align 8
  %63 = load i32, i32* @GEN11_SCRATCH2, align 4
  %64 = load i32, i32* @GEN11_COHERENT_PARTIAL_WRITE_MERGE_ENABLE, align 4
  %65 = call i32 @wa_write_masked_or(%struct.i915_wa_list* %62, i32 %63, i32 %64, i32 0)
  br label %66

66:                                               ; preds = %57, %2
  %67 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %68 = call i64 @IS_GEN_RANGE(%struct.drm_i915_private* %67, i32 9, i32 11)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = load %struct.i915_wa_list*, %struct.i915_wa_list** %4, align 8
  %72 = load i32, i32* @GEN7_FF_SLICE_CS_CHICKEN1, align 4
  %73 = load i32, i32* @GEN9_FFSC_PERCTX_PREEMPT_CTRL, align 4
  %74 = call i32 @wa_masked_en(%struct.i915_wa_list* %71, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %70, %66
  %76 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %77 = call i64 @IS_SKYLAKE(%struct.drm_i915_private* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %87, label %79

79:                                               ; preds = %75
  %80 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %81 = call i64 @IS_KABYLAKE(%struct.drm_i915_private* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %79
  %84 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %85 = call i64 @IS_COFFEELAKE(%struct.drm_i915_private* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %83, %79, %75
  %88 = load %struct.i915_wa_list*, %struct.i915_wa_list** %4, align 8
  %89 = load i32, i32* @GEN8_GARBCNTL, align 4
  %90 = load i32, i32* @GEN9_GAPS_TSV_CREDIT_DISABLE, align 4
  %91 = call i32 @wa_write_or(%struct.i915_wa_list* %88, i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %87, %83
  %93 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %94 = call i64 @IS_BROXTON(%struct.drm_i915_private* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %92
  %97 = load %struct.i915_wa_list*, %struct.i915_wa_list** %4, align 8
  %98 = load i32, i32* @FF_SLICE_CS_CHICKEN2, align 4
  %99 = load i32, i32* @GEN9_POOLED_EU_LOAD_BALANCING_FIX_DISABLE, align 4
  %100 = call i32 @wa_masked_en(%struct.i915_wa_list* %97, i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %96, %92
  %102 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %103 = call i64 @IS_GEN(%struct.drm_i915_private* %102, i32 9)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %130

105:                                              ; preds = %101
  %106 = load %struct.i915_wa_list*, %struct.i915_wa_list** %4, align 8
  %107 = load i32, i32* @GEN9_CSFE_CHICKEN1_RCS, align 4
  %108 = load i32, i32* @GEN9_PREEMPT_GPGPU_SYNC_SWITCH_DISABLE, align 4
  %109 = call i32 @wa_masked_en(%struct.i915_wa_list* %106, i32 %107, i32 %108)
  %110 = load %struct.i915_wa_list*, %struct.i915_wa_list** %4, align 8
  %111 = load i32, i32* @BDW_SCRATCH1, align 4
  %112 = load i32, i32* @GEN9_LBS_SLA_RETRY_TIMER_DECREMENT_ENABLE, align 4
  %113 = call i32 @wa_write_or(%struct.i915_wa_list* %110, i32 %111, i32 %112)
  %114 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %115 = call i64 @IS_GEN9_LP(%struct.drm_i915_private* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %105
  %118 = load %struct.i915_wa_list*, %struct.i915_wa_list** %4, align 8
  %119 = load i32, i32* @GEN8_L3SQCREG1, align 4
  %120 = load i32, i32* @L3_PRIO_CREDITS_MASK, align 4
  %121 = call i32 @L3_GENERAL_PRIO_CREDITS(i32 62)
  %122 = call i32 @L3_HIGH_PRIO_CREDITS(i32 2)
  %123 = or i32 %121, %122
  %124 = call i32 @wa_write_masked_or(%struct.i915_wa_list* %118, i32 %119, i32 %120, i32 %123)
  br label %125

125:                                              ; preds = %117, %105
  %126 = load %struct.i915_wa_list*, %struct.i915_wa_list** %4, align 8
  %127 = load i32, i32* @GEN8_L3SQCREG4, align 4
  %128 = load i32, i32* @GEN8_LQSC_FLUSH_COHERENT_LINES, align 4
  %129 = call i32 @wa_write_or(%struct.i915_wa_list* %126, i32 %127, i32 %128)
  br label %130

130:                                              ; preds = %125, %101
  ret void
}

declare dso_local i64 @IS_GEN(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @wa_masked_en(%struct.i915_wa_list*, i32, i32) #1

declare dso_local i32 @wa_write_or(%struct.i915_wa_list*, i32, i32) #1

declare dso_local i32 @wa_write_masked_or(%struct.i915_wa_list*, i32, i32, i32) #1

declare dso_local i64 @IS_ICL_REVID(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i64 @IS_GEN_RANGE(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i64 @IS_SKYLAKE(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_KABYLAKE(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_COFFEELAKE(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_BROXTON(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_GEN9_LP(%struct.drm_i915_private*) #1

declare dso_local i32 @L3_GENERAL_PRIO_CREDITS(i32) #1

declare dso_local i32 @L3_HIGH_PRIO_CREDITS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

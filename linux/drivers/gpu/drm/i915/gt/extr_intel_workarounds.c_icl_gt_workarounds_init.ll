; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_workarounds.c_icl_gt_workarounds_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_workarounds.c_icl_gt_workarounds_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.i915_wa_list = type { i32 }

@GEN9_GAMT_ECO_REG_RW_IA = common dso_local global i32 0, align 4
@GAMT_ECO_ENABLE_IN_PLACE_DECOMPRESS = common dso_local global i32 0, align 4
@GEN11_GACB_PERF_CTRL = common dso_local global i32 0, align 4
@GEN11_HASH_CTRL_MASK = common dso_local global i32 0, align 4
@GEN11_HASH_CTRL_BIT0 = common dso_local global i32 0, align 4
@GEN11_HASH_CTRL_BIT4 = common dso_local global i32 0, align 4
@GEN11_LSN_UNSLCVC = common dso_local global i32 0, align 4
@GEN11_LSN_UNSLCVC_GAFS_HALF_SF_MAXALLOC = common dso_local global i32 0, align 4
@GEN11_LSN_UNSLCVC_GAFS_HALF_CL2_MAXALLOC = common dso_local global i32 0, align 4
@GEN8_GAMW_ECO_DEV_RW_IA = common dso_local global i32 0, align 4
@GAMW_ECO_DEV_CTX_RELOAD_DISABLE = common dso_local global i32 0, align 4
@ICL_REVID_A0 = common dso_local global i32 0, align 4
@SLICE_UNIT_LEVEL_CLKGATE = common dso_local global i32 0, align 4
@MSCUNIT_CLKGATE_DIS = common dso_local global i32 0, align 4
@SUBSLICE_UNIT_LEVEL_CLKGATE = common dso_local global i32 0, align 4
@GWUNIT_CLKGATE_DIS = common dso_local global i32 0, align 4
@ICL_REVID_B0 = common dso_local global i32 0, align 4
@INF_UNIT_LEVEL_CLKGATE = common dso_local global i32 0, align 4
@CGPSF_CLKGATE_DIS = common dso_local global i32 0, align 4
@GAMT_CHKN_BIT_REG = common dso_local global i32 0, align 4
@GAMT_CHKN_DISABLE_L3_COH_PIPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, %struct.i915_wa_list*)* @icl_gt_workarounds_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icl_gt_workarounds_init(%struct.drm_i915_private* %0, %struct.i915_wa_list* %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.i915_wa_list*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store %struct.i915_wa_list* %1, %struct.i915_wa_list** %4, align 8
  %5 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %6 = load %struct.i915_wa_list*, %struct.i915_wa_list** %4, align 8
  %7 = call i32 @wa_init_mcr(%struct.drm_i915_private* %5, %struct.i915_wa_list* %6)
  %8 = load %struct.i915_wa_list*, %struct.i915_wa_list** %4, align 8
  %9 = load i32, i32* @GEN9_GAMT_ECO_REG_RW_IA, align 4
  %10 = load i32, i32* @GAMT_ECO_ENABLE_IN_PLACE_DECOMPRESS, align 4
  %11 = call i32 @wa_write_or(%struct.i915_wa_list* %8, i32 %9, i32 %10)
  %12 = load %struct.i915_wa_list*, %struct.i915_wa_list** %4, align 8
  %13 = load i32, i32* @GEN11_GACB_PERF_CTRL, align 4
  %14 = load i32, i32* @GEN11_HASH_CTRL_MASK, align 4
  %15 = load i32, i32* @GEN11_HASH_CTRL_BIT0, align 4
  %16 = load i32, i32* @GEN11_HASH_CTRL_BIT4, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @wa_write_masked_or(%struct.i915_wa_list* %12, i32 %13, i32 %14, i32 %17)
  %19 = load %struct.i915_wa_list*, %struct.i915_wa_list** %4, align 8
  %20 = load i32, i32* @GEN11_LSN_UNSLCVC, align 4
  %21 = load i32, i32* @GEN11_LSN_UNSLCVC_GAFS_HALF_SF_MAXALLOC, align 4
  %22 = load i32, i32* @GEN11_LSN_UNSLCVC_GAFS_HALF_CL2_MAXALLOC, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @wa_write_or(%struct.i915_wa_list* %19, i32 %20, i32 %23)
  %25 = load %struct.i915_wa_list*, %struct.i915_wa_list** %4, align 8
  %26 = load i32, i32* @GEN8_GAMW_ECO_DEV_RW_IA, align 4
  %27 = load i32, i32* @GAMW_ECO_DEV_CTX_RELOAD_DISABLE, align 4
  %28 = call i32 @wa_write_or(%struct.i915_wa_list* %25, i32 %26, i32 %27)
  %29 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %30 = load i32, i32* @ICL_REVID_A0, align 4
  %31 = load i32, i32* @ICL_REVID_A0, align 4
  %32 = call i64 @IS_ICL_REVID(%struct.drm_i915_private* %29, i32 %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %2
  %35 = load %struct.i915_wa_list*, %struct.i915_wa_list** %4, align 8
  %36 = load i32, i32* @SLICE_UNIT_LEVEL_CLKGATE, align 4
  %37 = load i32, i32* @MSCUNIT_CLKGATE_DIS, align 4
  %38 = call i32 @wa_write_or(%struct.i915_wa_list* %35, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %34, %2
  %40 = load %struct.i915_wa_list*, %struct.i915_wa_list** %4, align 8
  %41 = load i32, i32* @SUBSLICE_UNIT_LEVEL_CLKGATE, align 4
  %42 = load i32, i32* @GWUNIT_CLKGATE_DIS, align 4
  %43 = call i32 @wa_write_or(%struct.i915_wa_list* %40, i32 %41, i32 %42)
  %44 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %45 = load i32, i32* @ICL_REVID_A0, align 4
  %46 = load i32, i32* @ICL_REVID_B0, align 4
  %47 = call i64 @IS_ICL_REVID(%struct.drm_i915_private* %44, i32 %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %39
  %50 = load %struct.i915_wa_list*, %struct.i915_wa_list** %4, align 8
  %51 = load i32, i32* @INF_UNIT_LEVEL_CLKGATE, align 4
  %52 = load i32, i32* @CGPSF_CLKGATE_DIS, align 4
  %53 = call i32 @wa_write_or(%struct.i915_wa_list* %50, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %49, %39
  %55 = load %struct.i915_wa_list*, %struct.i915_wa_list** %4, align 8
  %56 = load i32, i32* @GAMT_CHKN_BIT_REG, align 4
  %57 = load i32, i32* @GAMT_CHKN_DISABLE_L3_COH_PIPE, align 4
  %58 = call i32 @wa_write_or(%struct.i915_wa_list* %55, i32 %56, i32 %57)
  ret void
}

declare dso_local i32 @wa_init_mcr(%struct.drm_i915_private*, %struct.i915_wa_list*) #1

declare dso_local i32 @wa_write_or(%struct.i915_wa_list*, i32, i32) #1

declare dso_local i32 @wa_write_masked_or(%struct.i915_wa_list*, i32, i32, i32) #1

declare dso_local i64 @IS_ICL_REVID(%struct.drm_i915_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

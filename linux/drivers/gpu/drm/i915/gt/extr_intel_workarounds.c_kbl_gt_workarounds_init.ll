; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_workarounds.c_kbl_gt_workarounds_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_workarounds.c_kbl_gt_workarounds_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.i915_wa_list = type { i32 }

@KBL_REVID_B0 = common dso_local global i32 0, align 4
@GAMT_CHKN_BIT_REG = common dso_local global i32 0, align 4
@GAMT_CHKN_DISABLE_DYNAMIC_CREDIT_SHARING = common dso_local global i32 0, align 4
@GEN7_UCGCTL4 = common dso_local global i32 0, align 4
@GEN8_EU_GAUNIT_CLOCK_GATE_DISABLE = common dso_local global i32 0, align 4
@GEN9_GAMT_ECO_REG_RW_IA = common dso_local global i32 0, align 4
@GAMT_ECO_ENABLE_IN_PLACE_DECOMPRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, %struct.i915_wa_list*)* @kbl_gt_workarounds_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kbl_gt_workarounds_init(%struct.drm_i915_private* %0, %struct.i915_wa_list* %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.i915_wa_list*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store %struct.i915_wa_list* %1, %struct.i915_wa_list** %4, align 8
  %5 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %6 = load %struct.i915_wa_list*, %struct.i915_wa_list** %4, align 8
  %7 = call i32 @gen9_gt_workarounds_init(%struct.drm_i915_private* %5, %struct.i915_wa_list* %6)
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %9 = load i32, i32* @KBL_REVID_B0, align 4
  %10 = call i64 @IS_KBL_REVID(%struct.drm_i915_private* %8, i32 0, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.i915_wa_list*, %struct.i915_wa_list** %4, align 8
  %14 = load i32, i32* @GAMT_CHKN_BIT_REG, align 4
  %15 = load i32, i32* @GAMT_CHKN_DISABLE_DYNAMIC_CREDIT_SHARING, align 4
  %16 = call i32 @wa_write_or(%struct.i915_wa_list* %13, i32 %14, i32 %15)
  br label %17

17:                                               ; preds = %12, %2
  %18 = load %struct.i915_wa_list*, %struct.i915_wa_list** %4, align 8
  %19 = load i32, i32* @GEN7_UCGCTL4, align 4
  %20 = load i32, i32* @GEN8_EU_GAUNIT_CLOCK_GATE_DISABLE, align 4
  %21 = call i32 @wa_write_or(%struct.i915_wa_list* %18, i32 %19, i32 %20)
  %22 = load %struct.i915_wa_list*, %struct.i915_wa_list** %4, align 8
  %23 = load i32, i32* @GEN9_GAMT_ECO_REG_RW_IA, align 4
  %24 = load i32, i32* @GAMT_ECO_ENABLE_IN_PLACE_DECOMPRESS, align 4
  %25 = call i32 @wa_write_or(%struct.i915_wa_list* %22, i32 %23, i32 %24)
  ret void
}

declare dso_local i32 @gen9_gt_workarounds_init(%struct.drm_i915_private*, %struct.i915_wa_list*) #1

declare dso_local i64 @IS_KBL_REVID(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @wa_write_or(%struct.i915_wa_list*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

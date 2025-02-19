; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_combo_phy.c_cnl_combo_phy_verify_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_combo_phy.c_cnl_combo_phy_verify_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@PHY_A = common dso_local global i32 0, align 4
@CNL_PORT_CL1CM_DW5 = common dso_local global i32 0, align 4
@CL_POWER_DOWN_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*)* @cnl_combo_phy_verify_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnl_combo_phy_verify_state(%struct.drm_i915_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  %6 = load i32, i32* @PHY_A, align 4
  store i32 %6, i32* %4, align 4
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %8 = call i32 @cnl_combo_phy_enabled(%struct.drm_i915_private* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %24

11:                                               ; preds = %1
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @cnl_verify_procmon_ref_values(%struct.drm_i915_private* %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @CNL_PORT_CL1CM_DW5, align 4
  %18 = load i32, i32* @CL_POWER_DOWN_ENABLE, align 4
  %19 = load i32, i32* @CL_POWER_DOWN_ENABLE, align 4
  %20 = call i32 @check_phy_reg(%struct.drm_i915_private* %15, i32 %16, i32 %17, i32 %18, i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %11, %10
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @cnl_combo_phy_enabled(%struct.drm_i915_private*) #1

declare dso_local i32 @cnl_verify_procmon_ref_values(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @check_phy_reg(%struct.drm_i915_private*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

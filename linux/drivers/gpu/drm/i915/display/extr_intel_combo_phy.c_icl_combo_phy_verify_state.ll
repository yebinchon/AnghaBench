; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_combo_phy.c_icl_combo_phy_verify_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_combo_phy.c_icl_combo_phy_verify_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@PHY_A = common dso_local global i32 0, align 4
@IREFGEN = common dso_local global i32 0, align 4
@CL_POWER_DOWN_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*, i32)* @icl_combo_phy_verify_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icl_combo_phy_verify_state(%struct.drm_i915_private* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @icl_combo_phy_enabled(%struct.drm_i915_private* %7, i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %40

12:                                               ; preds = %2
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @cnl_verify_procmon_ref_values(%struct.drm_i915_private* %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @PHY_A, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %12
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @ICL_PORT_COMP_DW8(i32 %22)
  %24 = load i32, i32* @IREFGEN, align 4
  %25 = load i32, i32* @IREFGEN, align 4
  %26 = call i32 @check_phy_reg(%struct.drm_i915_private* %20, i32 %21, i32 %23, i32 %24, i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %19, %12
  %30 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @ICL_PORT_CL_DW5(i32 %32)
  %34 = load i32, i32* @CL_POWER_DOWN_ENABLE, align 4
  %35 = load i32, i32* @CL_POWER_DOWN_ENABLE, align 4
  %36 = call i32 @check_phy_reg(%struct.drm_i915_private* %30, i32 %31, i32 %33, i32 %34, i32 %35)
  %37 = load i32, i32* %6, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %29, %11
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @icl_combo_phy_enabled(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @cnl_verify_procmon_ref_values(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @check_phy_reg(%struct.drm_i915_private*, i32, i32, i32, i32) #1

declare dso_local i32 @ICL_PORT_COMP_DW8(i32) #1

declare dso_local i32 @ICL_PORT_CL_DW5(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_icelake_get_ddi_pll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_icelake_get_ddi_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.intel_crtc_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ICL_DPCLKA_CFGCR0 = common dso_local global i32 0, align 4
@ICL_PORT_DPLL_DEFAULT = common dso_local global i32 0, align 4
@DDI_CLK_SEL_MASK = common dso_local global i64 0, align 8
@DDI_CLK_SEL_MG = common dso_local global i64 0, align 8
@ICL_PORT_DPLL_MG_PHY = common dso_local global i32 0, align 4
@DDI_CLK_SEL_TBT_162 = common dso_local global i64 0, align 8
@DPLL_ID_ICL_TBTPLL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Invalid port %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, i32, %struct.intel_crtc_state*)* @icelake_get_ddi_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icelake_get_ddi_pll(%struct.drm_i915_private* %0, i32 %1, %struct.intel_crtc_state* %2) #0 {
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_crtc_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.intel_crtc_state* %2, %struct.intel_crtc_state** %6, align 8
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @intel_port_to_phy(%struct.drm_i915_private* %12, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i64 @intel_phy_is_combo(%struct.drm_i915_private* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %3
  %20 = load i32, i32* @ICL_DPCLKA_CFGCR0, align 4
  %21 = call i64 @I915_READ(i32 %20)
  %22 = load i32, i32* %7, align 4
  %23 = call i64 @ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(i32 %22)
  %24 = and i64 %21, %23
  store i64 %24, i64* %10, align 8
  %25 = load i64, i64* %10, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i64 @ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(i32 %26)
  %28 = ashr i64 %25, %27
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* @ICL_PORT_DPLL_DEFAULT, align 4
  store i32 %30, i32* %8, align 4
  br label %64

31:                                               ; preds = %3
  %32 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i64 @intel_phy_is_tc(%struct.drm_i915_private* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %60

36:                                               ; preds = %31
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @DDI_CLK_SEL(i32 %37)
  %39 = call i64 @I915_READ(i32 %38)
  %40 = load i64, i64* @DDI_CLK_SEL_MASK, align 8
  %41 = and i64 %39, %40
  store i64 %41, i64* %11, align 8
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* @DDI_CLK_SEL_MG, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %36
  %46 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @intel_port_to_tc(%struct.drm_i915_private* %46, i32 %47)
  %49 = call i32 @icl_tc_port_to_pll_id(i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* @ICL_PORT_DPLL_MG_PHY, align 4
  store i32 %50, i32* %8, align 4
  br label %59

51:                                               ; preds = %36
  %52 = load i64, i64* %11, align 8
  %53 = load i64, i64* @DDI_CLK_SEL_TBT_162, align 8
  %54 = icmp slt i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @WARN_ON(i32 %55)
  %57 = load i32, i32* @DPLL_ID_ICL_TBTPLL, align 4
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* @ICL_PORT_DPLL_DEFAULT, align 4
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %51, %45
  br label %63

60:                                               ; preds = %31
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %61)
  br label %78

63:                                               ; preds = %59
  br label %64

64:                                               ; preds = %63, %19
  %65 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @intel_get_shared_dpll_by_id(%struct.drm_i915_private* %65, i32 %66)
  %68 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %69 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  store i32 %67, i32* %74, align 4
  %75 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @icl_set_active_port_dpll(%struct.intel_crtc_state* %75, i32 %76)
  br label %78

78:                                               ; preds = %64, %60
  ret void
}

declare dso_local i32 @intel_port_to_phy(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @intel_phy_is_combo(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @I915_READ(i32) #1

declare dso_local i64 @ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(i32) #1

declare dso_local i64 @ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(i32) #1

declare dso_local i64 @intel_phy_is_tc(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @DDI_CLK_SEL(i32) #1

declare dso_local i32 @icl_tc_port_to_pll_id(i32) #1

declare dso_local i32 @intel_port_to_tc(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @intel_get_shared_dpll_by_id(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @icl_set_active_port_dpll(%struct.intel_crtc_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

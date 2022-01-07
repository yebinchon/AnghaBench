; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_icl_ddi_clock_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_icl_ddi_clock_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.intel_crtc_state = type { i32, i32, %struct.intel_dpll_hw_state }
%struct.intel_dpll_hw_state = type { i32 }
%struct.drm_i915_private = type { i32 }

@DPLL_ID_ICL_TBTPLL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*, %struct.intel_crtc_state*)* @icl_ddi_clock_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icl_ddi_clock_get(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca %struct.intel_encoder*, align 8
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.intel_dpll_hw_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %3, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %4, align 8
  %11 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %12 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.drm_i915_private* @to_i915(i32 %14)
  store %struct.drm_i915_private* %15, %struct.drm_i915_private** %5, align 8
  %16 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %17 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %16, i32 0, i32 2
  store %struct.intel_dpll_hw_state* %17, %struct.intel_dpll_hw_state** %6, align 8
  %18 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %19 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %7, align 4
  %21 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @intel_port_to_phy(%struct.drm_i915_private* %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i64 @intel_phy_is_combo(%struct.drm_i915_private* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %30 = load %struct.intel_dpll_hw_state*, %struct.intel_dpll_hw_state** %6, align 8
  %31 = call i32 @cnl_calc_wrpll_link(%struct.drm_i915_private* %29, %struct.intel_dpll_hw_state* %30)
  store i32 %31, i32* %9, align 4
  br label %50

32:                                               ; preds = %2
  %33 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %34 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %35 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @intel_get_shared_dpll_id(%struct.drm_i915_private* %33, i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @DPLL_ID_ICL_TBTPLL, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %32
  %42 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @icl_calc_tbt_pll_link(%struct.drm_i915_private* %42, i32 %43)
  store i32 %44, i32* %9, align 4
  br label %49

45:                                               ; preds = %32
  %46 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %47 = load %struct.intel_dpll_hw_state*, %struct.intel_dpll_hw_state** %6, align 8
  %48 = call i32 @icl_calc_mg_pll_link(%struct.drm_i915_private* %46, %struct.intel_dpll_hw_state* %47)
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %45, %41
  br label %50

50:                                               ; preds = %49, %28
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %53 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %55 = call i32 @ddi_dotclock_get(%struct.intel_crtc_state* %54)
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @intel_port_to_phy(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @intel_phy_is_combo(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @cnl_calc_wrpll_link(%struct.drm_i915_private*, %struct.intel_dpll_hw_state*) #1

declare dso_local i32 @intel_get_shared_dpll_id(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @icl_calc_tbt_pll_link(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @icl_calc_mg_pll_link(%struct.drm_i915_private*, %struct.intel_dpll_hw_state*) #1

declare dso_local i32 @ddi_dotclock_get(%struct.intel_crtc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

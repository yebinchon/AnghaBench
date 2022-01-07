; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_hsw_ddi_hdmi_get_dpll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_hsw_ddi_hdmi_get_dpll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_shared_dpll = type { i32 }
%struct.intel_atomic_state = type { i32 }
%struct.intel_crtc = type { i32 }
%struct.intel_crtc_state = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@WRPLL_PLL_ENABLE = common dso_local global i32 0, align 4
@WRPLL_REF_LCPLL = common dso_local global i32 0, align 4
@DPLL_ID_WRPLL1 = common dso_local global i32 0, align 4
@DPLL_ID_WRPLL2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.intel_shared_dpll* (%struct.intel_atomic_state*, %struct.intel_crtc*)* @hsw_ddi_hdmi_get_dpll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.intel_shared_dpll* @hsw_ddi_hdmi_get_dpll(%struct.intel_atomic_state* %0, %struct.intel_crtc* %1) #0 {
  %3 = alloca %struct.intel_shared_dpll*, align 8
  %4 = alloca %struct.intel_atomic_state*, align 8
  %5 = alloca %struct.intel_crtc*, align 8
  %6 = alloca %struct.intel_crtc_state*, align 8
  %7 = alloca %struct.intel_shared_dpll*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.intel_atomic_state* %0, %struct.intel_atomic_state** %4, align 8
  store %struct.intel_crtc* %1, %struct.intel_crtc** %5, align 8
  %12 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %4, align 8
  %13 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %14 = call %struct.intel_crtc_state* @intel_atomic_get_new_crtc_state(%struct.intel_atomic_state* %12, %struct.intel_crtc* %13)
  store %struct.intel_crtc_state* %14, %struct.intel_crtc_state** %6, align 8
  %15 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %16 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = mul nsw i32 %17, 1000
  %19 = call i32 @hsw_ddi_calculate_wrpll(i32 %18, i32* %11, i32* %10, i32* %9)
  %20 = load i32, i32* @WRPLL_PLL_ENABLE, align 4
  %21 = load i32, i32* @WRPLL_REF_LCPLL, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @WRPLL_DIVIDER_REFERENCE(i32 %23)
  %25 = or i32 %22, %24
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @WRPLL_DIVIDER_FEEDBACK(i32 %26)
  %28 = or i32 %25, %27
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @WRPLL_DIVIDER_POST(i32 %29)
  %31 = or i32 %28, %30
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %34 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 4
  %36 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %4, align 8
  %37 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %38 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %39 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %38, i32 0, i32 1
  %40 = load i32, i32* @DPLL_ID_WRPLL1, align 4
  %41 = load i32, i32* @DPLL_ID_WRPLL2, align 4
  %42 = call %struct.intel_shared_dpll* @intel_find_shared_dpll(%struct.intel_atomic_state* %36, %struct.intel_crtc* %37, %struct.TYPE_2__* %39, i32 %40, i32 %41)
  store %struct.intel_shared_dpll* %42, %struct.intel_shared_dpll** %7, align 8
  %43 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %7, align 8
  %44 = icmp ne %struct.intel_shared_dpll* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %2
  store %struct.intel_shared_dpll* null, %struct.intel_shared_dpll** %3, align 8
  br label %48

46:                                               ; preds = %2
  %47 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %7, align 8
  store %struct.intel_shared_dpll* %47, %struct.intel_shared_dpll** %3, align 8
  br label %48

48:                                               ; preds = %46, %45
  %49 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %3, align 8
  ret %struct.intel_shared_dpll* %49
}

declare dso_local %struct.intel_crtc_state* @intel_atomic_get_new_crtc_state(%struct.intel_atomic_state*, %struct.intel_crtc*) #1

declare dso_local i32 @hsw_ddi_calculate_wrpll(i32, i32*, i32*, i32*) #1

declare dso_local i32 @WRPLL_DIVIDER_REFERENCE(i32) #1

declare dso_local i32 @WRPLL_DIVIDER_FEEDBACK(i32) #1

declare dso_local i32 @WRPLL_DIVIDER_POST(i32) #1

declare dso_local %struct.intel_shared_dpll* @intel_find_shared_dpll(%struct.intel_atomic_state*, %struct.intel_crtc*, %struct.TYPE_2__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

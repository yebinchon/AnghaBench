; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_haswell_get_ddi_pll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_haswell_get_ddi_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.intel_crtc_state = type { i32 }

@DPLL_ID_WRPLL1 = common dso_local global i32 0, align 4
@DPLL_ID_WRPLL2 = common dso_local global i32 0, align 4
@DPLL_ID_SPLL = common dso_local global i32 0, align 4
@DPLL_ID_LCPLL_810 = common dso_local global i32 0, align 4
@DPLL_ID_LCPLL_1350 = common dso_local global i32 0, align 4
@DPLL_ID_LCPLL_2700 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, i32, %struct.intel_crtc_state*)* @haswell_get_ddi_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @haswell_get_ddi_pll(%struct.drm_i915_private* %0, i32 %1, %struct.intel_crtc_state* %2) #0 {
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_crtc_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.intel_crtc_state* %2, %struct.intel_crtc_state** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @PORT_CLK_SEL(i32 %9)
  %11 = call i32 @I915_READ(i32 %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  switch i32 %12, label %25 [
    i32 129, label %13
    i32 128, label %15
    i32 130, label %17
    i32 132, label %19
    i32 134, label %21
    i32 133, label %23
    i32 131, label %28
  ]

13:                                               ; preds = %3
  %14 = load i32, i32* @DPLL_ID_WRPLL1, align 4
  store i32 %14, i32* %7, align 4
  br label %29

15:                                               ; preds = %3
  %16 = load i32, i32* @DPLL_ID_WRPLL2, align 4
  store i32 %16, i32* %7, align 4
  br label %29

17:                                               ; preds = %3
  %18 = load i32, i32* @DPLL_ID_SPLL, align 4
  store i32 %18, i32* %7, align 4
  br label %29

19:                                               ; preds = %3
  %20 = load i32, i32* @DPLL_ID_LCPLL_810, align 4
  store i32 %20, i32* %7, align 4
  br label %29

21:                                               ; preds = %3
  %22 = load i32, i32* @DPLL_ID_LCPLL_1350, align 4
  store i32 %22, i32* %7, align 4
  br label %29

23:                                               ; preds = %3
  %24 = load i32, i32* @DPLL_ID_LCPLL_2700, align 4
  store i32 %24, i32* %7, align 4
  br label %29

25:                                               ; preds = %3
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @MISSING_CASE(i32 %26)
  br label %28

28:                                               ; preds = %3, %25
  br label %35

29:                                               ; preds = %23, %21, %19, %17, %15, %13
  %30 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @intel_get_shared_dpll_by_id(%struct.drm_i915_private* %30, i32 %31)
  %33 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %34 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  br label %35

35:                                               ; preds = %29, %28
  ret void
}

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @PORT_CLK_SEL(i32) #1

declare dso_local i32 @MISSING_CASE(i32) #1

declare dso_local i32 @intel_get_shared_dpll_by_id(%struct.drm_i915_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

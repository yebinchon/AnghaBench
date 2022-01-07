; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_cnl_ddi_dp_set_dpll_hw_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_cnl_ddi_dp_set_dpll_hw_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DPLL_CFGCR0_SSC_ENABLE = common dso_local global i32 0, align 4
@DPLL_CFGCR0_LINK_RATE_810 = common dso_local global i32 0, align 4
@DPLL_CFGCR0_LINK_RATE_1350 = common dso_local global i32 0, align 4
@DPLL_CFGCR0_LINK_RATE_2700 = common dso_local global i32 0, align 4
@DPLL_CFGCR0_LINK_RATE_1620 = common dso_local global i32 0, align 4
@DPLL_CFGCR0_LINK_RATE_1080 = common dso_local global i32 0, align 4
@DPLL_CFGCR0_LINK_RATE_2160 = common dso_local global i32 0, align 4
@DPLL_CFGCR0_LINK_RATE_3240 = common dso_local global i32 0, align 4
@DPLL_CFGCR0_LINK_RATE_4050 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_crtc_state*)* @cnl_ddi_dp_set_dpll_hw_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnl_ddi_dp_set_dpll_hw_state(%struct.intel_crtc_state* %0) #0 {
  %2 = alloca %struct.intel_crtc_state*, align 8
  %3 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %2, align 8
  %4 = load i32, i32* @DPLL_CFGCR0_SSC_ENABLE, align 4
  store i32 %4, i32* %3, align 4
  %5 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %6 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = sdiv i32 %7, 2
  switch i32 %8, label %41 [
    i32 81000, label %9
    i32 135000, label %13
    i32 270000, label %17
    i32 162000, label %21
    i32 108000, label %25
    i32 216000, label %29
    i32 324000, label %33
    i32 405000, label %37
  ]

9:                                                ; preds = %1
  %10 = load i32, i32* @DPLL_CFGCR0_LINK_RATE_810, align 4
  %11 = load i32, i32* %3, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %3, align 4
  br label %41

13:                                               ; preds = %1
  %14 = load i32, i32* @DPLL_CFGCR0_LINK_RATE_1350, align 4
  %15 = load i32, i32* %3, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %3, align 4
  br label %41

17:                                               ; preds = %1
  %18 = load i32, i32* @DPLL_CFGCR0_LINK_RATE_2700, align 4
  %19 = load i32, i32* %3, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %3, align 4
  br label %41

21:                                               ; preds = %1
  %22 = load i32, i32* @DPLL_CFGCR0_LINK_RATE_1620, align 4
  %23 = load i32, i32* %3, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %3, align 4
  br label %41

25:                                               ; preds = %1
  %26 = load i32, i32* @DPLL_CFGCR0_LINK_RATE_1080, align 4
  %27 = load i32, i32* %3, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %3, align 4
  br label %41

29:                                               ; preds = %1
  %30 = load i32, i32* @DPLL_CFGCR0_LINK_RATE_2160, align 4
  %31 = load i32, i32* %3, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %3, align 4
  br label %41

33:                                               ; preds = %1
  %34 = load i32, i32* @DPLL_CFGCR0_LINK_RATE_3240, align 4
  %35 = load i32, i32* %3, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %3, align 4
  br label %41

37:                                               ; preds = %1
  %38 = load i32, i32* @DPLL_CFGCR0_LINK_RATE_4050, align 4
  %39 = load i32, i32* %3, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %1, %37, %33, %29, %25, %21, %17, %13, %9
  %42 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %43 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %42, i32 0, i32 1
  %44 = call i32 @memset(%struct.TYPE_2__* %43, i32 0, i32 4)
  %45 = load i32, i32* %3, align 4
  %46 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %47 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 4
  ret i32 1
}

declare dso_local i32 @memset(%struct.TYPE_2__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

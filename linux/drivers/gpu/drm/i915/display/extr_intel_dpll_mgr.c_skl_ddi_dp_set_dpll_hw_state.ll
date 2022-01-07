; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_skl_ddi_dp_set_dpll_hw_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_skl_ddi_dp_set_dpll_hw_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DPLL_CTRL1_LINK_RATE_810 = common dso_local global i32 0, align 4
@DPLL_CTRL1_LINK_RATE_1350 = common dso_local global i32 0, align 4
@DPLL_CTRL1_LINK_RATE_2700 = common dso_local global i32 0, align 4
@DPLL_CTRL1_LINK_RATE_1620 = common dso_local global i32 0, align 4
@DPLL_CTRL1_LINK_RATE_1080 = common dso_local global i32 0, align 4
@DPLL_CTRL1_LINK_RATE_2160 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_crtc_state*)* @skl_ddi_dp_set_dpll_hw_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_ddi_dp_set_dpll_hw_state(%struct.intel_crtc_state* %0) #0 {
  %2 = alloca %struct.intel_crtc_state*, align 8
  %3 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %2, align 8
  %4 = call i32 @DPLL_CTRL1_OVERRIDE(i32 0)
  store i32 %4, i32* %3, align 4
  %5 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %6 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = sdiv i32 %7, 2
  switch i32 %8, label %39 [
    i32 81000, label %9
    i32 135000, label %14
    i32 270000, label %19
    i32 162000, label %24
    i32 108000, label %29
    i32 216000, label %34
  ]

9:                                                ; preds = %1
  %10 = load i32, i32* @DPLL_CTRL1_LINK_RATE_810, align 4
  %11 = call i32 @DPLL_CTRL1_LINK_RATE(i32 %10, i32 0)
  %12 = load i32, i32* %3, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %3, align 4
  br label %39

14:                                               ; preds = %1
  %15 = load i32, i32* @DPLL_CTRL1_LINK_RATE_1350, align 4
  %16 = call i32 @DPLL_CTRL1_LINK_RATE(i32 %15, i32 0)
  %17 = load i32, i32* %3, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %3, align 4
  br label %39

19:                                               ; preds = %1
  %20 = load i32, i32* @DPLL_CTRL1_LINK_RATE_2700, align 4
  %21 = call i32 @DPLL_CTRL1_LINK_RATE(i32 %20, i32 0)
  %22 = load i32, i32* %3, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %3, align 4
  br label %39

24:                                               ; preds = %1
  %25 = load i32, i32* @DPLL_CTRL1_LINK_RATE_1620, align 4
  %26 = call i32 @DPLL_CTRL1_LINK_RATE(i32 %25, i32 0)
  %27 = load i32, i32* %3, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %3, align 4
  br label %39

29:                                               ; preds = %1
  %30 = load i32, i32* @DPLL_CTRL1_LINK_RATE_1080, align 4
  %31 = call i32 @DPLL_CTRL1_LINK_RATE(i32 %30, i32 0)
  %32 = load i32, i32* %3, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %3, align 4
  br label %39

34:                                               ; preds = %1
  %35 = load i32, i32* @DPLL_CTRL1_LINK_RATE_2160, align 4
  %36 = call i32 @DPLL_CTRL1_LINK_RATE(i32 %35, i32 0)
  %37 = load i32, i32* %3, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %1, %34, %29, %24, %19, %14, %9
  %40 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %41 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %40, i32 0, i32 1
  %42 = call i32 @memset(%struct.TYPE_2__* %41, i32 0, i32 4)
  %43 = load i32, i32* %3, align 4
  %44 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %45 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 4
  ret i32 1
}

declare dso_local i32 @DPLL_CTRL1_OVERRIDE(i32) #1

declare dso_local i32 @DPLL_CTRL1_LINK_RATE(i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_2__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

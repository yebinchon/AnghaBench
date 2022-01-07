; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_icl_pll_to_ddi_clk_sel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_icl_pll_to_ddi_clk_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { i32 }
%struct.intel_crtc_state = type { i32, %struct.intel_shared_dpll* }
%struct.intel_shared_dpll = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DDI_CLK_SEL_NONE = common dso_local global i32 0, align 4
@DDI_CLK_SEL_TBT_162 = common dso_local global i32 0, align 4
@DDI_CLK_SEL_TBT_270 = common dso_local global i32 0, align 4
@DDI_CLK_SEL_TBT_540 = common dso_local global i32 0, align 4
@DDI_CLK_SEL_TBT_810 = common dso_local global i32 0, align 4
@DDI_CLK_SEL_MG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_encoder*, %struct.intel_crtc_state*)* @icl_pll_to_ddi_clk_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icl_pll_to_ddi_clk_sel(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_encoder*, align 8
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca %struct.intel_shared_dpll*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %4, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %5, align 8
  %9 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %10 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %9, i32 0, i32 1
  %11 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %10, align 8
  store %struct.intel_shared_dpll* %11, %struct.intel_shared_dpll** %6, align 8
  %12 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %13 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %7, align 4
  %15 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %6, align 8
  %16 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  switch i32 %20, label %21 [
    i32 128, label %25
    i32 132, label %39
    i32 131, label %39
    i32 130, label %39
    i32 129, label %39
  ]

21:                                               ; preds = %2
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @MISSING_CASE(i32 %22)
  %24 = load i32, i32* @DDI_CLK_SEL_NONE, align 4
  store i32 %24, i32* %3, align 4
  br label %41

25:                                               ; preds = %2
  %26 = load i32, i32* %7, align 4
  switch i32 %26, label %35 [
    i32 162000, label %27
    i32 270000, label %29
    i32 540000, label %31
    i32 810000, label %33
  ]

27:                                               ; preds = %25
  %28 = load i32, i32* @DDI_CLK_SEL_TBT_162, align 4
  store i32 %28, i32* %3, align 4
  br label %41

29:                                               ; preds = %25
  %30 = load i32, i32* @DDI_CLK_SEL_TBT_270, align 4
  store i32 %30, i32* %3, align 4
  br label %41

31:                                               ; preds = %25
  %32 = load i32, i32* @DDI_CLK_SEL_TBT_540, align 4
  store i32 %32, i32* %3, align 4
  br label %41

33:                                               ; preds = %25
  %34 = load i32, i32* @DDI_CLK_SEL_TBT_810, align 4
  store i32 %34, i32* %3, align 4
  br label %41

35:                                               ; preds = %25
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @MISSING_CASE(i32 %36)
  %38 = load i32, i32* @DDI_CLK_SEL_NONE, align 4
  store i32 %38, i32* %3, align 4
  br label %41

39:                                               ; preds = %2, %2, %2, %2
  %40 = load i32, i32* @DDI_CLK_SEL_MG, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %39, %35, %33, %31, %29, %27, %21
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @MISSING_CASE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

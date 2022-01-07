; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_hsw_pll_to_ddi_pll_sel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_hsw_pll_to_ddi_pll_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_shared_dpll = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PORT_CLK_SEL_WRPLL1 = common dso_local global i32 0, align 4
@PORT_CLK_SEL_WRPLL2 = common dso_local global i32 0, align 4
@PORT_CLK_SEL_SPLL = common dso_local global i32 0, align 4
@PORT_CLK_SEL_LCPLL_810 = common dso_local global i32 0, align 4
@PORT_CLK_SEL_LCPLL_1350 = common dso_local global i32 0, align 4
@PORT_CLK_SEL_LCPLL_2700 = common dso_local global i32 0, align 4
@PORT_CLK_SEL_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_shared_dpll*)* @hsw_pll_to_ddi_pll_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hsw_pll_to_ddi_pll_sel(%struct.intel_shared_dpll* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_shared_dpll*, align 8
  store %struct.intel_shared_dpll* %0, %struct.intel_shared_dpll** %3, align 8
  %4 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %3, align 8
  %5 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %21 [
    i32 129, label %9
    i32 128, label %11
    i32 130, label %13
    i32 131, label %15
    i32 133, label %17
    i32 132, label %19
  ]

9:                                                ; preds = %1
  %10 = load i32, i32* @PORT_CLK_SEL_WRPLL1, align 4
  store i32 %10, i32* %2, align 4
  br label %29

11:                                               ; preds = %1
  %12 = load i32, i32* @PORT_CLK_SEL_WRPLL2, align 4
  store i32 %12, i32* %2, align 4
  br label %29

13:                                               ; preds = %1
  %14 = load i32, i32* @PORT_CLK_SEL_SPLL, align 4
  store i32 %14, i32* %2, align 4
  br label %29

15:                                               ; preds = %1
  %16 = load i32, i32* @PORT_CLK_SEL_LCPLL_810, align 4
  store i32 %16, i32* %2, align 4
  br label %29

17:                                               ; preds = %1
  %18 = load i32, i32* @PORT_CLK_SEL_LCPLL_1350, align 4
  store i32 %18, i32* %2, align 4
  br label %29

19:                                               ; preds = %1
  %20 = load i32, i32* @PORT_CLK_SEL_LCPLL_2700, align 4
  store i32 %20, i32* %2, align 4
  br label %29

21:                                               ; preds = %1
  %22 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %3, align 8
  %23 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @MISSING_CASE(i32 %26)
  %28 = load i32, i32* @PORT_CLK_SEL_NONE, align 4
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %21, %19, %17, %15, %13, %11, %9
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @MISSING_CASE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

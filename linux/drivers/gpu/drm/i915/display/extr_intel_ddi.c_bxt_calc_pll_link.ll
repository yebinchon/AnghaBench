; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_bxt_calc_pll_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_bxt_calc_pll_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dpll_hw_state = type { i32, i32, i32, i32, i32 }
%struct.dpll = type { i32, i32, i32, i32, i32 }

@PORT_PLL_M2_MASK = common dso_local global i32 0, align 4
@PORT_PLL_M2_FRAC_ENABLE = common dso_local global i32 0, align 4
@PORT_PLL_M2_FRAC_MASK = common dso_local global i32 0, align 4
@PORT_PLL_N_MASK = common dso_local global i32 0, align 4
@PORT_PLL_N_SHIFT = common dso_local global i32 0, align 4
@PORT_PLL_P1_MASK = common dso_local global i32 0, align 4
@PORT_PLL_P1_SHIFT = common dso_local global i32 0, align 4
@PORT_PLL_P2_MASK = common dso_local global i32 0, align 4
@PORT_PLL_P2_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_dpll_hw_state*)* @bxt_calc_pll_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxt_calc_pll_link(%struct.intel_dpll_hw_state* %0) #0 {
  %2 = alloca %struct.intel_dpll_hw_state*, align 8
  %3 = alloca %struct.dpll, align 4
  store %struct.intel_dpll_hw_state* %0, %struct.intel_dpll_hw_state** %2, align 8
  %4 = getelementptr inbounds %struct.dpll, %struct.dpll* %3, i32 0, i32 0
  store i32 2, i32* %4, align 4
  %5 = load %struct.intel_dpll_hw_state*, %struct.intel_dpll_hw_state** %2, align 8
  %6 = getelementptr inbounds %struct.intel_dpll_hw_state, %struct.intel_dpll_hw_state* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @PORT_PLL_M2_MASK, align 4
  %9 = and i32 %7, %8
  %10 = shl i32 %9, 22
  %11 = getelementptr inbounds %struct.dpll, %struct.dpll* %3, i32 0, i32 1
  store i32 %10, i32* %11, align 4
  %12 = load %struct.intel_dpll_hw_state*, %struct.intel_dpll_hw_state** %2, align 8
  %13 = getelementptr inbounds %struct.intel_dpll_hw_state, %struct.intel_dpll_hw_state* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @PORT_PLL_M2_FRAC_ENABLE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %1
  %19 = load %struct.intel_dpll_hw_state*, %struct.intel_dpll_hw_state** %2, align 8
  %20 = getelementptr inbounds %struct.intel_dpll_hw_state, %struct.intel_dpll_hw_state* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @PORT_PLL_M2_FRAC_MASK, align 4
  %23 = and i32 %21, %22
  %24 = getelementptr inbounds %struct.dpll, %struct.dpll* %3, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %23
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %18, %1
  %28 = load %struct.intel_dpll_hw_state*, %struct.intel_dpll_hw_state** %2, align 8
  %29 = getelementptr inbounds %struct.intel_dpll_hw_state, %struct.intel_dpll_hw_state* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @PORT_PLL_N_MASK, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* @PORT_PLL_N_SHIFT, align 4
  %34 = ashr i32 %32, %33
  %35 = getelementptr inbounds %struct.dpll, %struct.dpll* %3, i32 0, i32 2
  store i32 %34, i32* %35, align 4
  %36 = load %struct.intel_dpll_hw_state*, %struct.intel_dpll_hw_state** %2, align 8
  %37 = getelementptr inbounds %struct.intel_dpll_hw_state, %struct.intel_dpll_hw_state* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @PORT_PLL_P1_MASK, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* @PORT_PLL_P1_SHIFT, align 4
  %42 = ashr i32 %40, %41
  %43 = getelementptr inbounds %struct.dpll, %struct.dpll* %3, i32 0, i32 3
  store i32 %42, i32* %43, align 4
  %44 = load %struct.intel_dpll_hw_state*, %struct.intel_dpll_hw_state** %2, align 8
  %45 = getelementptr inbounds %struct.intel_dpll_hw_state, %struct.intel_dpll_hw_state* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @PORT_PLL_P2_MASK, align 4
  %48 = and i32 %46, %47
  %49 = load i32, i32* @PORT_PLL_P2_SHIFT, align 4
  %50 = ashr i32 %48, %49
  %51 = getelementptr inbounds %struct.dpll, %struct.dpll* %3, i32 0, i32 4
  store i32 %50, i32* %51, align 4
  %52 = call i32 @chv_calc_dpll_params(i32 100000, %struct.dpll* %3)
  ret i32 %52
}

declare dso_local i32 @chv_calc_dpll_params(i32, %struct.dpll*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

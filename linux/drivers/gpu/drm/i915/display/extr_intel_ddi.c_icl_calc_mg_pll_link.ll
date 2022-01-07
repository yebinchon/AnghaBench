; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_icl_calc_mg_pll_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_icl_calc_mg_pll_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.intel_dpll_hw_state = type { i32, i32, i32 }

@MG_PLL_DIV1_FBPREDIV_MASK = common dso_local global i32 0, align 4
@MG_PLL_DIV0_FBDIV_INT_MASK = common dso_local global i32 0, align 4
@MG_PLL_DIV0_FRACNEN_H = common dso_local global i32 0, align 4
@MG_PLL_DIV0_FBDIV_FRAC_MASK = common dso_local global i32 0, align 4
@MG_PLL_DIV0_FBDIV_FRAC_SHIFT = common dso_local global i32 0, align 4
@MG_CLKTOP2_HSCLKCTL_HSDIV_RATIO_MASK = common dso_local global i32 0, align 4
@MG_CLKTOP2_HSCLKCTL_DSDIV_RATIO_MASK = common dso_local global i32 0, align 4
@MG_CLKTOP2_HSCLKCTL_DSDIV_RATIO_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*, %struct.intel_dpll_hw_state*)* @icl_calc_mg_pll_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icl_calc_mg_pll_link(%struct.drm_i915_private* %0, %struct.intel_dpll_hw_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.intel_dpll_hw_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store %struct.intel_dpll_hw_state* %1, %struct.intel_dpll_hw_state** %5, align 8
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %14 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %11, align 4
  %18 = load %struct.intel_dpll_hw_state*, %struct.intel_dpll_hw_state** %5, align 8
  %19 = getelementptr inbounds %struct.intel_dpll_hw_state, %struct.intel_dpll_hw_state* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @MG_PLL_DIV1_FBPREDIV_MASK, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %6, align 4
  %23 = load %struct.intel_dpll_hw_state*, %struct.intel_dpll_hw_state** %5, align 8
  %24 = getelementptr inbounds %struct.intel_dpll_hw_state, %struct.intel_dpll_hw_state* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @MG_PLL_DIV0_FBDIV_INT_MASK, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %7, align 4
  %28 = load %struct.intel_dpll_hw_state*, %struct.intel_dpll_hw_state** %5, align 8
  %29 = getelementptr inbounds %struct.intel_dpll_hw_state, %struct.intel_dpll_hw_state* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @MG_PLL_DIV0_FRACNEN_H, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %2
  %35 = load %struct.intel_dpll_hw_state*, %struct.intel_dpll_hw_state** %5, align 8
  %36 = getelementptr inbounds %struct.intel_dpll_hw_state, %struct.intel_dpll_hw_state* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @MG_PLL_DIV0_FBDIV_FRAC_MASK, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* @MG_PLL_DIV0_FBDIV_FRAC_SHIFT, align 4
  %41 = ashr i32 %39, %40
  br label %43

42:                                               ; preds = %2
  br label %43

43:                                               ; preds = %42, %34
  %44 = phi i32 [ %41, %34 ], [ 0, %42 ]
  store i32 %44, i32* %8, align 4
  %45 = load %struct.intel_dpll_hw_state*, %struct.intel_dpll_hw_state** %5, align 8
  %46 = getelementptr inbounds %struct.intel_dpll_hw_state, %struct.intel_dpll_hw_state* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @MG_CLKTOP2_HSCLKCTL_HSDIV_RATIO_MASK, align 4
  %49 = and i32 %47, %48
  switch i32 %49, label %54 [
    i32 131, label %50
    i32 130, label %51
    i32 129, label %52
    i32 128, label %53
  ]

50:                                               ; preds = %43
  store i32 2, i32* %9, align 4
  br label %59

51:                                               ; preds = %43
  store i32 3, i32* %9, align 4
  br label %59

52:                                               ; preds = %43
  store i32 5, i32* %9, align 4
  br label %59

53:                                               ; preds = %43
  store i32 7, i32* %9, align 4
  br label %59

54:                                               ; preds = %43
  %55 = load %struct.intel_dpll_hw_state*, %struct.intel_dpll_hw_state** %5, align 8
  %56 = getelementptr inbounds %struct.intel_dpll_hw_state, %struct.intel_dpll_hw_state* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @MISSING_CASE(i32 %57)
  store i32 0, i32* %3, align 4
  br label %90

59:                                               ; preds = %53, %52, %51, %50
  %60 = load %struct.intel_dpll_hw_state*, %struct.intel_dpll_hw_state** %5, align 8
  %61 = getelementptr inbounds %struct.intel_dpll_hw_state, %struct.intel_dpll_hw_state* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @MG_CLKTOP2_HSCLKCTL_DSDIV_RATIO_MASK, align 4
  %64 = and i32 %62, %63
  %65 = load i32, i32* @MG_CLKTOP2_HSCLKCTL_DSDIV_RATIO_SHIFT, align 4
  %66 = ashr i32 %64, %65
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %59
  store i32 1, i32* %10, align 4
  br label %70

70:                                               ; preds = %69, %59
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %7, align 4
  %73 = mul nsw i32 %71, %72
  %74 = load i32, i32* %11, align 4
  %75 = mul nsw i32 %73, %74
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* %8, align 4
  %78 = mul nsw i32 %76, %77
  %79 = load i32, i32* %11, align 4
  %80 = mul nsw i32 %78, %79
  %81 = ashr i32 %80, 22
  %82 = add nsw i32 %75, %81
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* %9, align 4
  %85 = mul nsw i32 5, %84
  %86 = load i32, i32* %10, align 4
  %87 = mul nsw i32 %85, %86
  %88 = call i32 @div_u64(i32 %83, i32 %87)
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %12, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %70, %54
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @MISSING_CASE(i32) #1

declare dso_local i32 @div_u64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

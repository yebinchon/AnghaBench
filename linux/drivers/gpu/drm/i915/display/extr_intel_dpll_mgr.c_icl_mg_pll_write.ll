; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_icl_mg_pll_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_icl_mg_pll_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.intel_shared_dpll = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.intel_dpll_hw_state }
%struct.intel_dpll_hw_state = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MG_REFCLKIN_CTL_OD_2_MUX_MASK = common dso_local global i32 0, align 4
@MG_CLKTOP2_CORECLKCTL1_A_DIVRATIO_MASK = common dso_local global i32 0, align 4
@MG_CLKTOP2_HSCLKCTL_TLINEDRV_CLKSEL_MASK = common dso_local global i32 0, align 4
@MG_CLKTOP2_HSCLKCTL_CORE_INPUTSEL_MASK = common dso_local global i32 0, align 4
@MG_CLKTOP2_HSCLKCTL_HSDIV_RATIO_MASK = common dso_local global i32 0, align 4
@MG_CLKTOP2_HSCLKCTL_DSDIV_RATIO_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, %struct.intel_shared_dpll*)* @icl_mg_pll_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icl_mg_pll_write(%struct.drm_i915_private* %0, %struct.intel_shared_dpll* %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.intel_shared_dpll*, align 8
  %5 = alloca %struct.intel_dpll_hw_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store %struct.intel_shared_dpll* %1, %struct.intel_shared_dpll** %4, align 8
  %8 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %4, align 8
  %9 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store %struct.intel_dpll_hw_state* %10, %struct.intel_dpll_hw_state** %5, align 8
  %11 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %4, align 8
  %12 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @icl_pll_id_to_tc_port(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @MG_REFCLKIN_CTL(i32 %17)
  %19 = call i32 @I915_READ(i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* @MG_REFCLKIN_CTL_OD_2_MUX_MASK, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %7, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %7, align 4
  %24 = load %struct.intel_dpll_hw_state*, %struct.intel_dpll_hw_state** %5, align 8
  %25 = getelementptr inbounds %struct.intel_dpll_hw_state, %struct.intel_dpll_hw_state* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %7, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @MG_REFCLKIN_CTL(i32 %29)
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @I915_WRITE(i32 %30, i32 %31)
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @MG_CLKTOP2_CORECLKCTL1(i32 %33)
  %35 = call i32 @I915_READ(i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* @MG_CLKTOP2_CORECLKCTL1_A_DIVRATIO_MASK, align 4
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %7, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %7, align 4
  %40 = load %struct.intel_dpll_hw_state*, %struct.intel_dpll_hw_state** %5, align 8
  %41 = getelementptr inbounds %struct.intel_dpll_hw_state, %struct.intel_dpll_hw_state* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %7, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @MG_CLKTOP2_CORECLKCTL1(i32 %45)
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @I915_WRITE(i32 %46, i32 %47)
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @MG_CLKTOP2_HSCLKCTL(i32 %49)
  %51 = call i32 @I915_READ(i32 %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* @MG_CLKTOP2_HSCLKCTL_TLINEDRV_CLKSEL_MASK, align 4
  %53 = load i32, i32* @MG_CLKTOP2_HSCLKCTL_CORE_INPUTSEL_MASK, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @MG_CLKTOP2_HSCLKCTL_HSDIV_RATIO_MASK, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @MG_CLKTOP2_HSCLKCTL_DSDIV_RATIO_MASK, align 4
  %58 = or i32 %56, %57
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %7, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %7, align 4
  %62 = load %struct.intel_dpll_hw_state*, %struct.intel_dpll_hw_state** %5, align 8
  %63 = getelementptr inbounds %struct.intel_dpll_hw_state, %struct.intel_dpll_hw_state* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %7, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @MG_CLKTOP2_HSCLKCTL(i32 %67)
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @I915_WRITE(i32 %68, i32 %69)
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @MG_PLL_DIV0(i32 %71)
  %73 = load %struct.intel_dpll_hw_state*, %struct.intel_dpll_hw_state** %5, align 8
  %74 = getelementptr inbounds %struct.intel_dpll_hw_state, %struct.intel_dpll_hw_state* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @I915_WRITE(i32 %72, i32 %75)
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @MG_PLL_DIV1(i32 %77)
  %79 = load %struct.intel_dpll_hw_state*, %struct.intel_dpll_hw_state** %5, align 8
  %80 = getelementptr inbounds %struct.intel_dpll_hw_state, %struct.intel_dpll_hw_state* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @I915_WRITE(i32 %78, i32 %81)
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @MG_PLL_LF(i32 %83)
  %85 = load %struct.intel_dpll_hw_state*, %struct.intel_dpll_hw_state** %5, align 8
  %86 = getelementptr inbounds %struct.intel_dpll_hw_state, %struct.intel_dpll_hw_state* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @I915_WRITE(i32 %84, i32 %87)
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @MG_PLL_FRAC_LOCK(i32 %89)
  %91 = load %struct.intel_dpll_hw_state*, %struct.intel_dpll_hw_state** %5, align 8
  %92 = getelementptr inbounds %struct.intel_dpll_hw_state, %struct.intel_dpll_hw_state* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @I915_WRITE(i32 %90, i32 %93)
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @MG_PLL_SSC(i32 %95)
  %97 = load %struct.intel_dpll_hw_state*, %struct.intel_dpll_hw_state** %5, align 8
  %98 = getelementptr inbounds %struct.intel_dpll_hw_state, %struct.intel_dpll_hw_state* %97, i32 0, i32 7
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @I915_WRITE(i32 %96, i32 %99)
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @MG_PLL_BIAS(i32 %101)
  %103 = call i32 @I915_READ(i32 %102)
  store i32 %103, i32* %7, align 4
  %104 = load %struct.intel_dpll_hw_state*, %struct.intel_dpll_hw_state** %5, align 8
  %105 = getelementptr inbounds %struct.intel_dpll_hw_state, %struct.intel_dpll_hw_state* %104, i32 0, i32 8
  %106 = load i32, i32* %105, align 4
  %107 = xor i32 %106, -1
  %108 = load i32, i32* %7, align 4
  %109 = and i32 %108, %107
  store i32 %109, i32* %7, align 4
  %110 = load %struct.intel_dpll_hw_state*, %struct.intel_dpll_hw_state** %5, align 8
  %111 = getelementptr inbounds %struct.intel_dpll_hw_state, %struct.intel_dpll_hw_state* %110, i32 0, i32 9
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %7, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %7, align 4
  %115 = load i32, i32* %6, align 4
  %116 = call i32 @MG_PLL_BIAS(i32 %115)
  %117 = load i32, i32* %7, align 4
  %118 = call i32 @I915_WRITE(i32 %116, i32 %117)
  %119 = load i32, i32* %6, align 4
  %120 = call i32 @MG_PLL_TDC_COLDST_BIAS(i32 %119)
  %121 = call i32 @I915_READ(i32 %120)
  store i32 %121, i32* %7, align 4
  %122 = load %struct.intel_dpll_hw_state*, %struct.intel_dpll_hw_state** %5, align 8
  %123 = getelementptr inbounds %struct.intel_dpll_hw_state, %struct.intel_dpll_hw_state* %122, i32 0, i32 10
  %124 = load i32, i32* %123, align 4
  %125 = xor i32 %124, -1
  %126 = load i32, i32* %7, align 4
  %127 = and i32 %126, %125
  store i32 %127, i32* %7, align 4
  %128 = load %struct.intel_dpll_hw_state*, %struct.intel_dpll_hw_state** %5, align 8
  %129 = getelementptr inbounds %struct.intel_dpll_hw_state, %struct.intel_dpll_hw_state* %128, i32 0, i32 11
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %7, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %7, align 4
  %133 = load i32, i32* %6, align 4
  %134 = call i32 @MG_PLL_TDC_COLDST_BIAS(i32 %133)
  %135 = load i32, i32* %7, align 4
  %136 = call i32 @I915_WRITE(i32 %134, i32 %135)
  %137 = load i32, i32* %6, align 4
  %138 = call i32 @MG_PLL_TDC_COLDST_BIAS(i32 %137)
  %139 = call i32 @POSTING_READ(i32 %138)
  ret void
}

declare dso_local i32 @icl_pll_id_to_tc_port(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @MG_REFCLKIN_CTL(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @MG_CLKTOP2_CORECLKCTL1(i32) #1

declare dso_local i32 @MG_CLKTOP2_HSCLKCTL(i32) #1

declare dso_local i32 @MG_PLL_DIV0(i32) #1

declare dso_local i32 @MG_PLL_DIV1(i32) #1

declare dso_local i32 @MG_PLL_LF(i32) #1

declare dso_local i32 @MG_PLL_FRAC_LOCK(i32) #1

declare dso_local i32 @MG_PLL_SSC(i32) #1

declare dso_local i32 @MG_PLL_BIAS(i32) #1

declare dso_local i32 @MG_PLL_TDC_COLDST_BIAS(i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

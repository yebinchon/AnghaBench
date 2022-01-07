; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_cnl_calc_wrpll_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_cnl_calc_wrpll_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.intel_dpll_hw_state = type { i32, i32 }

@DPLL_CFGCR1_PDIV_MASK = common dso_local global i32 0, align 4
@DPLL_CFGCR1_KDIV_MASK = common dso_local global i32 0, align 4
@DPLL_CFGCR1_QDIV_RATIO_MASK = common dso_local global i32 0, align 4
@DPLL_CFGCR1_QDIV_RATIO_SHIFT = common dso_local global i32 0, align 4
@DPLL_CFGCR0_DCO_INTEGER_MASK = common dso_local global i32 0, align 4
@DPLL_CFGCR0_DCO_FRACTION_MASK = common dso_local global i32 0, align 4
@DPLL_CFGCR0_DCO_FRACTION_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cnl_calc_wrpll_link(%struct.drm_i915_private* %0, %struct.intel_dpll_hw_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.intel_dpll_hw_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store %struct.intel_dpll_hw_state* %1, %struct.intel_dpll_hw_state** %5, align 8
  %11 = load %struct.intel_dpll_hw_state*, %struct.intel_dpll_hw_state** %5, align 8
  %12 = getelementptr inbounds %struct.intel_dpll_hw_state, %struct.intel_dpll_hw_state* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @DPLL_CFGCR1_PDIV_MASK, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %6, align 4
  %16 = load %struct.intel_dpll_hw_state*, %struct.intel_dpll_hw_state** %5, align 8
  %17 = getelementptr inbounds %struct.intel_dpll_hw_state, %struct.intel_dpll_hw_state* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @DPLL_CFGCR1_KDIV_MASK, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %8, align 4
  %21 = load %struct.intel_dpll_hw_state*, %struct.intel_dpll_hw_state** %5, align 8
  %22 = getelementptr inbounds %struct.intel_dpll_hw_state, %struct.intel_dpll_hw_state* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @DPLL_CFGCR1_QDIV_MODE(i32 1)
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %2
  %28 = load %struct.intel_dpll_hw_state*, %struct.intel_dpll_hw_state** %5, align 8
  %29 = getelementptr inbounds %struct.intel_dpll_hw_state, %struct.intel_dpll_hw_state* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @DPLL_CFGCR1_QDIV_RATIO_MASK, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* @DPLL_CFGCR1_QDIV_RATIO_SHIFT, align 4
  %34 = ashr i32 %32, %33
  store i32 %34, i32* %7, align 4
  br label %36

35:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  br label %36

36:                                               ; preds = %35, %27
  %37 = load i32, i32* %6, align 4
  switch i32 %37, label %42 [
    i32 131, label %38
    i32 130, label %39
    i32 129, label %40
    i32 128, label %41
  ]

38:                                               ; preds = %36
  store i32 2, i32* %6, align 4
  br label %42

39:                                               ; preds = %36
  store i32 3, i32* %6, align 4
  br label %42

40:                                               ; preds = %36
  store i32 5, i32* %6, align 4
  br label %42

41:                                               ; preds = %36
  store i32 7, i32* %6, align 4
  br label %42

42:                                               ; preds = %36, %41, %40, %39, %38
  %43 = load i32, i32* %8, align 4
  switch i32 %43, label %47 [
    i32 134, label %44
    i32 133, label %45
    i32 132, label %46
  ]

44:                                               ; preds = %42
  store i32 1, i32* %8, align 4
  br label %47

45:                                               ; preds = %42
  store i32 2, i32* %8, align 4
  br label %47

46:                                               ; preds = %42
  store i32 3, i32* %8, align 4
  br label %47

47:                                               ; preds = %42, %46, %45, %44
  %48 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %49 = call i32 @cnl_hdmi_pll_ref_clock(%struct.drm_i915_private* %48)
  store i32 %49, i32* %10, align 4
  %50 = load %struct.intel_dpll_hw_state*, %struct.intel_dpll_hw_state** %5, align 8
  %51 = getelementptr inbounds %struct.intel_dpll_hw_state, %struct.intel_dpll_hw_state* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @DPLL_CFGCR0_DCO_INTEGER_MASK, align 4
  %54 = and i32 %52, %53
  %55 = load i32, i32* %10, align 4
  %56 = mul nsw i32 %54, %55
  store i32 %56, i32* %9, align 4
  %57 = load %struct.intel_dpll_hw_state*, %struct.intel_dpll_hw_state** %5, align 8
  %58 = getelementptr inbounds %struct.intel_dpll_hw_state, %struct.intel_dpll_hw_state* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @DPLL_CFGCR0_DCO_FRACTION_MASK, align 4
  %61 = and i32 %59, %60
  %62 = load i32, i32* @DPLL_CFGCR0_DCO_FRACTION_SHIFT, align 4
  %63 = ashr i32 %61, %62
  %64 = load i32, i32* %10, align 4
  %65 = mul nsw i32 %63, %64
  %66 = sdiv i32 %65, 32768
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, %66
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %47
  %72 = load i32, i32* %7, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* %8, align 4
  %76 = icmp eq i32 %75, 0
  br label %77

77:                                               ; preds = %74, %71, %47
  %78 = phi i1 [ true, %71 ], [ true, %47 ], [ %76, %74 ]
  %79 = zext i1 %78 to i32
  %80 = call i64 @WARN_ON(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  store i32 0, i32* %3, align 4
  br label %92

83:                                               ; preds = %77
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* %7, align 4
  %87 = mul nsw i32 %85, %86
  %88 = load i32, i32* %8, align 4
  %89 = mul nsw i32 %87, %88
  %90 = mul nsw i32 %89, 5
  %91 = sdiv i32 %84, %90
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %83, %82
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @DPLL_CFGCR1_QDIV_MODE(i32) #1

declare dso_local i32 @cnl_hdmi_pll_ref_clock(%struct.drm_i915_private*) #1

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

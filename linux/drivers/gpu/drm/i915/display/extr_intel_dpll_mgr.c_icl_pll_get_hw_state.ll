; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_icl_pll_get_hw_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_icl_pll_get_hw_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.intel_shared_dpll = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.intel_dpll_hw_state = type { i8*, i8* }

@POWER_DOMAIN_DISPLAY_CORE = common dso_local global i32 0, align 4
@PLL_ENABLE = common dso_local global i32 0, align 4
@DPLL_ID_EHL_DPLL4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*, %struct.intel_shared_dpll*, %struct.intel_dpll_hw_state*, i32)* @icl_pll_get_hw_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icl_pll_get_hw_state(%struct.drm_i915_private* %0, %struct.intel_shared_dpll* %1, %struct.intel_dpll_hw_state* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca %struct.intel_shared_dpll*, align 8
  %8 = alloca %struct.intel_dpll_hw_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %6, align 8
  store %struct.intel_shared_dpll* %1, %struct.intel_shared_dpll** %7, align 8
  store %struct.intel_dpll_hw_state* %2, %struct.intel_dpll_hw_state** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %7, align 8
  %15 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %20 = load i32, i32* @POWER_DOMAIN_DISPLAY_CORE, align 4
  %21 = call i32 @intel_display_power_get_if_enabled(%struct.drm_i915_private* %19, i32 %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %85

25:                                               ; preds = %4
  %26 = load i32, i32* %9, align 4
  %27 = call i8* @I915_READ(i32 %26)
  %28 = ptrtoint i8* %27 to i32
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* @PLL_ENABLE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %25
  br label %79

34:                                               ; preds = %25
  %35 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %36 = call i32 @INTEL_GEN(%struct.drm_i915_private* %35)
  %37 = icmp sge i32 %36, 12
  br i1 %37, label %38, label %49

38:                                               ; preds = %34
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @TGL_DPLL_CFGCR0(i32 %39)
  %41 = call i8* @I915_READ(i32 %40)
  %42 = load %struct.intel_dpll_hw_state*, %struct.intel_dpll_hw_state** %8, align 8
  %43 = getelementptr inbounds %struct.intel_dpll_hw_state, %struct.intel_dpll_hw_state* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @TGL_DPLL_CFGCR1(i32 %44)
  %46 = call i8* @I915_READ(i32 %45)
  %47 = load %struct.intel_dpll_hw_state*, %struct.intel_dpll_hw_state** %8, align 8
  %48 = getelementptr inbounds %struct.intel_dpll_hw_state, %struct.intel_dpll_hw_state* %47, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  br label %78

49:                                               ; preds = %34
  %50 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %51 = call i64 @IS_ELKHARTLAKE(%struct.drm_i915_private* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %49
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @DPLL_ID_EHL_DPLL4, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %53
  %58 = call i32 @ICL_DPLL_CFGCR0(i32 4)
  %59 = call i8* @I915_READ(i32 %58)
  %60 = load %struct.intel_dpll_hw_state*, %struct.intel_dpll_hw_state** %8, align 8
  %61 = getelementptr inbounds %struct.intel_dpll_hw_state, %struct.intel_dpll_hw_state* %60, i32 0, i32 1
  store i8* %59, i8** %61, align 8
  %62 = call i32 @ICL_DPLL_CFGCR1(i32 4)
  %63 = call i8* @I915_READ(i32 %62)
  %64 = load %struct.intel_dpll_hw_state*, %struct.intel_dpll_hw_state** %8, align 8
  %65 = getelementptr inbounds %struct.intel_dpll_hw_state, %struct.intel_dpll_hw_state* %64, i32 0, i32 0
  store i8* %63, i8** %65, align 8
  br label %77

66:                                               ; preds = %53, %49
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @ICL_DPLL_CFGCR0(i32 %67)
  %69 = call i8* @I915_READ(i32 %68)
  %70 = load %struct.intel_dpll_hw_state*, %struct.intel_dpll_hw_state** %8, align 8
  %71 = getelementptr inbounds %struct.intel_dpll_hw_state, %struct.intel_dpll_hw_state* %70, i32 0, i32 1
  store i8* %69, i8** %71, align 8
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @ICL_DPLL_CFGCR1(i32 %72)
  %74 = call i8* @I915_READ(i32 %73)
  %75 = load %struct.intel_dpll_hw_state*, %struct.intel_dpll_hw_state** %8, align 8
  %76 = getelementptr inbounds %struct.intel_dpll_hw_state, %struct.intel_dpll_hw_state* %75, i32 0, i32 0
  store i8* %74, i8** %76, align 8
  br label %77

77:                                               ; preds = %66, %57
  br label %78

78:                                               ; preds = %77, %38
  store i32 1, i32* %12, align 4
  br label %79

79:                                               ; preds = %78, %33
  %80 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %81 = load i32, i32* @POWER_DOMAIN_DISPLAY_CORE, align 4
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @intel_display_power_put(%struct.drm_i915_private* %80, i32 %81, i32 %82)
  %84 = load i32, i32* %12, align 4
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %79, %24
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i32 @intel_display_power_get_if_enabled(%struct.drm_i915_private*, i32) #1

declare dso_local i8* @I915_READ(i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @TGL_DPLL_CFGCR0(i32) #1

declare dso_local i32 @TGL_DPLL_CFGCR1(i32) #1

declare dso_local i64 @IS_ELKHARTLAKE(%struct.drm_i915_private*) #1

declare dso_local i32 @ICL_DPLL_CFGCR0(i32) #1

declare dso_local i32 @ICL_DPLL_CFGCR1(i32) #1

declare dso_local i32 @intel_display_power_put(%struct.drm_i915_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

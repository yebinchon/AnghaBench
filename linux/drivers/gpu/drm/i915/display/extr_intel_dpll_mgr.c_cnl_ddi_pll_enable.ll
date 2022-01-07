; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_cnl_ddi_pll_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_cnl_ddi_pll_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.intel_shared_dpll = type { %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@PLL_POWER_ENABLE = common dso_local global i32 0, align 4
@PLL_POWER_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"PLL %d Power not enabled\0A\00", align 1
@DPLL_CFGCR0_HDMI_MODE = common dso_local global i32 0, align 4
@PLL_ENABLE = common dso_local global i32 0, align 4
@PLL_LOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"PLL %d not locked\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, %struct.intel_shared_dpll*)* @cnl_ddi_pll_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cnl_ddi_pll_enable(%struct.drm_i915_private* %0, %struct.intel_shared_dpll* %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.intel_shared_dpll*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store %struct.intel_shared_dpll* %1, %struct.intel_shared_dpll** %4, align 8
  %7 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %4, align 8
  %8 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @CNL_DPLL_ENABLE(i32 %12)
  %14 = call i32 @I915_READ(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* @PLL_POWER_ENABLE, align 4
  %16 = load i32, i32* %6, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @CNL_DPLL_ENABLE(i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @I915_WRITE(i32 %19, i32 %20)
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @CNL_DPLL_ENABLE(i32 %23)
  %25 = load i32, i32* @PLL_POWER_STATE, align 4
  %26 = call i64 @intel_de_wait_for_set(%struct.drm_i915_private* %22, i32 %24, i32 %25, i32 5)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %28, %2
  %32 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %4, align 8
  %33 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @CNL_DPLL_CFGCR0(i32 %37)
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @I915_WRITE(i32 %38, i32 %39)
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @CNL_DPLL_CFGCR0(i32 %41)
  %43 = call i32 @POSTING_READ(i32 %42)
  %44 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %4, align 8
  %45 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @DPLL_CFGCR0_HDMI_MODE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %31
  %53 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %4, align 8
  %54 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @CNL_DPLL_CFGCR1(i32 %58)
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @I915_WRITE(i32 %59, i32 %60)
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @CNL_DPLL_CFGCR1(i32 %62)
  %64 = call i32 @POSTING_READ(i32 %63)
  br label %65

65:                                               ; preds = %52, %31
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @CNL_DPLL_ENABLE(i32 %66)
  %68 = call i32 @I915_READ(i32 %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* @PLL_ENABLE, align 4
  %70 = load i32, i32* %6, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @CNL_DPLL_ENABLE(i32 %72)
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @I915_WRITE(i32 %73, i32 %74)
  %76 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @CNL_DPLL_ENABLE(i32 %77)
  %79 = load i32, i32* @PLL_LOCK, align 4
  %80 = call i64 @intel_de_wait_for_set(%struct.drm_i915_private* %76, i32 %78, i32 %79, i32 5)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %65
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %82, %65
  ret void
}

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @CNL_DPLL_ENABLE(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i64 @intel_de_wait_for_set(%struct.drm_i915_private*, i32, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @CNL_DPLL_CFGCR0(i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i32 @CNL_DPLL_CFGCR1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

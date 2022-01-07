; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_icl_get_cdclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_icl_get_cdclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.intel_cdclk_state = type { i32, i32, i32, i32, i32 }

@SKL_DSSM = common dso_local global i32 0, align 4
@ICL_DSSM_CDCLK_PLL_REFCLK_MASK = common dso_local global i32 0, align 4
@BXT_DE_PLL_ENABLE = common dso_local global i32 0, align 4
@BXT_DE_PLL_PLL_ENABLE = common dso_local global i32 0, align 4
@BXT_DE_PLL_LOCK = common dso_local global i32 0, align 4
@BXT_DE_PLL_RATIO_MASK = common dso_local global i32 0, align 4
@CDCLK_CTL = common dso_local global i32 0, align 4
@BXT_CDCLK_CD2X_DIV_SEL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, %struct.intel_cdclk_state*)* @icl_get_cdclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icl_get_cdclk(%struct.drm_i915_private* %0, %struct.intel_cdclk_state* %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.intel_cdclk_state*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store %struct.intel_cdclk_state* %1, %struct.intel_cdclk_state** %4, align 8
  %6 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %7 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %6, i32 0, i32 0
  store i32 50000, i32* %7, align 4
  %8 = load i32, i32* @SKL_DSSM, align 4
  %9 = call i32 @I915_READ(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @ICL_DSSM_CDCLK_PLL_REFCLK_MASK, align 4
  %12 = and i32 %10, %11
  switch i32 %12, label %13 [
    i32 129, label %16
    i32 130, label %19
    i32 128, label %22
  ]

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @MISSING_CASE(i32 %14)
  br label %16

16:                                               ; preds = %2, %13
  %17 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %18 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %17, i32 0, i32 1
  store i32 24000, i32* %18, align 4
  br label %25

19:                                               ; preds = %2
  %20 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %21 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %20, i32 0, i32 1
  store i32 19200, i32* %21, align 4
  br label %25

22:                                               ; preds = %2
  %23 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %24 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %23, i32 0, i32 1
  store i32 38400, i32* %24, align 4
  br label %25

25:                                               ; preds = %22, %19, %16
  %26 = load i32, i32* @BXT_DE_PLL_ENABLE, align 4
  %27 = call i32 @I915_READ(i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @BXT_DE_PLL_PLL_ENABLE, align 4
  %30 = and i32 %28, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %25
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @BXT_DE_PLL_LOCK, align 4
  %35 = and i32 %33, %34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %32, %25
  %38 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %39 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %38, i32 0, i32 2
  store i32 0, i32* %39, align 4
  %40 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %41 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %44 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  br label %69

45:                                               ; preds = %32
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @BXT_DE_PLL_RATIO_MASK, align 4
  %48 = and i32 %46, %47
  %49 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %50 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = mul nsw i32 %48, %51
  %53 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %54 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @CDCLK_CTL, align 4
  %56 = call i32 @I915_READ(i32 %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @BXT_CDCLK_CD2X_DIV_SEL_MASK, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i32
  %62 = call i32 @WARN_ON(i32 %61)
  %63 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %64 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = sdiv i32 %65, 2
  %67 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %68 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 4
  br label %69

69:                                               ; preds = %45, %37
  %70 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %71 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %72 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @icl_calc_voltage_level(%struct.drm_i915_private* %70, i32 %73)
  %75 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %76 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 4
  ret void
}

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @MISSING_CASE(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @icl_calc_voltage_level(%struct.drm_i915_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

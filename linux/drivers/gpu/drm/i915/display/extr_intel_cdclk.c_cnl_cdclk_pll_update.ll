; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_cnl_cdclk_pll_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_cnl_cdclk_pll_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.intel_cdclk_state = type { i32, i32 }

@SKL_DSSM = common dso_local global i32 0, align 4
@CNL_DSSM_CDCLK_PLL_REFCLK_24MHz = common dso_local global i32 0, align 4
@BXT_DE_PLL_ENABLE = common dso_local global i32 0, align 4
@BXT_DE_PLL_PLL_ENABLE = common dso_local global i32 0, align 4
@BXT_DE_PLL_LOCK = common dso_local global i32 0, align 4
@CNL_CDCLK_PLL_RATIO_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, %struct.intel_cdclk_state*)* @cnl_cdclk_pll_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cnl_cdclk_pll_update(%struct.drm_i915_private* %0, %struct.intel_cdclk_state* %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.intel_cdclk_state*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store %struct.intel_cdclk_state* %1, %struct.intel_cdclk_state** %4, align 8
  %6 = load i32, i32* @SKL_DSSM, align 4
  %7 = call i32 @I915_READ(i32 %6)
  %8 = load i32, i32* @CNL_DSSM_CDCLK_PLL_REFCLK_24MHz, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %13 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %12, i32 0, i32 0
  store i32 24000, i32* %13, align 4
  br label %17

14:                                               ; preds = %2
  %15 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %16 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %15, i32 0, i32 0
  store i32 19200, i32* %16, align 4
  br label %17

17:                                               ; preds = %14, %11
  %18 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %19 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %18, i32 0, i32 1
  store i32 0, i32* %19, align 4
  %20 = load i32, i32* @BXT_DE_PLL_ENABLE, align 4
  %21 = call i32 @I915_READ(i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @BXT_DE_PLL_PLL_ENABLE, align 4
  %24 = and i32 %22, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  br label %46

27:                                               ; preds = %17
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @BXT_DE_PLL_LOCK, align 4
  %30 = and i32 %28, %29
  %31 = icmp eq i32 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i64 @WARN_ON(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %46

36:                                               ; preds = %27
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @CNL_CDCLK_PLL_RATIO_MASK, align 4
  %39 = and i32 %37, %38
  %40 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %41 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = mul nsw i32 %39, %42
  %44 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %45 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %36, %35, %26
  ret void
}

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

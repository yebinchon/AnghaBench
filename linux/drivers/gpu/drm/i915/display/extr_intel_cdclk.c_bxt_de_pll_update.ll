; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_bxt_de_pll_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_bxt_de_pll_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.intel_cdclk_state = type { i32, i32 }

@BXT_DE_PLL_ENABLE = common dso_local global i32 0, align 4
@BXT_DE_PLL_PLL_ENABLE = common dso_local global i32 0, align 4
@BXT_DE_PLL_LOCK = common dso_local global i32 0, align 4
@BXT_DE_PLL_CTL = common dso_local global i32 0, align 4
@BXT_DE_PLL_RATIO_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, %struct.intel_cdclk_state*)* @bxt_de_pll_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxt_de_pll_update(%struct.drm_i915_private* %0, %struct.intel_cdclk_state* %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.intel_cdclk_state*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store %struct.intel_cdclk_state* %1, %struct.intel_cdclk_state** %4, align 8
  %6 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %7 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %6, i32 0, i32 0
  store i32 19200, i32* %7, align 4
  %8 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %9 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %8, i32 0, i32 1
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* @BXT_DE_PLL_ENABLE, align 4
  %11 = call i32 @I915_READ(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @BXT_DE_PLL_PLL_ENABLE, align 4
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %38

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @BXT_DE_PLL_LOCK, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i64 @WARN_ON(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %38

26:                                               ; preds = %17
  %27 = load i32, i32* @BXT_DE_PLL_CTL, align 4
  %28 = call i32 @I915_READ(i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @BXT_DE_PLL_RATIO_MASK, align 4
  %31 = and i32 %29, %30
  %32 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %33 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %31, %34
  %36 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %37 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %26, %25, %16
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

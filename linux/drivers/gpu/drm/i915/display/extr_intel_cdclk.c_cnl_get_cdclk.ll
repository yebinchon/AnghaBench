; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_cnl_get_cdclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_cnl_get_cdclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.intel_cdclk_state = type { i64, i32, i32, i32, i32 }

@CDCLK_CTL = common dso_local global i32 0, align 4
@BXT_CDCLK_CD2X_DIV_SEL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, %struct.intel_cdclk_state*)* @cnl_get_cdclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cnl_get_cdclk(%struct.drm_i915_private* %0, %struct.intel_cdclk_state* %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.intel_cdclk_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store %struct.intel_cdclk_state* %1, %struct.intel_cdclk_state** %4, align 8
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %8 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %9 = call i32 @cnl_cdclk_pll_update(%struct.drm_i915_private* %7, %struct.intel_cdclk_state* %8)
  %10 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %11 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %14 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %13, i32 0, i32 4
  store i32 %12, i32* %14, align 4
  %15 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %16 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %15, i32 0, i32 1
  store i32 %12, i32* %16, align 8
  %17 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %18 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %41

22:                                               ; preds = %2
  %23 = load i32, i32* @CDCLK_CTL, align 4
  %24 = call i32 @I915_READ(i32 %23)
  %25 = load i32, i32* @BXT_CDCLK_CD2X_DIV_SEL_MASK, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  switch i32 %27, label %30 [
    i32 129, label %28
    i32 128, label %29
  ]

28:                                               ; preds = %22
  store i32 2, i32* %6, align 4
  br label %33

29:                                               ; preds = %22
  store i32 4, i32* %6, align 4
  br label %33

30:                                               ; preds = %22
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @MISSING_CASE(i32 %31)
  br label %48

33:                                               ; preds = %29, %28
  %34 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %35 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @DIV_ROUND_CLOSEST(i64 %36, i32 %37)
  %39 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %40 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  br label %41

41:                                               ; preds = %33, %21
  %42 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %43 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @cnl_calc_voltage_level(i32 %44)
  %46 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %47 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  br label %48

48:                                               ; preds = %41, %30
  ret void
}

declare dso_local i32 @cnl_cdclk_pll_update(%struct.drm_i915_private*, %struct.intel_cdclk_state*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @MISSING_CASE(i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i64, i32) #1

declare dso_local i32 @cnl_calc_voltage_level(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

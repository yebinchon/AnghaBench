; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_bxt_get_cdclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_bxt_get_cdclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.intel_cdclk_state = type { i64, i32, i32, i32, i32 }

@CDCLK_CTL = common dso_local global i32 0, align 4
@BXT_CDCLK_CD2X_DIV_SEL_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Unsupported divider\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, %struct.intel_cdclk_state*)* @bxt_get_cdclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxt_get_cdclk(%struct.drm_i915_private* %0, %struct.intel_cdclk_state* %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.intel_cdclk_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store %struct.intel_cdclk_state* %1, %struct.intel_cdclk_state** %4, align 8
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %8 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %9 = call i32 @bxt_de_pll_update(%struct.drm_i915_private* %7, %struct.intel_cdclk_state* %8)
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
  br label %46

22:                                               ; preds = %2
  %23 = load i32, i32* @CDCLK_CTL, align 4
  %24 = call i32 @I915_READ(i32 %23)
  %25 = load i32, i32* @BXT_CDCLK_CD2X_DIV_SEL_MASK, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  switch i32 %27, label %35 [
    i32 131, label %28
    i32 130, label %29
    i32 129, label %33
    i32 128, label %34
  ]

28:                                               ; preds = %22
  store i32 2, i32* %6, align 4
  br label %38

29:                                               ; preds = %22
  %30 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %31 = call i32 @IS_GEMINILAKE(%struct.drm_i915_private* %30)
  %32 = call i32 @WARN(i32 %31, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 3, i32* %6, align 4
  br label %38

33:                                               ; preds = %22
  store i32 4, i32* %6, align 4
  br label %38

34:                                               ; preds = %22
  store i32 8, i32* %6, align 4
  br label %38

35:                                               ; preds = %22
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @MISSING_CASE(i32 %36)
  br label %53

38:                                               ; preds = %34, %33, %29, %28
  %39 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %40 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @DIV_ROUND_CLOSEST(i64 %41, i32 %42)
  %44 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %45 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  br label %46

46:                                               ; preds = %38, %21
  %47 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %48 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @bxt_calc_voltage_level(i32 %49)
  %51 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %52 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  br label %53

53:                                               ; preds = %46, %35
  ret void
}

declare dso_local i32 @bxt_de_pll_update(%struct.drm_i915_private*, %struct.intel_cdclk_state*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @IS_GEMINILAKE(%struct.drm_i915_private*) #1

declare dso_local i32 @MISSING_CASE(i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i64, i32) #1

declare dso_local i32 @bxt_calc_voltage_level(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

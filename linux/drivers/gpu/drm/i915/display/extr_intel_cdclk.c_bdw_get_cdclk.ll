; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_bdw_get_cdclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_bdw_get_cdclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.intel_cdclk_state = type { i32, i32 }

@LCPLL_CTL = common dso_local global i32 0, align 4
@LCPLL_CLK_FREQ_MASK = common dso_local global i32 0, align 4
@LCPLL_CD_SOURCE_FCLK = common dso_local global i32 0, align 4
@FUSE_STRAP = common dso_local global i32 0, align 4
@HSW_CDCLK_LIMIT = common dso_local global i32 0, align 4
@LCPLL_CLK_FREQ_450 = common dso_local global i32 0, align 4
@LCPLL_CLK_FREQ_54O_BDW = common dso_local global i32 0, align 4
@LCPLL_CLK_FREQ_337_5_BDW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, %struct.intel_cdclk_state*)* @bdw_get_cdclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bdw_get_cdclk(%struct.drm_i915_private* %0, %struct.intel_cdclk_state* %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.intel_cdclk_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store %struct.intel_cdclk_state* %1, %struct.intel_cdclk_state** %4, align 8
  %7 = load i32, i32* @LCPLL_CTL, align 4
  %8 = call i32 @I915_READ(i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @LCPLL_CLK_FREQ_MASK, align 4
  %11 = and i32 %9, %10
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @LCPLL_CD_SOURCE_FCLK, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %18 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %17, i32 0, i32 0
  store i32 800000, i32* %18, align 4
  br label %56

19:                                               ; preds = %2
  %20 = load i32, i32* @FUSE_STRAP, align 4
  %21 = call i32 @I915_READ(i32 %20)
  %22 = load i32, i32* @HSW_CDCLK_LIMIT, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %27 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %26, i32 0, i32 0
  store i32 450000, i32* %27, align 4
  br label %55

28:                                               ; preds = %19
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @LCPLL_CLK_FREQ_450, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %34 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %33, i32 0, i32 0
  store i32 450000, i32* %34, align 4
  br label %54

35:                                               ; preds = %28
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @LCPLL_CLK_FREQ_54O_BDW, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %41 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %40, i32 0, i32 0
  store i32 540000, i32* %41, align 4
  br label %53

42:                                               ; preds = %35
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @LCPLL_CLK_FREQ_337_5_BDW, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %48 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %47, i32 0, i32 0
  store i32 337500, i32* %48, align 4
  br label %52

49:                                               ; preds = %42
  %50 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %51 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %50, i32 0, i32 0
  store i32 675000, i32* %51, align 4
  br label %52

52:                                               ; preds = %49, %46
  br label %53

53:                                               ; preds = %52, %39
  br label %54

54:                                               ; preds = %53, %32
  br label %55

55:                                               ; preds = %54, %25
  br label %56

56:                                               ; preds = %55, %16
  %57 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %58 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @bdw_calc_voltage_level(i32 %59)
  %61 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %62 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  ret void
}

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @bdw_calc_voltage_level(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

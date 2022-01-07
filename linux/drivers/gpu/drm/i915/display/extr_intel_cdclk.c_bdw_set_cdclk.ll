; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_bdw_set_cdclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_bdw_set_cdclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.intel_cdclk_state = type { i32, i32 }

@LCPLL_CTL = common dso_local global i32 0, align 4
@LCPLL_PLL_DISABLE = common dso_local global i32 0, align 4
@LCPLL_PLL_LOCK = common dso_local global i32 0, align 4
@LCPLL_CD_CLOCK_DISABLE = common dso_local global i32 0, align 4
@LCPLL_ROOT_CD_CLOCK_DISABLE = common dso_local global i32 0, align 4
@LCPLL_CD2X_CLOCK_DISABLE = common dso_local global i32 0, align 4
@LCPLL_POWER_DOWN_ALLOW = common dso_local global i32 0, align 4
@LCPLL_CD_SOURCE_FCLK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"trying to change cdclk frequency with cdclk not enabled\0A\00", align 1
@BDW_PCODE_DISPLAY_FREQ_CHANGE_REQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"failed to inform pcode about cdclk change\0A\00", align 1
@LCPLL_CD_SOURCE_FCLK_DONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Switching to FCLK failed\0A\00", align 1
@LCPLL_CLK_FREQ_MASK = common dso_local global i32 0, align 4
@LCPLL_CLK_FREQ_337_5_BDW = common dso_local global i32 0, align 4
@LCPLL_CLK_FREQ_450 = common dso_local global i32 0, align 4
@LCPLL_CLK_FREQ_54O_BDW = common dso_local global i32 0, align 4
@LCPLL_CLK_FREQ_675_BDW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Switching back to LCPLL failed\0A\00", align 1
@HSW_PCODE_DE_WRITE_FREQ_REQ = common dso_local global i32 0, align 4
@CDCLK_FREQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, %struct.intel_cdclk_state*, i32)* @bdw_set_cdclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bdw_set_cdclk(%struct.drm_i915_private* %0, %struct.intel_cdclk_state* %1, i32 %2) #0 {
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.intel_cdclk_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store %struct.intel_cdclk_state* %1, %struct.intel_cdclk_state** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %5, align 8
  %11 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* @LCPLL_CTL, align 4
  %14 = call i32 @I915_READ(i32 %13)
  %15 = load i32, i32* @LCPLL_PLL_DISABLE, align 4
  %16 = load i32, i32* @LCPLL_PLL_LOCK, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @LCPLL_CD_CLOCK_DISABLE, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @LCPLL_ROOT_CD_CLOCK_DISABLE, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @LCPLL_CD2X_CLOCK_DISABLE, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @LCPLL_POWER_DOWN_ALLOW, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @LCPLL_CD_SOURCE_FCLK, align 4
  %27 = or i32 %25, %26
  %28 = and i32 %14, %27
  %29 = load i32, i32* @LCPLL_PLL_LOCK, align 4
  %30 = icmp ne i32 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i64 @WARN(i32 %31, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %3
  br label %124

35:                                               ; preds = %3
  %36 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %37 = load i32, i32* @BDW_PCODE_DISPLAY_FREQ_CHANGE_REQ, align 4
  %38 = call i32 @sandybridge_pcode_write(%struct.drm_i915_private* %36, i32 %37, i32 0)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %124

43:                                               ; preds = %35
  %44 = load i32, i32* @LCPLL_CTL, align 4
  %45 = call i32 @I915_READ(i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* @LCPLL_CD_SOURCE_FCLK, align 4
  %47 = load i32, i32* %8, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* @LCPLL_CTL, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @I915_WRITE(i32 %49, i32 %50)
  %52 = load i32, i32* @LCPLL_CTL, align 4
  %53 = call i32 @I915_READ(i32 %52)
  %54 = load i32, i32* @LCPLL_CD_SOURCE_FCLK_DONE, align 4
  %55 = and i32 %53, %54
  %56 = call i64 @wait_for_us(i32 %55, i32 100)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %43
  %59 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %43
  %61 = load i32, i32* @LCPLL_CTL, align 4
  %62 = call i32 @I915_READ(i32 %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* @LCPLL_CLK_FREQ_MASK, align 4
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %8, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %7, align 4
  switch i32 %67, label %68 [
    i32 337500, label %71
    i32 450000, label %75
    i32 540000, label %79
    i32 675000, label %83
  ]

68:                                               ; preds = %60
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @MISSING_CASE(i32 %69)
  br label %71

71:                                               ; preds = %60, %68
  %72 = load i32, i32* @LCPLL_CLK_FREQ_337_5_BDW, align 4
  %73 = load i32, i32* %8, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %8, align 4
  br label %87

75:                                               ; preds = %60
  %76 = load i32, i32* @LCPLL_CLK_FREQ_450, align 4
  %77 = load i32, i32* %8, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %8, align 4
  br label %87

79:                                               ; preds = %60
  %80 = load i32, i32* @LCPLL_CLK_FREQ_54O_BDW, align 4
  %81 = load i32, i32* %8, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %8, align 4
  br label %87

83:                                               ; preds = %60
  %84 = load i32, i32* @LCPLL_CLK_FREQ_675_BDW, align 4
  %85 = load i32, i32* %8, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %8, align 4
  br label %87

87:                                               ; preds = %83, %79, %75, %71
  %88 = load i32, i32* @LCPLL_CTL, align 4
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @I915_WRITE(i32 %88, i32 %89)
  %91 = load i32, i32* @LCPLL_CTL, align 4
  %92 = call i32 @I915_READ(i32 %91)
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* @LCPLL_CD_SOURCE_FCLK, align 4
  %94 = xor i32 %93, -1
  %95 = load i32, i32* %8, align 4
  %96 = and i32 %95, %94
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* @LCPLL_CTL, align 4
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @I915_WRITE(i32 %97, i32 %98)
  %100 = load i32, i32* @LCPLL_CTL, align 4
  %101 = call i32 @I915_READ(i32 %100)
  %102 = load i32, i32* @LCPLL_CD_SOURCE_FCLK_DONE, align 4
  %103 = and i32 %101, %102
  %104 = icmp eq i32 %103, 0
  %105 = zext i1 %104 to i32
  %106 = call i64 @wait_for_us(i32 %105, i32 1)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %87
  %109 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %110

110:                                              ; preds = %108, %87
  %111 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %112 = load i32, i32* @HSW_PCODE_DE_WRITE_FREQ_REQ, align 4
  %113 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %5, align 8
  %114 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @sandybridge_pcode_write(%struct.drm_i915_private* %111, i32 %112, i32 %115)
  %117 = load i32, i32* @CDCLK_FREQ, align 4
  %118 = load i32, i32* %7, align 4
  %119 = call i32 @DIV_ROUND_CLOSEST(i32 %118, i32 1000)
  %120 = sub nsw i32 %119, 1
  %121 = call i32 @I915_WRITE(i32 %117, i32 %120)
  %122 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %123 = call i32 @intel_update_cdclk(%struct.drm_i915_private* %122)
  br label %124

124:                                              ; preds = %110, %41, %34
  ret void
}

declare dso_local i64 @WARN(i32, i8*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @sandybridge_pcode_write(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i64 @wait_for_us(i32, i32) #1

declare dso_local i32 @MISSING_CASE(i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @intel_update_cdclk(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

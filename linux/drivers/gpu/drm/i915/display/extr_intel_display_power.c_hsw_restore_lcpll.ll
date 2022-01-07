; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display_power.c_hsw_restore_lcpll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display_power.c_hsw_restore_lcpll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@LCPLL_CTL = common dso_local global i32 0, align 4
@LCPLL_PLL_LOCK = common dso_local global i32 0, align 4
@LCPLL_PLL_DISABLE = common dso_local global i32 0, align 4
@LCPLL_CD_SOURCE_FCLK = common dso_local global i32 0, align 4
@LCPLL_POWER_DOWN_ALLOW = common dso_local global i32 0, align 4
@FORCEWAKE_ALL = common dso_local global i32 0, align 4
@D_COMP_COMP_FORCE = common dso_local global i32 0, align 4
@D_COMP_COMP_DISABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"LCPLL not locked yet\0A\00", align 1
@LCPLL_CD_SOURCE_FCLK_DONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Switching back to LCPLL failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Current CDCLK\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @hsw_restore_lcpll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hsw_restore_lcpll(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %4 = load i32, i32* @LCPLL_CTL, align 4
  %5 = call i32 @I915_READ(i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @LCPLL_PLL_LOCK, align 4
  %8 = load i32, i32* @LCPLL_PLL_DISABLE, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @LCPLL_CD_SOURCE_FCLK, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @LCPLL_POWER_DOWN_ALLOW, align 4
  %13 = or i32 %11, %12
  %14 = and i32 %6, %13
  %15 = load i32, i32* @LCPLL_PLL_LOCK, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %103

18:                                               ; preds = %1
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %20 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %19, i32 0, i32 1
  %21 = load i32, i32* @FORCEWAKE_ALL, align 4
  %22 = call i32 @intel_uncore_forcewake_get(i32* %20, i32 %21)
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @LCPLL_POWER_DOWN_ALLOW, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %18
  %28 = load i32, i32* @LCPLL_POWER_DOWN_ALLOW, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %3, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* @LCPLL_CTL, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @I915_WRITE(i32 %32, i32 %33)
  %35 = load i32, i32* @LCPLL_CTL, align 4
  %36 = call i32 @POSTING_READ(i32 %35)
  br label %37

37:                                               ; preds = %27, %18
  %38 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %39 = call i32 @hsw_read_dcomp(%struct.drm_i915_private* %38)
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* @D_COMP_COMP_FORCE, align 4
  %41 = load i32, i32* %3, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* @D_COMP_COMP_DISABLE, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %3, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %3, align 4
  %47 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @hsw_write_dcomp(%struct.drm_i915_private* %47, i32 %48)
  %50 = load i32, i32* @LCPLL_CTL, align 4
  %51 = call i32 @I915_READ(i32 %50)
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* @LCPLL_PLL_DISABLE, align 4
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %3, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %3, align 4
  %56 = load i32, i32* @LCPLL_CTL, align 4
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @I915_WRITE(i32 %56, i32 %57)
  %59 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %60 = load i32, i32* @LCPLL_CTL, align 4
  %61 = load i32, i32* @LCPLL_PLL_LOCK, align 4
  %62 = call i64 @intel_de_wait_for_set(%struct.drm_i915_private* %59, i32 %60, i32 %61, i32 5)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %37
  %65 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %37
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* @LCPLL_CD_SOURCE_FCLK, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %92

71:                                               ; preds = %66
  %72 = load i32, i32* @LCPLL_CTL, align 4
  %73 = call i32 @I915_READ(i32 %72)
  store i32 %73, i32* %3, align 4
  %74 = load i32, i32* @LCPLL_CD_SOURCE_FCLK, align 4
  %75 = xor i32 %74, -1
  %76 = load i32, i32* %3, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %3, align 4
  %78 = load i32, i32* @LCPLL_CTL, align 4
  %79 = load i32, i32* %3, align 4
  %80 = call i32 @I915_WRITE(i32 %78, i32 %79)
  %81 = load i32, i32* @LCPLL_CTL, align 4
  %82 = call i32 @I915_READ(i32 %81)
  %83 = load i32, i32* @LCPLL_CD_SOURCE_FCLK_DONE, align 4
  %84 = and i32 %82, %83
  %85 = icmp eq i32 %84, 0
  %86 = zext i1 %85 to i32
  %87 = call i64 @wait_for_us(i32 %86, i32 1)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %71
  %90 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %91

91:                                               ; preds = %89, %71
  br label %92

92:                                               ; preds = %91, %66
  %93 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %94 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %93, i32 0, i32 1
  %95 = load i32, i32* @FORCEWAKE_ALL, align 4
  %96 = call i32 @intel_uncore_forcewake_put(i32* %94, i32 %95)
  %97 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %98 = call i32 @intel_update_cdclk(%struct.drm_i915_private* %97)
  %99 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %100 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = call i32 @intel_dump_cdclk_state(i32* %101, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %103

103:                                              ; preds = %92, %17
  ret void
}

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @intel_uncore_forcewake_get(i32*, i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i32 @hsw_read_dcomp(%struct.drm_i915_private*) #1

declare dso_local i32 @hsw_write_dcomp(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @intel_de_wait_for_set(%struct.drm_i915_private*, i32, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i64 @wait_for_us(i32, i32) #1

declare dso_local i32 @intel_uncore_forcewake_put(i32*, i32) #1

declare dso_local i32 @intel_update_cdclk(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_dump_cdclk_state(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

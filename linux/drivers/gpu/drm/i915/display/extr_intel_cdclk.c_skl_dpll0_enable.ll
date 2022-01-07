; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_skl_dpll0_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_skl_dpll0_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@DPLL_CTRL1 = common dso_local global i32 0, align 4
@SKL_DPLL0 = common dso_local global i32 0, align 4
@DPLL_CTRL1_LINK_RATE_1080 = common dso_local global i32 0, align 4
@DPLL_CTRL1_LINK_RATE_810 = common dso_local global i32 0, align 4
@LCPLL1_CTL = common dso_local global i32 0, align 4
@LCPLL_PLL_ENABLE = common dso_local global i32 0, align 4
@LCPLL_PLL_LOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"DPLL0 not locked\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, i32)* @skl_dpll0_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skl_dpll0_enable(%struct.drm_i915_private* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 8100000
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 8640000
  br label %11

11:                                               ; preds = %8, %2
  %12 = phi i1 [ false, %2 ], [ %10, %8 ]
  %13 = zext i1 %12 to i32
  %14 = call i32 @WARN_ON(i32 %13)
  %15 = load i32, i32* @DPLL_CTRL1, align 4
  %16 = call i32 @I915_READ(i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* @SKL_DPLL0, align 4
  %18 = call i32 @DPLL_CTRL1_HDMI_MODE(i32 %17)
  %19 = load i32, i32* @SKL_DPLL0, align 4
  %20 = call i32 @DPLL_CTRL1_SSC(i32 %19)
  %21 = or i32 %18, %20
  %22 = load i32, i32* @SKL_DPLL0, align 4
  %23 = call i32 @DPLL_CTRL1_LINK_RATE_MASK(i32 %22)
  %24 = or i32 %21, %23
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %5, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* @SKL_DPLL0, align 4
  %29 = call i32 @DPLL_CTRL1_OVERRIDE(i32 %28)
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp eq i32 %32, 8640000
  br i1 %33, label %34, label %40

34:                                               ; preds = %11
  %35 = load i32, i32* @DPLL_CTRL1_LINK_RATE_1080, align 4
  %36 = load i32, i32* @SKL_DPLL0, align 4
  %37 = call i32 @DPLL_CTRL1_LINK_RATE(i32 %35, i32 %36)
  %38 = load i32, i32* %5, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %5, align 4
  br label %46

40:                                               ; preds = %11
  %41 = load i32, i32* @DPLL_CTRL1_LINK_RATE_810, align 4
  %42 = load i32, i32* @SKL_DPLL0, align 4
  %43 = call i32 @DPLL_CTRL1_LINK_RATE(i32 %41, i32 %42)
  %44 = load i32, i32* %5, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %40, %34
  %47 = load i32, i32* @DPLL_CTRL1, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @I915_WRITE(i32 %47, i32 %48)
  %50 = load i32, i32* @DPLL_CTRL1, align 4
  %51 = call i32 @POSTING_READ(i32 %50)
  %52 = load i32, i32* @LCPLL1_CTL, align 4
  %53 = load i32, i32* @LCPLL1_CTL, align 4
  %54 = call i32 @I915_READ(i32 %53)
  %55 = load i32, i32* @LCPLL_PLL_ENABLE, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @I915_WRITE(i32 %52, i32 %56)
  %58 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %59 = load i32, i32* @LCPLL1_CTL, align 4
  %60 = load i32, i32* @LCPLL_PLL_LOCK, align 4
  %61 = call i64 @intel_de_wait_for_set(%struct.drm_i915_private* %58, i32 %59, i32 %60, i32 5)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %46
  %64 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %46
  %66 = load i32, i32* %4, align 4
  %67 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %68 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  store i32 %66, i32* %70, align 4
  %71 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @skl_set_preferred_cdclk_vco(%struct.drm_i915_private* %71, i32 %72)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @DPLL_CTRL1_HDMI_MODE(i32) #1

declare dso_local i32 @DPLL_CTRL1_SSC(i32) #1

declare dso_local i32 @DPLL_CTRL1_LINK_RATE_MASK(i32) #1

declare dso_local i32 @DPLL_CTRL1_OVERRIDE(i32) #1

declare dso_local i32 @DPLL_CTRL1_LINK_RATE(i32, i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i64 @intel_de_wait_for_set(%struct.drm_i915_private*, i32, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @skl_set_preferred_cdclk_vco(%struct.drm_i915_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

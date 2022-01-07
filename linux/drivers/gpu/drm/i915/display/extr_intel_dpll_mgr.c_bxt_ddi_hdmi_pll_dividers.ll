; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_bxt_ddi_hdmi_pll_dividers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_bxt_ddi_hdmi_pll_dividers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.bxt_clk_div = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.intel_crtc = type { i32 }
%struct.dpll = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"no PLL dividers found for clock %d pipe %c\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_crtc_state*, %struct.bxt_clk_div*)* @bxt_ddi_hdmi_pll_dividers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxt_ddi_hdmi_pll_dividers(%struct.intel_crtc_state* %0, %struct.bxt_clk_div* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.bxt_clk_div*, align 8
  %6 = alloca %struct.intel_crtc*, align 8
  %7 = alloca %struct.dpll, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %4, align 8
  store %struct.bxt_clk_div* %1, %struct.bxt_clk_div** %5, align 8
  %8 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %9 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.intel_crtc* @to_intel_crtc(i32 %11)
  store %struct.intel_crtc* %12, %struct.intel_crtc** %6, align 8
  %13 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %14 = call i32 @bxt_find_best_dpll(%struct.intel_crtc_state* %13, %struct.dpll* %7)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %2
  %17 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %18 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %21 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @pipe_name(i32 %22)
  %24 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %23)
  store i32 0, i32* %3, align 4
  br label %64

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.dpll, %struct.dpll* %7, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.bxt_clk_div*, %struct.bxt_clk_div** %5, align 8
  %29 = getelementptr inbounds %struct.bxt_clk_div, %struct.bxt_clk_div* %28, i32 0, i32 6
  store i32 %27, i32* %29, align 4
  %30 = getelementptr inbounds %struct.dpll, %struct.dpll* %7, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.bxt_clk_div*, %struct.bxt_clk_div** %5, align 8
  %33 = getelementptr inbounds %struct.bxt_clk_div, %struct.bxt_clk_div* %32, i32 0, i32 5
  store i32 %31, i32* %33, align 4
  %34 = getelementptr inbounds %struct.dpll, %struct.dpll* %7, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 2
  %37 = zext i1 %36 to i32
  %38 = call i32 @WARN_ON(i32 %37)
  %39 = getelementptr inbounds %struct.dpll, %struct.dpll* %7, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.bxt_clk_div*, %struct.bxt_clk_div** %5, align 8
  %42 = getelementptr inbounds %struct.bxt_clk_div, %struct.bxt_clk_div* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 4
  %43 = getelementptr inbounds %struct.dpll, %struct.dpll* %7, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = ashr i32 %44, 22
  %46 = load %struct.bxt_clk_div*, %struct.bxt_clk_div** %5, align 8
  %47 = getelementptr inbounds %struct.bxt_clk_div, %struct.bxt_clk_div* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = getelementptr inbounds %struct.dpll, %struct.dpll* %7, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 4194303
  %51 = load %struct.bxt_clk_div*, %struct.bxt_clk_div** %5, align 8
  %52 = getelementptr inbounds %struct.bxt_clk_div, %struct.bxt_clk_div* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.bxt_clk_div*, %struct.bxt_clk_div** %5, align 8
  %54 = getelementptr inbounds %struct.bxt_clk_div, %struct.bxt_clk_div* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i32
  %58 = load %struct.bxt_clk_div*, %struct.bxt_clk_div** %5, align 8
  %59 = getelementptr inbounds %struct.bxt_clk_div, %struct.bxt_clk_div* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 4
  %60 = getelementptr inbounds %struct.dpll, %struct.dpll* %7, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.bxt_clk_div*, %struct.bxt_clk_div** %5, align 8
  %63 = getelementptr inbounds %struct.bxt_clk_div, %struct.bxt_clk_div* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  store i32 1, i32* %3, align 4
  br label %64

64:                                               ; preds = %25, %16
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local i32 @bxt_find_best_dpll(%struct.intel_crtc_state*, %struct.dpll*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32, i32) #1

declare dso_local i32 @pipe_name(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

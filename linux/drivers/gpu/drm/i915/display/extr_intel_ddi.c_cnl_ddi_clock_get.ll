; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_cnl_ddi_clock_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_cnl_ddi_clock_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.intel_crtc_state = type { i32, %struct.intel_dpll_hw_state }
%struct.intel_dpll_hw_state = type { i32 }
%struct.drm_i915_private = type { i32 }

@DPLL_CFGCR0_HDMI_MODE = common dso_local global i32 0, align 4
@DPLL_CFGCR0_LINK_RATE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Unsupported link rate\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*, %struct.intel_crtc_state*)* @cnl_ddi_clock_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cnl_ddi_clock_get(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca %struct.intel_encoder*, align 8
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.intel_dpll_hw_state*, align 8
  %7 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %3, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %4, align 8
  %8 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %9 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.drm_i915_private* @to_i915(i32 %11)
  store %struct.drm_i915_private* %12, %struct.drm_i915_private** %5, align 8
  %13 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %14 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %13, i32 0, i32 1
  store %struct.intel_dpll_hw_state* %14, %struct.intel_dpll_hw_state** %6, align 8
  %15 = load %struct.intel_dpll_hw_state*, %struct.intel_dpll_hw_state** %6, align 8
  %16 = getelementptr inbounds %struct.intel_dpll_hw_state, %struct.intel_dpll_hw_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @DPLL_CFGCR0_HDMI_MODE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %23 = load %struct.intel_dpll_hw_state*, %struct.intel_dpll_hw_state** %6, align 8
  %24 = call i32 @cnl_calc_wrpll_link(%struct.drm_i915_private* %22, %struct.intel_dpll_hw_state* %23)
  store i32 %24, i32* %7, align 4
  br label %45

25:                                               ; preds = %2
  %26 = load %struct.intel_dpll_hw_state*, %struct.intel_dpll_hw_state** %6, align 8
  %27 = getelementptr inbounds %struct.intel_dpll_hw_state, %struct.intel_dpll_hw_state* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @DPLL_CFGCR0_LINK_RATE_MASK, align 4
  %30 = and i32 %28, %29
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  switch i32 %31, label %40 [
    i32 128, label %32
    i32 135, label %33
    i32 134, label %34
    i32 133, label %35
    i32 132, label %36
    i32 131, label %37
    i32 130, label %38
    i32 129, label %39
  ]

32:                                               ; preds = %25
  store i32 81000, i32* %7, align 4
  br label %42

33:                                               ; preds = %25
  store i32 108000, i32* %7, align 4
  br label %42

34:                                               ; preds = %25
  store i32 135000, i32* %7, align 4
  br label %42

35:                                               ; preds = %25
  store i32 162000, i32* %7, align 4
  br label %42

36:                                               ; preds = %25
  store i32 216000, i32* %7, align 4
  br label %42

37:                                               ; preds = %25
  store i32 270000, i32* %7, align 4
  br label %42

38:                                               ; preds = %25
  store i32 324000, i32* %7, align 4
  br label %42

39:                                               ; preds = %25
  store i32 405000, i32* %7, align 4
  br label %42

40:                                               ; preds = %25
  %41 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %39, %38, %37, %36, %35, %34, %33, %32
  %43 = load i32, i32* %7, align 4
  %44 = mul nsw i32 %43, 2
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %42, %21
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %48 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %50 = call i32 @ddi_dotclock_get(%struct.intel_crtc_state* %49)
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @cnl_calc_wrpll_link(%struct.drm_i915_private*, %struct.intel_dpll_hw_state*) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @ddi_dotclock_get(%struct.intel_crtc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

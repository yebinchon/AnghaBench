; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_skl_ddi_clock_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_skl_ddi_clock_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { i32 }
%struct.intel_crtc_state = type { i32, %struct.intel_dpll_hw_state }
%struct.intel_dpll_hw_state = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Unsupported link rate\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*, %struct.intel_crtc_state*)* @skl_ddi_clock_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skl_ddi_clock_get(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca %struct.intel_encoder*, align 8
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.intel_dpll_hw_state*, align 8
  %6 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %3, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %4, align 8
  %7 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %8 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %7, i32 0, i32 1
  store %struct.intel_dpll_hw_state* %8, %struct.intel_dpll_hw_state** %5, align 8
  %9 = load %struct.intel_dpll_hw_state*, %struct.intel_dpll_hw_state** %5, align 8
  %10 = getelementptr inbounds %struct.intel_dpll_hw_state, %struct.intel_dpll_hw_state* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @DPLL_CTRL1_HDMI_MODE(i32 0)
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.intel_dpll_hw_state*, %struct.intel_dpll_hw_state** %5, align 8
  %17 = call i32 @skl_calc_wrpll_link(%struct.intel_dpll_hw_state* %16)
  store i32 %17, i32* %6, align 4
  br label %39

18:                                               ; preds = %2
  %19 = load %struct.intel_dpll_hw_state*, %struct.intel_dpll_hw_state** %5, align 8
  %20 = getelementptr inbounds %struct.intel_dpll_hw_state, %struct.intel_dpll_hw_state* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @DPLL_CTRL1_LINK_RATE_MASK(i32 0)
  %23 = and i32 %21, %22
  store i32 %23, i32* %6, align 4
  %24 = call i32 @DPLL_CTRL1_LINK_RATE_SHIFT(i32 0)
  %25 = load i32, i32* %6, align 4
  %26 = ashr i32 %25, %24
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  switch i32 %27, label %34 [
    i32 128, label %28
    i32 133, label %29
    i32 132, label %30
    i32 131, label %31
    i32 130, label %32
    i32 129, label %33
  ]

28:                                               ; preds = %18
  store i32 81000, i32* %6, align 4
  br label %36

29:                                               ; preds = %18
  store i32 108000, i32* %6, align 4
  br label %36

30:                                               ; preds = %18
  store i32 135000, i32* %6, align 4
  br label %36

31:                                               ; preds = %18
  store i32 162000, i32* %6, align 4
  br label %36

32:                                               ; preds = %18
  store i32 216000, i32* %6, align 4
  br label %36

33:                                               ; preds = %18
  store i32 270000, i32* %6, align 4
  br label %36

34:                                               ; preds = %18
  %35 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %33, %32, %31, %30, %29, %28
  %37 = load i32, i32* %6, align 4
  %38 = mul nsw i32 %37, 2
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %36, %15
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %42 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %44 = call i32 @ddi_dotclock_get(%struct.intel_crtc_state* %43)
  ret void
}

declare dso_local i32 @DPLL_CTRL1_HDMI_MODE(i32) #1

declare dso_local i32 @skl_calc_wrpll_link(%struct.intel_dpll_hw_state*) #1

declare dso_local i32 @DPLL_CTRL1_LINK_RATE_MASK(i32) #1

declare dso_local i32 @DPLL_CTRL1_LINK_RATE_SHIFT(i32) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @ddi_dotclock_get(%struct.intel_crtc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

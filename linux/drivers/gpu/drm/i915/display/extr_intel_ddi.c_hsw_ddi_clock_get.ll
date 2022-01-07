; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_hsw_ddi_clock_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_hsw_ddi_clock_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.intel_crtc_state = type { i32, i32 }
%struct.drm_i915_private = type { i32 }

@PORT_CLK_SEL_MASK = common dso_local global i32 0, align 4
@SPLL_CTL = common dso_local global i32 0, align 4
@SPLL_FREQ_MASK = common dso_local global i32 0, align 4
@SPLL_FREQ_810MHz = common dso_local global i32 0, align 4
@SPLL_FREQ_1350MHz = common dso_local global i32 0, align 4
@SPLL_FREQ_2700MHz = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"bad spll freq\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"bad port clock sel\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*, %struct.intel_crtc_state*)* @hsw_ddi_clock_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hsw_ddi_clock_get(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca %struct.intel_encoder*, align 8
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %3, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %4, align 8
  %9 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %10 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.drm_i915_private* @to_i915(i32 %12)
  store %struct.drm_i915_private* %13, %struct.drm_i915_private** %5, align 8
  store i32 0, i32* %6, align 4
  %14 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %15 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @hsw_pll_to_ddi_pll_sel(i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @PORT_CLK_SEL_MASK, align 4
  %20 = and i32 %18, %19
  switch i32 %20, label %56 [
    i32 131, label %21
    i32 133, label %22
    i32 132, label %23
    i32 129, label %24
    i32 128, label %28
    i32 130, label %32
  ]

21:                                               ; preds = %2
  store i32 81000, i32* %6, align 4
  br label %58

22:                                               ; preds = %2
  store i32 135000, i32* %6, align 4
  br label %58

23:                                               ; preds = %2
  store i32 270000, i32* %6, align 4
  br label %58

24:                                               ; preds = %2
  %25 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %26 = call i32 @WRPLL_CTL(i32 0)
  %27 = call i32 @hsw_ddi_calc_wrpll_link(%struct.drm_i915_private* %25, i32 %26)
  store i32 %27, i32* %6, align 4
  br label %58

28:                                               ; preds = %2
  %29 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %30 = call i32 @WRPLL_CTL(i32 1)
  %31 = call i32 @hsw_ddi_calc_wrpll_link(%struct.drm_i915_private* %29, i32 %30)
  store i32 %31, i32* %6, align 4
  br label %58

32:                                               ; preds = %2
  %33 = load i32, i32* @SPLL_CTL, align 4
  %34 = call i32 @I915_READ(i32 %33)
  %35 = load i32, i32* @SPLL_FREQ_MASK, align 4
  %36 = and i32 %34, %35
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @SPLL_FREQ_810MHz, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  store i32 81000, i32* %6, align 4
  br label %55

41:                                               ; preds = %32
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @SPLL_FREQ_1350MHz, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 135000, i32* %6, align 4
  br label %54

46:                                               ; preds = %41
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @SPLL_FREQ_2700MHz, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 270000, i32* %6, align 4
  br label %53

51:                                               ; preds = %46
  %52 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %65

53:                                               ; preds = %50
  br label %54

54:                                               ; preds = %53, %45
  br label %55

55:                                               ; preds = %54, %40
  br label %58

56:                                               ; preds = %2
  %57 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %65

58:                                               ; preds = %55, %28, %24, %23, %22, %21
  %59 = load i32, i32* %6, align 4
  %60 = mul nsw i32 %59, 2
  %61 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %62 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %64 = call i32 @ddi_dotclock_get(%struct.intel_crtc_state* %63)
  br label %65

65:                                               ; preds = %58, %56, %51
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @hsw_pll_to_ddi_pll_sel(i32) #1

declare dso_local i32 @hsw_ddi_calc_wrpll_link(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @WRPLL_CTL(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @ddi_dotclock_get(%struct.intel_crtc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

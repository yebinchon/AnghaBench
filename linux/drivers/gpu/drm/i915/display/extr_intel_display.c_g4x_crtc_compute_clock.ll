; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_g4x_crtc_compute_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_g4x_crtc_compute_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_limit = type { i32 }
%struct.intel_crtc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.intel_crtc_state = type { i32, i32, i32, i32 }
%struct.drm_i915_private = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@INTEL_OUTPUT_LVDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"using SSC reference clock of %d kHz\0A\00", align 1
@intel_limits_g4x_dual_channel_lvds = common dso_local global %struct.intel_limit zeroinitializer, align 4
@intel_limits_g4x_single_channel_lvds = common dso_local global %struct.intel_limit zeroinitializer, align 4
@INTEL_OUTPUT_HDMI = common dso_local global i32 0, align 4
@INTEL_OUTPUT_ANALOG = common dso_local global i32 0, align 4
@intel_limits_g4x_hdmi = common dso_local global %struct.intel_limit zeroinitializer, align 4
@INTEL_OUTPUT_SDVO = common dso_local global i32 0, align 4
@intel_limits_g4x_sdvo = common dso_local global %struct.intel_limit zeroinitializer, align 4
@intel_limits_i9xx_sdvo = common dso_local global %struct.intel_limit zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Couldn't find PLL settings for mode!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_crtc*, %struct.intel_crtc_state*)* @g4x_crtc_compute_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g4x_crtc_compute_clock(%struct.intel_crtc* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_crtc*, align 8
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca %struct.intel_limit*, align 8
  %8 = alloca i32, align 4
  store %struct.intel_crtc* %0, %struct.intel_crtc** %4, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %5, align 8
  %9 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %10 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.drm_i915_private* @to_i915(i32 %12)
  store %struct.drm_i915_private* %13, %struct.drm_i915_private** %6, align 8
  store i32 96000, i32* %8, align 4
  %14 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %15 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %14, i32 0, i32 3
  %16 = call i32 @memset(i32* %15, i32 0, i32 4)
  %17 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %18 = load i32, i32* @INTEL_OUTPUT_LVDS, align 4
  %19 = call i64 @intel_crtc_has_type(%struct.intel_crtc_state* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %2
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %23 = call i64 @intel_panel_use_ssc(%struct.drm_i915_private* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %27 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %25, %21
  %33 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %34 = call i64 @intel_is_dual_link_lvds(%struct.drm_i915_private* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store %struct.intel_limit* @intel_limits_g4x_dual_channel_lvds, %struct.intel_limit** %7, align 8
  br label %38

37:                                               ; preds = %32
  store %struct.intel_limit* @intel_limits_g4x_single_channel_lvds, %struct.intel_limit** %7, align 8
  br label %38

38:                                               ; preds = %37, %36
  br label %59

39:                                               ; preds = %2
  %40 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %41 = load i32, i32* @INTEL_OUTPUT_HDMI, align 4
  %42 = call i64 @intel_crtc_has_type(%struct.intel_crtc_state* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %46 = load i32, i32* @INTEL_OUTPUT_ANALOG, align 4
  %47 = call i64 @intel_crtc_has_type(%struct.intel_crtc_state* %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44, %39
  store %struct.intel_limit* @intel_limits_g4x_hdmi, %struct.intel_limit** %7, align 8
  br label %58

50:                                               ; preds = %44
  %51 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %52 = load i32, i32* @INTEL_OUTPUT_SDVO, align 4
  %53 = call i64 @intel_crtc_has_type(%struct.intel_crtc_state* %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store %struct.intel_limit* @intel_limits_g4x_sdvo, %struct.intel_limit** %7, align 8
  br label %57

56:                                               ; preds = %50
  store %struct.intel_limit* @intel_limits_i9xx_sdvo, %struct.intel_limit** %7, align 8
  br label %57

57:                                               ; preds = %56, %55
  br label %58

58:                                               ; preds = %57, %49
  br label %59

59:                                               ; preds = %58, %38
  %60 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %61 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %79, label %64

64:                                               ; preds = %59
  %65 = load %struct.intel_limit*, %struct.intel_limit** %7, align 8
  %66 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %67 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %68 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %72 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %71, i32 0, i32 0
  %73 = call i32 @g4x_find_best_dpll(%struct.intel_limit* %65, %struct.intel_crtc_state* %66, i32 %69, i32 %70, i32* null, i32* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %64
  %76 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %83

79:                                               ; preds = %64, %59
  %80 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %81 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %82 = call i32 @i9xx_compute_dpll(%struct.intel_crtc* %80, %struct.intel_crtc_state* %81, i32* null)
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %79, %75
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @intel_crtc_has_type(%struct.intel_crtc_state*, i32) #1

declare dso_local i64 @intel_panel_use_ssc(%struct.drm_i915_private*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

declare dso_local i64 @intel_is_dual_link_lvds(%struct.drm_i915_private*) #1

declare dso_local i32 @g4x_find_best_dpll(%struct.intel_limit*, %struct.intel_crtc_state*, i32, i32, i32*, i32*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @i9xx_compute_dpll(%struct.intel_crtc*, %struct.intel_crtc_state*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

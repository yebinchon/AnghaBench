; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_vlv_dsi_pll.c_bxt_dsi_pll_compute.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_vlv_dsi_pll.c_bxt_dsi_pll_compute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.intel_crtc_state = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.intel_dsi = type { i32, i32, i32 }

@BXT_REF_CLOCK_KHZ = common dso_local global i32 0, align 4
@BXT_DSI_PLL_RATIO_MIN = common dso_local global i32 0, align 4
@BXT_DSI_PLL_RATIO_MAX = common dso_local global i32 0, align 4
@GLK_DSI_PLL_RATIO_MIN = common dso_local global i32 0, align 4
@GLK_DSI_PLL_RATIO_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Cant get a suitable ratio from DSI PLL ratios\0A\00", align 1
@ECHRNG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"DSI PLL calculation is Done!!\0A\00", align 1
@BXT_DSIA_16X_BY2 = common dso_local global i32 0, align 4
@BXT_DSIC_16X_BY2 = common dso_local global i32 0, align 4
@BXT_DSI_PLL_PVD_RATIO_1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bxt_dsi_pll_compute(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_encoder*, align 8
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca %struct.intel_dsi*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %4, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %5, align 8
  %12 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %13 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.drm_i915_private* @to_i915(i32 %15)
  store %struct.drm_i915_private* %16, %struct.drm_i915_private** %6, align 8
  %17 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %18 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %17, i32 0, i32 0
  %19 = call %struct.intel_dsi* @enc_to_intel_dsi(%struct.TYPE_4__* %18)
  store %struct.intel_dsi* %19, %struct.intel_dsi** %7, align 8
  %20 = load %struct.intel_dsi*, %struct.intel_dsi** %7, align 8
  %21 = getelementptr inbounds %struct.intel_dsi, %struct.intel_dsi* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.intel_dsi*, %struct.intel_dsi** %7, align 8
  %24 = getelementptr inbounds %struct.intel_dsi, %struct.intel_dsi* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.intel_dsi*, %struct.intel_dsi** %7, align 8
  %27 = getelementptr inbounds %struct.intel_dsi, %struct.intel_dsi* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dsi_clk_from_pclk(i32 %22, i32 %25, i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = mul nsw i32 %30, 2
  %32 = load i32, i32* @BXT_REF_CLOCK_KHZ, align 4
  %33 = call i32 @DIV_ROUND_UP(i32 %31, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %35 = call i64 @IS_BROXTON(%struct.drm_i915_private* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %2
  %38 = load i32, i32* @BXT_DSI_PLL_RATIO_MIN, align 4
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* @BXT_DSI_PLL_RATIO_MAX, align 4
  store i32 %39, i32* %10, align 4
  br label %43

40:                                               ; preds = %2
  %41 = load i32, i32* @GLK_DSI_PLL_RATIO_MIN, align 4
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* @GLK_DSI_PLL_RATIO_MAX, align 4
  store i32 %42, i32* %10, align 4
  br label %43

43:                                               ; preds = %40, %37
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %47, %43
  %52 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* @ECHRNG, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %80

55:                                               ; preds = %47
  %56 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @BXT_DSIA_16X_BY2, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @BXT_DSIC_16X_BY2, align 4
  %62 = or i32 %60, %61
  %63 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %64 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 4
  %66 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %67 = call i64 @IS_BROXTON(%struct.drm_i915_private* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %57
  %70 = load i32, i32* %8, align 4
  %71 = icmp sle i32 %70, 50
  br i1 %71, label %72, label %79

72:                                               ; preds = %69
  %73 = load i32, i32* @BXT_DSI_PLL_PVD_RATIO_1, align 4
  %74 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %75 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %73
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %72, %69, %57
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %79, %51
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.intel_dsi* @enc_to_intel_dsi(%struct.TYPE_4__*) #1

declare dso_local i32 @dsi_clk_from_pclk(i32, i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i64 @IS_BROXTON(%struct.drm_i915_private*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

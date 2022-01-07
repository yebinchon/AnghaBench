; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_vlv_dsi_pll.c_bxt_dsi_get_pclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_vlv_dsi_pll.c_bxt_dsi_get_pclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.intel_crtc_state = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.intel_dsi = type { i32, i32 }
%struct.drm_i915_private = type { i32 }

@BXT_DSI_PLL_CTL = common dso_local global i32 0, align 4
@BXT_DSI_PLL_RATIO_MASK = common dso_local global i32 0, align 4
@BXT_REF_CLOCK_KHZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Calculated pclk=%u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bxt_dsi_get_pclk(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca %struct.intel_encoder*, align 8
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.intel_dsi*, align 8
  %9 = alloca %struct.drm_i915_private*, align 8
  %10 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %3, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %4, align 8
  %11 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %12 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %11, i32 0, i32 0
  %13 = call %struct.intel_dsi* @enc_to_intel_dsi(%struct.TYPE_4__* %12)
  store %struct.intel_dsi* %13, %struct.intel_dsi** %8, align 8
  %14 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %15 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.drm_i915_private* @to_i915(i32 %17)
  store %struct.drm_i915_private* %18, %struct.drm_i915_private** %9, align 8
  %19 = load %struct.intel_dsi*, %struct.intel_dsi** %8, align 8
  %20 = getelementptr inbounds %struct.intel_dsi, %struct.intel_dsi* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @mipi_dsi_pixel_format_to_bpp(i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* @BXT_DSI_PLL_CTL, align 4
  %24 = call i32 @I915_READ(i32 %23)
  %25 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %26 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  %28 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %29 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @BXT_DSI_PLL_RATIO_MASK, align 4
  %33 = and i32 %31, %32
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @BXT_REF_CLOCK_KHZ, align 4
  %36 = mul nsw i32 %34, %35
  %37 = sdiv i32 %36, 2
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.intel_dsi*, %struct.intel_dsi** %8, align 8
  %40 = getelementptr inbounds %struct.intel_dsi, %struct.intel_dsi* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 %38, %41
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @DIV_ROUND_CLOSEST(i32 %42, i32 %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local %struct.intel_dsi* @enc_to_intel_dsi(%struct.TYPE_4__*) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @mipi_dsi_pixel_format_to_bpp(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

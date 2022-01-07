; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_vlv_dsi_pll.c_vlv_dsi_get_pclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_vlv_dsi_pll.c_vlv_dsi_get_pclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.intel_crtc_state = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.drm_i915_private = type { i32 }
%struct.intel_dsi = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@CCK_REG_DSI_PLL_CONTROL = common dso_local global i32 0, align 4
@CCK_REG_DSI_PLL_DIVIDER = common dso_local global i32 0, align 4
@DSI_PLL_LOCK = common dso_local global i32 0, align 4
@DSI_PLL_P1_POST_DIV_MASK = common dso_local global i32 0, align 4
@DSI_PLL_P1_POST_DIV_SHIFT = common dso_local global i32 0, align 4
@DSI_PLL_N1_DIV_MASK = common dso_local global i32 0, align 4
@DSI_PLL_N1_DIV_SHIFT = common dso_local global i32 0, align 4
@DSI_PLL_M1_DIV_MASK = common dso_local global i32 0, align 4
@DSI_PLL_M1_DIV_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"wrong P1 divisor\0A\00", align 1
@lfsr_converts = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"wrong m_seed programmed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlv_dsi_get_pclk(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_encoder*, align 8
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca %struct.intel_dsi*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %4, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %5, align 8
  %18 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %19 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.drm_i915_private* @to_i915(i32 %21)
  store %struct.drm_i915_private* %22, %struct.drm_i915_private** %6, align 8
  %23 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %24 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %23, i32 0, i32 0
  %25 = call %struct.intel_dsi* @enc_to_intel_dsi(%struct.TYPE_4__* %24)
  store %struct.intel_dsi* %25, %struct.intel_dsi** %7, align 8
  %26 = load %struct.intel_dsi*, %struct.intel_dsi** %7, align 8
  %27 = getelementptr inbounds %struct.intel_dsi, %struct.intel_dsi* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @mipi_dsi_pixel_format_to_bpp(i32 %28)
  store i32 %29, i32* %8, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %30 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %31 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %30)
  %32 = icmp ne i64 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 100000, i32 25000
  store i32 %34, i32* %16, align 4
  %35 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %37 = call i32 @vlv_cck_get(%struct.drm_i915_private* %36)
  %38 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %39 = load i32, i32* @CCK_REG_DSI_PLL_CONTROL, align 4
  %40 = call i32 @vlv_cck_read(%struct.drm_i915_private* %38, i32 %39)
  store i32 %40, i32* %11, align 4
  %41 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %42 = load i32, i32* @CCK_REG_DSI_PLL_DIVIDER, align 4
  %43 = call i32 @vlv_cck_read(%struct.drm_i915_private* %41, i32 %42)
  store i32 %43, i32* %12, align 4
  %44 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %45 = call i32 @vlv_cck_put(%struct.drm_i915_private* %44)
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @DSI_PLL_LOCK, align 4
  %48 = xor i32 %47, -1
  %49 = and i32 %46, %48
  %50 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %51 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %55 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  store i32 %53, i32* %56, align 4
  %57 = load i32, i32* @DSI_PLL_P1_POST_DIV_MASK, align 4
  %58 = load i32, i32* %11, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* @DSI_PLL_P1_POST_DIV_SHIFT, align 4
  %62 = sub nsw i32 %61, 2
  %63 = ashr i32 %60, %62
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* @DSI_PLL_N1_DIV_MASK, align 4
  %66 = and i32 %64, %65
  %67 = load i32, i32* @DSI_PLL_N1_DIV_SHIFT, align 4
  %68 = ashr i32 %66, %67
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %15, align 4
  %70 = shl i32 1, %69
  store i32 %70, i32* %15, align 4
  %71 = load i32, i32* @DSI_PLL_M1_DIV_MASK, align 4
  %72 = load i32, i32* %12, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* @DSI_PLL_M1_DIV_SHIFT, align 4
  %76 = ashr i32 %74, %75
  store i32 %76, i32* %12, align 4
  br label %77

77:                                               ; preds = %80, %2
  %78 = load i32, i32* %11, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = load i32, i32* %11, align 4
  %82 = ashr i32 %81, 1
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %14, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %14, align 4
  br label %77

85:                                               ; preds = %77
  %86 = load i32, i32* %14, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %14, align 4
  %88 = load i32, i32* %14, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %85
  %91 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %136

92:                                               ; preds = %85
  store i32 0, i32* %17, align 4
  br label %93

93:                                               ; preds = %108, %92
  %94 = load i32, i32* %17, align 4
  %95 = load i32*, i32** @lfsr_converts, align 8
  %96 = call i32 @ARRAY_SIZE(i32* %95)
  %97 = icmp slt i32 %94, %96
  br i1 %97, label %98, label %111

98:                                               ; preds = %93
  %99 = load i32*, i32** @lfsr_converts, align 8
  %100 = load i32, i32* %17, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %12, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %98
  br label %111

107:                                              ; preds = %98
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %17, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %17, align 4
  br label %93

111:                                              ; preds = %106, %93
  %112 = load i32, i32* %17, align 4
  %113 = load i32*, i32** @lfsr_converts, align 8
  %114 = call i32 @ARRAY_SIZE(i32* %113)
  %115 = icmp eq i32 %112, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %111
  %117 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %136

118:                                              ; preds = %111
  %119 = load i32, i32* %17, align 4
  %120 = add nsw i32 %119, 62
  store i32 %120, i32* %13, align 4
  %121 = load i32, i32* %13, align 4
  %122 = load i32, i32* %16, align 4
  %123 = mul nsw i32 %121, %122
  %124 = load i32, i32* %14, align 4
  %125 = load i32, i32* %15, align 4
  %126 = mul nsw i32 %124, %125
  %127 = sdiv i32 %123, %126
  store i32 %127, i32* %9, align 4
  %128 = load i32, i32* %9, align 4
  %129 = load %struct.intel_dsi*, %struct.intel_dsi** %7, align 8
  %130 = getelementptr inbounds %struct.intel_dsi, %struct.intel_dsi* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = mul nsw i32 %128, %131
  %133 = load i32, i32* %8, align 4
  %134 = call i32 @DIV_ROUND_CLOSEST(i32 %132, i32 %133)
  store i32 %134, i32* %10, align 4
  %135 = load i32, i32* %10, align 4
  store i32 %135, i32* %3, align 4
  br label %136

136:                                              ; preds = %118, %116, %90
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.intel_dsi* @enc_to_intel_dsi(%struct.TYPE_4__*) #1

declare dso_local i32 @mipi_dsi_pixel_format_to_bpp(i32) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @vlv_cck_get(%struct.drm_i915_private*) #1

declare dso_local i32 @vlv_cck_read(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @vlv_cck_put(%struct.drm_i915_private*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

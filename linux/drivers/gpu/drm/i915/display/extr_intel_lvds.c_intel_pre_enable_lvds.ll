; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_lvds.c_intel_pre_enable_lvds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_lvds.c_intel_pre_enable_lvds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.intel_crtc_state = type { i32, i64, %struct.TYPE_5__, i32, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.drm_display_mode, i32 }
%struct.drm_display_mode = type { i32 }
%struct.drm_connector_state = type { i32 }
%struct.intel_lvds_encoder = type { i32, i32, i32, i64, i32 }
%struct.drm_i915_private = type { i32 }
%struct.intel_crtc = type { i32 }

@LVDS_PORT_EN = common dso_local global i32 0, align 4
@LVDS_A0A2_CLKA_POWER_UP = common dso_local global i32 0, align 4
@LVDS_PIPE_SEL_MASK_CPT = common dso_local global i32 0, align 4
@LVDS_PIPE_SEL_MASK = common dso_local global i32 0, align 4
@LVDS_BORDER_ENABLE = common dso_local global i32 0, align 4
@LVDS_B0B3_POWER_UP = common dso_local global i32 0, align 4
@LVDS_CLKB_POWER_UP = common dso_local global i32 0, align 4
@LVDS_A3_POWER_MASK = common dso_local global i32 0, align 4
@LVDS_ENABLE_DITHER = common dso_local global i32 0, align 4
@LVDS_HSYNC_POLARITY = common dso_local global i32 0, align 4
@LVDS_VSYNC_POLARITY = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NHSYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NVSYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state*)* @intel_pre_enable_lvds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_pre_enable_lvds(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1, %struct.drm_connector_state* %2) #0 {
  %4 = alloca %struct.intel_encoder*, align 8
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca %struct.drm_connector_state*, align 8
  %7 = alloca %struct.intel_lvds_encoder*, align 8
  %8 = alloca %struct.drm_i915_private*, align 8
  %9 = alloca %struct.intel_crtc*, align 8
  %10 = alloca %struct.drm_display_mode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %4, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %5, align 8
  store %struct.drm_connector_state* %2, %struct.drm_connector_state** %6, align 8
  %13 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %14 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %13, i32 0, i32 0
  %15 = call %struct.intel_lvds_encoder* @to_lvds_encoder(%struct.TYPE_6__* %14)
  store %struct.intel_lvds_encoder* %15, %struct.intel_lvds_encoder** %7, align 8
  %16 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %17 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.drm_i915_private* @to_i915(i32 %19)
  store %struct.drm_i915_private* %20, %struct.drm_i915_private** %8, align 8
  %21 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %22 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.intel_crtc* @to_intel_crtc(i32 %24)
  store %struct.intel_crtc* %25, %struct.intel_crtc** %9, align 8
  %26 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %27 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store %struct.drm_display_mode* %28, %struct.drm_display_mode** %10, align 8
  %29 = load %struct.intel_crtc*, %struct.intel_crtc** %9, align 8
  %30 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %11, align 4
  %32 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %33 = call i64 @HAS_PCH_SPLIT(%struct.drm_i915_private* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %3
  %36 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @assert_fdi_rx_pll_disabled(%struct.drm_i915_private* %36, i32 %37)
  %39 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %40 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %41 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @assert_shared_dpll_disabled(%struct.drm_i915_private* %39, i32 %42)
  br label %48

44:                                               ; preds = %3
  %45 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @assert_pll_disabled(%struct.drm_i915_private* %45, i32 %46)
  br label %48

48:                                               ; preds = %44, %35
  %49 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %50 = load %struct.intel_lvds_encoder*, %struct.intel_lvds_encoder** %7, align 8
  %51 = getelementptr inbounds %struct.intel_lvds_encoder, %struct.intel_lvds_encoder* %50, i32 0, i32 4
  %52 = call i32 @intel_lvds_pps_init_hw(%struct.drm_i915_private* %49, i32* %51)
  %53 = load %struct.intel_lvds_encoder*, %struct.intel_lvds_encoder** %7, align 8
  %54 = getelementptr inbounds %struct.intel_lvds_encoder, %struct.intel_lvds_encoder* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* @LVDS_PORT_EN, align 4
  %57 = load i32, i32* @LVDS_A0A2_CLKA_POWER_UP, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* %12, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %12, align 4
  %61 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %62 = call i64 @HAS_PCH_CPT(%struct.drm_i915_private* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %48
  %65 = load i32, i32* @LVDS_PIPE_SEL_MASK_CPT, align 4
  %66 = xor i32 %65, -1
  %67 = load i32, i32* %12, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @LVDS_PIPE_SEL_CPT(i32 %69)
  %71 = load i32, i32* %12, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %12, align 4
  br label %82

73:                                               ; preds = %48
  %74 = load i32, i32* @LVDS_PIPE_SEL_MASK, align 4
  %75 = xor i32 %74, -1
  %76 = load i32, i32* %12, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @LVDS_PIPE_SEL(i32 %78)
  %80 = load i32, i32* %12, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %12, align 4
  br label %82

82:                                               ; preds = %73, %64
  %83 = load i32, i32* @LVDS_BORDER_ENABLE, align 4
  %84 = xor i32 %83, -1
  %85 = load i32, i32* %12, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %12, align 4
  %87 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %88 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %12, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %12, align 4
  %93 = load %struct.intel_lvds_encoder*, %struct.intel_lvds_encoder** %7, align 8
  %94 = getelementptr inbounds %struct.intel_lvds_encoder, %struct.intel_lvds_encoder* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %82
  %98 = load i32, i32* @LVDS_B0B3_POWER_UP, align 4
  %99 = load i32, i32* @LVDS_CLKB_POWER_UP, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* %12, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %12, align 4
  br label %110

103:                                              ; preds = %82
  %104 = load i32, i32* @LVDS_B0B3_POWER_UP, align 4
  %105 = load i32, i32* @LVDS_CLKB_POWER_UP, align 4
  %106 = or i32 %104, %105
  %107 = xor i32 %106, -1
  %108 = load i32, i32* %12, align 4
  %109 = and i32 %108, %107
  store i32 %109, i32* %12, align 4
  br label %110

110:                                              ; preds = %103, %97
  %111 = load i32, i32* @LVDS_A3_POWER_MASK, align 4
  %112 = xor i32 %111, -1
  %113 = load i32, i32* %12, align 4
  %114 = and i32 %113, %112
  store i32 %114, i32* %12, align 4
  %115 = load %struct.intel_lvds_encoder*, %struct.intel_lvds_encoder** %7, align 8
  %116 = getelementptr inbounds %struct.intel_lvds_encoder, %struct.intel_lvds_encoder* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %12, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %12, align 4
  %120 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %121 = call i64 @IS_GEN(%struct.drm_i915_private* %120, i32 4)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %143

123:                                              ; preds = %110
  %124 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %125 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %137

128:                                              ; preds = %123
  %129 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %130 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp eq i32 %131, 18
  br i1 %132, label %133, label %137

133:                                              ; preds = %128
  %134 = load i32, i32* @LVDS_ENABLE_DITHER, align 4
  %135 = load i32, i32* %12, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %12, align 4
  br label %142

137:                                              ; preds = %128, %123
  %138 = load i32, i32* @LVDS_ENABLE_DITHER, align 4
  %139 = xor i32 %138, -1
  %140 = load i32, i32* %12, align 4
  %141 = and i32 %140, %139
  store i32 %141, i32* %12, align 4
  br label %142

142:                                              ; preds = %137, %133
  br label %143

143:                                              ; preds = %142, %110
  %144 = load i32, i32* @LVDS_HSYNC_POLARITY, align 4
  %145 = load i32, i32* @LVDS_VSYNC_POLARITY, align 4
  %146 = or i32 %144, %145
  %147 = xor i32 %146, -1
  %148 = load i32, i32* %12, align 4
  %149 = and i32 %148, %147
  store i32 %149, i32* %12, align 4
  %150 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %151 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @DRM_MODE_FLAG_NHSYNC, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %143
  %157 = load i32, i32* @LVDS_HSYNC_POLARITY, align 4
  %158 = load i32, i32* %12, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %12, align 4
  br label %160

160:                                              ; preds = %156, %143
  %161 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %162 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @DRM_MODE_FLAG_NVSYNC, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %160
  %168 = load i32, i32* @LVDS_VSYNC_POLARITY, align 4
  %169 = load i32, i32* %12, align 4
  %170 = or i32 %169, %168
  store i32 %170, i32* %12, align 4
  br label %171

171:                                              ; preds = %167, %160
  %172 = load %struct.intel_lvds_encoder*, %struct.intel_lvds_encoder** %7, align 8
  %173 = getelementptr inbounds %struct.intel_lvds_encoder, %struct.intel_lvds_encoder* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* %12, align 4
  %176 = call i32 @I915_WRITE(i32 %174, i32 %175)
  ret void
}

declare dso_local %struct.intel_lvds_encoder* @to_lvds_encoder(%struct.TYPE_6__*) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local i64 @HAS_PCH_SPLIT(%struct.drm_i915_private*) #1

declare dso_local i32 @assert_fdi_rx_pll_disabled(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @assert_shared_dpll_disabled(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @assert_pll_disabled(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_lvds_pps_init_hw(%struct.drm_i915_private*, i32*) #1

declare dso_local i64 @HAS_PCH_CPT(%struct.drm_i915_private*) #1

declare dso_local i32 @LVDS_PIPE_SEL_CPT(i32) #1

declare dso_local i32 @LVDS_PIPE_SEL(i32) #1

declare dso_local i64 @IS_GEN(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_ironlake_compute_dpll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_ironlake_compute_dpll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.intel_crtc_state = type { i32, %struct.TYPE_7__, %struct.dpll, i64 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.dpll = type { i32, i32, i32, i32 }
%struct.drm_i915_private = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@INTEL_OUTPUT_LVDS = common dso_local global i32 0, align 4
@FP_CB_TUNE = common dso_local global i32 0, align 4
@DPLLB_MODE_LVDS = common dso_local global i32 0, align 4
@DPLLB_MODE_DAC_SERIAL = common dso_local global i32 0, align 4
@PLL_REF_SDVO_HDMI_MULTIPLIER_SHIFT = common dso_local global i32 0, align 4
@INTEL_OUTPUT_SDVO = common dso_local global i32 0, align 4
@INTEL_OUTPUT_HDMI = common dso_local global i32 0, align 4
@DPLL_SDVO_HIGH_SPEED = common dso_local global i32 0, align 4
@INTEL_OUTPUT_ANALOG = common dso_local global i32 0, align 4
@DPLL_FPA01_P1_POST_DIV_SHIFT = common dso_local global i32 0, align 4
@DPLL_FPA1_P1_POST_DIV_SHIFT = common dso_local global i32 0, align 4
@DPLL_DAC_SERIAL_P2_CLOCK_DIV_5 = common dso_local global i32 0, align 4
@DPLLB_LVDS_P2_CLOCK_DIV_7 = common dso_local global i32 0, align 4
@DPLL_DAC_SERIAL_P2_CLOCK_DIV_10 = common dso_local global i32 0, align 4
@DPLLB_LVDS_P2_CLOCK_DIV_14 = common dso_local global i32 0, align 4
@PLLB_REF_INPUT_SPREADSPECTRUMIN = common dso_local global i32 0, align 4
@PLL_REF_INPUT_DREFCLK = common dso_local global i32 0, align 4
@DPLL_VCO_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc*, %struct.intel_crtc_state*, %struct.dpll*)* @ironlake_compute_dpll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ironlake_compute_dpll(%struct.intel_crtc* %0, %struct.intel_crtc_state* %1, %struct.dpll* %2) #0 {
  %4 = alloca %struct.intel_crtc*, align 8
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca %struct.dpll*, align 8
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.intel_crtc* %0, %struct.intel_crtc** %4, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %5, align 8
  store %struct.dpll* %2, %struct.dpll** %6, align 8
  %12 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %13 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.drm_i915_private* @to_i915(i32 %15)
  store %struct.drm_i915_private* %16, %struct.drm_i915_private** %7, align 8
  store i32 21, i32* %11, align 4
  %17 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %18 = load i32, i32* @INTEL_OUTPUT_LVDS, align 4
  %19 = call i64 @intel_crtc_has_type(%struct.intel_crtc_state* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %41

21:                                               ; preds = %3
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %23 = call i64 @intel_panel_use_ssc(%struct.drm_i915_private* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %27 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 100000
  br i1 %30, label %39, label %31

31:                                               ; preds = %25, %21
  %32 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %33 = call i64 @HAS_PCH_IBX(%struct.drm_i915_private* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %37 = call i64 @intel_is_dual_link_lvds(%struct.drm_i915_private* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35, %25
  store i32 25, i32* %11, align 4
  br label %40

40:                                               ; preds = %39, %35, %31
  br label %48

41:                                               ; preds = %3
  %42 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %43 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 20, i32* %11, align 4
  br label %47

47:                                               ; preds = %46, %41
  br label %48

48:                                               ; preds = %47, %40
  %49 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %50 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %49, i32 0, i32 2
  %51 = call i32 @i9xx_dpll_compute_fp(%struct.dpll* %50)
  store i32 %51, i32* %9, align 4
  %52 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %53 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %52, i32 0, i32 2
  %54 = load i32, i32* %11, align 4
  %55 = call i64 @ironlake_needs_fb_cb_tune(%struct.dpll* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %48
  %58 = load i32, i32* @FP_CB_TUNE, align 4
  %59 = load i32, i32* %9, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %57, %48
  %62 = load %struct.dpll*, %struct.dpll** %6, align 8
  %63 = icmp ne %struct.dpll* %62, null
  br i1 %63, label %64, label %81

64:                                               ; preds = %61
  %65 = load %struct.dpll*, %struct.dpll** %6, align 8
  %66 = call i32 @i9xx_dpll_compute_fp(%struct.dpll* %65)
  store i32 %66, i32* %10, align 4
  %67 = load %struct.dpll*, %struct.dpll** %6, align 8
  %68 = getelementptr inbounds %struct.dpll, %struct.dpll* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %11, align 4
  %71 = load %struct.dpll*, %struct.dpll** %6, align 8
  %72 = getelementptr inbounds %struct.dpll, %struct.dpll* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = mul nsw i32 %70, %73
  %75 = icmp slt i32 %69, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %64
  %77 = load i32, i32* @FP_CB_TUNE, align 4
  %78 = load i32, i32* %10, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %10, align 4
  br label %80

80:                                               ; preds = %76, %64
  br label %83

81:                                               ; preds = %61
  %82 = load i32, i32* %9, align 4
  store i32 %82, i32* %10, align 4
  br label %83

83:                                               ; preds = %81, %80
  store i32 0, i32* %8, align 4
  %84 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %85 = load i32, i32* @INTEL_OUTPUT_LVDS, align 4
  %86 = call i64 @intel_crtc_has_type(%struct.intel_crtc_state* %84, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = load i32, i32* @DPLLB_MODE_LVDS, align 4
  %90 = load i32, i32* %8, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %8, align 4
  br label %96

92:                                               ; preds = %83
  %93 = load i32, i32* @DPLLB_MODE_DAC_SERIAL, align 4
  %94 = load i32, i32* %8, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %8, align 4
  br label %96

96:                                               ; preds = %92, %88
  %97 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %98 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = sub nsw i32 %99, 1
  %101 = load i32, i32* @PLL_REF_SDVO_HDMI_MULTIPLIER_SHIFT, align 4
  %102 = shl i32 %100, %101
  %103 = load i32, i32* %8, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %8, align 4
  %105 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %106 = load i32, i32* @INTEL_OUTPUT_SDVO, align 4
  %107 = call i64 @intel_crtc_has_type(%struct.intel_crtc_state* %105, i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %96
  %110 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %111 = load i32, i32* @INTEL_OUTPUT_HDMI, align 4
  %112 = call i64 @intel_crtc_has_type(%struct.intel_crtc_state* %110, i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %109, %96
  %115 = load i32, i32* @DPLL_SDVO_HIGH_SPEED, align 4
  %116 = load i32, i32* %8, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %8, align 4
  br label %118

118:                                              ; preds = %114, %109
  %119 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %120 = call i64 @intel_crtc_has_dp_encoder(%struct.intel_crtc_state* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %118
  %123 = load i32, i32* @DPLL_SDVO_HIGH_SPEED, align 4
  %124 = load i32, i32* %8, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %8, align 4
  br label %126

126:                                              ; preds = %122, %118
  %127 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %128 = call %struct.TYPE_8__* @INTEL_INFO(%struct.drm_i915_private* %127)
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = icmp eq i32 %130, 3
  br i1 %131, label %132, label %141

132:                                              ; preds = %126
  %133 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %134 = load i32, i32* @INTEL_OUTPUT_ANALOG, align 4
  %135 = call i64 @intel_crtc_has_type(%struct.intel_crtc_state* %133, i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %132
  %138 = load i32, i32* @DPLL_SDVO_HIGH_SPEED, align 4
  %139 = load i32, i32* %8, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %8, align 4
  br label %141

141:                                              ; preds = %137, %132, %126
  %142 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %143 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.dpll, %struct.dpll* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = sub nsw i32 %145, 1
  %147 = shl i32 1, %146
  %148 = load i32, i32* @DPLL_FPA01_P1_POST_DIV_SHIFT, align 4
  %149 = shl i32 %147, %148
  %150 = load i32, i32* %8, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %8, align 4
  %152 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %153 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.dpll, %struct.dpll* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = sub nsw i32 %155, 1
  %157 = shl i32 1, %156
  %158 = load i32, i32* @DPLL_FPA1_P1_POST_DIV_SHIFT, align 4
  %159 = shl i32 %157, %158
  %160 = load i32, i32* %8, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %8, align 4
  %162 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %163 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.dpll, %struct.dpll* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  switch i32 %165, label %182 [
    i32 5, label %166
    i32 7, label %170
    i32 10, label %174
    i32 14, label %178
  ]

166:                                              ; preds = %141
  %167 = load i32, i32* @DPLL_DAC_SERIAL_P2_CLOCK_DIV_5, align 4
  %168 = load i32, i32* %8, align 4
  %169 = or i32 %168, %167
  store i32 %169, i32* %8, align 4
  br label %182

170:                                              ; preds = %141
  %171 = load i32, i32* @DPLLB_LVDS_P2_CLOCK_DIV_7, align 4
  %172 = load i32, i32* %8, align 4
  %173 = or i32 %172, %171
  store i32 %173, i32* %8, align 4
  br label %182

174:                                              ; preds = %141
  %175 = load i32, i32* @DPLL_DAC_SERIAL_P2_CLOCK_DIV_10, align 4
  %176 = load i32, i32* %8, align 4
  %177 = or i32 %176, %175
  store i32 %177, i32* %8, align 4
  br label %182

178:                                              ; preds = %141
  %179 = load i32, i32* @DPLLB_LVDS_P2_CLOCK_DIV_14, align 4
  %180 = load i32, i32* %8, align 4
  %181 = or i32 %180, %179
  store i32 %181, i32* %8, align 4
  br label %182

182:                                              ; preds = %141, %178, %174, %170, %166
  %183 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %184 = load i32, i32* @INTEL_OUTPUT_LVDS, align 4
  %185 = call i64 @intel_crtc_has_type(%struct.intel_crtc_state* %183, i32 %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %195

187:                                              ; preds = %182
  %188 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %189 = call i64 @intel_panel_use_ssc(%struct.drm_i915_private* %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %187
  %192 = load i32, i32* @PLLB_REF_INPUT_SPREADSPECTRUMIN, align 4
  %193 = load i32, i32* %8, align 4
  %194 = or i32 %193, %192
  store i32 %194, i32* %8, align 4
  br label %199

195:                                              ; preds = %187, %182
  %196 = load i32, i32* @PLL_REF_INPUT_DREFCLK, align 4
  %197 = load i32, i32* %8, align 4
  %198 = or i32 %197, %196
  store i32 %198, i32* %8, align 4
  br label %199

199:                                              ; preds = %195, %191
  %200 = load i32, i32* @DPLL_VCO_ENABLE, align 4
  %201 = load i32, i32* %8, align 4
  %202 = or i32 %201, %200
  store i32 %202, i32* %8, align 4
  %203 = load i32, i32* %8, align 4
  %204 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %205 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 0
  store i32 %203, i32* %206, align 4
  %207 = load i32, i32* %9, align 4
  %208 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %209 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 1
  store i32 %207, i32* %210, align 4
  %211 = load i32, i32* %10, align 4
  %212 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %213 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 2
  store i32 %211, i32* %214, align 4
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i64 @intel_crtc_has_type(%struct.intel_crtc_state*, i32) #1

declare dso_local i64 @intel_panel_use_ssc(%struct.drm_i915_private*) #1

declare dso_local i64 @HAS_PCH_IBX(%struct.drm_i915_private*) #1

declare dso_local i64 @intel_is_dual_link_lvds(%struct.drm_i915_private*) #1

declare dso_local i32 @i9xx_dpll_compute_fp(%struct.dpll*) #1

declare dso_local i64 @ironlake_needs_fb_cb_tune(%struct.dpll*, i32) #1

declare dso_local i64 @intel_crtc_has_dp_encoder(%struct.intel_crtc_state*) #1

declare dso_local %struct.TYPE_8__* @INTEL_INFO(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

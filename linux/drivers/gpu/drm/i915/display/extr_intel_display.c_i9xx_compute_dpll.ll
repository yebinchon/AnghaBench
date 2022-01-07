; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_i9xx_compute_dpll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_i9xx_compute_dpll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.intel_crtc_state = type { i32, %struct.TYPE_4__, i64, %struct.dpll }
%struct.TYPE_4__ = type { i32, i32 }
%struct.dpll = type { i32, i32 }
%struct.drm_i915_private = type { i32 }

@DPLL_VGA_MODE_DIS = common dso_local global i32 0, align 4
@INTEL_OUTPUT_LVDS = common dso_local global i32 0, align 4
@DPLLB_MODE_LVDS = common dso_local global i32 0, align 4
@DPLLB_MODE_DAC_SERIAL = common dso_local global i32 0, align 4
@SDVO_MULTIPLIER_SHIFT_HIRES = common dso_local global i32 0, align 4
@INTEL_OUTPUT_SDVO = common dso_local global i32 0, align 4
@INTEL_OUTPUT_HDMI = common dso_local global i32 0, align 4
@DPLL_SDVO_HIGH_SPEED = common dso_local global i32 0, align 4
@DPLL_FPA01_P1_POST_DIV_SHIFT_PINEVIEW = common dso_local global i32 0, align 4
@DPLL_FPA01_P1_POST_DIV_SHIFT = common dso_local global i32 0, align 4
@DPLL_FPA1_P1_POST_DIV_SHIFT = common dso_local global i32 0, align 4
@DPLL_DAC_SERIAL_P2_CLOCK_DIV_5 = common dso_local global i32 0, align 4
@DPLLB_LVDS_P2_CLOCK_DIV_7 = common dso_local global i32 0, align 4
@DPLL_DAC_SERIAL_P2_CLOCK_DIV_10 = common dso_local global i32 0, align 4
@DPLLB_LVDS_P2_CLOCK_DIV_14 = common dso_local global i32 0, align 4
@PLL_LOAD_PULSE_PHASE_SHIFT = common dso_local global i32 0, align 4
@PLL_REF_INPUT_TVCLKINBC = common dso_local global i32 0, align 4
@PLLB_REF_INPUT_SPREADSPECTRUMIN = common dso_local global i32 0, align 4
@PLL_REF_INPUT_DREFCLK = common dso_local global i32 0, align 4
@DPLL_VCO_ENABLE = common dso_local global i32 0, align 4
@DPLL_MD_UDI_MULTIPLIER_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc*, %struct.intel_crtc_state*, %struct.dpll*)* @i9xx_compute_dpll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i9xx_compute_dpll(%struct.intel_crtc* %0, %struct.intel_crtc_state* %1, %struct.dpll* %2) #0 {
  %4 = alloca %struct.intel_crtc*, align 8
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca %struct.dpll*, align 8
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dpll*, align 8
  %10 = alloca i32, align 4
  store %struct.intel_crtc* %0, %struct.intel_crtc** %4, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %5, align 8
  store %struct.dpll* %2, %struct.dpll** %6, align 8
  %11 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %12 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.drm_i915_private* @to_i915(i32 %14)
  store %struct.drm_i915_private* %15, %struct.drm_i915_private** %7, align 8
  %16 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %17 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %16, i32 0, i32 3
  store %struct.dpll* %17, %struct.dpll** %9, align 8
  %18 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %19 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %20 = load %struct.dpll*, %struct.dpll** %6, align 8
  %21 = call i32 @i9xx_update_pll_dividers(%struct.intel_crtc* %18, %struct.intel_crtc_state* %19, %struct.dpll* %20)
  %22 = load i32, i32* @DPLL_VGA_MODE_DIS, align 4
  store i32 %22, i32* %8, align 4
  %23 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %24 = load i32, i32* @INTEL_OUTPUT_LVDS, align 4
  %25 = call i64 @intel_crtc_has_type(%struct.intel_crtc_state* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %3
  %28 = load i32, i32* @DPLLB_MODE_LVDS, align 4
  %29 = load i32, i32* %8, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %8, align 4
  br label %35

31:                                               ; preds = %3
  %32 = load i32, i32* @DPLLB_MODE_DAC_SERIAL, align 4
  %33 = load i32, i32* %8, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %31, %27
  %36 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %37 = call i64 @IS_I945G(%struct.drm_i915_private* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %51, label %39

39:                                               ; preds = %35
  %40 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %41 = call i64 @IS_I945GM(%struct.drm_i915_private* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %39
  %44 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %45 = call i64 @IS_G33(%struct.drm_i915_private* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %49 = call i64 @IS_PINEVIEW(%struct.drm_i915_private* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %47, %43, %39, %35
  %52 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %53 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sub nsw i32 %54, 1
  %56 = load i32, i32* @SDVO_MULTIPLIER_SHIFT_HIRES, align 4
  %57 = shl i32 %55, %56
  %58 = load i32, i32* %8, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %51, %47
  %61 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %62 = load i32, i32* @INTEL_OUTPUT_SDVO, align 4
  %63 = call i64 @intel_crtc_has_type(%struct.intel_crtc_state* %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %60
  %66 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %67 = load i32, i32* @INTEL_OUTPUT_HDMI, align 4
  %68 = call i64 @intel_crtc_has_type(%struct.intel_crtc_state* %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65, %60
  %71 = load i32, i32* @DPLL_SDVO_HIGH_SPEED, align 4
  %72 = load i32, i32* %8, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %70, %65
  %75 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %76 = call i64 @intel_crtc_has_dp_encoder(%struct.intel_crtc_state* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load i32, i32* @DPLL_SDVO_HIGH_SPEED, align 4
  %80 = load i32, i32* %8, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %8, align 4
  br label %82

82:                                               ; preds = %78, %74
  %83 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %84 = call i64 @IS_PINEVIEW(%struct.drm_i915_private* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %82
  %87 = load %struct.dpll*, %struct.dpll** %9, align 8
  %88 = getelementptr inbounds %struct.dpll, %struct.dpll* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = sub nsw i32 %89, 1
  %91 = shl i32 1, %90
  %92 = load i32, i32* @DPLL_FPA01_P1_POST_DIV_SHIFT_PINEVIEW, align 4
  %93 = shl i32 %91, %92
  %94 = load i32, i32* %8, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %8, align 4
  br label %123

96:                                               ; preds = %82
  %97 = load %struct.dpll*, %struct.dpll** %9, align 8
  %98 = getelementptr inbounds %struct.dpll, %struct.dpll* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = sub nsw i32 %99, 1
  %101 = shl i32 1, %100
  %102 = load i32, i32* @DPLL_FPA01_P1_POST_DIV_SHIFT, align 4
  %103 = shl i32 %101, %102
  %104 = load i32, i32* %8, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %8, align 4
  %106 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %107 = call i64 @IS_G4X(%struct.drm_i915_private* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %122

109:                                              ; preds = %96
  %110 = load %struct.dpll*, %struct.dpll** %6, align 8
  %111 = icmp ne %struct.dpll* %110, null
  br i1 %111, label %112, label %122

112:                                              ; preds = %109
  %113 = load %struct.dpll*, %struct.dpll** %6, align 8
  %114 = getelementptr inbounds %struct.dpll, %struct.dpll* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = sub nsw i32 %115, 1
  %117 = shl i32 1, %116
  %118 = load i32, i32* @DPLL_FPA1_P1_POST_DIV_SHIFT, align 4
  %119 = shl i32 %117, %118
  %120 = load i32, i32* %8, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %8, align 4
  br label %122

122:                                              ; preds = %112, %109, %96
  br label %123

123:                                              ; preds = %122, %86
  %124 = load %struct.dpll*, %struct.dpll** %9, align 8
  %125 = getelementptr inbounds %struct.dpll, %struct.dpll* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  switch i32 %126, label %143 [
    i32 5, label %127
    i32 7, label %131
    i32 10, label %135
    i32 14, label %139
  ]

127:                                              ; preds = %123
  %128 = load i32, i32* @DPLL_DAC_SERIAL_P2_CLOCK_DIV_5, align 4
  %129 = load i32, i32* %8, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %8, align 4
  br label %143

131:                                              ; preds = %123
  %132 = load i32, i32* @DPLLB_LVDS_P2_CLOCK_DIV_7, align 4
  %133 = load i32, i32* %8, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %8, align 4
  br label %143

135:                                              ; preds = %123
  %136 = load i32, i32* @DPLL_DAC_SERIAL_P2_CLOCK_DIV_10, align 4
  %137 = load i32, i32* %8, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %8, align 4
  br label %143

139:                                              ; preds = %123
  %140 = load i32, i32* @DPLLB_LVDS_P2_CLOCK_DIV_14, align 4
  %141 = load i32, i32* %8, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %8, align 4
  br label %143

143:                                              ; preds = %123, %139, %135, %131, %127
  %144 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %145 = call i32 @INTEL_GEN(%struct.drm_i915_private* %144)
  %146 = icmp sge i32 %145, 4
  br i1 %146, label %147, label %152

147:                                              ; preds = %143
  %148 = load i32, i32* @PLL_LOAD_PULSE_PHASE_SHIFT, align 4
  %149 = shl i32 6, %148
  %150 = load i32, i32* %8, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %8, align 4
  br label %152

152:                                              ; preds = %147, %143
  %153 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %154 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %152
  %158 = load i32, i32* @PLL_REF_INPUT_TVCLKINBC, align 4
  %159 = load i32, i32* %8, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %8, align 4
  br label %179

161:                                              ; preds = %152
  %162 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %163 = load i32, i32* @INTEL_OUTPUT_LVDS, align 4
  %164 = call i64 @intel_crtc_has_type(%struct.intel_crtc_state* %162, i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %174

166:                                              ; preds = %161
  %167 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %168 = call i64 @intel_panel_use_ssc(%struct.drm_i915_private* %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %166
  %171 = load i32, i32* @PLLB_REF_INPUT_SPREADSPECTRUMIN, align 4
  %172 = load i32, i32* %8, align 4
  %173 = or i32 %172, %171
  store i32 %173, i32* %8, align 4
  br label %178

174:                                              ; preds = %166, %161
  %175 = load i32, i32* @PLL_REF_INPUT_DREFCLK, align 4
  %176 = load i32, i32* %8, align 4
  %177 = or i32 %176, %175
  store i32 %177, i32* %8, align 4
  br label %178

178:                                              ; preds = %174, %170
  br label %179

179:                                              ; preds = %178, %157
  %180 = load i32, i32* @DPLL_VCO_ENABLE, align 4
  %181 = load i32, i32* %8, align 4
  %182 = or i32 %181, %180
  store i32 %182, i32* %8, align 4
  %183 = load i32, i32* %8, align 4
  %184 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %185 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 0
  store i32 %183, i32* %186, align 4
  %187 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %188 = call i32 @INTEL_GEN(%struct.drm_i915_private* %187)
  %189 = icmp sge i32 %188, 4
  br i1 %189, label %190, label %201

190:                                              ; preds = %179
  %191 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %192 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = sub nsw i32 %193, 1
  %195 = load i32, i32* @DPLL_MD_UDI_MULTIPLIER_SHIFT, align 4
  %196 = shl i32 %194, %195
  store i32 %196, i32* %10, align 4
  %197 = load i32, i32* %10, align 4
  %198 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %199 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 1
  store i32 %197, i32* %200, align 4
  br label %201

201:                                              ; preds = %190, %179
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @i9xx_update_pll_dividers(%struct.intel_crtc*, %struct.intel_crtc_state*, %struct.dpll*) #1

declare dso_local i64 @intel_crtc_has_type(%struct.intel_crtc_state*, i32) #1

declare dso_local i64 @IS_I945G(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_I945GM(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_G33(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_PINEVIEW(%struct.drm_i915_private*) #1

declare dso_local i64 @intel_crtc_has_dp_encoder(%struct.intel_crtc_state*) #1

declare dso_local i64 @IS_G4X(%struct.drm_i915_private*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i64 @intel_panel_use_ssc(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

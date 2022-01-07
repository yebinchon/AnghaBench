; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_i9xx_crtc_clock_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_i9xx_crtc_clock_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.intel_crtc_state = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.drm_i915_private = type { i32 }
%struct.dpll = type { i32, i32, i32, i32, i32 }

@DISPLAY_RATE_SELECT_FPA1 = common dso_local global i32 0, align 4
@FP_M1_DIV_MASK = common dso_local global i32 0, align 4
@FP_M1_DIV_SHIFT = common dso_local global i32 0, align 4
@FP_N_PINEVIEW_DIV_MASK = common dso_local global i32 0, align 4
@FP_N_DIV_SHIFT = common dso_local global i32 0, align 4
@FP_M2_PINEVIEW_DIV_MASK = common dso_local global i32 0, align 4
@FP_M2_DIV_SHIFT = common dso_local global i32 0, align 4
@FP_N_DIV_MASK = common dso_local global i32 0, align 4
@FP_M2_DIV_MASK = common dso_local global i32 0, align 4
@DPLL_FPA01_P1_POST_DIV_MASK_PINEVIEW = common dso_local global i32 0, align 4
@DPLL_FPA01_P1_POST_DIV_SHIFT_PINEVIEW = common dso_local global i32 0, align 4
@DPLL_FPA01_P1_POST_DIV_MASK = common dso_local global i32 0, align 4
@DPLL_FPA01_P1_POST_DIV_SHIFT = common dso_local global i32 0, align 4
@DPLL_MODE_MASK = common dso_local global i32 0, align 4
@DPLL_DAC_SERIAL_P2_CLOCK_DIV_5 = common dso_local global i32 0, align 4
@DPLLB_LVDS_P2_CLOCK_DIV_7 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Unknown DPLL mode %08x in programmed mode\0A\00", align 1
@LVDS = common dso_local global i32 0, align 4
@LVDS_PORT_EN = common dso_local global i32 0, align 4
@DPLL_FPA01_P1_POST_DIV_MASK_I830_LVDS = common dso_local global i32 0, align 4
@LVDS_CLKB_POWER_UP = common dso_local global i32 0, align 4
@PLL_P1_DIVIDE_BY_TWO = common dso_local global i32 0, align 4
@DPLL_FPA01_P1_POST_DIV_MASK_I830 = common dso_local global i32 0, align 4
@PLL_P2_DIVIDE_BY_4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc*, %struct.intel_crtc_state*)* @i9xx_crtc_clock_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i9xx_crtc_clock_get(%struct.intel_crtc* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca %struct.intel_crtc*, align 8
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dpll, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.intel_crtc* %0, %struct.intel_crtc** %3, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %4, align 8
  %15 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %16 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.drm_device*, %struct.drm_device** %17, align 8
  store %struct.drm_device* %18, %struct.drm_device** %5, align 8
  %19 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %20 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %19)
  store %struct.drm_i915_private* %20, %struct.drm_i915_private** %6, align 8
  %21 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %22 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %7, align 4
  %24 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %25 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %8, align 4
  %28 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %29 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %30 = call i32 @i9xx_pll_refclk(%struct.drm_device* %28, %struct.intel_crtc_state* %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @DISPLAY_RATE_SELECT_FPA1, align 4
  %33 = and i32 %31, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %2
  %36 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %37 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %9, align 4
  br label %45

40:                                               ; preds = %2
  %41 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %42 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %40, %35
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @FP_M1_DIV_MASK, align 4
  %48 = and i32 %46, %47
  %49 = load i32, i32* @FP_M1_DIV_SHIFT, align 4
  %50 = ashr i32 %48, %49
  %51 = getelementptr inbounds %struct.dpll, %struct.dpll* %10, i32 0, i32 0
  store i32 %50, i32* %51, align 4
  %52 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %53 = call i64 @IS_PINEVIEW(%struct.drm_i915_private* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %45
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @FP_N_PINEVIEW_DIV_MASK, align 4
  %58 = and i32 %56, %57
  %59 = load i32, i32* @FP_N_DIV_SHIFT, align 4
  %60 = ashr i32 %58, %59
  %61 = call i8* @ffs(i32 %60)
  %62 = getelementptr i8, i8* %61, i64 -1
  %63 = ptrtoint i8* %62 to i32
  %64 = getelementptr inbounds %struct.dpll, %struct.dpll* %10, i32 0, i32 1
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @FP_M2_PINEVIEW_DIV_MASK, align 4
  %67 = and i32 %65, %66
  %68 = load i32, i32* @FP_M2_DIV_SHIFT, align 4
  %69 = ashr i32 %67, %68
  %70 = getelementptr inbounds %struct.dpll, %struct.dpll* %10, i32 0, i32 2
  store i32 %69, i32* %70, align 4
  br label %84

71:                                               ; preds = %45
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @FP_N_DIV_MASK, align 4
  %74 = and i32 %72, %73
  %75 = load i32, i32* @FP_N_DIV_SHIFT, align 4
  %76 = ashr i32 %74, %75
  %77 = getelementptr inbounds %struct.dpll, %struct.dpll* %10, i32 0, i32 1
  store i32 %76, i32* %77, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @FP_M2_DIV_MASK, align 4
  %80 = and i32 %78, %79
  %81 = load i32, i32* @FP_M2_DIV_SHIFT, align 4
  %82 = ashr i32 %80, %81
  %83 = getelementptr inbounds %struct.dpll, %struct.dpll* %10, i32 0, i32 2
  store i32 %82, i32* %83, align 4
  br label %84

84:                                               ; preds = %71, %55
  %85 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %86 = call i32 @IS_GEN(%struct.drm_i915_private* %85, i32 2)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %146, label %88

88:                                               ; preds = %84
  %89 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %90 = call i64 @IS_PINEVIEW(%struct.drm_i915_private* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %88
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* @DPLL_FPA01_P1_POST_DIV_MASK_PINEVIEW, align 4
  %95 = and i32 %93, %94
  %96 = load i32, i32* @DPLL_FPA01_P1_POST_DIV_SHIFT_PINEVIEW, align 4
  %97 = ashr i32 %95, %96
  %98 = call i8* @ffs(i32 %97)
  %99 = ptrtoint i8* %98 to i32
  %100 = getelementptr inbounds %struct.dpll, %struct.dpll* %10, i32 0, i32 3
  store i32 %99, i32* %100, align 4
  br label %110

101:                                              ; preds = %88
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* @DPLL_FPA01_P1_POST_DIV_MASK, align 4
  %104 = and i32 %102, %103
  %105 = load i32, i32* @DPLL_FPA01_P1_POST_DIV_SHIFT, align 4
  %106 = ashr i32 %104, %105
  %107 = call i8* @ffs(i32 %106)
  %108 = ptrtoint i8* %107 to i32
  %109 = getelementptr inbounds %struct.dpll, %struct.dpll* %10, i32 0, i32 3
  store i32 %108, i32* %109, align 4
  br label %110

110:                                              ; preds = %101, %92
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* @DPLL_MODE_MASK, align 4
  %113 = and i32 %111, %112
  switch i32 %113, label %130 [
    i32 129, label %114
    i32 128, label %122
  ]

114:                                              ; preds = %110
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* @DPLL_DAC_SERIAL_P2_CLOCK_DIV_5, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  %119 = zext i1 %118 to i64
  %120 = select i1 %118, i32 5, i32 10
  %121 = getelementptr inbounds %struct.dpll, %struct.dpll* %10, i32 0, i32 4
  store i32 %120, i32* %121, align 4
  br label %135

122:                                              ; preds = %110
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* @DPLLB_LVDS_P2_CLOCK_DIV_7, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  %127 = zext i1 %126 to i64
  %128 = select i1 %126, i32 7, i32 14
  %129 = getelementptr inbounds %struct.dpll, %struct.dpll* %10, i32 0, i32 4
  store i32 %128, i32* %129, align 4
  br label %135

130:                                              ; preds = %110
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* @DPLL_MODE_MASK, align 4
  %133 = and i32 %131, %132
  %134 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %133)
  br label %218

135:                                              ; preds = %122, %114
  %136 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %137 = call i64 @IS_PINEVIEW(%struct.drm_i915_private* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %135
  %140 = load i32, i32* %12, align 4
  %141 = call i32 @pnv_calc_dpll_params(i32 %140, %struct.dpll* %10)
  store i32 %141, i32* %11, align 4
  br label %145

142:                                              ; preds = %135
  %143 = load i32, i32* %12, align 4
  %144 = call i32 @i9xx_calc_dpll_params(i32 %143, %struct.dpll* %10)
  store i32 %144, i32* %11, align 4
  br label %145

145:                                              ; preds = %142, %139
  br label %214

146:                                              ; preds = %84
  %147 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %148 = call i64 @IS_I830(%struct.drm_i915_private* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %146
  br label %154

151:                                              ; preds = %146
  %152 = load i32, i32* @LVDS, align 4
  %153 = call i32 @I915_READ(i32 %152)
  br label %154

154:                                              ; preds = %151, %150
  %155 = phi i32 [ 0, %150 ], [ %153, %151 ]
  store i32 %155, i32* %13, align 4
  %156 = load i32, i32* %7, align 4
  %157 = icmp eq i32 %156, 1
  br i1 %157, label %158, label %163

158:                                              ; preds = %154
  %159 = load i32, i32* %13, align 4
  %160 = load i32, i32* @LVDS_PORT_EN, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br label %163

163:                                              ; preds = %158, %154
  %164 = phi i1 [ false, %154 ], [ %162, %158 ]
  %165 = zext i1 %164 to i32
  store i32 %165, i32* %14, align 4
  %166 = load i32, i32* %14, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %186

168:                                              ; preds = %163
  %169 = load i32, i32* %8, align 4
  %170 = load i32, i32* @DPLL_FPA01_P1_POST_DIV_MASK_I830_LVDS, align 4
  %171 = and i32 %169, %170
  %172 = load i32, i32* @DPLL_FPA01_P1_POST_DIV_SHIFT, align 4
  %173 = ashr i32 %171, %172
  %174 = call i8* @ffs(i32 %173)
  %175 = ptrtoint i8* %174 to i32
  %176 = getelementptr inbounds %struct.dpll, %struct.dpll* %10, i32 0, i32 3
  store i32 %175, i32* %176, align 4
  %177 = load i32, i32* %13, align 4
  %178 = load i32, i32* @LVDS_CLKB_POWER_UP, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %168
  %182 = getelementptr inbounds %struct.dpll, %struct.dpll* %10, i32 0, i32 4
  store i32 7, i32* %182, align 4
  br label %185

183:                                              ; preds = %168
  %184 = getelementptr inbounds %struct.dpll, %struct.dpll* %10, i32 0, i32 4
  store i32 14, i32* %184, align 4
  br label %185

185:                                              ; preds = %183, %181
  br label %211

186:                                              ; preds = %163
  %187 = load i32, i32* %8, align 4
  %188 = load i32, i32* @PLL_P1_DIVIDE_BY_TWO, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %186
  %192 = getelementptr inbounds %struct.dpll, %struct.dpll* %10, i32 0, i32 3
  store i32 2, i32* %192, align 4
  br label %201

193:                                              ; preds = %186
  %194 = load i32, i32* %8, align 4
  %195 = load i32, i32* @DPLL_FPA01_P1_POST_DIV_MASK_I830, align 4
  %196 = and i32 %194, %195
  %197 = load i32, i32* @DPLL_FPA01_P1_POST_DIV_SHIFT, align 4
  %198 = ashr i32 %196, %197
  %199 = add nsw i32 %198, 2
  %200 = getelementptr inbounds %struct.dpll, %struct.dpll* %10, i32 0, i32 3
  store i32 %199, i32* %200, align 4
  br label %201

201:                                              ; preds = %193, %191
  %202 = load i32, i32* %8, align 4
  %203 = load i32, i32* @PLL_P2_DIVIDE_BY_4, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %201
  %207 = getelementptr inbounds %struct.dpll, %struct.dpll* %10, i32 0, i32 4
  store i32 4, i32* %207, align 4
  br label %210

208:                                              ; preds = %201
  %209 = getelementptr inbounds %struct.dpll, %struct.dpll* %10, i32 0, i32 4
  store i32 2, i32* %209, align 4
  br label %210

210:                                              ; preds = %208, %206
  br label %211

211:                                              ; preds = %210, %185
  %212 = load i32, i32* %12, align 4
  %213 = call i32 @i9xx_calc_dpll_params(i32 %212, %struct.dpll* %10)
  store i32 %213, i32* %11, align 4
  br label %214

214:                                              ; preds = %211, %145
  %215 = load i32, i32* %11, align 4
  %216 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %217 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %216, i32 0, i32 1
  store i32 %215, i32* %217, align 4
  br label %218

218:                                              ; preds = %214, %130
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local i32 @i9xx_pll_refclk(%struct.drm_device*, %struct.intel_crtc_state*) #1

declare dso_local i64 @IS_PINEVIEW(%struct.drm_i915_private*) #1

declare dso_local i8* @ffs(i32) #1

declare dso_local i32 @IS_GEN(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

declare dso_local i32 @pnv_calc_dpll_params(i32, %struct.dpll*) #1

declare dso_local i32 @i9xx_calc_dpll_params(i32, %struct.dpll*) #1

declare dso_local i64 @IS_I830(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

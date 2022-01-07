; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_ironlake_get_pipe_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_ironlake_get_pipe_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.intel_crtc_state = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__, %struct.intel_shared_dpll*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.intel_shared_dpll = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.drm_i915_private*, %struct.intel_shared_dpll*, %struct.TYPE_8__*)* }
%struct.drm_i915_private = type { i32 }

@INTEL_OUTPUT_FORMAT_RGB = common dso_local global i32 0, align 4
@PIPECONF_ENABLE = common dso_local global i32 0, align 4
@PIPECONF_BPC_MASK = common dso_local global i32 0, align 4
@PIPECONF_COLOR_RANGE_SELECT = common dso_local global i32 0, align 4
@PIPECONF_GAMMA_MODE_MASK_ILK = common dso_local global i32 0, align 4
@PIPECONF_GAMMA_MODE_SHIFT = common dso_local global i32 0, align 4
@TRANS_ENABLE = common dso_local global i32 0, align 4
@FDI_DP_PORT_WIDTH_MASK = common dso_local global i32 0, align 4
@FDI_DP_PORT_WIDTH_SHIFT = common dso_local global i32 0, align 4
@PCH_DPLL_SEL = common dso_local global i32 0, align 4
@DPLL_ID_PCH_PLL_B = common dso_local global i32 0, align 4
@DPLL_ID_PCH_PLL_A = common dso_local global i32 0, align 4
@PLL_REF_SDVO_HDMI_MULTIPLIER_MASK = common dso_local global i32 0, align 4
@PLL_REF_SDVO_HDMI_MULTIPLIER_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_crtc*, %struct.intel_crtc_state*)* @ironlake_get_pipe_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ironlake_get_pipe_config(%struct.intel_crtc* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_crtc*, align 8
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.intel_shared_dpll*, align 8
  %13 = alloca i32, align 4
  store %struct.intel_crtc* %0, %struct.intel_crtc** %4, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %5, align 8
  %14 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %15 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.drm_device*, %struct.drm_device** %16, align 8
  store %struct.drm_device* %17, %struct.drm_device** %6, align 8
  %18 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %19 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %18)
  store %struct.drm_i915_private* %19, %struct.drm_i915_private** %7, align 8
  %20 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %21 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @POWER_DOMAIN_PIPE(i64 %22)
  store i32 %23, i32* %8, align 4
  %24 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @intel_display_power_get_if_enabled(%struct.drm_i915_private* %24, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %205

30:                                               ; preds = %2
  %31 = load i32, i32* @INTEL_OUTPUT_FORMAT_RGB, align 4
  %32 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %33 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %32, i32 0, i32 10
  store i32 %31, i32* %33, align 8
  %34 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %35 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %39 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %41 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %40, i32 0, i32 9
  store %struct.intel_shared_dpll* null, %struct.intel_shared_dpll** %41, align 8
  store i32 0, i32* %11, align 4
  %42 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %43 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @PIPECONF(i64 %44)
  %46 = call i32 @I915_READ(i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @PIPECONF_ENABLE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %30
  br label %199

52:                                               ; preds = %30
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @PIPECONF_BPC_MASK, align 4
  %55 = and i32 %53, %54
  switch i32 %55, label %68 [
    i32 129, label %56
    i32 128, label %59
    i32 131, label %62
    i32 130, label %65
  ]

56:                                               ; preds = %52
  %57 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %58 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %57, i32 0, i32 1
  store i32 18, i32* %58, align 4
  br label %69

59:                                               ; preds = %52
  %60 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %61 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %60, i32 0, i32 1
  store i32 24, i32* %61, align 4
  br label %69

62:                                               ; preds = %52
  %63 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %64 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %63, i32 0, i32 1
  store i32 30, i32* %64, align 4
  br label %69

65:                                               ; preds = %52
  %66 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %67 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %66, i32 0, i32 1
  store i32 36, i32* %67, align 4
  br label %69

68:                                               ; preds = %52
  br label %69

69:                                               ; preds = %68, %65, %62, %59, %56
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @PIPECONF_COLOR_RANGE_SELECT, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %76 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %75, i32 0, i32 2
  store i32 1, i32* %76, align 8
  br label %77

77:                                               ; preds = %74, %69
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @PIPECONF_GAMMA_MODE_MASK_ILK, align 4
  %80 = and i32 %78, %79
  %81 = load i32, i32* @PIPECONF_GAMMA_MODE_SHIFT, align 4
  %82 = ashr i32 %80, %81
  %83 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %84 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 4
  %85 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %86 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @PIPE_CSC_MODE(i64 %87)
  %89 = call i32 @I915_READ(i32 %88)
  %90 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %91 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %90, i32 0, i32 4
  store i32 %89, i32* %91, align 8
  %92 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %93 = call i32 @i9xx_get_pipe_color_config(%struct.intel_crtc_state* %92)
  %94 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %95 = call i32 @intel_color_get_config(%struct.intel_crtc_state* %94)
  %96 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %97 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @PCH_TRANSCONF(i64 %98)
  %100 = call i32 @I915_READ(i32 %99)
  %101 = load i32, i32* @TRANS_ENABLE, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %186

104:                                              ; preds = %77
  %105 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %106 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %105, i32 0, i32 5
  store i32 1, i32* %106, align 4
  %107 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %108 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @FDI_RX_CTL(i64 %109)
  %111 = call i32 @I915_READ(i32 %110)
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* @FDI_DP_PORT_WIDTH_MASK, align 4
  %113 = load i32, i32* %10, align 4
  %114 = and i32 %112, %113
  %115 = load i32, i32* @FDI_DP_PORT_WIDTH_SHIFT, align 4
  %116 = ashr i32 %114, %115
  %117 = add nsw i32 %116, 1
  %118 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %119 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %118, i32 0, i32 6
  store i32 %117, i32* %119, align 8
  %120 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %121 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %122 = call i32 @ironlake_get_fdi_m_n_config(%struct.intel_crtc* %120, %struct.intel_crtc_state* %121)
  %123 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %124 = call i64 @HAS_PCH_IBX(%struct.drm_i915_private* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %104
  %127 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %128 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %13, align 4
  br label %146

131:                                              ; preds = %104
  %132 = load i32, i32* @PCH_DPLL_SEL, align 4
  %133 = call i32 @I915_READ(i32 %132)
  store i32 %133, i32* %10, align 4
  %134 = load i32, i32* %10, align 4
  %135 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %136 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = call i32 @TRANS_DPLLB_SEL(i64 %137)
  %139 = and i32 %134, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %131
  %142 = load i32, i32* @DPLL_ID_PCH_PLL_B, align 4
  store i32 %142, i32* %13, align 4
  br label %145

143:                                              ; preds = %131
  %144 = load i32, i32* @DPLL_ID_PCH_PLL_A, align 4
  store i32 %144, i32* %13, align 4
  br label %145

145:                                              ; preds = %143, %141
  br label %146

146:                                              ; preds = %145, %126
  %147 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %148 = load i32, i32* %13, align 4
  %149 = call %struct.intel_shared_dpll* @intel_get_shared_dpll_by_id(%struct.drm_i915_private* %147, i32 %148)
  %150 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %151 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %150, i32 0, i32 9
  store %struct.intel_shared_dpll* %149, %struct.intel_shared_dpll** %151, align 8
  %152 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %153 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %152, i32 0, i32 9
  %154 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %153, align 8
  store %struct.intel_shared_dpll* %154, %struct.intel_shared_dpll** %12, align 8
  %155 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %12, align 8
  %156 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %155, i32 0, i32 0
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  %161 = load i32 (%struct.drm_i915_private*, %struct.intel_shared_dpll*, %struct.TYPE_8__*)*, i32 (%struct.drm_i915_private*, %struct.intel_shared_dpll*, %struct.TYPE_8__*)** %160, align 8
  %162 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %163 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %12, align 8
  %164 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %165 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %164, i32 0, i32 8
  %166 = call i32 %161(%struct.drm_i915_private* %162, %struct.intel_shared_dpll* %163, %struct.TYPE_8__* %165)
  %167 = icmp ne i32 %166, 0
  %168 = xor i1 %167, true
  %169 = zext i1 %168 to i32
  %170 = call i32 @WARN_ON(i32 %169)
  %171 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %172 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %171, i32 0, i32 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  store i32 %174, i32* %10, align 4
  %175 = load i32, i32* %10, align 4
  %176 = load i32, i32* @PLL_REF_SDVO_HDMI_MULTIPLIER_MASK, align 4
  %177 = and i32 %175, %176
  %178 = load i32, i32* @PLL_REF_SDVO_HDMI_MULTIPLIER_SHIFT, align 4
  %179 = ashr i32 %177, %178
  %180 = add nsw i32 %179, 1
  %181 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %182 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %181, i32 0, i32 7
  store i32 %180, i32* %182, align 4
  %183 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %184 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %185 = call i32 @ironlake_pch_clock_get(%struct.intel_crtc* %183, %struct.intel_crtc_state* %184)
  br label %189

186:                                              ; preds = %77
  %187 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %188 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %187, i32 0, i32 7
  store i32 1, i32* %188, align 4
  br label %189

189:                                              ; preds = %186, %146
  %190 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %191 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %192 = call i32 @intel_get_pipe_timings(%struct.intel_crtc* %190, %struct.intel_crtc_state* %191)
  %193 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %194 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %195 = call i32 @intel_get_pipe_src_size(%struct.intel_crtc* %193, %struct.intel_crtc_state* %194)
  %196 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %197 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %198 = call i32 @ironlake_get_pfit_config(%struct.intel_crtc* %196, %struct.intel_crtc_state* %197)
  store i32 1, i32* %11, align 4
  br label %199

199:                                              ; preds = %189, %51
  %200 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %201 = load i32, i32* %8, align 4
  %202 = load i32, i32* %9, align 4
  %203 = call i32 @intel_display_power_put(%struct.drm_i915_private* %200, i32 %201, i32 %202)
  %204 = load i32, i32* %11, align 4
  store i32 %204, i32* %3, align 4
  br label %205

205:                                              ; preds = %199, %29
  %206 = load i32, i32* %3, align 4
  ret i32 %206
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local i32 @POWER_DOMAIN_PIPE(i64) #1

declare dso_local i32 @intel_display_power_get_if_enabled(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @PIPECONF(i64) #1

declare dso_local i32 @PIPE_CSC_MODE(i64) #1

declare dso_local i32 @i9xx_get_pipe_color_config(%struct.intel_crtc_state*) #1

declare dso_local i32 @intel_color_get_config(%struct.intel_crtc_state*) #1

declare dso_local i32 @PCH_TRANSCONF(i64) #1

declare dso_local i32 @FDI_RX_CTL(i64) #1

declare dso_local i32 @ironlake_get_fdi_m_n_config(%struct.intel_crtc*, %struct.intel_crtc_state*) #1

declare dso_local i64 @HAS_PCH_IBX(%struct.drm_i915_private*) #1

declare dso_local i32 @TRANS_DPLLB_SEL(i64) #1

declare dso_local %struct.intel_shared_dpll* @intel_get_shared_dpll_by_id(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @ironlake_pch_clock_get(%struct.intel_crtc*, %struct.intel_crtc_state*) #1

declare dso_local i32 @intel_get_pipe_timings(%struct.intel_crtc*, %struct.intel_crtc_state*) #1

declare dso_local i32 @intel_get_pipe_src_size(%struct.intel_crtc*, %struct.intel_crtc_state*) #1

declare dso_local i32 @ironlake_get_pfit_config(%struct.intel_crtc*, %struct.intel_crtc_state*) #1

declare dso_local i32 @intel_display_power_put(%struct.drm_i915_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

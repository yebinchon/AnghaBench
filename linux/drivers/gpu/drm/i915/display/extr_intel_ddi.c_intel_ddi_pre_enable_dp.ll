; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_intel_ddi_pre_enable_dp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_intel_ddi_pre_enable_dp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.intel_crtc_state = type { i32, i32 }
%struct.drm_connector_state = type { i32 }
%struct.intel_dp = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.intel_digital_port = type { i64, i32, i32 }

@INTEL_OUTPUT_DP_MST = common dso_local global i32 0, align 4
@PORT_A = common dso_local global i32 0, align 4
@PORT_E = common dso_local global i32 0, align 4
@TC_PORT_TBT_ALT = common dso_local global i64 0, align 8
@DDI_BUF_PORT_REVERSAL = common dso_local global i32 0, align 4
@DRM_MODE_DPMS_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state*)* @intel_ddi_pre_enable_dp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_ddi_pre_enable_dp(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1, %struct.drm_connector_state* %2) #0 {
  %4 = alloca %struct.intel_encoder*, align 8
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca %struct.drm_connector_state*, align 8
  %7 = alloca %struct.intel_dp*, align 8
  %8 = alloca %struct.drm_i915_private*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.intel_digital_port*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %4, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %5, align 8
  store %struct.drm_connector_state* %2, %struct.drm_connector_state** %6, align 8
  %15 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %16 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %15, i32 0, i32 2
  %17 = call %struct.intel_dp* @enc_to_intel_dp(%struct.TYPE_3__* %16)
  store %struct.intel_dp* %17, %struct.intel_dp** %7, align 8
  %18 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %19 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.drm_i915_private* @to_i915(i32 %21)
  store %struct.drm_i915_private* %22, %struct.drm_i915_private** %8, align 8
  %23 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %24 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %9, align 4
  %26 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @intel_port_to_phy(%struct.drm_i915_private* %26, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %30 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %29, i32 0, i32 2
  %31 = call %struct.intel_digital_port* @enc_to_dig_port(%struct.TYPE_3__* %30)
  store %struct.intel_digital_port* %31, %struct.intel_digital_port** %11, align 8
  %32 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %33 = load i32, i32* @INTEL_OUTPUT_DP_MST, align 4
  %34 = call i32 @intel_crtc_has_type(%struct.intel_crtc_state* %32, i32 %33)
  store i32 %34, i32* %12, align 4
  %35 = load %struct.intel_dp*, %struct.intel_dp** %7, align 8
  %36 = call i32 @intel_ddi_dp_level(%struct.intel_dp* %35)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %3
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @PORT_A, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @PORT_E, align 4
  %46 = icmp eq i32 %44, %45
  br label %47

47:                                               ; preds = %43, %39
  %48 = phi i1 [ true, %39 ], [ %46, %43 ]
  br label %49

49:                                               ; preds = %47, %3
  %50 = phi i1 [ false, %3 ], [ %48, %47 ]
  %51 = zext i1 %50 to i32
  %52 = call i32 @WARN_ON(i32 %51)
  %53 = load %struct.intel_dp*, %struct.intel_dp** %7, align 8
  %54 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %55 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %58 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @intel_dp_set_link_params(%struct.intel_dp* %53, i32 %56, i32 %59, i32 %60)
  %62 = load %struct.intel_dp*, %struct.intel_dp** %7, align 8
  %63 = call i32 @intel_edp_panel_on(%struct.intel_dp* %62)
  %64 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %65 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %66 = call i32 @intel_ddi_clk_select(%struct.intel_encoder* %64, %struct.intel_crtc_state* %65)
  %67 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @intel_phy_is_tc(%struct.drm_i915_private* %67, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %49
  %72 = load %struct.intel_digital_port*, %struct.intel_digital_port** %11, align 8
  %73 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @TC_PORT_TBT_ALT, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %71, %49
  %78 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %79 = load %struct.intel_digital_port*, %struct.intel_digital_port** %11, align 8
  %80 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @intel_display_power_get(%struct.drm_i915_private* %78, i32 %81)
  br label %83

83:                                               ; preds = %77, %71
  %84 = load %struct.intel_digital_port*, %struct.intel_digital_port** %11, align 8
  %85 = call i32 @icl_program_mg_dp_mode(%struct.intel_digital_port* %84)
  %86 = load %struct.intel_digital_port*, %struct.intel_digital_port** %11, align 8
  %87 = call i32 @icl_disable_phy_clock_gating(%struct.intel_digital_port* %86)
  %88 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %89 = call i32 @INTEL_GEN(%struct.drm_i915_private* %88)
  %90 = icmp sge i32 %89, 11
  br i1 %90, label %91, label %101

91:                                               ; preds = %83
  %92 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %93 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %94 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %13, align 4
  %97 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %98 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @icl_ddi_vswing_sequence(%struct.intel_encoder* %92, i32 %95, i32 %96, i32 %99)
  br label %129

101:                                              ; preds = %83
  %102 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %103 = call i64 @IS_CANNONLAKE(%struct.drm_i915_private* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %101
  %106 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %107 = load i32, i32* %13, align 4
  %108 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %109 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @cnl_ddi_vswing_sequence(%struct.intel_encoder* %106, i32 %107, i32 %110)
  br label %128

112:                                              ; preds = %101
  %113 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %114 = call i64 @IS_GEN9_LP(%struct.drm_i915_private* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %112
  %117 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %118 = load i32, i32* %13, align 4
  %119 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %120 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @bxt_ddi_vswing_sequence(%struct.intel_encoder* %117, i32 %118, i32 %121)
  br label %127

123:                                              ; preds = %112
  %124 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %125 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %126 = call i32 @intel_prepare_dp_ddi_buffers(%struct.intel_encoder* %124, %struct.intel_crtc_state* %125)
  br label %127

127:                                              ; preds = %123, %116
  br label %128

128:                                              ; preds = %127, %105
  br label %129

129:                                              ; preds = %128, %91
  %130 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %131 = load i32, i32* %10, align 4
  %132 = call i64 @intel_phy_is_combo(%struct.drm_i915_private* %130, i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %147

134:                                              ; preds = %129
  %135 = load %struct.intel_digital_port*, %struct.intel_digital_port** %11, align 8
  %136 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @DDI_BUF_PORT_REVERSAL, align 4
  %139 = and i32 %137, %138
  store i32 %139, i32* %14, align 4
  %140 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %141 = load i32, i32* %10, align 4
  %142 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %143 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %14, align 4
  %146 = call i32 @intel_combo_phy_power_up_lanes(%struct.drm_i915_private* %140, i32 %141, i32 0, i32 %144, i32 %145)
  br label %147

147:                                              ; preds = %134, %129
  %148 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %149 = call i32 @intel_ddi_init_dp_buf_reg(%struct.intel_encoder* %148)
  %150 = load i32, i32* %12, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %156, label %152

152:                                              ; preds = %147
  %153 = load %struct.intel_dp*, %struct.intel_dp** %7, align 8
  %154 = load i32, i32* @DRM_MODE_DPMS_ON, align 4
  %155 = call i32 @intel_dp_sink_dpms(%struct.intel_dp* %153, i32 %154)
  br label %156

156:                                              ; preds = %152, %147
  %157 = load %struct.intel_dp*, %struct.intel_dp** %7, align 8
  %158 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %159 = call i32 @intel_dp_sink_set_decompression_state(%struct.intel_dp* %157, %struct.intel_crtc_state* %158, i32 1)
  %160 = load %struct.intel_dp*, %struct.intel_dp** %7, align 8
  %161 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %162 = call i32 @intel_dp_sink_set_fec_ready(%struct.intel_dp* %160, %struct.intel_crtc_state* %161)
  %163 = load %struct.intel_dp*, %struct.intel_dp** %7, align 8
  %164 = call i32 @intel_dp_start_link_train(%struct.intel_dp* %163)
  %165 = load i32, i32* %9, align 4
  %166 = load i32, i32* @PORT_A, align 4
  %167 = icmp ne i32 %165, %166
  br i1 %167, label %172, label %168

168:                                              ; preds = %156
  %169 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %170 = call i32 @INTEL_GEN(%struct.drm_i915_private* %169)
  %171 = icmp sge i32 %170, 9
  br i1 %171, label %172, label %175

172:                                              ; preds = %168, %156
  %173 = load %struct.intel_dp*, %struct.intel_dp** %7, align 8
  %174 = call i32 @intel_dp_stop_link_train(%struct.intel_dp* %173)
  br label %175

175:                                              ; preds = %172, %168
  %176 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %177 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %178 = call i32 @intel_ddi_enable_fec(%struct.intel_encoder* %176, %struct.intel_crtc_state* %177)
  %179 = load %struct.intel_digital_port*, %struct.intel_digital_port** %11, align 8
  %180 = call i32 @icl_enable_phy_clock_gating(%struct.intel_digital_port* %179)
  %181 = load i32, i32* %12, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %186, label %183

183:                                              ; preds = %175
  %184 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %185 = call i32 @intel_ddi_enable_pipe_clock(%struct.intel_crtc_state* %184)
  br label %186

186:                                              ; preds = %183, %175
  %187 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %188 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %189 = call i32 @intel_dsc_enable(%struct.intel_encoder* %187, %struct.intel_crtc_state* %188)
  ret void
}

declare dso_local %struct.intel_dp* @enc_to_intel_dp(%struct.TYPE_3__*) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @intel_port_to_phy(%struct.drm_i915_private*, i32) #1

declare dso_local %struct.intel_digital_port* @enc_to_dig_port(%struct.TYPE_3__*) #1

declare dso_local i32 @intel_crtc_has_type(%struct.intel_crtc_state*, i32) #1

declare dso_local i32 @intel_ddi_dp_level(%struct.intel_dp*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @intel_dp_set_link_params(%struct.intel_dp*, i32, i32, i32) #1

declare dso_local i32 @intel_edp_panel_on(%struct.intel_dp*) #1

declare dso_local i32 @intel_ddi_clk_select(%struct.intel_encoder*, %struct.intel_crtc_state*) #1

declare dso_local i32 @intel_phy_is_tc(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_display_power_get(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @icl_program_mg_dp_mode(%struct.intel_digital_port*) #1

declare dso_local i32 @icl_disable_phy_clock_gating(%struct.intel_digital_port*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @icl_ddi_vswing_sequence(%struct.intel_encoder*, i32, i32, i32) #1

declare dso_local i64 @IS_CANNONLAKE(%struct.drm_i915_private*) #1

declare dso_local i32 @cnl_ddi_vswing_sequence(%struct.intel_encoder*, i32, i32) #1

declare dso_local i64 @IS_GEN9_LP(%struct.drm_i915_private*) #1

declare dso_local i32 @bxt_ddi_vswing_sequence(%struct.intel_encoder*, i32, i32) #1

declare dso_local i32 @intel_prepare_dp_ddi_buffers(%struct.intel_encoder*, %struct.intel_crtc_state*) #1

declare dso_local i64 @intel_phy_is_combo(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_combo_phy_power_up_lanes(%struct.drm_i915_private*, i32, i32, i32, i32) #1

declare dso_local i32 @intel_ddi_init_dp_buf_reg(%struct.intel_encoder*) #1

declare dso_local i32 @intel_dp_sink_dpms(%struct.intel_dp*, i32) #1

declare dso_local i32 @intel_dp_sink_set_decompression_state(%struct.intel_dp*, %struct.intel_crtc_state*, i32) #1

declare dso_local i32 @intel_dp_sink_set_fec_ready(%struct.intel_dp*, %struct.intel_crtc_state*) #1

declare dso_local i32 @intel_dp_start_link_train(%struct.intel_dp*) #1

declare dso_local i32 @intel_dp_stop_link_train(%struct.intel_dp*) #1

declare dso_local i32 @intel_ddi_enable_fec(%struct.intel_encoder*, %struct.intel_crtc_state*) #1

declare dso_local i32 @icl_enable_phy_clock_gating(%struct.intel_digital_port*) #1

declare dso_local i32 @intel_ddi_enable_pipe_clock(%struct.intel_crtc_state*) #1

declare dso_local i32 @intel_dsc_enable(%struct.intel_encoder*, %struct.intel_crtc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

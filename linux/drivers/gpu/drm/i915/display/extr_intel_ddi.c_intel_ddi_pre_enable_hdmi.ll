; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_intel_ddi_pre_enable_hdmi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_intel_ddi_pre_enable_hdmi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.intel_crtc_state = type { i32, i32 }
%struct.drm_connector_state = type { i32 }
%struct.intel_digital_port = type { i32 (%struct.intel_encoder*, i32, %struct.intel_crtc_state.0*, %struct.drm_connector_state.1*)*, i32, %struct.intel_hdmi }
%struct.intel_crtc_state.0 = type opaque
%struct.drm_connector_state.1 = type opaque
%struct.intel_hdmi = type { i32 }
%struct.drm_i915_private = type { i32 }

@INTEL_OUTPUT_HDMI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state*)* @intel_ddi_pre_enable_hdmi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_ddi_pre_enable_hdmi(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1, %struct.drm_connector_state* %2) #0 {
  %4 = alloca %struct.intel_encoder*, align 8
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca %struct.drm_connector_state*, align 8
  %7 = alloca %struct.intel_digital_port*, align 8
  %8 = alloca %struct.intel_hdmi*, align 8
  %9 = alloca %struct.drm_i915_private*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.intel_digital_port*, align 8
  store %struct.intel_encoder* %0, %struct.intel_encoder** %4, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %5, align 8
  store %struct.drm_connector_state* %2, %struct.drm_connector_state** %6, align 8
  %13 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %14 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %13, i32 0, i32 1
  %15 = call %struct.intel_digital_port* @enc_to_dig_port(%struct.TYPE_2__* %14)
  store %struct.intel_digital_port* %15, %struct.intel_digital_port** %7, align 8
  %16 = load %struct.intel_digital_port*, %struct.intel_digital_port** %7, align 8
  %17 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %16, i32 0, i32 2
  store %struct.intel_hdmi* %17, %struct.intel_hdmi** %8, align 8
  %18 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %19 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.drm_i915_private* @to_i915(i32 %21)
  store %struct.drm_i915_private* %22, %struct.drm_i915_private** %9, align 8
  %23 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %24 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %10, align 4
  %26 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @intel_ddi_hdmi_level(%struct.drm_i915_private* %26, i32 %27)
  store i32 %28, i32* %11, align 4
  %29 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %30 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %29, i32 0, i32 1
  %31 = call %struct.intel_digital_port* @enc_to_dig_port(%struct.TYPE_2__* %30)
  store %struct.intel_digital_port* %31, %struct.intel_digital_port** %12, align 8
  %32 = load %struct.intel_hdmi*, %struct.intel_hdmi** %8, align 8
  %33 = call i32 @intel_dp_dual_mode_set_tmds_output(%struct.intel_hdmi* %32, i32 1)
  %34 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %35 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %36 = call i32 @intel_ddi_clk_select(%struct.intel_encoder* %34, %struct.intel_crtc_state* %35)
  %37 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  %38 = load %struct.intel_digital_port*, %struct.intel_digital_port** %12, align 8
  %39 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @intel_display_power_get(%struct.drm_i915_private* %37, i32 %40)
  %42 = load %struct.intel_digital_port*, %struct.intel_digital_port** %12, align 8
  %43 = call i32 @icl_program_mg_dp_mode(%struct.intel_digital_port* %42)
  %44 = load %struct.intel_digital_port*, %struct.intel_digital_port** %12, align 8
  %45 = call i32 @icl_disable_phy_clock_gating(%struct.intel_digital_port* %44)
  %46 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  %47 = call i32 @INTEL_GEN(%struct.drm_i915_private* %46)
  %48 = icmp sge i32 %47, 11
  br i1 %48, label %49, label %57

49:                                               ; preds = %3
  %50 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %51 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %52 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @INTEL_OUTPUT_HDMI, align 4
  %56 = call i32 @icl_ddi_vswing_sequence(%struct.intel_encoder* %50, i32 %53, i32 %54, i32 %55)
  br label %81

57:                                               ; preds = %3
  %58 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  %59 = call i64 @IS_CANNONLAKE(%struct.drm_i915_private* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @INTEL_OUTPUT_HDMI, align 4
  %65 = call i32 @cnl_ddi_vswing_sequence(%struct.intel_encoder* %62, i32 %63, i32 %64)
  br label %80

66:                                               ; preds = %57
  %67 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  %68 = call i64 @IS_GEN9_LP(%struct.drm_i915_private* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* @INTEL_OUTPUT_HDMI, align 4
  %74 = call i32 @bxt_ddi_vswing_sequence(%struct.intel_encoder* %71, i32 %72, i32 %73)
  br label %79

75:                                               ; preds = %66
  %76 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @intel_prepare_hdmi_ddi_buffers(%struct.intel_encoder* %76, i32 %77)
  br label %79

79:                                               ; preds = %75, %70
  br label %80

80:                                               ; preds = %79, %61
  br label %81

81:                                               ; preds = %80, %49
  %82 = load %struct.intel_digital_port*, %struct.intel_digital_port** %12, align 8
  %83 = call i32 @icl_enable_phy_clock_gating(%struct.intel_digital_port* %82)
  %84 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  %85 = call i64 @IS_GEN9_BC(%struct.drm_i915_private* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %81
  %88 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* @INTEL_OUTPUT_HDMI, align 4
  %91 = call i32 @skl_ddi_set_iboost(%struct.intel_encoder* %88, i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %87, %81
  %93 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %94 = call i32 @intel_ddi_enable_pipe_clock(%struct.intel_crtc_state* %93)
  %95 = load %struct.intel_digital_port*, %struct.intel_digital_port** %7, align 8
  %96 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %95, i32 0, i32 0
  %97 = load i32 (%struct.intel_encoder*, i32, %struct.intel_crtc_state.0*, %struct.drm_connector_state.1*)*, i32 (%struct.intel_encoder*, i32, %struct.intel_crtc_state.0*, %struct.drm_connector_state.1*)** %96, align 8
  %98 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %99 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %100 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %103 = bitcast %struct.intel_crtc_state* %102 to %struct.intel_crtc_state.0*
  %104 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %105 = bitcast %struct.drm_connector_state* %104 to %struct.drm_connector_state.1*
  %106 = call i32 %97(%struct.intel_encoder* %98, i32 %101, %struct.intel_crtc_state.0* %103, %struct.drm_connector_state.1* %105)
  ret void
}

declare dso_local %struct.intel_digital_port* @enc_to_dig_port(%struct.TYPE_2__*) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @intel_ddi_hdmi_level(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_dp_dual_mode_set_tmds_output(%struct.intel_hdmi*, i32) #1

declare dso_local i32 @intel_ddi_clk_select(%struct.intel_encoder*, %struct.intel_crtc_state*) #1

declare dso_local i32 @intel_display_power_get(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @icl_program_mg_dp_mode(%struct.intel_digital_port*) #1

declare dso_local i32 @icl_disable_phy_clock_gating(%struct.intel_digital_port*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @icl_ddi_vswing_sequence(%struct.intel_encoder*, i32, i32, i32) #1

declare dso_local i64 @IS_CANNONLAKE(%struct.drm_i915_private*) #1

declare dso_local i32 @cnl_ddi_vswing_sequence(%struct.intel_encoder*, i32, i32) #1

declare dso_local i64 @IS_GEN9_LP(%struct.drm_i915_private*) #1

declare dso_local i32 @bxt_ddi_vswing_sequence(%struct.intel_encoder*, i32, i32) #1

declare dso_local i32 @intel_prepare_hdmi_ddi_buffers(%struct.intel_encoder*, i32) #1

declare dso_local i32 @icl_enable_phy_clock_gating(%struct.intel_digital_port*) #1

declare dso_local i64 @IS_GEN9_BC(%struct.drm_i915_private*) #1

declare dso_local i32 @skl_ddi_set_iboost(%struct.intel_encoder*, i32, i32) #1

declare dso_local i32 @intel_ddi_enable_pipe_clock(%struct.intel_crtc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

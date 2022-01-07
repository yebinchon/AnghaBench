; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_intel_ddi_post_disable_hdmi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_intel_ddi_post_disable_hdmi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.intel_crtc_state = type { i32 }
%struct.drm_connector_state = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.intel_digital_port = type { i32, i32 (%struct.intel_encoder*, i32, %struct.intel_crtc_state.0*, %struct.drm_connector_state.1*)*, %struct.intel_hdmi }
%struct.intel_crtc_state.0 = type opaque
%struct.drm_connector_state.1 = type opaque
%struct.intel_hdmi = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state*)* @intel_ddi_post_disable_hdmi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_ddi_post_disable_hdmi(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1, %struct.drm_connector_state* %2) #0 {
  %4 = alloca %struct.intel_encoder*, align 8
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca %struct.drm_connector_state*, align 8
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca %struct.intel_digital_port*, align 8
  %9 = alloca %struct.intel_hdmi*, align 8
  store %struct.intel_encoder* %0, %struct.intel_encoder** %4, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %5, align 8
  store %struct.drm_connector_state* %2, %struct.drm_connector_state** %6, align 8
  %10 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %11 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.drm_i915_private* @to_i915(i32 %13)
  store %struct.drm_i915_private* %14, %struct.drm_i915_private** %7, align 8
  %15 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %16 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %15, i32 0, i32 0
  %17 = call %struct.intel_digital_port* @enc_to_dig_port(%struct.TYPE_2__* %16)
  store %struct.intel_digital_port* %17, %struct.intel_digital_port** %8, align 8
  %18 = load %struct.intel_digital_port*, %struct.intel_digital_port** %8, align 8
  %19 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %18, i32 0, i32 2
  store %struct.intel_hdmi* %19, %struct.intel_hdmi** %9, align 8
  %20 = load %struct.intel_digital_port*, %struct.intel_digital_port** %8, align 8
  %21 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %20, i32 0, i32 1
  %22 = load i32 (%struct.intel_encoder*, i32, %struct.intel_crtc_state.0*, %struct.drm_connector_state.1*)*, i32 (%struct.intel_encoder*, i32, %struct.intel_crtc_state.0*, %struct.drm_connector_state.1*)** %21, align 8
  %23 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %24 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %25 = bitcast %struct.intel_crtc_state* %24 to %struct.intel_crtc_state.0*
  %26 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %27 = bitcast %struct.drm_connector_state* %26 to %struct.drm_connector_state.1*
  %28 = call i32 %22(%struct.intel_encoder* %23, i32 0, %struct.intel_crtc_state.0* %25, %struct.drm_connector_state.1* %27)
  %29 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %30 = call i32 @intel_ddi_disable_pipe_clock(%struct.intel_crtc_state* %29)
  %31 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %32 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %33 = call i32 @intel_disable_ddi_buf(%struct.intel_encoder* %31, %struct.intel_crtc_state* %32)
  %34 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %35 = load %struct.intel_digital_port*, %struct.intel_digital_port** %8, align 8
  %36 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @intel_display_power_put_unchecked(%struct.drm_i915_private* %34, i32 %37)
  %39 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %40 = call i32 @intel_ddi_clk_disable(%struct.intel_encoder* %39)
  %41 = load %struct.intel_hdmi*, %struct.intel_hdmi** %9, align 8
  %42 = call i32 @intel_dp_dual_mode_set_tmds_output(%struct.intel_hdmi* %41, i32 0)
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.intel_digital_port* @enc_to_dig_port(%struct.TYPE_2__*) #1

declare dso_local i32 @intel_ddi_disable_pipe_clock(%struct.intel_crtc_state*) #1

declare dso_local i32 @intel_disable_ddi_buf(%struct.intel_encoder*, %struct.intel_crtc_state*) #1

declare dso_local i32 @intel_display_power_put_unchecked(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_ddi_clk_disable(%struct.intel_encoder*) #1

declare dso_local i32 @intel_dp_dual_mode_set_tmds_output(%struct.intel_hdmi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

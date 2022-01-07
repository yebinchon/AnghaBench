; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_chv_hdmi_pre_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_chv_hdmi_pre_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.intel_crtc_state = type { i32 }
%struct.drm_connector_state = type { i32 }
%struct.intel_digital_port = type { i32 (%struct.intel_encoder*, i32, %struct.intel_crtc_state.0*, %struct.drm_connector_state.1*)* }
%struct.intel_crtc_state.0 = type opaque
%struct.drm_connector_state.1 = type opaque
%struct.drm_i915_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state*)* @chv_hdmi_pre_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chv_hdmi_pre_enable(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1, %struct.drm_connector_state* %2) #0 {
  %4 = alloca %struct.intel_encoder*, align 8
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca %struct.drm_connector_state*, align 8
  %7 = alloca %struct.intel_digital_port*, align 8
  %8 = alloca %struct.drm_device*, align 8
  %9 = alloca %struct.drm_i915_private*, align 8
  store %struct.intel_encoder* %0, %struct.intel_encoder** %4, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %5, align 8
  store %struct.drm_connector_state* %2, %struct.drm_connector_state** %6, align 8
  %10 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %11 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %10, i32 0, i32 0
  %12 = call %struct.intel_digital_port* @enc_to_dig_port(%struct.TYPE_2__* %11)
  store %struct.intel_digital_port* %12, %struct.intel_digital_port** %7, align 8
  %13 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %14 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.drm_device*, %struct.drm_device** %15, align 8
  store %struct.drm_device* %16, %struct.drm_device** %8, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %18 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %17)
  store %struct.drm_i915_private* %18, %struct.drm_i915_private** %9, align 8
  %19 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %20 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %21 = call i32 @chv_phy_pre_encoder_enable(%struct.intel_encoder* %19, %struct.intel_crtc_state* %20)
  %22 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %23 = call i32 @chv_set_phy_signal_level(%struct.intel_encoder* %22, i32 128, i32 102, i32 0)
  %24 = load %struct.intel_digital_port*, %struct.intel_digital_port** %7, align 8
  %25 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %24, i32 0, i32 0
  %26 = load i32 (%struct.intel_encoder*, i32, %struct.intel_crtc_state.0*, %struct.drm_connector_state.1*)*, i32 (%struct.intel_encoder*, i32, %struct.intel_crtc_state.0*, %struct.drm_connector_state.1*)** %25, align 8
  %27 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %28 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %29 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %32 = bitcast %struct.intel_crtc_state* %31 to %struct.intel_crtc_state.0*
  %33 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %34 = bitcast %struct.drm_connector_state* %33 to %struct.drm_connector_state.1*
  %35 = call i32 %26(%struct.intel_encoder* %27, i32 %30, %struct.intel_crtc_state.0* %32, %struct.drm_connector_state.1* %34)
  %36 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %37 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %38 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %39 = call i32 @g4x_enable_hdmi(%struct.intel_encoder* %36, %struct.intel_crtc_state* %37, %struct.drm_connector_state* %38)
  %40 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  %41 = load %struct.intel_digital_port*, %struct.intel_digital_port** %7, align 8
  %42 = call i32 @vlv_wait_port_ready(%struct.drm_i915_private* %40, %struct.intel_digital_port* %41, i32 0)
  %43 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %44 = call i32 @chv_phy_release_cl2_override(%struct.intel_encoder* %43)
  ret void
}

declare dso_local %struct.intel_digital_port* @enc_to_dig_port(%struct.TYPE_2__*) #1

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local i32 @chv_phy_pre_encoder_enable(%struct.intel_encoder*, %struct.intel_crtc_state*) #1

declare dso_local i32 @chv_set_phy_signal_level(%struct.intel_encoder*, i32, i32, i32) #1

declare dso_local i32 @g4x_enable_hdmi(%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state*) #1

declare dso_local i32 @vlv_wait_port_ready(%struct.drm_i915_private*, %struct.intel_digital_port*, i32) #1

declare dso_local i32 @chv_phy_release_cl2_override(%struct.intel_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

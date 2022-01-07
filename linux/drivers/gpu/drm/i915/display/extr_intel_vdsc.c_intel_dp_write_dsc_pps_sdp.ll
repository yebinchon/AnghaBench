; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_vdsc.c_intel_dp_write_dsc_pps_sdp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_vdsc.c_intel_dp_write_dsc_pps_sdp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { i32 }
%struct.intel_crtc_state = type { %struct.drm_dsc_config }
%struct.drm_dsc_config = type { i32 }
%struct.intel_dp = type { i32 }
%struct.intel_digital_port = type { i32 (%struct.intel_encoder*, %struct.intel_crtc_state.0*, i32, %struct.drm_dsc_pps_infoframe*, i32)* }
%struct.intel_crtc_state.0 = type opaque
%struct.drm_dsc_pps_infoframe = type opaque
%struct.drm_dsc_pps_infoframe.1 = type { i32, i32 }

@DP_SDP_PPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*, %struct.intel_crtc_state*)* @intel_dp_write_dsc_pps_sdp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_dp_write_dsc_pps_sdp(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca %struct.intel_encoder*, align 8
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.intel_dp*, align 8
  %6 = alloca %struct.intel_digital_port*, align 8
  %7 = alloca %struct.drm_dsc_config*, align 8
  %8 = alloca %struct.drm_dsc_pps_infoframe.1, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %3, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %4, align 8
  %9 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %10 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %9, i32 0, i32 0
  %11 = call %struct.intel_dp* @enc_to_intel_dp(i32* %10)
  store %struct.intel_dp* %11, %struct.intel_dp** %5, align 8
  %12 = load %struct.intel_dp*, %struct.intel_dp** %5, align 8
  %13 = call %struct.intel_digital_port* @dp_to_dig_port(%struct.intel_dp* %12)
  store %struct.intel_digital_port* %13, %struct.intel_digital_port** %6, align 8
  %14 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %15 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %14, i32 0, i32 0
  store %struct.drm_dsc_config* %15, %struct.drm_dsc_config** %7, align 8
  %16 = getelementptr inbounds %struct.drm_dsc_pps_infoframe.1, %struct.drm_dsc_pps_infoframe.1* %8, i32 0, i32 1
  %17 = call i32 @drm_dsc_dp_pps_header_init(i32* %16)
  %18 = getelementptr inbounds %struct.drm_dsc_pps_infoframe.1, %struct.drm_dsc_pps_infoframe.1* %8, i32 0, i32 0
  %19 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %7, align 8
  %20 = call i32 @drm_dsc_pps_payload_pack(i32* %18, %struct.drm_dsc_config* %19)
  %21 = load %struct.intel_digital_port*, %struct.intel_digital_port** %6, align 8
  %22 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %21, i32 0, i32 0
  %23 = load i32 (%struct.intel_encoder*, %struct.intel_crtc_state.0*, i32, %struct.drm_dsc_pps_infoframe*, i32)*, i32 (%struct.intel_encoder*, %struct.intel_crtc_state.0*, i32, %struct.drm_dsc_pps_infoframe*, i32)** %22, align 8
  %24 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %25 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %26 = bitcast %struct.intel_crtc_state* %25 to %struct.intel_crtc_state.0*
  %27 = load i32, i32* @DP_SDP_PPS, align 4
  %28 = bitcast %struct.drm_dsc_pps_infoframe.1* %8 to %struct.drm_dsc_pps_infoframe*
  %29 = call i32 %23(%struct.intel_encoder* %24, %struct.intel_crtc_state.0* %26, i32 %27, %struct.drm_dsc_pps_infoframe* %28, i32 8)
  ret void
}

declare dso_local %struct.intel_dp* @enc_to_intel_dp(i32*) #1

declare dso_local %struct.intel_digital_port* @dp_to_dig_port(%struct.intel_dp*) #1

declare dso_local i32 @drm_dsc_dp_pps_header_init(i32*) #1

declare dso_local i32 @drm_dsc_pps_payload_pack(i32*, %struct.drm_dsc_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

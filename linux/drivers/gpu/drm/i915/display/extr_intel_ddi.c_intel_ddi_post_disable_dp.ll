; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_intel_ddi_post_disable_dp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_intel_ddi_post_disable_dp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.intel_crtc_state = type { i32 }
%struct.drm_connector_state = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.intel_digital_port = type { i64, i32, %struct.intel_dp }
%struct.intel_dp = type { i32 }

@INTEL_OUTPUT_DP_MST = common dso_local global i32 0, align 4
@DRM_MODE_DPMS_OFF = common dso_local global i32 0, align 4
@TC_PORT_TBT_ALT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state*)* @intel_ddi_post_disable_dp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_ddi_post_disable_dp(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1, %struct.drm_connector_state* %2) #0 {
  %4 = alloca %struct.intel_encoder*, align 8
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca %struct.drm_connector_state*, align 8
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca %struct.intel_digital_port*, align 8
  %9 = alloca %struct.intel_dp*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %4, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %5, align 8
  store %struct.drm_connector_state* %2, %struct.drm_connector_state** %6, align 8
  %12 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %13 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.drm_i915_private* @to_i915(i32 %15)
  store %struct.drm_i915_private* %16, %struct.drm_i915_private** %7, align 8
  %17 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %18 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %17, i32 0, i32 1
  %19 = call %struct.intel_digital_port* @enc_to_dig_port(%struct.TYPE_2__* %18)
  store %struct.intel_digital_port* %19, %struct.intel_digital_port** %8, align 8
  %20 = load %struct.intel_digital_port*, %struct.intel_digital_port** %8, align 8
  %21 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %20, i32 0, i32 2
  store %struct.intel_dp* %21, %struct.intel_dp** %9, align 8
  %22 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %23 = load i32, i32* @INTEL_OUTPUT_DP_MST, align 4
  %24 = call i32 @intel_crtc_has_type(%struct.intel_crtc_state* %22, i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %26 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %27 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @intel_port_to_phy(%struct.drm_i915_private* %25, i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %3
  %33 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %34 = call i32 @intel_ddi_disable_pipe_clock(%struct.intel_crtc_state* %33)
  %35 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %36 = load i32, i32* @DRM_MODE_DPMS_OFF, align 4
  %37 = call i32 @intel_dp_sink_dpms(%struct.intel_dp* %35, i32 %36)
  br label %38

38:                                               ; preds = %32, %3
  %39 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %40 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %41 = call i32 @intel_disable_ddi_buf(%struct.intel_encoder* %39, %struct.intel_crtc_state* %40)
  %42 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %43 = call i32 @intel_edp_panel_vdd_on(%struct.intel_dp* %42)
  %44 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %45 = call i32 @intel_edp_panel_off(%struct.intel_dp* %44)
  %46 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @intel_phy_is_tc(%struct.drm_i915_private* %46, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %38
  %51 = load %struct.intel_digital_port*, %struct.intel_digital_port** %8, align 8
  %52 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @TC_PORT_TBT_ALT, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %50, %38
  %57 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %58 = load %struct.intel_digital_port*, %struct.intel_digital_port** %8, align 8
  %59 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @intel_display_power_put_unchecked(%struct.drm_i915_private* %57, i32 %60)
  br label %62

62:                                               ; preds = %56, %50
  %63 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %64 = call i32 @intel_ddi_clk_disable(%struct.intel_encoder* %63)
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.intel_digital_port* @enc_to_dig_port(%struct.TYPE_2__*) #1

declare dso_local i32 @intel_crtc_has_type(%struct.intel_crtc_state*, i32) #1

declare dso_local i32 @intel_port_to_phy(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_ddi_disable_pipe_clock(%struct.intel_crtc_state*) #1

declare dso_local i32 @intel_dp_sink_dpms(%struct.intel_dp*, i32) #1

declare dso_local i32 @intel_disable_ddi_buf(%struct.intel_encoder*, %struct.intel_crtc_state*) #1

declare dso_local i32 @intel_edp_panel_vdd_on(%struct.intel_dp*) #1

declare dso_local i32 @intel_edp_panel_off(%struct.intel_dp*) #1

declare dso_local i32 @intel_phy_is_tc(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_display_power_put_unchecked(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_ddi_clk_disable(%struct.intel_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

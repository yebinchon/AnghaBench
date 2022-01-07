; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_icl_dsi.c_gen11_dsi_enable_port_and_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_icl_dsi.c_gen11_dsi_enable_port_and_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.intel_crtc_state = type { i32 }
%struct.drm_i915_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*, %struct.intel_crtc_state*)* @gen11_dsi_enable_port_and_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen11_dsi_enable_port_and_phy(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca %struct.intel_encoder*, align 8
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  store %struct.intel_encoder* %0, %struct.intel_encoder** %3, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %4, align 8
  %6 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %7 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.drm_i915_private* @to_i915(i32 %9)
  store %struct.drm_i915_private* %10, %struct.drm_i915_private** %5, align 8
  %11 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %12 = call i32 @gen11_dsi_power_up_lanes(%struct.intel_encoder* %11)
  %13 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %14 = call i32 @gen11_dsi_config_phy_lanes_sequence(%struct.intel_encoder* %13)
  %15 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %16 = call i32 @gen11_dsi_voltage_swing_program_seq(%struct.intel_encoder* %15)
  %17 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %18 = call i32 @gen11_dsi_enable_ddi_buffer(%struct.intel_encoder* %17)
  %19 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %20 = call i32 @gen11_dsi_setup_dphy_timings(%struct.intel_encoder* %19)
  %21 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %22 = call i32 @gen11_dsi_setup_timeouts(%struct.intel_encoder* %21)
  %23 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %24 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %25 = call i32 @gen11_dsi_configure_transcoder(%struct.intel_encoder* %23, %struct.intel_crtc_state* %24)
  %26 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %27 = call i64 @IS_GEN(%struct.drm_i915_private* %26, i32 11)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %31 = call i32 @gen11_dsi_gate_clocks(%struct.intel_encoder* %30)
  br label %32

32:                                               ; preds = %29, %2
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @gen11_dsi_power_up_lanes(%struct.intel_encoder*) #1

declare dso_local i32 @gen11_dsi_config_phy_lanes_sequence(%struct.intel_encoder*) #1

declare dso_local i32 @gen11_dsi_voltage_swing_program_seq(%struct.intel_encoder*) #1

declare dso_local i32 @gen11_dsi_enable_ddi_buffer(%struct.intel_encoder*) #1

declare dso_local i32 @gen11_dsi_setup_dphy_timings(%struct.intel_encoder*) #1

declare dso_local i32 @gen11_dsi_setup_timeouts(%struct.intel_encoder*) #1

declare dso_local i32 @gen11_dsi_configure_transcoder(%struct.intel_encoder*, %struct.intel_crtc_state*) #1

declare dso_local i64 @IS_GEN(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @gen11_dsi_gate_clocks(%struct.intel_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

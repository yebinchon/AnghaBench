; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_intel_ddi_update_pipe_dp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_intel_ddi_update_pipe_dp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { i32 }
%struct.intel_crtc_state = type { i32 }
%struct.drm_connector_state = type { i32 }
%struct.intel_dp = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state*)* @intel_ddi_update_pipe_dp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_ddi_update_pipe_dp(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1, %struct.drm_connector_state* %2) #0 {
  %4 = alloca %struct.intel_encoder*, align 8
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca %struct.drm_connector_state*, align 8
  %7 = alloca %struct.intel_dp*, align 8
  store %struct.intel_encoder* %0, %struct.intel_encoder** %4, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %5, align 8
  store %struct.drm_connector_state* %2, %struct.drm_connector_state** %6, align 8
  %8 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %9 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %8, i32 0, i32 0
  %10 = call %struct.intel_dp* @enc_to_intel_dp(i32* %9)
  store %struct.intel_dp* %10, %struct.intel_dp** %7, align 8
  %11 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %12 = call i32 @intel_ddi_set_pipe_settings(%struct.intel_crtc_state* %11)
  %13 = load %struct.intel_dp*, %struct.intel_dp** %7, align 8
  %14 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %15 = call i32 @intel_psr_update(%struct.intel_dp* %13, %struct.intel_crtc_state* %14)
  %16 = load %struct.intel_dp*, %struct.intel_dp** %7, align 8
  %17 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %18 = call i32 @intel_edp_drrs_enable(%struct.intel_dp* %16, %struct.intel_crtc_state* %17)
  %19 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %20 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %21 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %22 = call i32 @intel_panel_update_backlight(%struct.intel_encoder* %19, %struct.intel_crtc_state* %20, %struct.drm_connector_state* %21)
  ret void
}

declare dso_local %struct.intel_dp* @enc_to_intel_dp(i32*) #1

declare dso_local i32 @intel_ddi_set_pipe_settings(%struct.intel_crtc_state*) #1

declare dso_local i32 @intel_psr_update(%struct.intel_dp*, %struct.intel_crtc_state*) #1

declare dso_local i32 @intel_edp_drrs_enable(%struct.intel_dp*, %struct.intel_crtc_state*) #1

declare dso_local i32 @intel_panel_update_backlight(%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_icl_dsi.c_gen11_dsi_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_icl_dsi.c_gen11_dsi_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { i32 }
%struct.intel_crtc_state = type { i32 }
%struct.drm_connector_state = type { i32 }
%struct.intel_dsi = type { i32 }

@MIPI_SEQ_BACKLIGHT_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state*)* @gen11_dsi_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen11_dsi_disable(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1, %struct.drm_connector_state* %2) #0 {
  %4 = alloca %struct.intel_encoder*, align 8
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca %struct.drm_connector_state*, align 8
  %7 = alloca %struct.intel_dsi*, align 8
  store %struct.intel_encoder* %0, %struct.intel_encoder** %4, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %5, align 8
  store %struct.drm_connector_state* %2, %struct.drm_connector_state** %6, align 8
  %8 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %9 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %8, i32 0, i32 0
  %10 = call %struct.intel_dsi* @enc_to_intel_dsi(i32* %9)
  store %struct.intel_dsi* %10, %struct.intel_dsi** %7, align 8
  %11 = load %struct.intel_dsi*, %struct.intel_dsi** %7, align 8
  %12 = load i32, i32* @MIPI_SEQ_BACKLIGHT_OFF, align 4
  %13 = call i32 @intel_dsi_vbt_exec_sequence(%struct.intel_dsi* %11, i32 %12)
  %14 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %15 = call i32 @intel_panel_disable_backlight(%struct.drm_connector_state* %14)
  %16 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %17 = call i32 @gen11_dsi_disable_transcoder(%struct.intel_encoder* %16)
  %18 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %19 = call i32 @gen11_dsi_powerdown_panel(%struct.intel_encoder* %18)
  %20 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %21 = call i32 @gen11_dsi_deconfigure_trancoder(%struct.intel_encoder* %20)
  %22 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %23 = call i32 @gen11_dsi_disable_port(%struct.intel_encoder* %22)
  %24 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %25 = call i32 @gen11_dsi_disable_io_power(%struct.intel_encoder* %24)
  ret void
}

declare dso_local %struct.intel_dsi* @enc_to_intel_dsi(i32*) #1

declare dso_local i32 @intel_dsi_vbt_exec_sequence(%struct.intel_dsi*, i32) #1

declare dso_local i32 @intel_panel_disable_backlight(%struct.drm_connector_state*) #1

declare dso_local i32 @gen11_dsi_disable_transcoder(%struct.intel_encoder*) #1

declare dso_local i32 @gen11_dsi_powerdown_panel(%struct.intel_encoder*) #1

declare dso_local i32 @gen11_dsi_deconfigure_trancoder(%struct.intel_encoder*) #1

declare dso_local i32 @gen11_dsi_disable_port(%struct.intel_encoder*) #1

declare dso_local i32 @gen11_dsi_disable_io_power(%struct.intel_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

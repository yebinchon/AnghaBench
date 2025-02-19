; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/imx/extr_dw_hdmi-imx.c_dw_hdmi_imx_atomic_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/imx/extr_dw_hdmi-imx.c_dw_hdmi_imx_atomic_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.drm_crtc_state = type { i32 }
%struct.drm_connector_state = type { i32 }
%struct.imx_crtc_state = type { i32, i32, i32 }

@MEDIA_BUS_FMT_RGB888_1X24 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_encoder*, %struct.drm_crtc_state*, %struct.drm_connector_state*)* @dw_hdmi_imx_atomic_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_hdmi_imx_atomic_check(%struct.drm_encoder* %0, %struct.drm_crtc_state* %1, %struct.drm_connector_state* %2) #0 {
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.drm_crtc_state*, align 8
  %6 = alloca %struct.drm_connector_state*, align 8
  %7 = alloca %struct.imx_crtc_state*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %5, align 8
  store %struct.drm_connector_state* %2, %struct.drm_connector_state** %6, align 8
  %8 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %5, align 8
  %9 = call %struct.imx_crtc_state* @to_imx_crtc_state(%struct.drm_crtc_state* %8)
  store %struct.imx_crtc_state* %9, %struct.imx_crtc_state** %7, align 8
  %10 = load i32, i32* @MEDIA_BUS_FMT_RGB888_1X24, align 4
  %11 = load %struct.imx_crtc_state*, %struct.imx_crtc_state** %7, align 8
  %12 = getelementptr inbounds %struct.imx_crtc_state, %struct.imx_crtc_state* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 4
  %13 = load %struct.imx_crtc_state*, %struct.imx_crtc_state** %7, align 8
  %14 = getelementptr inbounds %struct.imx_crtc_state, %struct.imx_crtc_state* %13, i32 0, i32 0
  store i32 2, i32* %14, align 4
  %15 = load %struct.imx_crtc_state*, %struct.imx_crtc_state** %7, align 8
  %16 = getelementptr inbounds %struct.imx_crtc_state, %struct.imx_crtc_state* %15, i32 0, i32 1
  store i32 3, i32* %16, align 4
  ret i32 0
}

declare dso_local %struct.imx_crtc_state* @to_imx_crtc_state(%struct.drm_crtc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

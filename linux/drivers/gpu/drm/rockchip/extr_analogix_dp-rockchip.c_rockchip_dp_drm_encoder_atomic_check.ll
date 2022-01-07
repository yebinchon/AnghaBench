; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_analogix_dp-rockchip.c_rockchip_dp_drm_encoder_atomic_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_analogix_dp-rockchip.c_rockchip_dp_drm_encoder_atomic_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.drm_crtc_state = type { i32 }
%struct.drm_connector_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.drm_display_info }
%struct.drm_display_info = type { i32 }
%struct.rockchip_crtc_state = type { i32, i32, i32 }

@ROCKCHIP_OUT_MODE_AAAA = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_eDP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_encoder*, %struct.drm_crtc_state*, %struct.drm_connector_state*)* @rockchip_dp_drm_encoder_atomic_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_dp_drm_encoder_atomic_check(%struct.drm_encoder* %0, %struct.drm_crtc_state* %1, %struct.drm_connector_state* %2) #0 {
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.drm_crtc_state*, align 8
  %6 = alloca %struct.drm_connector_state*, align 8
  %7 = alloca %struct.rockchip_crtc_state*, align 8
  %8 = alloca %struct.drm_display_info*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %5, align 8
  store %struct.drm_connector_state* %2, %struct.drm_connector_state** %6, align 8
  %9 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %5, align 8
  %10 = call %struct.rockchip_crtc_state* @to_rockchip_crtc_state(%struct.drm_crtc_state* %9)
  store %struct.rockchip_crtc_state* %10, %struct.rockchip_crtc_state** %7, align 8
  %11 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %12 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.drm_display_info* %14, %struct.drm_display_info** %8, align 8
  %15 = load i32, i32* @ROCKCHIP_OUT_MODE_AAAA, align 4
  %16 = load %struct.rockchip_crtc_state*, %struct.rockchip_crtc_state** %7, align 8
  %17 = getelementptr inbounds %struct.rockchip_crtc_state, %struct.rockchip_crtc_state* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @DRM_MODE_CONNECTOR_eDP, align 4
  %19 = load %struct.rockchip_crtc_state*, %struct.rockchip_crtc_state** %7, align 8
  %20 = getelementptr inbounds %struct.rockchip_crtc_state, %struct.rockchip_crtc_state* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.drm_display_info*, %struct.drm_display_info** %8, align 8
  %22 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.rockchip_crtc_state*, %struct.rockchip_crtc_state** %7, align 8
  %25 = getelementptr inbounds %struct.rockchip_crtc_state, %struct.rockchip_crtc_state* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  ret i32 0
}

declare dso_local %struct.rockchip_crtc_state* @to_rockchip_crtc_state(%struct.drm_crtc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

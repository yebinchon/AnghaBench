; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_dw-mipi-dsi-rockchip.c_dw_mipi_dsi_encoder_atomic_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_dw-mipi-dsi-rockchip.c_dw_mipi_dsi_encoder_atomic_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.drm_crtc_state = type { i32 }
%struct.drm_connector_state = type { i32 }
%struct.rockchip_crtc_state = type { i32, i32, i32 }
%struct.dw_mipi_dsi_rockchip = type { i32, i64 }

@ROCKCHIP_OUT_MODE_P888 = common dso_local global i32 0, align 4
@ROCKCHIP_OUT_MODE_P666 = common dso_local global i32 0, align 4
@ROCKCHIP_OUT_MODE_P565 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_DSI = common dso_local global i32 0, align 4
@ROCKCHIP_OUTPUT_DSI_DUAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_encoder*, %struct.drm_crtc_state*, %struct.drm_connector_state*)* @dw_mipi_dsi_encoder_atomic_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_mipi_dsi_encoder_atomic_check(%struct.drm_encoder* %0, %struct.drm_crtc_state* %1, %struct.drm_connector_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_encoder*, align 8
  %6 = alloca %struct.drm_crtc_state*, align 8
  %7 = alloca %struct.drm_connector_state*, align 8
  %8 = alloca %struct.rockchip_crtc_state*, align 8
  %9 = alloca %struct.dw_mipi_dsi_rockchip*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %5, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %6, align 8
  store %struct.drm_connector_state* %2, %struct.drm_connector_state** %7, align 8
  %10 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %6, align 8
  %11 = call %struct.rockchip_crtc_state* @to_rockchip_crtc_state(%struct.drm_crtc_state* %10)
  store %struct.rockchip_crtc_state* %11, %struct.rockchip_crtc_state** %8, align 8
  %12 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %13 = call %struct.dw_mipi_dsi_rockchip* @to_dsi(%struct.drm_encoder* %12)
  store %struct.dw_mipi_dsi_rockchip* %13, %struct.dw_mipi_dsi_rockchip** %9, align 8
  %14 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %9, align 8
  %15 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, %struct.dw_mipi_dsi_rockchip* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %29 [
    i32 128, label %17
    i32 129, label %21
    i32 130, label %25
  ]

17:                                               ; preds = %3
  %18 = load i32, i32* @ROCKCHIP_OUT_MODE_P888, align 4
  %19 = load %struct.rockchip_crtc_state*, %struct.rockchip_crtc_state** %8, align 8
  %20 = getelementptr inbounds %struct.rockchip_crtc_state, %struct.rockchip_crtc_state* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  br label %33

21:                                               ; preds = %3
  %22 = load i32, i32* @ROCKCHIP_OUT_MODE_P666, align 4
  %23 = load %struct.rockchip_crtc_state*, %struct.rockchip_crtc_state** %8, align 8
  %24 = getelementptr inbounds %struct.rockchip_crtc_state, %struct.rockchip_crtc_state* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  br label %33

25:                                               ; preds = %3
  %26 = load i32, i32* @ROCKCHIP_OUT_MODE_P565, align 4
  %27 = load %struct.rockchip_crtc_state*, %struct.rockchip_crtc_state** %8, align 8
  %28 = getelementptr inbounds %struct.rockchip_crtc_state, %struct.rockchip_crtc_state* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  br label %33

29:                                               ; preds = %3
  %30 = call i32 @WARN_ON(i32 1)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %46

33:                                               ; preds = %25, %21, %17
  %34 = load i32, i32* @DRM_MODE_CONNECTOR_DSI, align 4
  %35 = load %struct.rockchip_crtc_state*, %struct.rockchip_crtc_state** %8, align 8
  %36 = getelementptr inbounds %struct.rockchip_crtc_state, %struct.rockchip_crtc_state* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %9, align 8
  %38 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, %struct.dw_mipi_dsi_rockchip* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %33
  %42 = load i32, i32* @ROCKCHIP_OUTPUT_DSI_DUAL, align 4
  %43 = load %struct.rockchip_crtc_state*, %struct.rockchip_crtc_state** %8, align 8
  %44 = getelementptr inbounds %struct.rockchip_crtc_state, %struct.rockchip_crtc_state* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %41, %33
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %29
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local %struct.rockchip_crtc_state* @to_rockchip_crtc_state(%struct.drm_crtc_state*) #1

declare dso_local %struct.dw_mipi_dsi_rockchip* @to_dsi(%struct.drm_encoder*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

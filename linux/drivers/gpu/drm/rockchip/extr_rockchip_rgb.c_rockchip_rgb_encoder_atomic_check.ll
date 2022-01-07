; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_rgb.c_rockchip_rgb_encoder_atomic_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_rgb.c_rockchip_rgb_encoder_atomic_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.drm_crtc_state = type { i32 }
%struct.drm_connector_state = type { %struct.drm_connector* }
%struct.drm_connector = type { %struct.drm_display_info }
%struct.drm_display_info = type { i32*, i64 }
%struct.rockchip_crtc_state = type { i32, i32 }

@ROCKCHIP_OUT_MODE_P666 = common dso_local global i32 0, align 4
@ROCKCHIP_OUT_MODE_P565 = common dso_local global i32 0, align 4
@ROCKCHIP_OUT_MODE_P888 = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_LVDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_encoder*, %struct.drm_crtc_state*, %struct.drm_connector_state*)* @rockchip_rgb_encoder_atomic_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_rgb_encoder_atomic_check(%struct.drm_encoder* %0, %struct.drm_crtc_state* %1, %struct.drm_connector_state* %2) #0 {
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.drm_crtc_state*, align 8
  %6 = alloca %struct.drm_connector_state*, align 8
  %7 = alloca %struct.rockchip_crtc_state*, align 8
  %8 = alloca %struct.drm_connector*, align 8
  %9 = alloca %struct.drm_display_info*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %5, align 8
  store %struct.drm_connector_state* %2, %struct.drm_connector_state** %6, align 8
  %11 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %5, align 8
  %12 = call %struct.rockchip_crtc_state* @to_rockchip_crtc_state(%struct.drm_crtc_state* %11)
  store %struct.rockchip_crtc_state* %12, %struct.rockchip_crtc_state** %7, align 8
  %13 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %14 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %13, i32 0, i32 0
  %15 = load %struct.drm_connector*, %struct.drm_connector** %14, align 8
  store %struct.drm_connector* %15, %struct.drm_connector** %8, align 8
  %16 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %17 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %16, i32 0, i32 0
  store %struct.drm_display_info* %17, %struct.drm_display_info** %9, align 8
  %18 = load %struct.drm_display_info*, %struct.drm_display_info** %9, align 8
  %19 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %3
  %23 = load %struct.drm_display_info*, %struct.drm_display_info** %9, align 8
  %24 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %10, align 4
  br label %29

28:                                               ; preds = %3
  store i32 128, i32* %10, align 4
  br label %29

29:                                               ; preds = %28, %22
  %30 = load i32, i32* %10, align 4
  switch i32 %30, label %40 [
    i32 130, label %31
    i32 131, label %35
    i32 128, label %39
    i32 129, label %39
  ]

31:                                               ; preds = %29
  %32 = load i32, i32* @ROCKCHIP_OUT_MODE_P666, align 4
  %33 = load %struct.rockchip_crtc_state*, %struct.rockchip_crtc_state** %7, align 8
  %34 = getelementptr inbounds %struct.rockchip_crtc_state, %struct.rockchip_crtc_state* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  br label %44

35:                                               ; preds = %29
  %36 = load i32, i32* @ROCKCHIP_OUT_MODE_P565, align 4
  %37 = load %struct.rockchip_crtc_state*, %struct.rockchip_crtc_state** %7, align 8
  %38 = getelementptr inbounds %struct.rockchip_crtc_state, %struct.rockchip_crtc_state* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  br label %44

39:                                               ; preds = %29, %29
  br label %40

40:                                               ; preds = %29, %39
  %41 = load i32, i32* @ROCKCHIP_OUT_MODE_P888, align 4
  %42 = load %struct.rockchip_crtc_state*, %struct.rockchip_crtc_state** %7, align 8
  %43 = getelementptr inbounds %struct.rockchip_crtc_state, %struct.rockchip_crtc_state* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %40, %35, %31
  %45 = load i32, i32* @DRM_MODE_CONNECTOR_LVDS, align 4
  %46 = load %struct.rockchip_crtc_state*, %struct.rockchip_crtc_state** %7, align 8
  %47 = getelementptr inbounds %struct.rockchip_crtc_state, %struct.rockchip_crtc_state* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  ret i32 0
}

declare dso_local %struct.rockchip_crtc_state* @to_rockchip_crtc_state(%struct.drm_crtc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

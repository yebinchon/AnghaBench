; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_ycbcr420_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_ycbcr420_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i32 }
%struct.drm_connector = type { i32, %struct.drm_display_info }
%struct.drm_display_info = type { i32 }
%struct.intel_crtc_state = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.drm_display_mode }
%struct.drm_display_mode = type { i32 }
%struct.intel_crtc = type { i32 }

@INTEL_OUTPUT_FORMAT_YCBCR420 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Scaler allocation for output failed\0A\00", align 1
@DRM_MODE_SCALE_FULLSCREEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_dp*, %struct.drm_connector*, %struct.intel_crtc_state*)* @intel_dp_ycbcr420_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_dp_ycbcr420_config(%struct.intel_dp* %0, %struct.drm_connector* %1, %struct.intel_crtc_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_dp*, align 8
  %6 = alloca %struct.drm_connector*, align 8
  %7 = alloca %struct.intel_crtc_state*, align 8
  %8 = alloca %struct.drm_display_info*, align 8
  %9 = alloca %struct.drm_display_mode*, align 8
  %10 = alloca %struct.intel_crtc*, align 8
  %11 = alloca i32, align 4
  store %struct.intel_dp* %0, %struct.intel_dp** %5, align 8
  store %struct.drm_connector* %1, %struct.drm_connector** %6, align 8
  store %struct.intel_crtc_state* %2, %struct.intel_crtc_state** %7, align 8
  %12 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %13 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %12, i32 0, i32 1
  store %struct.drm_display_info* %13, %struct.drm_display_info** %8, align 8
  %14 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %15 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  store %struct.drm_display_mode* %16, %struct.drm_display_mode** %9, align 8
  %17 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %18 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.intel_crtc* @to_intel_crtc(i32 %20)
  store %struct.intel_crtc* %21, %struct.intel_crtc** %10, align 8
  %22 = load %struct.drm_display_info*, %struct.drm_display_info** %8, align 8
  %23 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %24 = call i32 @drm_mode_is_420_only(%struct.drm_display_info* %22, %struct.drm_display_mode* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %3
  %27 = load %struct.intel_dp*, %struct.intel_dp** %5, align 8
  %28 = call i32 @intel_dp_get_colorimetry_status(%struct.intel_dp* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %32 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30, %26, %3
  store i32 0, i32* %4, align 4
  br label %52

36:                                               ; preds = %30
  %37 = load i32, i32* @INTEL_OUTPUT_FORMAT_YCBCR420, align 4
  %38 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %39 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %41 = call i32 @skl_update_scaler_crtc(%struct.intel_crtc_state* %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* %11, align 4
  store i32 %46, i32* %4, align 4
  br label %52

47:                                               ; preds = %36
  %48 = load %struct.intel_crtc*, %struct.intel_crtc** %10, align 8
  %49 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %50 = load i32, i32* @DRM_MODE_SCALE_FULLSCREEN, align 4
  %51 = call i32 @intel_pch_panel_fitting(%struct.intel_crtc* %48, %struct.intel_crtc_state* %49, i32 %50)
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %47, %44, %35
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local i32 @drm_mode_is_420_only(%struct.drm_display_info*, %struct.drm_display_mode*) #1

declare dso_local i32 @intel_dp_get_colorimetry_status(%struct.intel_dp*) #1

declare dso_local i32 @skl_update_scaler_crtc(%struct.intel_crtc_state*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @intel_pch_panel_fitting(%struct.intel_crtc*, %struct.intel_crtc_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

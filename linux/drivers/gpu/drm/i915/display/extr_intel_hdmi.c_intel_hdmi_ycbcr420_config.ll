; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_intel_hdmi_ycbcr420_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_intel_hdmi_ycbcr420_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.intel_crtc_state = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.intel_crtc = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"Platform doesn't support YCBCR420 output\0A\00", align 1
@INTEL_OUTPUT_FORMAT_YCBCR420 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Scaler allocation for output failed\0A\00", align 1
@DRM_MODE_SCALE_FULLSCREEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.intel_crtc_state*, i32*, i32*, i32*)* @intel_hdmi_ycbcr420_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_hdmi_ycbcr420_config(%struct.drm_connector* %0, %struct.intel_crtc_state* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_connector*, align 8
  %8 = alloca %struct.intel_crtc_state*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.intel_crtc*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %7, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %8, align 8
  %14 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.intel_crtc* @to_intel_crtc(i32 %16)
  store %struct.intel_crtc* %17, %struct.intel_crtc** %12, align 8
  %18 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %19 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %5
  %23 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %51

24:                                               ; preds = %5
  %25 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %8, align 8
  %26 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sdiv i32 %27, 2
  store i32 %28, i32* %26, align 4
  %29 = load i32*, i32** %9, align 8
  %30 = load i32, i32* %29, align 4
  %31 = sdiv i32 %30, 2
  store i32 %31, i32* %29, align 4
  %32 = load i32*, i32** %10, align 8
  %33 = load i32, i32* %32, align 4
  %34 = sdiv i32 %33, 2
  store i32 %34, i32* %32, align 4
  %35 = load i32*, i32** %11, align 8
  %36 = load i32, i32* %35, align 4
  %37 = sdiv i32 %36, 2
  store i32 %37, i32* %35, align 4
  %38 = load i32, i32* @INTEL_OUTPUT_FORMAT_YCBCR420, align 4
  %39 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %8, align 8
  %40 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %8, align 8
  %42 = call i64 @skl_update_scaler_crtc(%struct.intel_crtc_state* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %24
  %45 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %51

46:                                               ; preds = %24
  %47 = load %struct.intel_crtc*, %struct.intel_crtc** %12, align 8
  %48 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %8, align 8
  %49 = load i32, i32* @DRM_MODE_SCALE_FULLSCREEN, align 4
  %50 = call i32 @intel_pch_panel_fitting(%struct.intel_crtc* %47, %struct.intel_crtc_state* %48, i32 %49)
  store i32 1, i32* %6, align 4
  br label %51

51:                                               ; preds = %46, %44, %22
  %52 = load i32, i32* %6, align 4
  ret i32 %52
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i64 @skl_update_scaler_crtc(%struct.intel_crtc_state*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @intel_pch_panel_fitting(%struct.intel_crtc*, %struct.intel_crtc_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

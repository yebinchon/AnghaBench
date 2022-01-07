; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_intel_hdmi_compute_avi_infoframe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_intel_hdmi_compute_avi_infoframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { i32 }
%struct.intel_crtc_state = type { i64, i64, %struct.TYPE_6__, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.hdmi_avi_infoframe }
%struct.hdmi_avi_infoframe = type { i32 }
%struct.TYPE_5__ = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i32 }
%struct.drm_connector_state = type { %struct.drm_connector* }
%struct.drm_connector = type { i32 }

@HDMI_INFOFRAME_TYPE_AVI = common dso_local global i32 0, align 4
@INTEL_OUTPUT_FORMAT_YCBCR420 = common dso_local global i64 0, align 8
@HDMI_COLORSPACE_YUV420 = common dso_local global i32 0, align 4
@INTEL_OUTPUT_FORMAT_YCBCR444 = common dso_local global i64 0, align 8
@HDMI_COLORSPACE_YUV444 = common dso_local global i32 0, align 4
@HDMI_COLORSPACE_RGB = common dso_local global i32 0, align 4
@HDMI_QUANTIZATION_RANGE_LIMITED = common dso_local global i32 0, align 4
@HDMI_QUANTIZATION_RANGE_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state*)* @intel_hdmi_compute_avi_infoframe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_hdmi_compute_avi_infoframe(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1, %struct.drm_connector_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_encoder*, align 8
  %6 = alloca %struct.intel_crtc_state*, align 8
  %7 = alloca %struct.drm_connector_state*, align 8
  %8 = alloca %struct.hdmi_avi_infoframe*, align 8
  %9 = alloca %struct.drm_display_mode*, align 8
  %10 = alloca %struct.drm_connector*, align 8
  %11 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %5, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %6, align 8
  store %struct.drm_connector_state* %2, %struct.drm_connector_state** %7, align 8
  %12 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %13 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store %struct.hdmi_avi_infoframe* %15, %struct.hdmi_avi_infoframe** %8, align 8
  %16 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %17 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store %struct.drm_display_mode* %18, %struct.drm_display_mode** %9, align 8
  %19 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %20 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %19, i32 0, i32 0
  %21 = load %struct.drm_connector*, %struct.drm_connector** %20, align 8
  store %struct.drm_connector* %21, %struct.drm_connector** %10, align 8
  %22 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %23 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %95

27:                                               ; preds = %3
  %28 = load i32, i32* @HDMI_INFOFRAME_TYPE_AVI, align 4
  %29 = call i32 @intel_hdmi_infoframe_enable(i32 %28)
  %30 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %31 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %29
  store i32 %34, i32* %32, align 8
  %35 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %8, align 8
  %36 = load %struct.drm_connector*, %struct.drm_connector** %10, align 8
  %37 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %38 = call i32 @drm_hdmi_avi_infoframe_from_display_mode(%struct.hdmi_avi_infoframe* %35, %struct.drm_connector* %36, %struct.drm_display_mode* %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %95

42:                                               ; preds = %27
  %43 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %44 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @INTEL_OUTPUT_FORMAT_YCBCR420, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load i32, i32* @HDMI_COLORSPACE_YUV420, align 4
  %50 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %8, align 8
  %51 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  br label %67

52:                                               ; preds = %42
  %53 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %54 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @INTEL_OUTPUT_FORMAT_YCBCR444, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = load i32, i32* @HDMI_COLORSPACE_YUV444, align 4
  %60 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %8, align 8
  %61 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  br label %66

62:                                               ; preds = %52
  %63 = load i32, i32* @HDMI_COLORSPACE_RGB, align 4
  %64 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %8, align 8
  %65 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  br label %66

66:                                               ; preds = %62, %58
  br label %67

67:                                               ; preds = %66, %48
  %68 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %8, align 8
  %69 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %70 = call i32 @drm_hdmi_avi_infoframe_colorspace(%struct.hdmi_avi_infoframe* %68, %struct.drm_connector_state* %69)
  %71 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %8, align 8
  %72 = load %struct.drm_connector*, %struct.drm_connector** %10, align 8
  %73 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %74 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %75 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %67
  %79 = load i32, i32* @HDMI_QUANTIZATION_RANGE_LIMITED, align 4
  br label %82

80:                                               ; preds = %67
  %81 = load i32, i32* @HDMI_QUANTIZATION_RANGE_FULL, align 4
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi i32 [ %79, %78 ], [ %81, %80 ]
  %84 = call i32 @drm_hdmi_avi_infoframe_quant_range(%struct.hdmi_avi_infoframe* %71, %struct.drm_connector* %72, %struct.drm_display_mode* %73, i32 %83)
  %85 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %8, align 8
  %86 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %87 = call i32 @drm_hdmi_avi_infoframe_content_type(%struct.hdmi_avi_infoframe* %85, %struct.drm_connector_state* %86)
  %88 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %8, align 8
  %89 = call i32 @hdmi_avi_infoframe_check(%struct.hdmi_avi_infoframe* %88)
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %11, align 4
  %91 = call i64 @WARN_ON(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %82
  store i32 0, i32* %4, align 4
  br label %95

94:                                               ; preds = %82
  store i32 1, i32* %4, align 4
  br label %95

95:                                               ; preds = %94, %93, %41, %26
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @intel_hdmi_infoframe_enable(i32) #1

declare dso_local i32 @drm_hdmi_avi_infoframe_from_display_mode(%struct.hdmi_avi_infoframe*, %struct.drm_connector*, %struct.drm_display_mode*) #1

declare dso_local i32 @drm_hdmi_avi_infoframe_colorspace(%struct.hdmi_avi_infoframe*, %struct.drm_connector_state*) #1

declare dso_local i32 @drm_hdmi_avi_infoframe_quant_range(%struct.hdmi_avi_infoframe*, %struct.drm_connector*, %struct.drm_display_mode*, i32) #1

declare dso_local i32 @drm_hdmi_avi_infoframe_content_type(%struct.hdmi_avi_infoframe*, %struct.drm_connector_state*) #1

declare dso_local i32 @hdmi_avi_infoframe_check(%struct.hdmi_avi_infoframe*) #1

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

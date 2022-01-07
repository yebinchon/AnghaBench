; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_lspcon.c_lspcon_set_infoframes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_lspcon.c_lspcon_set_infoframes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { i32 }
%struct.intel_crtc_state = type { i64, i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i32 }
%struct.drm_connector_state = type { i32 }
%union.hdmi_infoframe = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.intel_digital_port = type { i32 (%struct.intel_encoder*, %struct.intel_crtc_state.0*, i32, i32*, i64)*, %struct.intel_lspcon }
%struct.intel_crtc_state.0 = type opaque
%struct.intel_lspcon = type { i32 }

@VIDEO_DIP_DATA_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Writing infoframes while LSPCON disabled ?\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"couldn't fill AVI infoframe\0A\00", align 1
@INTEL_OUTPUT_FORMAT_YCBCR444 = common dso_local global i64 0, align 8
@HDMI_COLORSPACE_YUV420 = common dso_local global i32 0, align 4
@HDMI_COLORSPACE_YUV444 = common dso_local global i32 0, align 4
@HDMI_COLORSPACE_RGB = common dso_local global i32 0, align 4
@HDMI_QUANTIZATION_RANGE_LIMITED = common dso_local global i32 0, align 4
@HDMI_QUANTIZATION_RANGE_FULL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Failed to pack AVI IF\0A\00", align 1
@HDMI_INFOFRAME_TYPE_AVI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lspcon_set_infoframes(%struct.intel_encoder* %0, i32 %1, %struct.intel_crtc_state* %2, %struct.drm_connector_state* %3) #0 {
  %5 = alloca %struct.intel_encoder*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.intel_crtc_state*, align 8
  %8 = alloca %struct.drm_connector_state*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %union.hdmi_infoframe, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.intel_digital_port*, align 8
  %14 = alloca %struct.intel_lspcon*, align 8
  %15 = alloca %struct.drm_display_mode*, align 8
  %16 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.intel_crtc_state* %2, %struct.intel_crtc_state** %7, align 8
  store %struct.drm_connector_state* %3, %struct.drm_connector_state** %8, align 8
  %17 = load i32, i32* @VIDEO_DIP_DATA_SIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %11, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %12, align 8
  %21 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %22 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %21, i32 0, i32 0
  %23 = call %struct.intel_digital_port* @enc_to_dig_port(i32* %22)
  store %struct.intel_digital_port* %23, %struct.intel_digital_port** %13, align 8
  %24 = load %struct.intel_digital_port*, %struct.intel_digital_port** %13, align 8
  %25 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %24, i32 0, i32 1
  store %struct.intel_lspcon* %25, %struct.intel_lspcon** %14, align 8
  %26 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %27 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store %struct.drm_display_mode* %28, %struct.drm_display_mode** %15, align 8
  %29 = load %struct.intel_lspcon*, %struct.intel_lspcon** %14, align 8
  %30 = getelementptr inbounds %struct.intel_lspcon, %struct.intel_lspcon* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %4
  %34 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %16, align 4
  br label %104

35:                                               ; preds = %4
  %36 = bitcast %union.hdmi_infoframe* %10 to %struct.TYPE_5__*
  %37 = load %struct.drm_connector_state*, %struct.drm_connector_state** %8, align 8
  %38 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.drm_display_mode*, %struct.drm_display_mode** %15, align 8
  %41 = call i64 @drm_hdmi_avi_infoframe_from_display_mode(%struct.TYPE_5__* %36, i32 %39, %struct.drm_display_mode* %40)
  store i64 %41, i64* %9, align 8
  %42 = load i64, i64* %9, align 8
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %16, align 4
  br label %104

46:                                               ; preds = %35
  %47 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %48 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @INTEL_OUTPUT_FORMAT_YCBCR444, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %66

52:                                               ; preds = %46
  %53 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %54 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load i32, i32* @HDMI_COLORSPACE_YUV420, align 4
  %59 = bitcast %union.hdmi_infoframe* %10 to %struct.TYPE_5__*
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  br label %65

61:                                               ; preds = %52
  %62 = load i32, i32* @HDMI_COLORSPACE_YUV444, align 4
  %63 = bitcast %union.hdmi_infoframe* %10 to %struct.TYPE_5__*
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  br label %65

65:                                               ; preds = %61, %57
  br label %70

66:                                               ; preds = %46
  %67 = load i32, i32* @HDMI_COLORSPACE_RGB, align 4
  %68 = bitcast %union.hdmi_infoframe* %10 to %struct.TYPE_5__*
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %66, %65
  %71 = bitcast %union.hdmi_infoframe* %10 to %struct.TYPE_5__*
  %72 = load %struct.drm_connector_state*, %struct.drm_connector_state** %8, align 8
  %73 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.drm_display_mode*, %struct.drm_display_mode** %15, align 8
  %76 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %77 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %70
  %81 = load i32, i32* @HDMI_QUANTIZATION_RANGE_LIMITED, align 4
  br label %84

82:                                               ; preds = %70
  %83 = load i32, i32* @HDMI_QUANTIZATION_RANGE_FULL, align 4
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi i32 [ %81, %80 ], [ %83, %82 ]
  %86 = call i32 @drm_hdmi_avi_infoframe_quant_range(%struct.TYPE_5__* %71, i32 %74, %struct.drm_display_mode* %75, i32 %85)
  %87 = mul nuw i64 4, %18
  %88 = trunc i64 %87 to i32
  %89 = call i64 @hdmi_infoframe_pack(%union.hdmi_infoframe* %10, i32* %20, i32 %88)
  store i64 %89, i64* %9, align 8
  %90 = load i64, i64* %9, align 8
  %91 = icmp slt i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %84
  %93 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %16, align 4
  br label %104

94:                                               ; preds = %84
  %95 = load %struct.intel_digital_port*, %struct.intel_digital_port** %13, align 8
  %96 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %95, i32 0, i32 0
  %97 = load i32 (%struct.intel_encoder*, %struct.intel_crtc_state.0*, i32, i32*, i64)*, i32 (%struct.intel_encoder*, %struct.intel_crtc_state.0*, i32, i32*, i64)** %96, align 8
  %98 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %99 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %100 = bitcast %struct.intel_crtc_state* %99 to %struct.intel_crtc_state.0*
  %101 = load i32, i32* @HDMI_INFOFRAME_TYPE_AVI, align 4
  %102 = load i64, i64* %9, align 8
  %103 = call i32 %97(%struct.intel_encoder* %98, %struct.intel_crtc_state.0* %100, i32 %101, i32* %20, i64 %102)
  store i32 0, i32* %16, align 4
  br label %104

104:                                              ; preds = %94, %92, %44, %33
  %105 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %105)
  %106 = load i32, i32* %16, align 4
  switch i32 %106, label %108 [
    i32 0, label %107
    i32 1, label %107
  ]

107:                                              ; preds = %104, %104
  ret void

108:                                              ; preds = %104
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.intel_digital_port* @enc_to_dig_port(i32*) #2

declare dso_local i32 @DRM_ERROR(i8*) #2

declare dso_local i64 @drm_hdmi_avi_infoframe_from_display_mode(%struct.TYPE_5__*, i32, %struct.drm_display_mode*) #2

declare dso_local i32 @drm_hdmi_avi_infoframe_quant_range(%struct.TYPE_5__*, i32, %struct.drm_display_mode*, i32) #2

declare dso_local i64 @hdmi_infoframe_pack(%union.hdmi_infoframe*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

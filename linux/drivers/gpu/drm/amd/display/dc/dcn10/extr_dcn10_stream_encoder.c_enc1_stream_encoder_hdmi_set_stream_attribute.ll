; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_stream_encoder.c_enc1_stream_encoder_hdmi_set_stream_attribute.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_stream_encoder.c_enc1_stream_encoder_hdmi_set_stream_attribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stream_encoder = type { i32 }
%struct.dc_crtc_timing = type { i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.dcn10_stream_encoder = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 (%struct.TYPE_8__*, %struct.bp_encoder_control*)* }
%struct.bp_encoder_control = type { i32, i32, i32, i32, i32, i32, i32 }

@ENCODER_CONTROL_SETUP = common dso_local global i32 0, align 4
@SIGNAL_TYPE_HDMI_TYPE_A = common dso_local global i32 0, align 4
@LANE_COUNT_FOUR = common dso_local global i32 0, align 4
@BP_RESULT_OK = common dso_local global i64 0, align 8
@HDMI_CONTROL = common dso_local global i32 0, align 4
@HDMI_PACKET_GEN_VERSION = common dso_local global i32 0, align 4
@HDMI_KEEPOUT_MODE = common dso_local global i32 0, align 4
@HDMI_DEEP_COLOR_ENABLE = common dso_local global i32 0, align 4
@HDMI_DATA_SCRAMBLE_EN = common dso_local global i32 0, align 4
@HDMI_NO_EXTRA_NULL_PACKET_FILLED = common dso_local global i32 0, align 4
@HDMI_CLOCK_CHANNEL_RATE = common dso_local global i32 0, align 4
@HDMI_DEEP_COLOR_DEPTH = common dso_local global i32 0, align 4
@PIXEL_ENCODING_YCBCR422 = common dso_local global i32 0, align 4
@HDMI_CLOCK_CHANNEL_RATE_MORE_340M = common dso_local global i32 0, align 4
@HDMI_VBI_PACKET_CONTROL = common dso_local global i32 0, align 4
@HDMI_GC_CONT = common dso_local global i32 0, align 4
@HDMI_GC_SEND = common dso_local global i32 0, align 4
@HDMI_NULL_SEND = common dso_local global i32 0, align 4
@HDMI_INFOFRAME_CONTROL0 = common dso_local global i32 0, align 4
@HDMI_AUDIO_INFO_SEND = common dso_local global i32 0, align 4
@AFMT_INFOFRAME_CONTROL0 = common dso_local global i32 0, align 4
@AFMT_AUDIO_INFO_UPDATE = common dso_local global i32 0, align 4
@HDMI_INFOFRAME_CONTROL1 = common dso_local global i32 0, align 4
@HDMI_AUDIO_INFO_LINE = common dso_local global i32 0, align 4
@VBI_LINE_0 = common dso_local global i32 0, align 4
@HDMI_GC = common dso_local global i32 0, align 4
@HDMI_GC_AVMUTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @enc1_stream_encoder_hdmi_set_stream_attribute(%struct.stream_encoder* %0, %struct.dc_crtc_timing* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.stream_encoder*, align 8
  %6 = alloca %struct.dc_crtc_timing*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dcn10_stream_encoder*, align 8
  %10 = alloca %struct.bp_encoder_control, align 4
  store %struct.stream_encoder* %0, %struct.stream_encoder** %5, align 8
  store %struct.dc_crtc_timing* %1, %struct.dc_crtc_timing** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.stream_encoder*, %struct.stream_encoder** %5, align 8
  %12 = call %struct.dcn10_stream_encoder* @DCN10STRENC_FROM_STRENC(%struct.stream_encoder* %11)
  store %struct.dcn10_stream_encoder* %12, %struct.dcn10_stream_encoder** %9, align 8
  %13 = bitcast %struct.bp_encoder_control* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 28, i1 false)
  %14 = load i32, i32* @ENCODER_CONTROL_SETUP, align 4
  %15 = getelementptr inbounds %struct.bp_encoder_control, %struct.bp_encoder_control* %10, i32 0, i32 5
  store i32 %14, i32* %15, align 4
  %16 = load %struct.dcn10_stream_encoder*, %struct.dcn10_stream_encoder** %9, align 8
  %17 = getelementptr inbounds %struct.dcn10_stream_encoder, %struct.dcn10_stream_encoder* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = getelementptr inbounds %struct.bp_encoder_control, %struct.bp_encoder_control* %10, i32 0, i32 4
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @SIGNAL_TYPE_HDMI_TYPE_A, align 4
  %22 = getelementptr inbounds %struct.bp_encoder_control, %struct.bp_encoder_control* %10, i32 0, i32 3
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* %8, align 4
  %24 = getelementptr inbounds %struct.bp_encoder_control, %struct.bp_encoder_control* %10, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %7, align 4
  %26 = getelementptr inbounds %struct.bp_encoder_control, %struct.bp_encoder_control* %10, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* @LANE_COUNT_FOUR, align 4
  %28 = getelementptr inbounds %struct.bp_encoder_control, %struct.bp_encoder_control* %10, i32 0, i32 2
  store i32 %27, i32* %28, align 4
  %29 = load %struct.dcn10_stream_encoder*, %struct.dcn10_stream_encoder** %9, align 8
  %30 = getelementptr inbounds %struct.dcn10_stream_encoder, %struct.dcn10_stream_encoder* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i64 (%struct.TYPE_8__*, %struct.bp_encoder_control*)*, i64 (%struct.TYPE_8__*, %struct.bp_encoder_control*)** %35, align 8
  %37 = load %struct.dcn10_stream_encoder*, %struct.dcn10_stream_encoder** %9, align 8
  %38 = getelementptr inbounds %struct.dcn10_stream_encoder, %struct.dcn10_stream_encoder* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = call i64 %36(%struct.TYPE_8__* %40, %struct.bp_encoder_control* %10)
  %42 = load i64, i64* @BP_RESULT_OK, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %4
  br label %145

45:                                               ; preds = %4
  %46 = load %struct.dcn10_stream_encoder*, %struct.dcn10_stream_encoder** %9, align 8
  %47 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %6, align 8
  %48 = call i32 @enc1_stream_encoder_set_stream_attribute_helper(%struct.dcn10_stream_encoder* %46, %struct.dc_crtc_timing* %47)
  %49 = load i32, i32* @HDMI_CONTROL, align 4
  %50 = load i32, i32* @HDMI_PACKET_GEN_VERSION, align 4
  %51 = load i32, i32* @HDMI_KEEPOUT_MODE, align 4
  %52 = load i32, i32* @HDMI_DEEP_COLOR_ENABLE, align 4
  %53 = load i32, i32* @HDMI_DATA_SCRAMBLE_EN, align 4
  %54 = load i32, i32* @HDMI_NO_EXTRA_NULL_PACKET_FILLED, align 4
  %55 = load i32, i32* @HDMI_CLOCK_CHANNEL_RATE, align 4
  %56 = call i32 @REG_UPDATE_6(i32 %49, i32 %50, i32 1, i32 %51, i32 1, i32 %52, i32 0, i32 %53, i32 0, i32 %54, i32 1, i32 %55, i32 0)
  %57 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %6, align 8
  %58 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  switch i32 %59, label %103 [
    i32 128, label %60
    i32 131, label %64
    i32 130, label %81
    i32 129, label %98
  ]

60:                                               ; preds = %45
  %61 = load i32, i32* @HDMI_CONTROL, align 4
  %62 = load i32, i32* @HDMI_DEEP_COLOR_DEPTH, align 4
  %63 = call i32 @REG_UPDATE(i32 %61, i32 %62, i32 0)
  br label %104

64:                                               ; preds = %45
  %65 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %6, align 8
  %66 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @PIXEL_ENCODING_YCBCR422, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %64
  %71 = load i32, i32* @HDMI_CONTROL, align 4
  %72 = load i32, i32* @HDMI_DEEP_COLOR_DEPTH, align 4
  %73 = load i32, i32* @HDMI_DEEP_COLOR_ENABLE, align 4
  %74 = call i32 @REG_UPDATE_2(i32 %71, i32 %72, i32 1, i32 %73, i32 0)
  br label %80

75:                                               ; preds = %64
  %76 = load i32, i32* @HDMI_CONTROL, align 4
  %77 = load i32, i32* @HDMI_DEEP_COLOR_DEPTH, align 4
  %78 = load i32, i32* @HDMI_DEEP_COLOR_ENABLE, align 4
  %79 = call i32 @REG_UPDATE_2(i32 %76, i32 %77, i32 1, i32 %78, i32 1)
  br label %80

80:                                               ; preds = %75, %70
  br label %104

81:                                               ; preds = %45
  %82 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %6, align 8
  %83 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @PIXEL_ENCODING_YCBCR422, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %81
  %88 = load i32, i32* @HDMI_CONTROL, align 4
  %89 = load i32, i32* @HDMI_DEEP_COLOR_DEPTH, align 4
  %90 = load i32, i32* @HDMI_DEEP_COLOR_ENABLE, align 4
  %91 = call i32 @REG_UPDATE_2(i32 %88, i32 %89, i32 2, i32 %90, i32 0)
  br label %97

92:                                               ; preds = %81
  %93 = load i32, i32* @HDMI_CONTROL, align 4
  %94 = load i32, i32* @HDMI_DEEP_COLOR_DEPTH, align 4
  %95 = load i32, i32* @HDMI_DEEP_COLOR_ENABLE, align 4
  %96 = call i32 @REG_UPDATE_2(i32 %93, i32 %94, i32 2, i32 %95, i32 1)
  br label %97

97:                                               ; preds = %92, %87
  br label %104

98:                                               ; preds = %45
  %99 = load i32, i32* @HDMI_CONTROL, align 4
  %100 = load i32, i32* @HDMI_DEEP_COLOR_DEPTH, align 4
  %101 = load i32, i32* @HDMI_DEEP_COLOR_ENABLE, align 4
  %102 = call i32 @REG_UPDATE_2(i32 %99, i32 %100, i32 3, i32 %101, i32 1)
  br label %104

103:                                              ; preds = %45
  br label %104

104:                                              ; preds = %103, %98, %97, %80, %60
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* @HDMI_CLOCK_CHANNEL_RATE_MORE_340M, align 4
  %107 = icmp sge i32 %105, %106
  br i1 %107, label %108, label %113

108:                                              ; preds = %104
  %109 = load i32, i32* @HDMI_CONTROL, align 4
  %110 = load i32, i32* @HDMI_DATA_SCRAMBLE_EN, align 4
  %111 = load i32, i32* @HDMI_CLOCK_CHANNEL_RATE, align 4
  %112 = call i32 @REG_UPDATE_2(i32 %109, i32 %110, i32 1, i32 %111, i32 1)
  br label %125

113:                                              ; preds = %104
  %114 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %6, align 8
  %115 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %113
  %120 = load i32, i32* @HDMI_CONTROL, align 4
  %121 = load i32, i32* @HDMI_DATA_SCRAMBLE_EN, align 4
  %122 = load i32, i32* @HDMI_CLOCK_CHANNEL_RATE, align 4
  %123 = call i32 @REG_UPDATE_2(i32 %120, i32 %121, i32 1, i32 %122, i32 0)
  br label %124

124:                                              ; preds = %119, %113
  br label %125

125:                                              ; preds = %124, %108
  %126 = load i32, i32* @HDMI_VBI_PACKET_CONTROL, align 4
  %127 = load i32, i32* @HDMI_GC_CONT, align 4
  %128 = load i32, i32* @HDMI_GC_SEND, align 4
  %129 = load i32, i32* @HDMI_NULL_SEND, align 4
  %130 = call i32 @REG_UPDATE_3(i32 %126, i32 %127, i32 1, i32 %128, i32 1, i32 %129, i32 1)
  %131 = load i32, i32* @HDMI_INFOFRAME_CONTROL0, align 4
  %132 = load i32, i32* @HDMI_AUDIO_INFO_SEND, align 4
  %133 = call i32 @REG_UPDATE(i32 %131, i32 %132, i32 1)
  %134 = load i32, i32* @AFMT_INFOFRAME_CONTROL0, align 4
  %135 = load i32, i32* @AFMT_AUDIO_INFO_UPDATE, align 4
  %136 = call i32 @REG_UPDATE(i32 %134, i32 %135, i32 1)
  %137 = load i32, i32* @HDMI_INFOFRAME_CONTROL1, align 4
  %138 = load i32, i32* @HDMI_AUDIO_INFO_LINE, align 4
  %139 = load i32, i32* @VBI_LINE_0, align 4
  %140 = add nsw i32 %139, 2
  %141 = call i32 @REG_UPDATE(i32 %137, i32 %138, i32 %140)
  %142 = load i32, i32* @HDMI_GC, align 4
  %143 = load i32, i32* @HDMI_GC_AVMUTE, align 4
  %144 = call i32 @REG_UPDATE(i32 %142, i32 %143, i32 0)
  br label %145

145:                                              ; preds = %125, %44
  ret void
}

declare dso_local %struct.dcn10_stream_encoder* @DCN10STRENC_FROM_STRENC(%struct.stream_encoder*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @enc1_stream_encoder_set_stream_attribute_helper(%struct.dcn10_stream_encoder*, %struct.dc_crtc_timing*) #1

declare dso_local i32 @REG_UPDATE_6(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE_2(i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE_3(i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

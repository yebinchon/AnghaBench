; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_stream_encoder.c_dce110_stream_encoder_hdmi_set_stream_attribute.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_stream_encoder.c_dce110_stream_encoder_hdmi_set_stream_attribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stream_encoder = type { i32 }
%struct.dc_crtc_timing = type { i32, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i64 }
%struct.dce110_stream_encoder = type { %struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 (%struct.TYPE_12__*, %struct.bp_encoder_control*)* }
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stream_encoder*, %struct.dc_crtc_timing*, i32, i32)* @dce110_stream_encoder_hdmi_set_stream_attribute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce110_stream_encoder_hdmi_set_stream_attribute(%struct.stream_encoder* %0, %struct.dc_crtc_timing* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.stream_encoder*, align 8
  %6 = alloca %struct.dc_crtc_timing*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dce110_stream_encoder*, align 8
  %10 = alloca %struct.bp_encoder_control, align 4
  store %struct.stream_encoder* %0, %struct.stream_encoder** %5, align 8
  store %struct.dc_crtc_timing* %1, %struct.dc_crtc_timing** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.stream_encoder*, %struct.stream_encoder** %5, align 8
  %12 = call %struct.dce110_stream_encoder* @DCE110STRENC_FROM_STRENC(%struct.stream_encoder* %11)
  store %struct.dce110_stream_encoder* %12, %struct.dce110_stream_encoder** %9, align 8
  %13 = bitcast %struct.bp_encoder_control* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 28, i1 false)
  %14 = load i32, i32* @ENCODER_CONTROL_SETUP, align 4
  %15 = getelementptr inbounds %struct.bp_encoder_control, %struct.bp_encoder_control* %10, i32 0, i32 5
  store i32 %14, i32* %15, align 4
  %16 = load %struct.dce110_stream_encoder*, %struct.dce110_stream_encoder** %9, align 8
  %17 = getelementptr inbounds %struct.dce110_stream_encoder, %struct.dce110_stream_encoder* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
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
  %29 = load %struct.dce110_stream_encoder*, %struct.dce110_stream_encoder** %9, align 8
  %30 = getelementptr inbounds %struct.dce110_stream_encoder, %struct.dce110_stream_encoder* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i64 (%struct.TYPE_12__*, %struct.bp_encoder_control*)*, i64 (%struct.TYPE_12__*, %struct.bp_encoder_control*)** %35, align 8
  %37 = load %struct.dce110_stream_encoder*, %struct.dce110_stream_encoder** %9, align 8
  %38 = getelementptr inbounds %struct.dce110_stream_encoder, %struct.dce110_stream_encoder* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %39, align 8
  %41 = call i64 %36(%struct.TYPE_12__* %40, %struct.bp_encoder_control* %10)
  %42 = load i64, i64* @BP_RESULT_OK, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %4
  br label %174

45:                                               ; preds = %4
  %46 = load %struct.dce110_stream_encoder*, %struct.dce110_stream_encoder** %9, align 8
  %47 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %6, align 8
  %48 = call i32 @dce110_stream_encoder_set_stream_attribute_helper(%struct.dce110_stream_encoder* %46, %struct.dc_crtc_timing* %47)
  %49 = load %struct.dce110_stream_encoder*, %struct.dce110_stream_encoder** %9, align 8
  %50 = getelementptr inbounds %struct.dce110_stream_encoder, %struct.dce110_stream_encoder* %49, i32 0, i32 0
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %45
  %56 = load i32, i32* @HDMI_CONTROL, align 4
  %57 = load i32, i32* @HDMI_PACKET_GEN_VERSION, align 4
  %58 = load i32, i32* @HDMI_KEEPOUT_MODE, align 4
  %59 = load i32, i32* @HDMI_DEEP_COLOR_ENABLE, align 4
  %60 = call i32 @REG_UPDATE_3(i32 %56, i32 %57, i32 1, i32 %58, i32 1, i32 %59, i32 0)
  br label %77

61:                                               ; preds = %45
  %62 = load %struct.dce110_stream_encoder*, %struct.dce110_stream_encoder** %9, align 8
  %63 = getelementptr inbounds %struct.dce110_stream_encoder, %struct.dce110_stream_encoder* %62, i32 0, i32 1
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %61
  %69 = load i32, i32* @HDMI_CONTROL, align 4
  %70 = load i32, i32* @HDMI_PACKET_GEN_VERSION, align 4
  %71 = load i32, i32* @HDMI_KEEPOUT_MODE, align 4
  %72 = load i32, i32* @HDMI_DEEP_COLOR_ENABLE, align 4
  %73 = load i32, i32* @HDMI_DATA_SCRAMBLE_EN, align 4
  %74 = load i32, i32* @HDMI_CLOCK_CHANNEL_RATE, align 4
  %75 = call i32 @REG_UPDATE_5(i32 %69, i32 %70, i32 1, i32 %71, i32 1, i32 %72, i32 0, i32 %73, i32 0, i32 %74, i32 0)
  br label %76

76:                                               ; preds = %68, %61
  br label %77

77:                                               ; preds = %76, %55
  %78 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %6, align 8
  %79 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  switch i32 %80, label %124 [
    i32 128, label %81
    i32 131, label %85
    i32 130, label %102
    i32 129, label %119
  ]

81:                                               ; preds = %77
  %82 = load i32, i32* @HDMI_CONTROL, align 4
  %83 = load i32, i32* @HDMI_DEEP_COLOR_DEPTH, align 4
  %84 = call i32 @REG_UPDATE(i32 %82, i32 %83, i32 0)
  br label %125

85:                                               ; preds = %77
  %86 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %6, align 8
  %87 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @PIXEL_ENCODING_YCBCR422, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %85
  %92 = load i32, i32* @HDMI_CONTROL, align 4
  %93 = load i32, i32* @HDMI_DEEP_COLOR_DEPTH, align 4
  %94 = load i32, i32* @HDMI_DEEP_COLOR_ENABLE, align 4
  %95 = call i32 @REG_UPDATE_2(i32 %92, i32 %93, i32 1, i32 %94, i32 0)
  br label %101

96:                                               ; preds = %85
  %97 = load i32, i32* @HDMI_CONTROL, align 4
  %98 = load i32, i32* @HDMI_DEEP_COLOR_DEPTH, align 4
  %99 = load i32, i32* @HDMI_DEEP_COLOR_ENABLE, align 4
  %100 = call i32 @REG_UPDATE_2(i32 %97, i32 %98, i32 1, i32 %99, i32 1)
  br label %101

101:                                              ; preds = %96, %91
  br label %125

102:                                              ; preds = %77
  %103 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %6, align 8
  %104 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @PIXEL_ENCODING_YCBCR422, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %113

108:                                              ; preds = %102
  %109 = load i32, i32* @HDMI_CONTROL, align 4
  %110 = load i32, i32* @HDMI_DEEP_COLOR_DEPTH, align 4
  %111 = load i32, i32* @HDMI_DEEP_COLOR_ENABLE, align 4
  %112 = call i32 @REG_UPDATE_2(i32 %109, i32 %110, i32 2, i32 %111, i32 0)
  br label %118

113:                                              ; preds = %102
  %114 = load i32, i32* @HDMI_CONTROL, align 4
  %115 = load i32, i32* @HDMI_DEEP_COLOR_DEPTH, align 4
  %116 = load i32, i32* @HDMI_DEEP_COLOR_ENABLE, align 4
  %117 = call i32 @REG_UPDATE_2(i32 %114, i32 %115, i32 2, i32 %116, i32 1)
  br label %118

118:                                              ; preds = %113, %108
  br label %125

119:                                              ; preds = %77
  %120 = load i32, i32* @HDMI_CONTROL, align 4
  %121 = load i32, i32* @HDMI_DEEP_COLOR_DEPTH, align 4
  %122 = load i32, i32* @HDMI_DEEP_COLOR_ENABLE, align 4
  %123 = call i32 @REG_UPDATE_2(i32 %120, i32 %121, i32 3, i32 %122, i32 1)
  br label %125

124:                                              ; preds = %77
  br label %125

125:                                              ; preds = %124, %119, %118, %101, %81
  %126 = load %struct.dce110_stream_encoder*, %struct.dce110_stream_encoder** %9, align 8
  %127 = getelementptr inbounds %struct.dce110_stream_encoder, %struct.dce110_stream_encoder* %126, i32 0, i32 0
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %154

132:                                              ; preds = %125
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* @HDMI_CLOCK_CHANNEL_RATE_MORE_340M, align 4
  %135 = icmp sge i32 %133, %134
  br i1 %135, label %136, label %141

136:                                              ; preds = %132
  %137 = load i32, i32* @HDMI_CONTROL, align 4
  %138 = load i32, i32* @HDMI_DATA_SCRAMBLE_EN, align 4
  %139 = load i32, i32* @HDMI_CLOCK_CHANNEL_RATE, align 4
  %140 = call i32 @REG_UPDATE_2(i32 %137, i32 %138, i32 1, i32 %139, i32 1)
  br label %153

141:                                              ; preds = %132
  %142 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %6, align 8
  %143 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %141
  %148 = load i32, i32* @HDMI_CONTROL, align 4
  %149 = load i32, i32* @HDMI_DATA_SCRAMBLE_EN, align 4
  %150 = load i32, i32* @HDMI_CLOCK_CHANNEL_RATE, align 4
  %151 = call i32 @REG_UPDATE_2(i32 %148, i32 %149, i32 1, i32 %150, i32 0)
  br label %152

152:                                              ; preds = %147, %141
  br label %153

153:                                              ; preds = %152, %136
  br label %154

154:                                              ; preds = %153, %125
  %155 = load i32, i32* @HDMI_VBI_PACKET_CONTROL, align 4
  %156 = load i32, i32* @HDMI_GC_CONT, align 4
  %157 = load i32, i32* @HDMI_GC_SEND, align 4
  %158 = load i32, i32* @HDMI_NULL_SEND, align 4
  %159 = call i32 @REG_UPDATE_3(i32 %155, i32 %156, i32 1, i32 %157, i32 1, i32 %158, i32 1)
  %160 = load i32, i32* @HDMI_INFOFRAME_CONTROL0, align 4
  %161 = load i32, i32* @HDMI_AUDIO_INFO_SEND, align 4
  %162 = call i32 @REG_UPDATE(i32 %160, i32 %161, i32 1)
  %163 = load i32, i32* @AFMT_INFOFRAME_CONTROL0, align 4
  %164 = load i32, i32* @AFMT_AUDIO_INFO_UPDATE, align 4
  %165 = call i32 @REG_UPDATE(i32 %163, i32 %164, i32 1)
  %166 = load i32, i32* @HDMI_INFOFRAME_CONTROL1, align 4
  %167 = load i32, i32* @HDMI_AUDIO_INFO_LINE, align 4
  %168 = load i32, i32* @VBI_LINE_0, align 4
  %169 = add nsw i32 %168, 2
  %170 = call i32 @REG_UPDATE(i32 %166, i32 %167, i32 %169)
  %171 = load i32, i32* @HDMI_GC, align 4
  %172 = load i32, i32* @HDMI_GC_AVMUTE, align 4
  %173 = call i32 @REG_UPDATE(i32 %171, i32 %172, i32 0)
  br label %174

174:                                              ; preds = %154, %44
  ret void
}

declare dso_local %struct.dce110_stream_encoder* @DCE110STRENC_FROM_STRENC(%struct.stream_encoder*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @dce110_stream_encoder_set_stream_attribute_helper(%struct.dce110_stream_encoder*, %struct.dc_crtc_timing*) #1

declare dso_local i32 @REG_UPDATE_3(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE_5(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE_2(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

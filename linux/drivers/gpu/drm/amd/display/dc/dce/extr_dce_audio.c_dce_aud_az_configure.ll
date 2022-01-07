; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_audio.c_dce_aud_az_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_audio.c_dce_aud_az_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio = type { i32 }
%struct.audio_crtc_info = type { i32 }
%struct.audio_info = type { i32, i32, i8*, i32*, i32, i32, %struct.audio_mode*, %struct.TYPE_5__ }
%struct.audio_mode = type { i32, i32, i32, i32, %union.audio_sample_rates }
%union.audio_sample_rates = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.dce_audio = type { i32 }
%struct.TYPE_6__ = type { i32 }

@AZALIA_F0_CODEC_PIN_CONTROL_HOT_PLUG_CONTROL = common dso_local global i32 0, align 4
@CLOCK_GATING_DISABLE = common dso_local global i32 0, align 4
@AZALIA_F0_CODEC_PIN_CONTROL_CHANNEL_SPEAKER = common dso_local global i32 0, align 4
@SPEAKER_ALLOCATION = common dso_local global i32 0, align 4
@LFE_PLAYBACK_LEVEL = common dso_local global i32 0, align 4
@HDMI_CONNECTION = common dso_local global i32 0, align 4
@DP_CONNECTION = common dso_local global i32 0, align 4
@EXTRA_CONNECTION_INFO = common dso_local global i32 0, align 4
@AUDIO_FORMAT_CODE_COUNT = common dso_local global i32 0, align 4
@AUDIO_FORMAT_CODE_FIRST = common dso_local global i32 0, align 4
@AUDIO_FORMAT_CODE_1BITAUDIO = common dso_local global i32 0, align 4
@AZALIA_F0_CODEC_PIN_CONTROL_AUDIO_DESCRIPTOR0 = common dso_local global i32 0, align 4
@SUPPORTED_FREQUENCIES_STEREO = common dso_local global i32 0, align 4
@MAX_CHANNELS = common dso_local global i32 0, align 4
@SUPPORTED_FREQUENCIES = common dso_local global i32 0, align 4
@DESCRIPTOR_BYTE_2 = common dso_local global i32 0, align 4
@AZALIA_F0_CODEC_FUNCTION_PARAMETER_STREAM_FORMATS = common dso_local global i32 0, align 4
@AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO0 = common dso_local global i32 0, align 4
@MANUFACTURER_ID = common dso_local global i32 0, align 4
@PRODUCT_ID = common dso_local global i32 0, align 4
@MAX_HW_AUDIO_INFO_DISPLAY_NAME_SIZE_IN_CHARS = common dso_local global i32 0, align 4
@AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO1 = common dso_local global i32 0, align 4
@SINK_DESCRIPTION_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"\0A\09AUDIO:az_configure: index: %u data, 0x%x, displayName %s: \0A\00", align 1
@AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO2 = common dso_local global i32 0, align 4
@PORT_ID0 = common dso_local global i32 0, align 4
@AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO3 = common dso_local global i32 0, align 4
@PORT_ID1 = common dso_local global i32 0, align 4
@AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO4 = common dso_local global i32 0, align 4
@DESCRIPTION0 = common dso_local global i32 0, align 4
@DESCRIPTION1 = common dso_local global i32 0, align 4
@DESCRIPTION2 = common dso_local global i32 0, align 4
@DESCRIPTION3 = common dso_local global i32 0, align 4
@AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO5 = common dso_local global i32 0, align 4
@DESCRIPTION4 = common dso_local global i32 0, align 4
@DESCRIPTION5 = common dso_local global i32 0, align 4
@DESCRIPTION6 = common dso_local global i32 0, align 4
@DESCRIPTION7 = common dso_local global i32 0, align 4
@AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO6 = common dso_local global i32 0, align 4
@DESCRIPTION8 = common dso_local global i32 0, align 4
@DESCRIPTION9 = common dso_local global i32 0, align 4
@DESCRIPTION10 = common dso_local global i32 0, align 4
@DESCRIPTION11 = common dso_local global i32 0, align 4
@AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO7 = common dso_local global i32 0, align 4
@DESCRIPTION12 = common dso_local global i32 0, align 4
@DESCRIPTION13 = common dso_local global i32 0, align 4
@DESCRIPTION14 = common dso_local global i32 0, align 4
@DESCRIPTION15 = common dso_local global i32 0, align 4
@AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO8 = common dso_local global i32 0, align 4
@DESCRIPTION16 = common dso_local global i32 0, align 4
@DESCRIPTION17 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce_aud_az_configure(%struct.audio* %0, i32 %1, %struct.audio_crtc_info* %2, %struct.audio_info* %3) #0 {
  %5 = alloca %struct.audio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.audio_crtc_info*, align 8
  %8 = alloca %struct.audio_info*, align 8
  %9 = alloca %struct.dce_audio*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %union.audio_sample_rates, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.audio_mode*, align 8
  %20 = alloca %union.audio_sample_rates, align 4
  %21 = alloca i32, align 4
  store %struct.audio* %0, %struct.audio** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.audio_crtc_info* %2, %struct.audio_crtc_info** %7, align 8
  store %struct.audio_info* %3, %struct.audio_info** %8, align 8
  %22 = load %struct.audio*, %struct.audio** %5, align 8
  %23 = call %struct.dce_audio* @DCE_AUD(%struct.audio* %22)
  store %struct.dce_audio* %23, %struct.dce_audio** %9, align 8
  %24 = load %struct.audio_info*, %struct.audio_info** %8, align 8
  %25 = getelementptr inbounds %struct.audio_info, %struct.audio_info* %24, i32 0, i32 7
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %18, align 4
  %29 = load i32, i32* @AZALIA_F0_CODEC_PIN_CONTROL_HOT_PLUG_CONTROL, align 4
  %30 = call i32 @AZ_REG_READ(i32 %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @AZALIA_F0_CODEC_PIN_CONTROL_HOT_PLUG_CONTROL, align 4
  %33 = load i32, i32* @CLOCK_GATING_DISABLE, align 4
  %34 = call i32 @set_reg_field_value(i32 %31, i32 1, i32 %32, i32 %33)
  %35 = load i32, i32* @AZALIA_F0_CODEC_PIN_CONTROL_HOT_PLUG_CONTROL, align 4
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @AZ_REG_WRITE(i32 %35, i32 %36)
  %38 = load i32, i32* @AZALIA_F0_CODEC_PIN_CONTROL_CHANNEL_SPEAKER, align 4
  %39 = call i32 @AZ_REG_READ(i32 %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @AZALIA_F0_CODEC_PIN_CONTROL_CHANNEL_SPEAKER, align 4
  %43 = load i32, i32* @SPEAKER_ALLOCATION, align 4
  %44 = call i32 @set_reg_field_value(i32 %40, i32 %41, i32 %42, i32 %43)
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @AZALIA_F0_CODEC_PIN_CONTROL_CHANNEL_SPEAKER, align 4
  %47 = load i32, i32* @LFE_PLAYBACK_LEVEL, align 4
  %48 = call i32 @set_reg_field_value(i32 %45, i32 0, i32 %46, i32 %47)
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @AZALIA_F0_CODEC_PIN_CONTROL_CHANNEL_SPEAKER, align 4
  %51 = load i32, i32* @HDMI_CONNECTION, align 4
  %52 = call i32 @set_reg_field_value(i32 %49, i32 0, i32 %50, i32 %51)
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @AZALIA_F0_CODEC_PIN_CONTROL_CHANNEL_SPEAKER, align 4
  %55 = load i32, i32* @DP_CONNECTION, align 4
  %56 = call i32 @set_reg_field_value(i32 %53, i32 0, i32 %54, i32 %55)
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @AZALIA_F0_CODEC_PIN_CONTROL_CHANNEL_SPEAKER, align 4
  %59 = load i32, i32* @EXTRA_CONNECTION_INFO, align 4
  %60 = call i32 @get_reg_field_value(i32 %57, i32 %58, i32 %59)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = and i32 %61, -2
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* @AZALIA_F0_CODEC_PIN_CONTROL_CHANNEL_SPEAKER, align 4
  %66 = load i32, i32* @EXTRA_CONNECTION_INFO, align 4
  %67 = call i32 @set_reg_field_value(i32 %63, i32 %64, i32 %65, i32 %66)
  %68 = load i32, i32* %6, align 4
  switch i32 %68, label %79 [
    i32 128, label %69
    i32 129, label %74
    i32 131, label %74
    i32 130, label %74
  ]

69:                                               ; preds = %4
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* @AZALIA_F0_CODEC_PIN_CONTROL_CHANNEL_SPEAKER, align 4
  %72 = load i32, i32* @HDMI_CONNECTION, align 4
  %73 = call i32 @set_reg_field_value(i32 %70, i32 1, i32 %71, i32 %72)
  br label %81

74:                                               ; preds = %4, %4, %4
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* @AZALIA_F0_CODEC_PIN_CONTROL_CHANNEL_SPEAKER, align 4
  %77 = load i32, i32* @DP_CONNECTION, align 4
  %78 = call i32 @set_reg_field_value(i32 %75, i32 1, i32 %76, i32 %77)
  br label %81

79:                                               ; preds = %4
  %80 = call i32 (...) @BREAK_TO_DEBUGGER()
  br label %81

81:                                               ; preds = %79, %74, %69
  %82 = load i32, i32* @AZALIA_F0_CODEC_PIN_CONTROL_CHANNEL_SPEAKER, align 4
  %83 = load i32, i32* %11, align 4
  %84 = call i32 @AZ_REG_WRITE(i32 %82, i32 %83)
  store i32 0, i32* %14, align 4
  br label %85

85:                                               ; preds = %168, %81
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* @AUDIO_FORMAT_CODE_COUNT, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %171

89:                                               ; preds = %85
  %90 = load i32, i32* @AUDIO_FORMAT_CODE_FIRST, align 4
  %91 = load i32, i32* %14, align 4
  %92 = add nsw i32 %90, %91
  store i32 %92, i32* %13, align 4
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* @AUDIO_FORMAT_CODE_1BITAUDIO, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %99, label %96

96:                                               ; preds = %89
  %97 = load i32, i32* %13, align 4
  %98 = icmp eq i32 %97, 136
  br i1 %98, label %99, label %100

99:                                               ; preds = %96, %89
  br label %168

100:                                              ; preds = %96
  store i32 0, i32* %11, align 4
  %101 = load %struct.audio_info*, %struct.audio_info** %8, align 8
  %102 = load i32, i32* %13, align 4
  %103 = call i64 @is_audio_format_supported(%struct.audio_info* %101, i32 %102, i32* %15)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %162

105:                                              ; preds = %100
  %106 = load %struct.audio_info*, %struct.audio_info** %8, align 8
  %107 = getelementptr inbounds %struct.audio_info, %struct.audio_info* %106, i32 0, i32 6
  %108 = load %struct.audio_mode*, %struct.audio_mode** %107, align 8
  %109 = load i32, i32* %15, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.audio_mode, %struct.audio_mode* %108, i64 %110
  store %struct.audio_mode* %111, %struct.audio_mode** %19, align 8
  %112 = load %struct.audio_mode*, %struct.audio_mode** %19, align 8
  %113 = getelementptr inbounds %struct.audio_mode, %struct.audio_mode* %112, i32 0, i32 4
  %114 = bitcast %union.audio_sample_rates* %20 to i8*
  %115 = bitcast %union.audio_sample_rates* %113 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %114, i8* align 4 %115, i64 4, i1 false)
  %116 = load %struct.audio_mode*, %struct.audio_mode** %19, align 8
  %117 = getelementptr inbounds %struct.audio_mode, %struct.audio_mode* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %21, align 4
  %119 = load i32, i32* %13, align 4
  switch i32 %119, label %141 [
    i32 134, label %120
    i32 138, label %136
    i32 137, label %137
    i32 135, label %137
    i32 133, label %137
    i32 136, label %137
    i32 132, label %137
  ]

120:                                              ; preds = %105
  %121 = load %struct.audio_crtc_info*, %struct.audio_crtc_info** %7, align 8
  %122 = load %struct.audio_mode*, %struct.audio_mode** %19, align 8
  %123 = getelementptr inbounds %struct.audio_mode, %struct.audio_mode* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %6, align 4
  %126 = call i32 @check_audio_bandwidth(%struct.audio_crtc_info* %121, i32 %124, i32 %125, %union.audio_sample_rates* %20)
  %127 = load %struct.audio_mode*, %struct.audio_mode** %19, align 8
  %128 = getelementptr inbounds %struct.audio_mode, %struct.audio_mode* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %21, align 4
  %130 = load i32, i32* %11, align 4
  %131 = bitcast %union.audio_sample_rates* %20 to i32*
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @AZALIA_F0_CODEC_PIN_CONTROL_AUDIO_DESCRIPTOR0, align 4
  %134 = load i32, i32* @SUPPORTED_FREQUENCIES_STEREO, align 4
  %135 = call i32 @set_reg_field_value(i32 %130, i32 %132, i32 %133, i32 %134)
  br label %142

136:                                              ; preds = %105
  store i32 1, i32* %16, align 4
  br label %142

137:                                              ; preds = %105, %105, %105, %105, %105
  %138 = load %struct.audio_mode*, %struct.audio_mode** %19, align 8
  %139 = getelementptr inbounds %struct.audio_mode, %struct.audio_mode* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %21, align 4
  br label %142

141:                                              ; preds = %105
  br label %142

142:                                              ; preds = %141, %137, %136, %120
  %143 = load i32, i32* %11, align 4
  %144 = load %struct.audio_mode*, %struct.audio_mode** %19, align 8
  %145 = getelementptr inbounds %struct.audio_mode, %struct.audio_mode* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = sub nsw i32 %146, 1
  %148 = load i32, i32* @AZALIA_F0_CODEC_PIN_CONTROL_AUDIO_DESCRIPTOR0, align 4
  %149 = load i32, i32* @MAX_CHANNELS, align 4
  %150 = call i32 @set_reg_field_value(i32 %143, i32 %147, i32 %148, i32 %149)
  %151 = load i32, i32* %11, align 4
  %152 = bitcast %union.audio_sample_rates* %20 to i32*
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @AZALIA_F0_CODEC_PIN_CONTROL_AUDIO_DESCRIPTOR0, align 4
  %155 = load i32, i32* @SUPPORTED_FREQUENCIES, align 4
  %156 = call i32 @set_reg_field_value(i32 %151, i32 %153, i32 %154, i32 %155)
  %157 = load i32, i32* %11, align 4
  %158 = load i32, i32* %21, align 4
  %159 = load i32, i32* @AZALIA_F0_CODEC_PIN_CONTROL_AUDIO_DESCRIPTOR0, align 4
  %160 = load i32, i32* @DESCRIPTOR_BYTE_2, align 4
  %161 = call i32 @set_reg_field_value(i32 %157, i32 %158, i32 %159, i32 %160)
  br label %162

162:                                              ; preds = %142, %100
  %163 = load i32, i32* @AZALIA_F0_CODEC_PIN_CONTROL_AUDIO_DESCRIPTOR0, align 4
  %164 = load i32, i32* %14, align 4
  %165 = add nsw i32 %163, %164
  %166 = load i32, i32* %11, align 4
  %167 = call i32 @AZ_REG_WRITE(i32 %165, i32 %166)
  br label %168

168:                                              ; preds = %162, %99
  %169 = load i32, i32* %14, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %14, align 4
  br label %85

171:                                              ; preds = %85
  %172 = load i32, i32* %16, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %171
  %175 = load i32, i32* @AZALIA_F0_CODEC_FUNCTION_PARAMETER_STREAM_FORMATS, align 4
  %176 = call i32 @REG_WRITE(i32 %175, i32 5)
  br label %177

177:                                              ; preds = %174, %171
  %178 = bitcast %union.audio_sample_rates* %17 to i32*
  store i32 0, i32* %178, align 4
  %179 = bitcast %union.audio_sample_rates* %17 to %struct.TYPE_6__*
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 0
  store i32 1, i32* %180, align 4
  %181 = load %struct.audio_crtc_info*, %struct.audio_crtc_info** %7, align 8
  %182 = load i32, i32* %6, align 4
  %183 = call i32 @check_audio_bandwidth(%struct.audio_crtc_info* %181, i32 8, i32 %182, %union.audio_sample_rates* %17)
  %184 = load %struct.audio*, %struct.audio** %5, align 8
  %185 = bitcast %union.audio_sample_rates* %17 to %struct.TYPE_6__*
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @set_high_bit_rate_capable(%struct.audio* %184, i32 %187)
  %189 = load %struct.audio*, %struct.audio** %5, align 8
  %190 = load %struct.audio_info*, %struct.audio_info** %8, align 8
  %191 = getelementptr inbounds %struct.audio_info, %struct.audio_info* %190, i32 0, i32 5
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @set_video_latency(%struct.audio* %189, i32 %192)
  %194 = load %struct.audio*, %struct.audio** %5, align 8
  %195 = load %struct.audio_info*, %struct.audio_info** %8, align 8
  %196 = getelementptr inbounds %struct.audio_info, %struct.audio_info* %195, i32 0, i32 4
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @set_audio_latency(%struct.audio* %194, i32 %197)
  store i32 0, i32* %11, align 4
  %199 = load i32, i32* %11, align 4
  %200 = load %struct.audio_info*, %struct.audio_info** %8, align 8
  %201 = getelementptr inbounds %struct.audio_info, %struct.audio_info* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* @AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO0, align 4
  %204 = load i32, i32* @MANUFACTURER_ID, align 4
  %205 = call i32 @set_reg_field_value(i32 %199, i32 %202, i32 %203, i32 %204)
  %206 = load i32, i32* %11, align 4
  %207 = load %struct.audio_info*, %struct.audio_info** %8, align 8
  %208 = getelementptr inbounds %struct.audio_info, %struct.audio_info* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO0, align 4
  %211 = load i32, i32* @PRODUCT_ID, align 4
  %212 = call i32 @set_reg_field_value(i32 %206, i32 %209, i32 %210, i32 %211)
  %213 = load i32, i32* @AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO0, align 4
  %214 = load i32, i32* %11, align 4
  %215 = call i32 @AZ_REG_WRITE(i32 %213, i32 %214)
  store i32 0, i32* %11, align 4
  br label %216

216:                                              ; preds = %232, %177
  %217 = load %struct.audio_info*, %struct.audio_info** %8, align 8
  %218 = getelementptr inbounds %struct.audio_info, %struct.audio_info* %217, i32 0, i32 2
  %219 = load i8*, i8** %218, align 8
  %220 = load i32, i32* %18, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %18, align 4
  %222 = sext i32 %220 to i64
  %223 = getelementptr inbounds i8, i8* %219, i64 %222
  %224 = load i8, i8* %223, align 1
  %225 = sext i8 %224 to i32
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %233

227:                                              ; preds = %216
  %228 = load i32, i32* %18, align 4
  %229 = load i32, i32* @MAX_HW_AUDIO_INFO_DISPLAY_NAME_SIZE_IN_CHARS, align 4
  %230 = icmp sge i32 %228, %229
  br i1 %230, label %231, label %232

231:                                              ; preds = %227
  br label %233

232:                                              ; preds = %227
  br label %216

233:                                              ; preds = %231, %216
  %234 = load i32, i32* %11, align 4
  %235 = load i32, i32* %18, align 4
  %236 = load i32, i32* @AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO1, align 4
  %237 = load i32, i32* @SINK_DESCRIPTION_LEN, align 4
  %238 = call i32 @set_reg_field_value(i32 %234, i32 %235, i32 %236, i32 %237)
  %239 = load i32, i32* @AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO1, align 4
  %240 = load i32, i32* %11, align 4
  %241 = call i32 @AZ_REG_WRITE(i32 %239, i32 %240)
  %242 = load %struct.audio*, %struct.audio** %5, align 8
  %243 = getelementptr inbounds %struct.audio, %struct.audio* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* %11, align 4
  %246 = load %struct.audio_info*, %struct.audio_info** %8, align 8
  %247 = getelementptr inbounds %struct.audio_info, %struct.audio_info* %246, i32 0, i32 2
  %248 = load i8*, i8** %247, align 8
  %249 = call i32 @DC_LOG_HW_AUDIO(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %244, i32 %245, i8* %248)
  store i32 0, i32* %11, align 4
  %250 = load i32, i32* %11, align 4
  %251 = load %struct.audio_info*, %struct.audio_info** %8, align 8
  %252 = getelementptr inbounds %struct.audio_info, %struct.audio_info* %251, i32 0, i32 3
  %253 = load i32*, i32** %252, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 0
  %255 = load i32, i32* %254, align 4
  %256 = load i32, i32* @AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO2, align 4
  %257 = load i32, i32* @PORT_ID0, align 4
  %258 = call i32 @set_reg_field_value(i32 %250, i32 %255, i32 %256, i32 %257)
  %259 = load i32, i32* @AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO2, align 4
  %260 = load i32, i32* %11, align 4
  %261 = call i32 @AZ_REG_WRITE(i32 %259, i32 %260)
  store i32 0, i32* %11, align 4
  %262 = load i32, i32* %11, align 4
  %263 = load %struct.audio_info*, %struct.audio_info** %8, align 8
  %264 = getelementptr inbounds %struct.audio_info, %struct.audio_info* %263, i32 0, i32 3
  %265 = load i32*, i32** %264, align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 1
  %267 = load i32, i32* %266, align 4
  %268 = load i32, i32* @AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO3, align 4
  %269 = load i32, i32* @PORT_ID1, align 4
  %270 = call i32 @set_reg_field_value(i32 %262, i32 %267, i32 %268, i32 %269)
  %271 = load i32, i32* @AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO3, align 4
  %272 = load i32, i32* %11, align 4
  %273 = call i32 @AZ_REG_WRITE(i32 %271, i32 %272)
  store i32 0, i32* %11, align 4
  %274 = load i32, i32* %11, align 4
  %275 = load %struct.audio_info*, %struct.audio_info** %8, align 8
  %276 = getelementptr inbounds %struct.audio_info, %struct.audio_info* %275, i32 0, i32 2
  %277 = load i8*, i8** %276, align 8
  %278 = getelementptr inbounds i8, i8* %277, i64 0
  %279 = load i8, i8* %278, align 1
  %280 = sext i8 %279 to i32
  %281 = load i32, i32* @AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO4, align 4
  %282 = load i32, i32* @DESCRIPTION0, align 4
  %283 = call i32 @set_reg_field_value(i32 %274, i32 %280, i32 %281, i32 %282)
  %284 = load i32, i32* %11, align 4
  %285 = load %struct.audio_info*, %struct.audio_info** %8, align 8
  %286 = getelementptr inbounds %struct.audio_info, %struct.audio_info* %285, i32 0, i32 2
  %287 = load i8*, i8** %286, align 8
  %288 = getelementptr inbounds i8, i8* %287, i64 1
  %289 = load i8, i8* %288, align 1
  %290 = sext i8 %289 to i32
  %291 = load i32, i32* @AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO4, align 4
  %292 = load i32, i32* @DESCRIPTION1, align 4
  %293 = call i32 @set_reg_field_value(i32 %284, i32 %290, i32 %291, i32 %292)
  %294 = load i32, i32* %11, align 4
  %295 = load %struct.audio_info*, %struct.audio_info** %8, align 8
  %296 = getelementptr inbounds %struct.audio_info, %struct.audio_info* %295, i32 0, i32 2
  %297 = load i8*, i8** %296, align 8
  %298 = getelementptr inbounds i8, i8* %297, i64 2
  %299 = load i8, i8* %298, align 1
  %300 = sext i8 %299 to i32
  %301 = load i32, i32* @AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO4, align 4
  %302 = load i32, i32* @DESCRIPTION2, align 4
  %303 = call i32 @set_reg_field_value(i32 %294, i32 %300, i32 %301, i32 %302)
  %304 = load i32, i32* %11, align 4
  %305 = load %struct.audio_info*, %struct.audio_info** %8, align 8
  %306 = getelementptr inbounds %struct.audio_info, %struct.audio_info* %305, i32 0, i32 2
  %307 = load i8*, i8** %306, align 8
  %308 = getelementptr inbounds i8, i8* %307, i64 3
  %309 = load i8, i8* %308, align 1
  %310 = sext i8 %309 to i32
  %311 = load i32, i32* @AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO4, align 4
  %312 = load i32, i32* @DESCRIPTION3, align 4
  %313 = call i32 @set_reg_field_value(i32 %304, i32 %310, i32 %311, i32 %312)
  %314 = load i32, i32* @AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO4, align 4
  %315 = load i32, i32* %11, align 4
  %316 = call i32 @AZ_REG_WRITE(i32 %314, i32 %315)
  store i32 0, i32* %11, align 4
  %317 = load i32, i32* %11, align 4
  %318 = load %struct.audio_info*, %struct.audio_info** %8, align 8
  %319 = getelementptr inbounds %struct.audio_info, %struct.audio_info* %318, i32 0, i32 2
  %320 = load i8*, i8** %319, align 8
  %321 = getelementptr inbounds i8, i8* %320, i64 4
  %322 = load i8, i8* %321, align 1
  %323 = sext i8 %322 to i32
  %324 = load i32, i32* @AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO5, align 4
  %325 = load i32, i32* @DESCRIPTION4, align 4
  %326 = call i32 @set_reg_field_value(i32 %317, i32 %323, i32 %324, i32 %325)
  %327 = load i32, i32* %11, align 4
  %328 = load %struct.audio_info*, %struct.audio_info** %8, align 8
  %329 = getelementptr inbounds %struct.audio_info, %struct.audio_info* %328, i32 0, i32 2
  %330 = load i8*, i8** %329, align 8
  %331 = getelementptr inbounds i8, i8* %330, i64 5
  %332 = load i8, i8* %331, align 1
  %333 = sext i8 %332 to i32
  %334 = load i32, i32* @AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO5, align 4
  %335 = load i32, i32* @DESCRIPTION5, align 4
  %336 = call i32 @set_reg_field_value(i32 %327, i32 %333, i32 %334, i32 %335)
  %337 = load i32, i32* %11, align 4
  %338 = load %struct.audio_info*, %struct.audio_info** %8, align 8
  %339 = getelementptr inbounds %struct.audio_info, %struct.audio_info* %338, i32 0, i32 2
  %340 = load i8*, i8** %339, align 8
  %341 = getelementptr inbounds i8, i8* %340, i64 6
  %342 = load i8, i8* %341, align 1
  %343 = sext i8 %342 to i32
  %344 = load i32, i32* @AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO5, align 4
  %345 = load i32, i32* @DESCRIPTION6, align 4
  %346 = call i32 @set_reg_field_value(i32 %337, i32 %343, i32 %344, i32 %345)
  %347 = load i32, i32* %11, align 4
  %348 = load %struct.audio_info*, %struct.audio_info** %8, align 8
  %349 = getelementptr inbounds %struct.audio_info, %struct.audio_info* %348, i32 0, i32 2
  %350 = load i8*, i8** %349, align 8
  %351 = getelementptr inbounds i8, i8* %350, i64 7
  %352 = load i8, i8* %351, align 1
  %353 = sext i8 %352 to i32
  %354 = load i32, i32* @AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO5, align 4
  %355 = load i32, i32* @DESCRIPTION7, align 4
  %356 = call i32 @set_reg_field_value(i32 %347, i32 %353, i32 %354, i32 %355)
  %357 = load i32, i32* @AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO5, align 4
  %358 = load i32, i32* %11, align 4
  %359 = call i32 @AZ_REG_WRITE(i32 %357, i32 %358)
  store i32 0, i32* %11, align 4
  %360 = load i32, i32* %11, align 4
  %361 = load %struct.audio_info*, %struct.audio_info** %8, align 8
  %362 = getelementptr inbounds %struct.audio_info, %struct.audio_info* %361, i32 0, i32 2
  %363 = load i8*, i8** %362, align 8
  %364 = getelementptr inbounds i8, i8* %363, i64 8
  %365 = load i8, i8* %364, align 1
  %366 = sext i8 %365 to i32
  %367 = load i32, i32* @AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO6, align 4
  %368 = load i32, i32* @DESCRIPTION8, align 4
  %369 = call i32 @set_reg_field_value(i32 %360, i32 %366, i32 %367, i32 %368)
  %370 = load i32, i32* %11, align 4
  %371 = load %struct.audio_info*, %struct.audio_info** %8, align 8
  %372 = getelementptr inbounds %struct.audio_info, %struct.audio_info* %371, i32 0, i32 2
  %373 = load i8*, i8** %372, align 8
  %374 = getelementptr inbounds i8, i8* %373, i64 9
  %375 = load i8, i8* %374, align 1
  %376 = sext i8 %375 to i32
  %377 = load i32, i32* @AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO6, align 4
  %378 = load i32, i32* @DESCRIPTION9, align 4
  %379 = call i32 @set_reg_field_value(i32 %370, i32 %376, i32 %377, i32 %378)
  %380 = load i32, i32* %11, align 4
  %381 = load %struct.audio_info*, %struct.audio_info** %8, align 8
  %382 = getelementptr inbounds %struct.audio_info, %struct.audio_info* %381, i32 0, i32 2
  %383 = load i8*, i8** %382, align 8
  %384 = getelementptr inbounds i8, i8* %383, i64 10
  %385 = load i8, i8* %384, align 1
  %386 = sext i8 %385 to i32
  %387 = load i32, i32* @AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO6, align 4
  %388 = load i32, i32* @DESCRIPTION10, align 4
  %389 = call i32 @set_reg_field_value(i32 %380, i32 %386, i32 %387, i32 %388)
  %390 = load i32, i32* %11, align 4
  %391 = load %struct.audio_info*, %struct.audio_info** %8, align 8
  %392 = getelementptr inbounds %struct.audio_info, %struct.audio_info* %391, i32 0, i32 2
  %393 = load i8*, i8** %392, align 8
  %394 = getelementptr inbounds i8, i8* %393, i64 11
  %395 = load i8, i8* %394, align 1
  %396 = sext i8 %395 to i32
  %397 = load i32, i32* @AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO6, align 4
  %398 = load i32, i32* @DESCRIPTION11, align 4
  %399 = call i32 @set_reg_field_value(i32 %390, i32 %396, i32 %397, i32 %398)
  %400 = load i32, i32* @AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO6, align 4
  %401 = load i32, i32* %11, align 4
  %402 = call i32 @AZ_REG_WRITE(i32 %400, i32 %401)
  store i32 0, i32* %11, align 4
  %403 = load i32, i32* %11, align 4
  %404 = load %struct.audio_info*, %struct.audio_info** %8, align 8
  %405 = getelementptr inbounds %struct.audio_info, %struct.audio_info* %404, i32 0, i32 2
  %406 = load i8*, i8** %405, align 8
  %407 = getelementptr inbounds i8, i8* %406, i64 12
  %408 = load i8, i8* %407, align 1
  %409 = sext i8 %408 to i32
  %410 = load i32, i32* @AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO7, align 4
  %411 = load i32, i32* @DESCRIPTION12, align 4
  %412 = call i32 @set_reg_field_value(i32 %403, i32 %409, i32 %410, i32 %411)
  %413 = load i32, i32* %11, align 4
  %414 = load %struct.audio_info*, %struct.audio_info** %8, align 8
  %415 = getelementptr inbounds %struct.audio_info, %struct.audio_info* %414, i32 0, i32 2
  %416 = load i8*, i8** %415, align 8
  %417 = getelementptr inbounds i8, i8* %416, i64 13
  %418 = load i8, i8* %417, align 1
  %419 = sext i8 %418 to i32
  %420 = load i32, i32* @AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO7, align 4
  %421 = load i32, i32* @DESCRIPTION13, align 4
  %422 = call i32 @set_reg_field_value(i32 %413, i32 %419, i32 %420, i32 %421)
  %423 = load i32, i32* %11, align 4
  %424 = load %struct.audio_info*, %struct.audio_info** %8, align 8
  %425 = getelementptr inbounds %struct.audio_info, %struct.audio_info* %424, i32 0, i32 2
  %426 = load i8*, i8** %425, align 8
  %427 = getelementptr inbounds i8, i8* %426, i64 14
  %428 = load i8, i8* %427, align 1
  %429 = sext i8 %428 to i32
  %430 = load i32, i32* @AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO7, align 4
  %431 = load i32, i32* @DESCRIPTION14, align 4
  %432 = call i32 @set_reg_field_value(i32 %423, i32 %429, i32 %430, i32 %431)
  %433 = load i32, i32* %11, align 4
  %434 = load %struct.audio_info*, %struct.audio_info** %8, align 8
  %435 = getelementptr inbounds %struct.audio_info, %struct.audio_info* %434, i32 0, i32 2
  %436 = load i8*, i8** %435, align 8
  %437 = getelementptr inbounds i8, i8* %436, i64 15
  %438 = load i8, i8* %437, align 1
  %439 = sext i8 %438 to i32
  %440 = load i32, i32* @AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO7, align 4
  %441 = load i32, i32* @DESCRIPTION15, align 4
  %442 = call i32 @set_reg_field_value(i32 %433, i32 %439, i32 %440, i32 %441)
  %443 = load i32, i32* @AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO7, align 4
  %444 = load i32, i32* %11, align 4
  %445 = call i32 @AZ_REG_WRITE(i32 %443, i32 %444)
  store i32 0, i32* %11, align 4
  %446 = load i32, i32* %11, align 4
  %447 = load %struct.audio_info*, %struct.audio_info** %8, align 8
  %448 = getelementptr inbounds %struct.audio_info, %struct.audio_info* %447, i32 0, i32 2
  %449 = load i8*, i8** %448, align 8
  %450 = getelementptr inbounds i8, i8* %449, i64 16
  %451 = load i8, i8* %450, align 1
  %452 = sext i8 %451 to i32
  %453 = load i32, i32* @AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO8, align 4
  %454 = load i32, i32* @DESCRIPTION16, align 4
  %455 = call i32 @set_reg_field_value(i32 %446, i32 %452, i32 %453, i32 %454)
  %456 = load i32, i32* %11, align 4
  %457 = load %struct.audio_info*, %struct.audio_info** %8, align 8
  %458 = getelementptr inbounds %struct.audio_info, %struct.audio_info* %457, i32 0, i32 2
  %459 = load i8*, i8** %458, align 8
  %460 = getelementptr inbounds i8, i8* %459, i64 17
  %461 = load i8, i8* %460, align 1
  %462 = sext i8 %461 to i32
  %463 = load i32, i32* @AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO8, align 4
  %464 = load i32, i32* @DESCRIPTION17, align 4
  %465 = call i32 @set_reg_field_value(i32 %456, i32 %462, i32 %463, i32 %464)
  %466 = load i32, i32* @AZALIA_F0_CODEC_PIN_CONTROL_SINK_INFO8, align 4
  %467 = load i32, i32* %11, align 4
  %468 = call i32 @AZ_REG_WRITE(i32 %466, i32 %467)
  %469 = load i32, i32* @AZALIA_F0_CODEC_PIN_CONTROL_HOT_PLUG_CONTROL, align 4
  %470 = call i32 @AZ_REG_READ(i32 %469)
  store i32 %470, i32* %11, align 4
  %471 = load i32, i32* %11, align 4
  %472 = load i32, i32* @AZALIA_F0_CODEC_PIN_CONTROL_HOT_PLUG_CONTROL, align 4
  %473 = load i32, i32* @CLOCK_GATING_DISABLE, align 4
  %474 = call i32 @set_reg_field_value(i32 %471, i32 0, i32 %472, i32 %473)
  %475 = load i32, i32* @AZALIA_F0_CODEC_PIN_CONTROL_HOT_PLUG_CONTROL, align 4
  %476 = load i32, i32* %11, align 4
  %477 = call i32 @AZ_REG_WRITE(i32 %475, i32 %476)
  ret void
}

declare dso_local %struct.dce_audio* @DCE_AUD(%struct.audio*) #1

declare dso_local i32 @AZ_REG_READ(i32) #1

declare dso_local i32 @set_reg_field_value(i32, i32, i32, i32) #1

declare dso_local i32 @AZ_REG_WRITE(i32, i32) #1

declare dso_local i32 @get_reg_field_value(i32, i32, i32) #1

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

declare dso_local i64 @is_audio_format_supported(%struct.audio_info*, i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @check_audio_bandwidth(%struct.audio_crtc_info*, i32, i32, %union.audio_sample_rates*) #1

declare dso_local i32 @REG_WRITE(i32, i32) #1

declare dso_local i32 @set_high_bit_rate_capable(%struct.audio*, i32) #1

declare dso_local i32 @set_video_latency(%struct.audio*, i32) #1

declare dso_local i32 @set_audio_latency(%struct.audio*, i32) #1

declare dso_local i32 @DC_LOG_HW_AUDIO(i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v8_0.c_dce_v8_0_afmt_setmode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v8_0.c_dce_v8_0_afmt_setmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i64, %struct.drm_device* }
%struct.drm_device = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.amdgpu_encoder = type { %struct.amdgpu_encoder_atom_dig* }
%struct.amdgpu_encoder_atom_dig = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.drm_connector = type { i32 }
%struct.hdmi_avi_infoframe = type { i32 }
%struct.amdgpu_crtc = type { i32 }

@HDMI_INFOFRAME_HEADER_SIZE = common dso_local global i32 0, align 4
@HDMI_AVI_INFOFRAME_SIZE = common dso_local global i32 0, align 4
@mmHDMI_VBI_PACKET_CONTROL = common dso_local global i32 0, align 4
@HDMI_VBI_PACKET_CONTROL__HDMI_NULL_SEND_MASK = common dso_local global i32 0, align 4
@mmAFMT_AUDIO_CRC_CONTROL = common dso_local global i32 0, align 4
@mmHDMI_CONTROL = common dso_local global i32 0, align 4
@HDMI_CONTROL__HDMI_DEEP_COLOR_ENABLE_MASK = common dso_local global i32 0, align 4
@HDMI_CONTROL__HDMI_DEEP_COLOR_DEPTH_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"%s: Disabling hdmi deep color for %d bpc.\0A\00", align 1
@HDMI_CONTROL__HDMI_DEEP_COLOR_DEPTH__SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"%s: Enabling hdmi deep color 30 for 10 bpc.\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"%s: Enabling hdmi deep color 36 for 12 bpc.\0A\00", align 1
@HDMI_VBI_PACKET_CONTROL__HDMI_GC_SEND_MASK = common dso_local global i32 0, align 4
@HDMI_VBI_PACKET_CONTROL__HDMI_GC_CONT_MASK = common dso_local global i32 0, align 4
@mmHDMI_INFOFRAME_CONTROL0 = common dso_local global i32 0, align 4
@HDMI_INFOFRAME_CONTROL0__HDMI_AUDIO_INFO_SEND_MASK = common dso_local global i32 0, align 4
@HDMI_INFOFRAME_CONTROL0__HDMI_AUDIO_INFO_CONT_MASK = common dso_local global i32 0, align 4
@mmAFMT_INFOFRAME_CONTROL0 = common dso_local global i32 0, align 4
@AFMT_INFOFRAME_CONTROL0__AFMT_AUDIO_INFO_UPDATE_MASK = common dso_local global i32 0, align 4
@mmHDMI_INFOFRAME_CONTROL1 = common dso_local global i32 0, align 4
@HDMI_INFOFRAME_CONTROL1__HDMI_AUDIO_INFO_LINE__SHIFT = common dso_local global i32 0, align 4
@mmHDMI_GC = common dso_local global i32 0, align 4
@mmHDMI_AUDIO_PACKET_CONTROL = common dso_local global i32 0, align 4
@HDMI_AUDIO_PACKET_CONTROL__HDMI_AUDIO_DELAY_EN__SHIFT = common dso_local global i32 0, align 4
@HDMI_AUDIO_PACKET_CONTROL__HDMI_AUDIO_PACKETS_PER_LINE__SHIFT = common dso_local global i32 0, align 4
@mmAFMT_AUDIO_PACKET_CONTROL = common dso_local global i32 0, align 4
@AFMT_AUDIO_PACKET_CONTROL__AFMT_60958_CS_UPDATE_MASK = common dso_local global i32 0, align 4
@mmHDMI_ACR_PACKET_CONTROL = common dso_local global i32 0, align 4
@HDMI_ACR_PACKET_CONTROL__HDMI_ACR_AUTO_SEND_MASK = common dso_local global i32 0, align 4
@HDMI_ACR_PACKET_CONTROL__HDMI_ACR_SOURCE_MASK = common dso_local global i32 0, align 4
@mmAFMT_60958_0 = common dso_local global i32 0, align 4
@AFMT_60958_0__AFMT_60958_CS_CHANNEL_NUMBER_L__SHIFT = common dso_local global i32 0, align 4
@mmAFMT_60958_1 = common dso_local global i32 0, align 4
@AFMT_60958_1__AFMT_60958_CS_CHANNEL_NUMBER_R__SHIFT = common dso_local global i32 0, align 4
@mmAFMT_60958_2 = common dso_local global i32 0, align 4
@AFMT_60958_2__AFMT_60958_CS_CHANNEL_NUMBER_2__SHIFT = common dso_local global i32 0, align 4
@AFMT_60958_2__AFMT_60958_CS_CHANNEL_NUMBER_3__SHIFT = common dso_local global i32 0, align 4
@AFMT_60958_2__AFMT_60958_CS_CHANNEL_NUMBER_4__SHIFT = common dso_local global i32 0, align 4
@AFMT_60958_2__AFMT_60958_CS_CHANNEL_NUMBER_5__SHIFT = common dso_local global i32 0, align 4
@AFMT_60958_2__AFMT_60958_CS_CHANNEL_NUMBER_6__SHIFT = common dso_local global i32 0, align 4
@AFMT_60958_2__AFMT_60958_CS_CHANNEL_NUMBER_7__SHIFT = common dso_local global i32 0, align 4
@mmAFMT_AUDIO_PACKET_CONTROL2 = common dso_local global i32 0, align 4
@AFMT_AUDIO_PACKET_CONTROL2__AFMT_AUDIO_CHANNEL_ENABLE__SHIFT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"failed to setup AVI infoframe: %zd\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"failed to pack AVI infoframe: %zd\0A\00", align 1
@HDMI_INFOFRAME_CONTROL0__HDMI_AVI_INFO_SEND_MASK = common dso_local global i32 0, align 4
@HDMI_INFOFRAME_CONTROL0__HDMI_AVI_INFO_CONT_MASK = common dso_local global i32 0, align 4
@HDMI_INFOFRAME_CONTROL1__HDMI_AVI_INFO_LINE__SHIFT = common dso_local global i32 0, align 4
@HDMI_INFOFRAME_CONTROL1__HDMI_AVI_INFO_LINE_MASK = common dso_local global i32 0, align 4
@AFMT_AUDIO_PACKET_CONTROL__AFMT_AUDIO_SAMPLE_SEND_MASK = common dso_local global i32 0, align 4
@mmAFMT_RAMP_CONTROL0 = common dso_local global i32 0, align 4
@mmAFMT_RAMP_CONTROL1 = common dso_local global i32 0, align 4
@mmAFMT_RAMP_CONTROL2 = common dso_local global i32 0, align 4
@mmAFMT_RAMP_CONTROL3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, %struct.drm_display_mode*)* @dce_v8_0_afmt_setmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce_v8_0_afmt_setmode(%struct.drm_encoder* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca %struct.amdgpu_encoder*, align 8
  %8 = alloca %struct.amdgpu_encoder_atom_dig*, align 8
  %9 = alloca %struct.drm_connector*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.hdmi_avi_infoframe, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.amdgpu_crtc*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %4, align 8
  %19 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %20 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %19, i32 0, i32 1
  %21 = load %struct.drm_device*, %struct.drm_device** %20, align 8
  store %struct.drm_device* %21, %struct.drm_device** %5, align 8
  %22 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %23 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %22, i32 0, i32 0
  %24 = load %struct.amdgpu_device*, %struct.amdgpu_device** %23, align 8
  store %struct.amdgpu_device* %24, %struct.amdgpu_device** %6, align 8
  %25 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %26 = call %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder* %25)
  store %struct.amdgpu_encoder* %26, %struct.amdgpu_encoder** %7, align 8
  %27 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %7, align 8
  %28 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %27, i32 0, i32 0
  %29 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %28, align 8
  store %struct.amdgpu_encoder_atom_dig* %29, %struct.amdgpu_encoder_atom_dig** %8, align 8
  %30 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %31 = call %struct.drm_connector* @amdgpu_get_connector_for_encoder(%struct.drm_encoder* %30)
  store %struct.drm_connector* %31, %struct.drm_connector** %9, align 8
  %32 = load i32, i32* @HDMI_INFOFRAME_HEADER_SIZE, align 4
  %33 = load i32, i32* @HDMI_AVI_INFOFRAME_SIZE, align 4
  %34 = add nsw i32 %32, %33
  %35 = zext i32 %34 to i64
  %36 = call i8* @llvm.stacksave()
  store i8* %36, i8** %10, align 8
  %37 = alloca i32, i64 %35, align 16
  store i64 %35, i64* %11, align 8
  store i32 8, i32* %16, align 4
  %38 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %8, align 8
  %39 = icmp ne %struct.amdgpu_encoder_atom_dig* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %2
  %41 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %8, align 8
  %42 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = icmp ne %struct.TYPE_2__* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %40, %2
  store i32 1, i32* %17, align 4
  br label %330

46:                                               ; preds = %40
  %47 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %8, align 8
  %48 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %46
  store i32 1, i32* %17, align 4
  br label %330

54:                                               ; preds = %46
  %55 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %8, align 8
  %56 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %13, align 4
  %60 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %61 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %54
  %65 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %66 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call %struct.amdgpu_crtc* @to_amdgpu_crtc(i64 %67)
  store %struct.amdgpu_crtc* %68, %struct.amdgpu_crtc** %18, align 8
  %69 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %18, align 8
  %70 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %16, align 4
  br label %72

72:                                               ; preds = %64, %54
  %73 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %74 = call i32 @dce_v8_0_audio_get_pin(%struct.amdgpu_device* %73)
  %75 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %8, align 8
  %76 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  store i32 %74, i32* %78, align 4
  %79 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %80 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %8, align 8
  %81 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @dce_v8_0_audio_enable(%struct.amdgpu_device* %79, i32 %84, i32 0)
  %86 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %87 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %88 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @dce_v8_0_audio_set_dto(%struct.drm_encoder* %86, i32 %89)
  %91 = load i32, i32* @mmHDMI_VBI_PACKET_CONTROL, align 4
  %92 = load i32, i32* %13, align 4
  %93 = add nsw i32 %91, %92
  %94 = load i32, i32* @HDMI_VBI_PACKET_CONTROL__HDMI_NULL_SEND_MASK, align 4
  %95 = call i32 @WREG32(i32 %93, i32 %94)
  %96 = load i32, i32* @mmAFMT_AUDIO_CRC_CONTROL, align 4
  %97 = load i32, i32* %13, align 4
  %98 = add nsw i32 %96, %97
  %99 = call i32 @WREG32(i32 %98, i32 4096)
  %100 = load i32, i32* @mmHDMI_CONTROL, align 4
  %101 = load i32, i32* %13, align 4
  %102 = add nsw i32 %100, %101
  %103 = call i32 @RREG32(i32 %102)
  store i32 %103, i32* %14, align 4
  %104 = load i32, i32* @HDMI_CONTROL__HDMI_DEEP_COLOR_ENABLE_MASK, align 4
  %105 = xor i32 %104, -1
  %106 = load i32, i32* %14, align 4
  %107 = and i32 %106, %105
  store i32 %107, i32* %14, align 4
  %108 = load i32, i32* @HDMI_CONTROL__HDMI_DEEP_COLOR_DEPTH_MASK, align 4
  %109 = xor i32 %108, -1
  %110 = load i32, i32* %14, align 4
  %111 = and i32 %110, %109
  store i32 %111, i32* %14, align 4
  %112 = load i32, i32* %16, align 4
  switch i32 %112, label %114 [
    i32 0, label %113
    i32 6, label %113
    i32 8, label %113
    i32 16, label %113
    i32 10, label %120
    i32 12, label %132
  ]

113:                                              ; preds = %72, %72, %72, %72
  br label %114

114:                                              ; preds = %72, %113
  %115 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  %116 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %16, align 4
  %119 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %117, i32 %118)
  br label %144

120:                                              ; preds = %72
  %121 = load i32, i32* @HDMI_CONTROL__HDMI_DEEP_COLOR_ENABLE_MASK, align 4
  %122 = load i32, i32* %14, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %14, align 4
  %124 = load i32, i32* @HDMI_CONTROL__HDMI_DEEP_COLOR_DEPTH__SHIFT, align 4
  %125 = shl i32 1, %124
  %126 = load i32, i32* %14, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %14, align 4
  %128 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  %129 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %130)
  br label %144

132:                                              ; preds = %72
  %133 = load i32, i32* @HDMI_CONTROL__HDMI_DEEP_COLOR_ENABLE_MASK, align 4
  %134 = load i32, i32* %14, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %14, align 4
  %136 = load i32, i32* @HDMI_CONTROL__HDMI_DEEP_COLOR_DEPTH__SHIFT, align 4
  %137 = shl i32 2, %136
  %138 = load i32, i32* %14, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %14, align 4
  %140 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  %141 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %142)
  br label %144

144:                                              ; preds = %132, %120, %114
  %145 = load i32, i32* @mmHDMI_CONTROL, align 4
  %146 = load i32, i32* %13, align 4
  %147 = add nsw i32 %145, %146
  %148 = load i32, i32* %14, align 4
  %149 = call i32 @WREG32(i32 %147, i32 %148)
  %150 = load i32, i32* @mmHDMI_VBI_PACKET_CONTROL, align 4
  %151 = load i32, i32* %13, align 4
  %152 = add nsw i32 %150, %151
  %153 = load i32, i32* @HDMI_VBI_PACKET_CONTROL__HDMI_NULL_SEND_MASK, align 4
  %154 = load i32, i32* @HDMI_VBI_PACKET_CONTROL__HDMI_GC_SEND_MASK, align 4
  %155 = or i32 %153, %154
  %156 = load i32, i32* @HDMI_VBI_PACKET_CONTROL__HDMI_GC_CONT_MASK, align 4
  %157 = or i32 %155, %156
  %158 = call i32 @WREG32(i32 %152, i32 %157)
  %159 = load i32, i32* @mmHDMI_INFOFRAME_CONTROL0, align 4
  %160 = load i32, i32* %13, align 4
  %161 = add nsw i32 %159, %160
  %162 = load i32, i32* @HDMI_INFOFRAME_CONTROL0__HDMI_AUDIO_INFO_SEND_MASK, align 4
  %163 = load i32, i32* @HDMI_INFOFRAME_CONTROL0__HDMI_AUDIO_INFO_CONT_MASK, align 4
  %164 = or i32 %162, %163
  %165 = call i32 @WREG32(i32 %161, i32 %164)
  %166 = load i32, i32* @mmAFMT_INFOFRAME_CONTROL0, align 4
  %167 = load i32, i32* %13, align 4
  %168 = add nsw i32 %166, %167
  %169 = load i32, i32* @AFMT_INFOFRAME_CONTROL0__AFMT_AUDIO_INFO_UPDATE_MASK, align 4
  %170 = call i32 @WREG32(i32 %168, i32 %169)
  %171 = load i32, i32* @mmHDMI_INFOFRAME_CONTROL1, align 4
  %172 = load i32, i32* %13, align 4
  %173 = add nsw i32 %171, %172
  %174 = load i32, i32* @HDMI_INFOFRAME_CONTROL1__HDMI_AUDIO_INFO_LINE__SHIFT, align 4
  %175 = shl i32 2, %174
  %176 = call i32 @WREG32(i32 %173, i32 %175)
  %177 = load i32, i32* @mmHDMI_GC, align 4
  %178 = load i32, i32* %13, align 4
  %179 = add nsw i32 %177, %178
  %180 = call i32 @WREG32(i32 %179, i32 0)
  %181 = load i32, i32* @mmHDMI_AUDIO_PACKET_CONTROL, align 4
  %182 = load i32, i32* %13, align 4
  %183 = add nsw i32 %181, %182
  %184 = load i32, i32* @HDMI_AUDIO_PACKET_CONTROL__HDMI_AUDIO_DELAY_EN__SHIFT, align 4
  %185 = shl i32 1, %184
  %186 = load i32, i32* @HDMI_AUDIO_PACKET_CONTROL__HDMI_AUDIO_PACKETS_PER_LINE__SHIFT, align 4
  %187 = shl i32 3, %186
  %188 = or i32 %185, %187
  %189 = call i32 @WREG32(i32 %183, i32 %188)
  %190 = load i32, i32* @mmAFMT_AUDIO_PACKET_CONTROL, align 4
  %191 = load i32, i32* %13, align 4
  %192 = add nsw i32 %190, %191
  %193 = load i32, i32* @AFMT_AUDIO_PACKET_CONTROL__AFMT_60958_CS_UPDATE_MASK, align 4
  %194 = call i32 @WREG32(i32 %192, i32 %193)
  %195 = load i32, i32* %16, align 4
  %196 = icmp sgt i32 %195, 8
  br i1 %196, label %197, label %203

197:                                              ; preds = %144
  %198 = load i32, i32* @mmHDMI_ACR_PACKET_CONTROL, align 4
  %199 = load i32, i32* %13, align 4
  %200 = add nsw i32 %198, %199
  %201 = load i32, i32* @HDMI_ACR_PACKET_CONTROL__HDMI_ACR_AUTO_SEND_MASK, align 4
  %202 = call i32 @WREG32(i32 %200, i32 %201)
  br label %211

203:                                              ; preds = %144
  %204 = load i32, i32* @mmHDMI_ACR_PACKET_CONTROL, align 4
  %205 = load i32, i32* %13, align 4
  %206 = add nsw i32 %204, %205
  %207 = load i32, i32* @HDMI_ACR_PACKET_CONTROL__HDMI_ACR_SOURCE_MASK, align 4
  %208 = load i32, i32* @HDMI_ACR_PACKET_CONTROL__HDMI_ACR_AUTO_SEND_MASK, align 4
  %209 = or i32 %207, %208
  %210 = call i32 @WREG32(i32 %206, i32 %209)
  br label %211

211:                                              ; preds = %203, %197
  %212 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %213 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %214 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @dce_v8_0_afmt_update_ACR(%struct.drm_encoder* %212, i32 %215)
  %217 = load i32, i32* @mmAFMT_60958_0, align 4
  %218 = load i32, i32* %13, align 4
  %219 = add nsw i32 %217, %218
  %220 = load i32, i32* @AFMT_60958_0__AFMT_60958_CS_CHANNEL_NUMBER_L__SHIFT, align 4
  %221 = shl i32 1, %220
  %222 = call i32 @WREG32(i32 %219, i32 %221)
  %223 = load i32, i32* @mmAFMT_60958_1, align 4
  %224 = load i32, i32* %13, align 4
  %225 = add nsw i32 %223, %224
  %226 = load i32, i32* @AFMT_60958_1__AFMT_60958_CS_CHANNEL_NUMBER_R__SHIFT, align 4
  %227 = shl i32 2, %226
  %228 = call i32 @WREG32(i32 %225, i32 %227)
  %229 = load i32, i32* @mmAFMT_60958_2, align 4
  %230 = load i32, i32* %13, align 4
  %231 = add nsw i32 %229, %230
  %232 = load i32, i32* @AFMT_60958_2__AFMT_60958_CS_CHANNEL_NUMBER_2__SHIFT, align 4
  %233 = shl i32 3, %232
  %234 = load i32, i32* @AFMT_60958_2__AFMT_60958_CS_CHANNEL_NUMBER_3__SHIFT, align 4
  %235 = shl i32 4, %234
  %236 = or i32 %233, %235
  %237 = load i32, i32* @AFMT_60958_2__AFMT_60958_CS_CHANNEL_NUMBER_4__SHIFT, align 4
  %238 = shl i32 5, %237
  %239 = or i32 %236, %238
  %240 = load i32, i32* @AFMT_60958_2__AFMT_60958_CS_CHANNEL_NUMBER_5__SHIFT, align 4
  %241 = shl i32 6, %240
  %242 = or i32 %239, %241
  %243 = load i32, i32* @AFMT_60958_2__AFMT_60958_CS_CHANNEL_NUMBER_6__SHIFT, align 4
  %244 = shl i32 7, %243
  %245 = or i32 %242, %244
  %246 = load i32, i32* @AFMT_60958_2__AFMT_60958_CS_CHANNEL_NUMBER_7__SHIFT, align 4
  %247 = shl i32 8, %246
  %248 = or i32 %245, %247
  %249 = call i32 @WREG32(i32 %231, i32 %248)
  %250 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %251 = call i32 @dce_v8_0_audio_write_speaker_allocation(%struct.drm_encoder* %250)
  %252 = load i32, i32* @mmAFMT_AUDIO_PACKET_CONTROL2, align 4
  %253 = load i32, i32* %13, align 4
  %254 = add nsw i32 %252, %253
  %255 = load i32, i32* @AFMT_AUDIO_PACKET_CONTROL2__AFMT_AUDIO_CHANNEL_ENABLE__SHIFT, align 4
  %256 = shl i32 255, %255
  %257 = call i32 @WREG32(i32 %254, i32 %256)
  %258 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %259 = call i32 @dce_v8_0_afmt_audio_select_pin(%struct.drm_encoder* %258)
  %260 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %261 = call i32 @dce_v8_0_audio_write_sad_regs(%struct.drm_encoder* %260)
  %262 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %263 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %264 = call i32 @dce_v8_0_audio_write_latency_fields(%struct.drm_encoder* %262, %struct.drm_display_mode* %263)
  %265 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  %266 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %267 = call i64 @drm_hdmi_avi_infoframe_from_display_mode(%struct.hdmi_avi_infoframe* %12, %struct.drm_connector* %265, %struct.drm_display_mode* %266)
  store i64 %267, i64* %15, align 8
  %268 = load i64, i64* %15, align 8
  %269 = icmp slt i64 %268, 0
  br i1 %269, label %270, label %273

270:                                              ; preds = %211
  %271 = load i64, i64* %15, align 8
  %272 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i64 %271)
  store i32 1, i32* %17, align 4
  br label %330

273:                                              ; preds = %211
  %274 = mul nuw i64 4, %35
  %275 = trunc i64 %274 to i32
  %276 = call i64 @hdmi_avi_infoframe_pack(%struct.hdmi_avi_infoframe* %12, i32* %37, i32 %275)
  store i64 %276, i64* %15, align 8
  %277 = load i64, i64* %15, align 8
  %278 = icmp slt i64 %277, 0
  br i1 %278, label %279, label %282

279:                                              ; preds = %273
  %280 = load i64, i64* %15, align 8
  %281 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i64 %280)
  store i32 1, i32* %17, align 4
  br label %330

282:                                              ; preds = %273
  %283 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %284 = mul nuw i64 4, %35
  %285 = trunc i64 %284 to i32
  %286 = call i32 @dce_v8_0_afmt_update_avi_infoframe(%struct.drm_encoder* %283, i32* %37, i32 %285)
  %287 = load i32, i32* @mmHDMI_INFOFRAME_CONTROL0, align 4
  %288 = load i32, i32* %13, align 4
  %289 = add nsw i32 %287, %288
  %290 = load i32, i32* @HDMI_INFOFRAME_CONTROL0__HDMI_AVI_INFO_SEND_MASK, align 4
  %291 = load i32, i32* @HDMI_INFOFRAME_CONTROL0__HDMI_AVI_INFO_CONT_MASK, align 4
  %292 = or i32 %290, %291
  %293 = call i32 @WREG32_OR(i32 %289, i32 %292)
  %294 = load i32, i32* @mmHDMI_INFOFRAME_CONTROL1, align 4
  %295 = load i32, i32* %13, align 4
  %296 = add nsw i32 %294, %295
  %297 = load i32, i32* @HDMI_INFOFRAME_CONTROL1__HDMI_AVI_INFO_LINE__SHIFT, align 4
  %298 = shl i32 2, %297
  %299 = load i32, i32* @HDMI_INFOFRAME_CONTROL1__HDMI_AVI_INFO_LINE_MASK, align 4
  %300 = xor i32 %299, -1
  %301 = call i32 @WREG32_P(i32 %296, i32 %298, i32 %300)
  %302 = load i32, i32* @mmAFMT_AUDIO_PACKET_CONTROL, align 4
  %303 = load i32, i32* %13, align 4
  %304 = add nsw i32 %302, %303
  %305 = load i32, i32* @AFMT_AUDIO_PACKET_CONTROL__AFMT_AUDIO_SAMPLE_SEND_MASK, align 4
  %306 = call i32 @WREG32_OR(i32 %304, i32 %305)
  %307 = load i32, i32* @mmAFMT_RAMP_CONTROL0, align 4
  %308 = load i32, i32* %13, align 4
  %309 = add nsw i32 %307, %308
  %310 = call i32 @WREG32(i32 %309, i32 16777215)
  %311 = load i32, i32* @mmAFMT_RAMP_CONTROL1, align 4
  %312 = load i32, i32* %13, align 4
  %313 = add nsw i32 %311, %312
  %314 = call i32 @WREG32(i32 %313, i32 8388607)
  %315 = load i32, i32* @mmAFMT_RAMP_CONTROL2, align 4
  %316 = load i32, i32* %13, align 4
  %317 = add nsw i32 %315, %316
  %318 = call i32 @WREG32(i32 %317, i32 1)
  %319 = load i32, i32* @mmAFMT_RAMP_CONTROL3, align 4
  %320 = load i32, i32* %13, align 4
  %321 = add nsw i32 %319, %320
  %322 = call i32 @WREG32(i32 %321, i32 1)
  %323 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %324 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %8, align 8
  %325 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %324, i32 0, i32 0
  %326 = load %struct.TYPE_2__*, %struct.TYPE_2__** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 4
  %329 = call i32 @dce_v8_0_audio_enable(%struct.amdgpu_device* %323, i32 %328, i32 1)
  store i32 0, i32* %17, align 4
  br label %330

330:                                              ; preds = %282, %279, %270, %53, %45
  %331 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %331)
  %332 = load i32, i32* %17, align 4
  switch i32 %332, label %334 [
    i32 0, label %333
    i32 1, label %333
  ]

333:                                              ; preds = %330, %330
  ret void

334:                                              ; preds = %330
  unreachable
}

declare dso_local %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.drm_connector* @amdgpu_get_connector_for_encoder(%struct.drm_encoder*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.amdgpu_crtc* @to_amdgpu_crtc(i64) #1

declare dso_local i32 @dce_v8_0_audio_get_pin(%struct.amdgpu_device*) #1

declare dso_local i32 @dce_v8_0_audio_enable(%struct.amdgpu_device*, i32, i32) #1

declare dso_local i32 @dce_v8_0_audio_set_dto(%struct.drm_encoder*, i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32, ...) #1

declare dso_local i32 @dce_v8_0_afmt_update_ACR(%struct.drm_encoder*, i32) #1

declare dso_local i32 @dce_v8_0_audio_write_speaker_allocation(%struct.drm_encoder*) #1

declare dso_local i32 @dce_v8_0_afmt_audio_select_pin(%struct.drm_encoder*) #1

declare dso_local i32 @dce_v8_0_audio_write_sad_regs(%struct.drm_encoder*) #1

declare dso_local i32 @dce_v8_0_audio_write_latency_fields(%struct.drm_encoder*, %struct.drm_display_mode*) #1

declare dso_local i64 @drm_hdmi_avi_infoframe_from_display_mode(%struct.hdmi_avi_infoframe*, %struct.drm_connector*, %struct.drm_display_mode*) #1

declare dso_local i32 @DRM_ERROR(i8*, i64) #1

declare dso_local i64 @hdmi_avi_infoframe_pack(%struct.hdmi_avi_infoframe*, i32*, i32) #1

declare dso_local i32 @dce_v8_0_afmt_update_avi_infoframe(%struct.drm_encoder*, i32*, i32) #1

declare dso_local i32 @WREG32_OR(i32, i32) #1

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

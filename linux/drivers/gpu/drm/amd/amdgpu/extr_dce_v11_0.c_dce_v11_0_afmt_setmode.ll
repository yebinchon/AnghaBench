; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v11_0.c_dce_v11_0_afmt_setmode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v11_0.c_dce_v11_0_afmt_setmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i64, %struct.drm_device* }
%struct.drm_device = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.amdgpu_encoder = type { %struct.amdgpu_encoder_atom_dig* }
%struct.amdgpu_encoder_atom_dig = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64, i32 }
%struct.drm_connector = type { i32 }
%struct.hdmi_avi_infoframe = type { i32 }
%struct.amdgpu_crtc = type { i32 }

@HDMI_INFOFRAME_HEADER_SIZE = common dso_local global i32 0, align 4
@HDMI_AVI_INFOFRAME_SIZE = common dso_local global i32 0, align 4
@mmHDMI_VBI_PACKET_CONTROL = common dso_local global i64 0, align 8
@HDMI_VBI_PACKET_CONTROL = common dso_local global i32 0, align 4
@HDMI_NULL_SEND = common dso_local global i32 0, align 4
@mmAFMT_AUDIO_CRC_CONTROL = common dso_local global i64 0, align 8
@mmHDMI_CONTROL = common dso_local global i64 0, align 8
@HDMI_CONTROL = common dso_local global i32 0, align 4
@HDMI_DEEP_COLOR_ENABLE = common dso_local global i32 0, align 4
@HDMI_DEEP_COLOR_DEPTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"%s: Disabling hdmi deep color for %d bpc.\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"%s: Enabling hdmi deep color 30 for 10 bpc.\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"%s: Enabling hdmi deep color 36 for 12 bpc.\0A\00", align 1
@HDMI_GC_SEND = common dso_local global i32 0, align 4
@HDMI_GC_CONT = common dso_local global i32 0, align 4
@mmHDMI_INFOFRAME_CONTROL0 = common dso_local global i64 0, align 8
@HDMI_INFOFRAME_CONTROL0 = common dso_local global i32 0, align 4
@HDMI_AUDIO_INFO_SEND = common dso_local global i32 0, align 4
@HDMI_AUDIO_INFO_CONT = common dso_local global i32 0, align 4
@mmAFMT_INFOFRAME_CONTROL0 = common dso_local global i64 0, align 8
@AFMT_INFOFRAME_CONTROL0 = common dso_local global i32 0, align 4
@AFMT_AUDIO_INFO_UPDATE = common dso_local global i32 0, align 4
@mmHDMI_INFOFRAME_CONTROL1 = common dso_local global i64 0, align 8
@HDMI_INFOFRAME_CONTROL1 = common dso_local global i32 0, align 4
@HDMI_AUDIO_INFO_LINE = common dso_local global i32 0, align 4
@mmHDMI_GC = common dso_local global i64 0, align 8
@mmHDMI_AUDIO_PACKET_CONTROL = common dso_local global i64 0, align 8
@HDMI_AUDIO_PACKET_CONTROL = common dso_local global i32 0, align 4
@HDMI_AUDIO_DELAY_EN = common dso_local global i32 0, align 4
@HDMI_AUDIO_PACKETS_PER_LINE = common dso_local global i32 0, align 4
@mmAFMT_AUDIO_PACKET_CONTROL = common dso_local global i64 0, align 8
@AFMT_AUDIO_PACKET_CONTROL = common dso_local global i32 0, align 4
@AFMT_60958_CS_UPDATE = common dso_local global i32 0, align 4
@mmHDMI_ACR_PACKET_CONTROL = common dso_local global i64 0, align 8
@HDMI_ACR_PACKET_CONTROL = common dso_local global i32 0, align 4
@HDMI_ACR_SOURCE = common dso_local global i32 0, align 4
@HDMI_ACR_AUTO_SEND = common dso_local global i32 0, align 4
@mmAFMT_60958_0 = common dso_local global i64 0, align 8
@AFMT_60958_0 = common dso_local global i32 0, align 4
@AFMT_60958_CS_CHANNEL_NUMBER_L = common dso_local global i32 0, align 4
@mmAFMT_60958_1 = common dso_local global i64 0, align 8
@AFMT_60958_1 = common dso_local global i32 0, align 4
@AFMT_60958_CS_CHANNEL_NUMBER_R = common dso_local global i32 0, align 4
@mmAFMT_60958_2 = common dso_local global i64 0, align 8
@AFMT_60958_2 = common dso_local global i32 0, align 4
@AFMT_60958_CS_CHANNEL_NUMBER_2 = common dso_local global i32 0, align 4
@AFMT_60958_CS_CHANNEL_NUMBER_3 = common dso_local global i32 0, align 4
@AFMT_60958_CS_CHANNEL_NUMBER_4 = common dso_local global i32 0, align 4
@AFMT_60958_CS_CHANNEL_NUMBER_5 = common dso_local global i32 0, align 4
@AFMT_60958_CS_CHANNEL_NUMBER_6 = common dso_local global i32 0, align 4
@AFMT_60958_CS_CHANNEL_NUMBER_7 = common dso_local global i32 0, align 4
@mmAFMT_AUDIO_PACKET_CONTROL2 = common dso_local global i64 0, align 8
@AFMT_AUDIO_PACKET_CONTROL2__AFMT_AUDIO_CHANNEL_ENABLE__SHIFT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"failed to setup AVI infoframe: %zd\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"failed to pack AVI infoframe: %zd\0A\00", align 1
@HDMI_AVI_INFO_SEND = common dso_local global i32 0, align 4
@HDMI_AVI_INFO_CONT = common dso_local global i32 0, align 4
@HDMI_AVI_INFO_LINE = common dso_local global i32 0, align 4
@AFMT_AUDIO_SAMPLE_SEND = common dso_local global i32 0, align 4
@mmAFMT_RAMP_CONTROL0 = common dso_local global i64 0, align 8
@mmAFMT_RAMP_CONTROL1 = common dso_local global i64 0, align 8
@mmAFMT_RAMP_CONTROL2 = common dso_local global i64 0, align 8
@mmAFMT_RAMP_CONTROL3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, %struct.drm_display_mode*)* @dce_v11_0_afmt_setmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce_v11_0_afmt_setmode(%struct.drm_encoder* %0, %struct.drm_display_mode* %1) #0 {
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
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.amdgpu_crtc*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %4, align 8
  %18 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %19 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %18, i32 0, i32 1
  %20 = load %struct.drm_device*, %struct.drm_device** %19, align 8
  store %struct.drm_device* %20, %struct.drm_device** %5, align 8
  %21 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %22 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %21, i32 0, i32 0
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %22, align 8
  store %struct.amdgpu_device* %23, %struct.amdgpu_device** %6, align 8
  %24 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %25 = call %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder* %24)
  store %struct.amdgpu_encoder* %25, %struct.amdgpu_encoder** %7, align 8
  %26 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %7, align 8
  %27 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %26, i32 0, i32 0
  %28 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %27, align 8
  store %struct.amdgpu_encoder_atom_dig* %28, %struct.amdgpu_encoder_atom_dig** %8, align 8
  %29 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %30 = call %struct.drm_connector* @amdgpu_get_connector_for_encoder(%struct.drm_encoder* %29)
  store %struct.drm_connector* %30, %struct.drm_connector** %9, align 8
  %31 = load i32, i32* @HDMI_INFOFRAME_HEADER_SIZE, align 4
  %32 = load i32, i32* @HDMI_AVI_INFOFRAME_SIZE, align 4
  %33 = add nsw i32 %31, %32
  %34 = zext i32 %33 to i64
  %35 = call i8* @llvm.stacksave()
  store i8* %35, i8** %10, align 8
  %36 = alloca i32, i64 %34, align 16
  store i64 %34, i64* %11, align 8
  store i32 8, i32* %15, align 4
  %37 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %8, align 8
  %38 = icmp ne %struct.amdgpu_encoder_atom_dig* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %2
  %40 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %8, align 8
  %41 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = icmp ne %struct.TYPE_2__* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %39, %2
  store i32 1, i32* %16, align 4
  br label %593

45:                                               ; preds = %39
  %46 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %8, align 8
  %47 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %45
  store i32 1, i32* %16, align 4
  br label %593

53:                                               ; preds = %45
  %54 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %55 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %53
  %59 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %60 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call %struct.amdgpu_crtc* @to_amdgpu_crtc(i64 %61)
  store %struct.amdgpu_crtc* %62, %struct.amdgpu_crtc** %17, align 8
  %63 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %17, align 8
  %64 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %15, align 4
  br label %66

66:                                               ; preds = %58, %53
  %67 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %68 = call i32 @dce_v11_0_audio_get_pin(%struct.amdgpu_device* %67)
  %69 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %8, align 8
  %70 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store i32 %68, i32* %72, align 8
  %73 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %74 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %8, align 8
  %75 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @dce_v11_0_audio_enable(%struct.amdgpu_device* %73, i32 %78, i32 0)
  %80 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %81 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %82 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @dce_v11_0_audio_set_dto(%struct.drm_encoder* %80, i32 %83)
  %85 = load i64, i64* @mmHDMI_VBI_PACKET_CONTROL, align 8
  %86 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %8, align 8
  %87 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %85, %90
  %92 = call i32 @RREG32(i64 %91)
  store i32 %92, i32* %14, align 4
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* @HDMI_VBI_PACKET_CONTROL, align 4
  %95 = load i32, i32* @HDMI_NULL_SEND, align 4
  %96 = call i32 @REG_SET_FIELD(i32 %93, i32 %94, i32 %95, i32 1)
  store i32 %96, i32* %14, align 4
  %97 = load i64, i64* @mmHDMI_VBI_PACKET_CONTROL, align 8
  %98 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %8, align 8
  %99 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %98, i32 0, i32 0
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = add nsw i64 %97, %102
  %104 = load i32, i32* %14, align 4
  %105 = call i32 @WREG32(i64 %103, i32 %104)
  %106 = load i64, i64* @mmAFMT_AUDIO_CRC_CONTROL, align 8
  %107 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %8, align 8
  %108 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %107, i32 0, i32 0
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = add nsw i64 %106, %111
  %113 = call i32 @WREG32(i64 %112, i32 4096)
  %114 = load i64, i64* @mmHDMI_CONTROL, align 8
  %115 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %8, align 8
  %116 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %115, i32 0, i32 0
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %114, %119
  %121 = call i32 @RREG32(i64 %120)
  store i32 %121, i32* %14, align 4
  %122 = load i32, i32* %15, align 4
  switch i32 %122, label %124 [
    i32 0, label %123
    i32 6, label %123
    i32 8, label %123
    i32 16, label %123
    i32 10, label %138
    i32 12, label %151
  ]

123:                                              ; preds = %66, %66, %66, %66
  br label %124

124:                                              ; preds = %66, %123
  %125 = load i32, i32* %14, align 4
  %126 = load i32, i32* @HDMI_CONTROL, align 4
  %127 = load i32, i32* @HDMI_DEEP_COLOR_ENABLE, align 4
  %128 = call i32 @REG_SET_FIELD(i32 %125, i32 %126, i32 %127, i32 0)
  store i32 %128, i32* %14, align 4
  %129 = load i32, i32* %14, align 4
  %130 = load i32, i32* @HDMI_CONTROL, align 4
  %131 = load i32, i32* @HDMI_DEEP_COLOR_DEPTH, align 4
  %132 = call i32 @REG_SET_FIELD(i32 %129, i32 %130, i32 %131, i32 0)
  store i32 %132, i32* %14, align 4
  %133 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  %134 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %15, align 4
  %137 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %135, i32 %136)
  br label %164

138:                                              ; preds = %66
  %139 = load i32, i32* %14, align 4
  %140 = load i32, i32* @HDMI_CONTROL, align 4
  %141 = load i32, i32* @HDMI_DEEP_COLOR_ENABLE, align 4
  %142 = call i32 @REG_SET_FIELD(i32 %139, i32 %140, i32 %141, i32 1)
  store i32 %142, i32* %14, align 4
  %143 = load i32, i32* %14, align 4
  %144 = load i32, i32* @HDMI_CONTROL, align 4
  %145 = load i32, i32* @HDMI_DEEP_COLOR_DEPTH, align 4
  %146 = call i32 @REG_SET_FIELD(i32 %143, i32 %144, i32 %145, i32 1)
  store i32 %146, i32* %14, align 4
  %147 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  %148 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %149)
  br label %164

151:                                              ; preds = %66
  %152 = load i32, i32* %14, align 4
  %153 = load i32, i32* @HDMI_CONTROL, align 4
  %154 = load i32, i32* @HDMI_DEEP_COLOR_ENABLE, align 4
  %155 = call i32 @REG_SET_FIELD(i32 %152, i32 %153, i32 %154, i32 1)
  store i32 %155, i32* %14, align 4
  %156 = load i32, i32* %14, align 4
  %157 = load i32, i32* @HDMI_CONTROL, align 4
  %158 = load i32, i32* @HDMI_DEEP_COLOR_DEPTH, align 4
  %159 = call i32 @REG_SET_FIELD(i32 %156, i32 %157, i32 %158, i32 2)
  store i32 %159, i32* %14, align 4
  %160 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  %161 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %162)
  br label %164

164:                                              ; preds = %151, %138, %124
  %165 = load i64, i64* @mmHDMI_CONTROL, align 8
  %166 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %8, align 8
  %167 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %166, i32 0, i32 0
  %168 = load %struct.TYPE_2__*, %struct.TYPE_2__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = add nsw i64 %165, %170
  %172 = load i32, i32* %14, align 4
  %173 = call i32 @WREG32(i64 %171, i32 %172)
  %174 = load i64, i64* @mmHDMI_VBI_PACKET_CONTROL, align 8
  %175 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %8, align 8
  %176 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %175, i32 0, i32 0
  %177 = load %struct.TYPE_2__*, %struct.TYPE_2__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = add nsw i64 %174, %179
  %181 = call i32 @RREG32(i64 %180)
  store i32 %181, i32* %14, align 4
  %182 = load i32, i32* %14, align 4
  %183 = load i32, i32* @HDMI_VBI_PACKET_CONTROL, align 4
  %184 = load i32, i32* @HDMI_NULL_SEND, align 4
  %185 = call i32 @REG_SET_FIELD(i32 %182, i32 %183, i32 %184, i32 1)
  store i32 %185, i32* %14, align 4
  %186 = load i32, i32* %14, align 4
  %187 = load i32, i32* @HDMI_VBI_PACKET_CONTROL, align 4
  %188 = load i32, i32* @HDMI_GC_SEND, align 4
  %189 = call i32 @REG_SET_FIELD(i32 %186, i32 %187, i32 %188, i32 1)
  store i32 %189, i32* %14, align 4
  %190 = load i32, i32* %14, align 4
  %191 = load i32, i32* @HDMI_VBI_PACKET_CONTROL, align 4
  %192 = load i32, i32* @HDMI_GC_CONT, align 4
  %193 = call i32 @REG_SET_FIELD(i32 %190, i32 %191, i32 %192, i32 1)
  store i32 %193, i32* %14, align 4
  %194 = load i64, i64* @mmHDMI_VBI_PACKET_CONTROL, align 8
  %195 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %8, align 8
  %196 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %195, i32 0, i32 0
  %197 = load %struct.TYPE_2__*, %struct.TYPE_2__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = add nsw i64 %194, %199
  %201 = load i32, i32* %14, align 4
  %202 = call i32 @WREG32(i64 %200, i32 %201)
  %203 = load i64, i64* @mmHDMI_INFOFRAME_CONTROL0, align 8
  %204 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %8, align 8
  %205 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %204, i32 0, i32 0
  %206 = load %struct.TYPE_2__*, %struct.TYPE_2__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = add nsw i64 %203, %208
  %210 = call i32 @RREG32(i64 %209)
  store i32 %210, i32* %14, align 4
  %211 = load i32, i32* %14, align 4
  %212 = load i32, i32* @HDMI_INFOFRAME_CONTROL0, align 4
  %213 = load i32, i32* @HDMI_AUDIO_INFO_SEND, align 4
  %214 = call i32 @REG_SET_FIELD(i32 %211, i32 %212, i32 %213, i32 1)
  store i32 %214, i32* %14, align 4
  %215 = load i32, i32* %14, align 4
  %216 = load i32, i32* @HDMI_INFOFRAME_CONTROL0, align 4
  %217 = load i32, i32* @HDMI_AUDIO_INFO_CONT, align 4
  %218 = call i32 @REG_SET_FIELD(i32 %215, i32 %216, i32 %217, i32 1)
  store i32 %218, i32* %14, align 4
  %219 = load i64, i64* @mmHDMI_INFOFRAME_CONTROL0, align 8
  %220 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %8, align 8
  %221 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %220, i32 0, i32 0
  %222 = load %struct.TYPE_2__*, %struct.TYPE_2__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %222, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = add nsw i64 %219, %224
  %226 = load i32, i32* %14, align 4
  %227 = call i32 @WREG32(i64 %225, i32 %226)
  %228 = load i64, i64* @mmAFMT_INFOFRAME_CONTROL0, align 8
  %229 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %8, align 8
  %230 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %229, i32 0, i32 0
  %231 = load %struct.TYPE_2__*, %struct.TYPE_2__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = add nsw i64 %228, %233
  %235 = call i32 @RREG32(i64 %234)
  store i32 %235, i32* %14, align 4
  %236 = load i32, i32* %14, align 4
  %237 = load i32, i32* @AFMT_INFOFRAME_CONTROL0, align 4
  %238 = load i32, i32* @AFMT_AUDIO_INFO_UPDATE, align 4
  %239 = call i32 @REG_SET_FIELD(i32 %236, i32 %237, i32 %238, i32 1)
  store i32 %239, i32* %14, align 4
  %240 = load i64, i64* @mmAFMT_INFOFRAME_CONTROL0, align 8
  %241 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %8, align 8
  %242 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %241, i32 0, i32 0
  %243 = load %struct.TYPE_2__*, %struct.TYPE_2__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %243, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  %246 = add nsw i64 %240, %245
  %247 = load i32, i32* %14, align 4
  %248 = call i32 @WREG32(i64 %246, i32 %247)
  %249 = load i64, i64* @mmHDMI_INFOFRAME_CONTROL1, align 8
  %250 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %8, align 8
  %251 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %250, i32 0, i32 0
  %252 = load %struct.TYPE_2__*, %struct.TYPE_2__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %252, i32 0, i32 1
  %254 = load i64, i64* %253, align 8
  %255 = add nsw i64 %249, %254
  %256 = call i32 @RREG32(i64 %255)
  store i32 %256, i32* %14, align 4
  %257 = load i32, i32* %14, align 4
  %258 = load i32, i32* @HDMI_INFOFRAME_CONTROL1, align 4
  %259 = load i32, i32* @HDMI_AUDIO_INFO_LINE, align 4
  %260 = call i32 @REG_SET_FIELD(i32 %257, i32 %258, i32 %259, i32 2)
  store i32 %260, i32* %14, align 4
  %261 = load i64, i64* @mmHDMI_INFOFRAME_CONTROL1, align 8
  %262 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %8, align 8
  %263 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %262, i32 0, i32 0
  %264 = load %struct.TYPE_2__*, %struct.TYPE_2__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %264, i32 0, i32 1
  %266 = load i64, i64* %265, align 8
  %267 = add nsw i64 %261, %266
  %268 = load i32, i32* %14, align 4
  %269 = call i32 @WREG32(i64 %267, i32 %268)
  %270 = load i64, i64* @mmHDMI_GC, align 8
  %271 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %8, align 8
  %272 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %271, i32 0, i32 0
  %273 = load %struct.TYPE_2__*, %struct.TYPE_2__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %273, i32 0, i32 1
  %275 = load i64, i64* %274, align 8
  %276 = add nsw i64 %270, %275
  %277 = call i32 @WREG32(i64 %276, i32 0)
  %278 = load i64, i64* @mmHDMI_AUDIO_PACKET_CONTROL, align 8
  %279 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %8, align 8
  %280 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %279, i32 0, i32 0
  %281 = load %struct.TYPE_2__*, %struct.TYPE_2__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %281, i32 0, i32 1
  %283 = load i64, i64* %282, align 8
  %284 = add nsw i64 %278, %283
  %285 = call i32 @RREG32(i64 %284)
  store i32 %285, i32* %14, align 4
  %286 = load i32, i32* %14, align 4
  %287 = load i32, i32* @HDMI_AUDIO_PACKET_CONTROL, align 4
  %288 = load i32, i32* @HDMI_AUDIO_DELAY_EN, align 4
  %289 = call i32 @REG_SET_FIELD(i32 %286, i32 %287, i32 %288, i32 1)
  store i32 %289, i32* %14, align 4
  %290 = load i32, i32* %14, align 4
  %291 = load i32, i32* @HDMI_AUDIO_PACKET_CONTROL, align 4
  %292 = load i32, i32* @HDMI_AUDIO_PACKETS_PER_LINE, align 4
  %293 = call i32 @REG_SET_FIELD(i32 %290, i32 %291, i32 %292, i32 3)
  store i32 %293, i32* %14, align 4
  %294 = load i64, i64* @mmHDMI_AUDIO_PACKET_CONTROL, align 8
  %295 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %8, align 8
  %296 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %295, i32 0, i32 0
  %297 = load %struct.TYPE_2__*, %struct.TYPE_2__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %297, i32 0, i32 1
  %299 = load i64, i64* %298, align 8
  %300 = add nsw i64 %294, %299
  %301 = load i32, i32* %14, align 4
  %302 = call i32 @WREG32(i64 %300, i32 %301)
  %303 = load i64, i64* @mmAFMT_AUDIO_PACKET_CONTROL, align 8
  %304 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %8, align 8
  %305 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %304, i32 0, i32 0
  %306 = load %struct.TYPE_2__*, %struct.TYPE_2__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %306, i32 0, i32 1
  %308 = load i64, i64* %307, align 8
  %309 = add nsw i64 %303, %308
  %310 = call i32 @RREG32(i64 %309)
  store i32 %310, i32* %14, align 4
  %311 = load i32, i32* %14, align 4
  %312 = load i32, i32* @AFMT_AUDIO_PACKET_CONTROL, align 4
  %313 = load i32, i32* @AFMT_60958_CS_UPDATE, align 4
  %314 = call i32 @REG_SET_FIELD(i32 %311, i32 %312, i32 %313, i32 1)
  store i32 %314, i32* %14, align 4
  %315 = load i64, i64* @mmAFMT_AUDIO_PACKET_CONTROL, align 8
  %316 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %8, align 8
  %317 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %316, i32 0, i32 0
  %318 = load %struct.TYPE_2__*, %struct.TYPE_2__** %317, align 8
  %319 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %318, i32 0, i32 1
  %320 = load i64, i64* %319, align 8
  %321 = add nsw i64 %315, %320
  %322 = load i32, i32* %14, align 4
  %323 = call i32 @WREG32(i64 %321, i32 %322)
  %324 = load i64, i64* @mmHDMI_ACR_PACKET_CONTROL, align 8
  %325 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %8, align 8
  %326 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %325, i32 0, i32 0
  %327 = load %struct.TYPE_2__*, %struct.TYPE_2__** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %327, i32 0, i32 1
  %329 = load i64, i64* %328, align 8
  %330 = add nsw i64 %324, %329
  %331 = call i32 @RREG32(i64 %330)
  store i32 %331, i32* %14, align 4
  %332 = load i32, i32* %15, align 4
  %333 = icmp sgt i32 %332, 8
  br i1 %333, label %334, label %339

334:                                              ; preds = %164
  %335 = load i32, i32* %14, align 4
  %336 = load i32, i32* @HDMI_ACR_PACKET_CONTROL, align 4
  %337 = load i32, i32* @HDMI_ACR_SOURCE, align 4
  %338 = call i32 @REG_SET_FIELD(i32 %335, i32 %336, i32 %337, i32 0)
  store i32 %338, i32* %14, align 4
  br label %344

339:                                              ; preds = %164
  %340 = load i32, i32* %14, align 4
  %341 = load i32, i32* @HDMI_ACR_PACKET_CONTROL, align 4
  %342 = load i32, i32* @HDMI_ACR_SOURCE, align 4
  %343 = call i32 @REG_SET_FIELD(i32 %340, i32 %341, i32 %342, i32 1)
  store i32 %343, i32* %14, align 4
  br label %344

344:                                              ; preds = %339, %334
  %345 = load i32, i32* %14, align 4
  %346 = load i32, i32* @HDMI_ACR_PACKET_CONTROL, align 4
  %347 = load i32, i32* @HDMI_ACR_AUTO_SEND, align 4
  %348 = call i32 @REG_SET_FIELD(i32 %345, i32 %346, i32 %347, i32 1)
  store i32 %348, i32* %14, align 4
  %349 = load i64, i64* @mmHDMI_ACR_PACKET_CONTROL, align 8
  %350 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %8, align 8
  %351 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %350, i32 0, i32 0
  %352 = load %struct.TYPE_2__*, %struct.TYPE_2__** %351, align 8
  %353 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %352, i32 0, i32 1
  %354 = load i64, i64* %353, align 8
  %355 = add nsw i64 %349, %354
  %356 = load i32, i32* %14, align 4
  %357 = call i32 @WREG32(i64 %355, i32 %356)
  %358 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %359 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %360 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 4
  %362 = call i32 @dce_v11_0_afmt_update_ACR(%struct.drm_encoder* %358, i32 %361)
  %363 = load i64, i64* @mmAFMT_60958_0, align 8
  %364 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %8, align 8
  %365 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %364, i32 0, i32 0
  %366 = load %struct.TYPE_2__*, %struct.TYPE_2__** %365, align 8
  %367 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %366, i32 0, i32 1
  %368 = load i64, i64* %367, align 8
  %369 = add nsw i64 %363, %368
  %370 = call i32 @RREG32(i64 %369)
  store i32 %370, i32* %14, align 4
  %371 = load i32, i32* %14, align 4
  %372 = load i32, i32* @AFMT_60958_0, align 4
  %373 = load i32, i32* @AFMT_60958_CS_CHANNEL_NUMBER_L, align 4
  %374 = call i32 @REG_SET_FIELD(i32 %371, i32 %372, i32 %373, i32 1)
  store i32 %374, i32* %14, align 4
  %375 = load i64, i64* @mmAFMT_60958_0, align 8
  %376 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %8, align 8
  %377 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %376, i32 0, i32 0
  %378 = load %struct.TYPE_2__*, %struct.TYPE_2__** %377, align 8
  %379 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %378, i32 0, i32 1
  %380 = load i64, i64* %379, align 8
  %381 = add nsw i64 %375, %380
  %382 = load i32, i32* %14, align 4
  %383 = call i32 @WREG32(i64 %381, i32 %382)
  %384 = load i64, i64* @mmAFMT_60958_1, align 8
  %385 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %8, align 8
  %386 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %385, i32 0, i32 0
  %387 = load %struct.TYPE_2__*, %struct.TYPE_2__** %386, align 8
  %388 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %387, i32 0, i32 1
  %389 = load i64, i64* %388, align 8
  %390 = add nsw i64 %384, %389
  %391 = call i32 @RREG32(i64 %390)
  store i32 %391, i32* %14, align 4
  %392 = load i32, i32* %14, align 4
  %393 = load i32, i32* @AFMT_60958_1, align 4
  %394 = load i32, i32* @AFMT_60958_CS_CHANNEL_NUMBER_R, align 4
  %395 = call i32 @REG_SET_FIELD(i32 %392, i32 %393, i32 %394, i32 2)
  store i32 %395, i32* %14, align 4
  %396 = load i64, i64* @mmAFMT_60958_1, align 8
  %397 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %8, align 8
  %398 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %397, i32 0, i32 0
  %399 = load %struct.TYPE_2__*, %struct.TYPE_2__** %398, align 8
  %400 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %399, i32 0, i32 1
  %401 = load i64, i64* %400, align 8
  %402 = add nsw i64 %396, %401
  %403 = load i32, i32* %14, align 4
  %404 = call i32 @WREG32(i64 %402, i32 %403)
  %405 = load i64, i64* @mmAFMT_60958_2, align 8
  %406 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %8, align 8
  %407 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %406, i32 0, i32 0
  %408 = load %struct.TYPE_2__*, %struct.TYPE_2__** %407, align 8
  %409 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %408, i32 0, i32 1
  %410 = load i64, i64* %409, align 8
  %411 = add nsw i64 %405, %410
  %412 = call i32 @RREG32(i64 %411)
  store i32 %412, i32* %14, align 4
  %413 = load i32, i32* %14, align 4
  %414 = load i32, i32* @AFMT_60958_2, align 4
  %415 = load i32, i32* @AFMT_60958_CS_CHANNEL_NUMBER_2, align 4
  %416 = call i32 @REG_SET_FIELD(i32 %413, i32 %414, i32 %415, i32 3)
  store i32 %416, i32* %14, align 4
  %417 = load i32, i32* %14, align 4
  %418 = load i32, i32* @AFMT_60958_2, align 4
  %419 = load i32, i32* @AFMT_60958_CS_CHANNEL_NUMBER_3, align 4
  %420 = call i32 @REG_SET_FIELD(i32 %417, i32 %418, i32 %419, i32 4)
  store i32 %420, i32* %14, align 4
  %421 = load i32, i32* %14, align 4
  %422 = load i32, i32* @AFMT_60958_2, align 4
  %423 = load i32, i32* @AFMT_60958_CS_CHANNEL_NUMBER_4, align 4
  %424 = call i32 @REG_SET_FIELD(i32 %421, i32 %422, i32 %423, i32 5)
  store i32 %424, i32* %14, align 4
  %425 = load i32, i32* %14, align 4
  %426 = load i32, i32* @AFMT_60958_2, align 4
  %427 = load i32, i32* @AFMT_60958_CS_CHANNEL_NUMBER_5, align 4
  %428 = call i32 @REG_SET_FIELD(i32 %425, i32 %426, i32 %427, i32 6)
  store i32 %428, i32* %14, align 4
  %429 = load i32, i32* %14, align 4
  %430 = load i32, i32* @AFMT_60958_2, align 4
  %431 = load i32, i32* @AFMT_60958_CS_CHANNEL_NUMBER_6, align 4
  %432 = call i32 @REG_SET_FIELD(i32 %429, i32 %430, i32 %431, i32 7)
  store i32 %432, i32* %14, align 4
  %433 = load i32, i32* %14, align 4
  %434 = load i32, i32* @AFMT_60958_2, align 4
  %435 = load i32, i32* @AFMT_60958_CS_CHANNEL_NUMBER_7, align 4
  %436 = call i32 @REG_SET_FIELD(i32 %433, i32 %434, i32 %435, i32 8)
  store i32 %436, i32* %14, align 4
  %437 = load i64, i64* @mmAFMT_60958_2, align 8
  %438 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %8, align 8
  %439 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %438, i32 0, i32 0
  %440 = load %struct.TYPE_2__*, %struct.TYPE_2__** %439, align 8
  %441 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %440, i32 0, i32 1
  %442 = load i64, i64* %441, align 8
  %443 = add nsw i64 %437, %442
  %444 = load i32, i32* %14, align 4
  %445 = call i32 @WREG32(i64 %443, i32 %444)
  %446 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %447 = call i32 @dce_v11_0_audio_write_speaker_allocation(%struct.drm_encoder* %446)
  %448 = load i64, i64* @mmAFMT_AUDIO_PACKET_CONTROL2, align 8
  %449 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %8, align 8
  %450 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %449, i32 0, i32 0
  %451 = load %struct.TYPE_2__*, %struct.TYPE_2__** %450, align 8
  %452 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %451, i32 0, i32 1
  %453 = load i64, i64* %452, align 8
  %454 = add nsw i64 %448, %453
  %455 = load i32, i32* @AFMT_AUDIO_PACKET_CONTROL2__AFMT_AUDIO_CHANNEL_ENABLE__SHIFT, align 4
  %456 = shl i32 255, %455
  %457 = call i32 @WREG32(i64 %454, i32 %456)
  %458 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %459 = call i32 @dce_v11_0_afmt_audio_select_pin(%struct.drm_encoder* %458)
  %460 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %461 = call i32 @dce_v11_0_audio_write_sad_regs(%struct.drm_encoder* %460)
  %462 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %463 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %464 = call i32 @dce_v11_0_audio_write_latency_fields(%struct.drm_encoder* %462, %struct.drm_display_mode* %463)
  %465 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  %466 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %467 = call i64 @drm_hdmi_avi_infoframe_from_display_mode(%struct.hdmi_avi_infoframe* %12, %struct.drm_connector* %465, %struct.drm_display_mode* %466)
  store i64 %467, i64* %13, align 8
  %468 = load i64, i64* %13, align 8
  %469 = icmp slt i64 %468, 0
  br i1 %469, label %470, label %473

470:                                              ; preds = %344
  %471 = load i64, i64* %13, align 8
  %472 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i64 %471)
  store i32 1, i32* %16, align 4
  br label %593

473:                                              ; preds = %344
  %474 = mul nuw i64 4, %34
  %475 = trunc i64 %474 to i32
  %476 = call i64 @hdmi_avi_infoframe_pack(%struct.hdmi_avi_infoframe* %12, i32* %36, i32 %475)
  store i64 %476, i64* %13, align 8
  %477 = load i64, i64* %13, align 8
  %478 = icmp slt i64 %477, 0
  br i1 %478, label %479, label %482

479:                                              ; preds = %473
  %480 = load i64, i64* %13, align 8
  %481 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i64 %480)
  store i32 1, i32* %16, align 4
  br label %593

482:                                              ; preds = %473
  %483 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %484 = mul nuw i64 4, %34
  %485 = trunc i64 %484 to i32
  %486 = call i32 @dce_v11_0_afmt_update_avi_infoframe(%struct.drm_encoder* %483, i32* %36, i32 %485)
  %487 = load i64, i64* @mmHDMI_INFOFRAME_CONTROL0, align 8
  %488 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %8, align 8
  %489 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %488, i32 0, i32 0
  %490 = load %struct.TYPE_2__*, %struct.TYPE_2__** %489, align 8
  %491 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %490, i32 0, i32 1
  %492 = load i64, i64* %491, align 8
  %493 = add nsw i64 %487, %492
  %494 = call i32 @RREG32(i64 %493)
  store i32 %494, i32* %14, align 4
  %495 = load i32, i32* %14, align 4
  %496 = load i32, i32* @HDMI_INFOFRAME_CONTROL0, align 4
  %497 = load i32, i32* @HDMI_AVI_INFO_SEND, align 4
  %498 = call i32 @REG_SET_FIELD(i32 %495, i32 %496, i32 %497, i32 1)
  store i32 %498, i32* %14, align 4
  %499 = load i32, i32* %14, align 4
  %500 = load i32, i32* @HDMI_INFOFRAME_CONTROL0, align 4
  %501 = load i32, i32* @HDMI_AVI_INFO_CONT, align 4
  %502 = call i32 @REG_SET_FIELD(i32 %499, i32 %500, i32 %501, i32 1)
  store i32 %502, i32* %14, align 4
  %503 = load i64, i64* @mmHDMI_INFOFRAME_CONTROL0, align 8
  %504 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %8, align 8
  %505 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %504, i32 0, i32 0
  %506 = load %struct.TYPE_2__*, %struct.TYPE_2__** %505, align 8
  %507 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %506, i32 0, i32 1
  %508 = load i64, i64* %507, align 8
  %509 = add nsw i64 %503, %508
  %510 = load i32, i32* %14, align 4
  %511 = call i32 @WREG32(i64 %509, i32 %510)
  %512 = load i64, i64* @mmHDMI_INFOFRAME_CONTROL1, align 8
  %513 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %8, align 8
  %514 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %513, i32 0, i32 0
  %515 = load %struct.TYPE_2__*, %struct.TYPE_2__** %514, align 8
  %516 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %515, i32 0, i32 1
  %517 = load i64, i64* %516, align 8
  %518 = add nsw i64 %512, %517
  %519 = call i32 @RREG32(i64 %518)
  store i32 %519, i32* %14, align 4
  %520 = load i32, i32* %14, align 4
  %521 = load i32, i32* @HDMI_INFOFRAME_CONTROL1, align 4
  %522 = load i32, i32* @HDMI_AVI_INFO_LINE, align 4
  %523 = call i32 @REG_SET_FIELD(i32 %520, i32 %521, i32 %522, i32 2)
  store i32 %523, i32* %14, align 4
  %524 = load i64, i64* @mmHDMI_INFOFRAME_CONTROL1, align 8
  %525 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %8, align 8
  %526 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %525, i32 0, i32 0
  %527 = load %struct.TYPE_2__*, %struct.TYPE_2__** %526, align 8
  %528 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %527, i32 0, i32 1
  %529 = load i64, i64* %528, align 8
  %530 = add nsw i64 %524, %529
  %531 = load i32, i32* %14, align 4
  %532 = call i32 @WREG32(i64 %530, i32 %531)
  %533 = load i64, i64* @mmAFMT_AUDIO_PACKET_CONTROL, align 8
  %534 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %8, align 8
  %535 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %534, i32 0, i32 0
  %536 = load %struct.TYPE_2__*, %struct.TYPE_2__** %535, align 8
  %537 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %536, i32 0, i32 1
  %538 = load i64, i64* %537, align 8
  %539 = add nsw i64 %533, %538
  %540 = call i32 @RREG32(i64 %539)
  store i32 %540, i32* %14, align 4
  %541 = load i32, i32* %14, align 4
  %542 = load i32, i32* @AFMT_AUDIO_PACKET_CONTROL, align 4
  %543 = load i32, i32* @AFMT_AUDIO_SAMPLE_SEND, align 4
  %544 = call i32 @REG_SET_FIELD(i32 %541, i32 %542, i32 %543, i32 1)
  store i32 %544, i32* %14, align 4
  %545 = load i64, i64* @mmAFMT_AUDIO_PACKET_CONTROL, align 8
  %546 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %8, align 8
  %547 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %546, i32 0, i32 0
  %548 = load %struct.TYPE_2__*, %struct.TYPE_2__** %547, align 8
  %549 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %548, i32 0, i32 1
  %550 = load i64, i64* %549, align 8
  %551 = add nsw i64 %545, %550
  %552 = load i32, i32* %14, align 4
  %553 = call i32 @WREG32(i64 %551, i32 %552)
  %554 = load i64, i64* @mmAFMT_RAMP_CONTROL0, align 8
  %555 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %8, align 8
  %556 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %555, i32 0, i32 0
  %557 = load %struct.TYPE_2__*, %struct.TYPE_2__** %556, align 8
  %558 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %557, i32 0, i32 1
  %559 = load i64, i64* %558, align 8
  %560 = add nsw i64 %554, %559
  %561 = call i32 @WREG32(i64 %560, i32 16777215)
  %562 = load i64, i64* @mmAFMT_RAMP_CONTROL1, align 8
  %563 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %8, align 8
  %564 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %563, i32 0, i32 0
  %565 = load %struct.TYPE_2__*, %struct.TYPE_2__** %564, align 8
  %566 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %565, i32 0, i32 1
  %567 = load i64, i64* %566, align 8
  %568 = add nsw i64 %562, %567
  %569 = call i32 @WREG32(i64 %568, i32 8388607)
  %570 = load i64, i64* @mmAFMT_RAMP_CONTROL2, align 8
  %571 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %8, align 8
  %572 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %571, i32 0, i32 0
  %573 = load %struct.TYPE_2__*, %struct.TYPE_2__** %572, align 8
  %574 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %573, i32 0, i32 1
  %575 = load i64, i64* %574, align 8
  %576 = add nsw i64 %570, %575
  %577 = call i32 @WREG32(i64 %576, i32 1)
  %578 = load i64, i64* @mmAFMT_RAMP_CONTROL3, align 8
  %579 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %8, align 8
  %580 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %579, i32 0, i32 0
  %581 = load %struct.TYPE_2__*, %struct.TYPE_2__** %580, align 8
  %582 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %581, i32 0, i32 1
  %583 = load i64, i64* %582, align 8
  %584 = add nsw i64 %578, %583
  %585 = call i32 @WREG32(i64 %584, i32 1)
  %586 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %587 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %8, align 8
  %588 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %587, i32 0, i32 0
  %589 = load %struct.TYPE_2__*, %struct.TYPE_2__** %588, align 8
  %590 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %589, i32 0, i32 0
  %591 = load i32, i32* %590, align 8
  %592 = call i32 @dce_v11_0_audio_enable(%struct.amdgpu_device* %586, i32 %591, i32 1)
  store i32 0, i32* %16, align 4
  br label %593

593:                                              ; preds = %482, %479, %470, %52, %44
  %594 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %594)
  %595 = load i32, i32* %16, align 4
  switch i32 %595, label %597 [
    i32 0, label %596
    i32 1, label %596
  ]

596:                                              ; preds = %593, %593
  ret void

597:                                              ; preds = %593
  unreachable
}

declare dso_local %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.drm_connector* @amdgpu_get_connector_for_encoder(%struct.drm_encoder*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.amdgpu_crtc* @to_amdgpu_crtc(i64) #1

declare dso_local i32 @dce_v11_0_audio_get_pin(%struct.amdgpu_device*) #1

declare dso_local i32 @dce_v11_0_audio_enable(%struct.amdgpu_device*, i32, i32) #1

declare dso_local i32 @dce_v11_0_audio_set_dto(%struct.drm_encoder*, i32) #1

declare dso_local i32 @RREG32(i64) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32, ...) #1

declare dso_local i32 @dce_v11_0_afmt_update_ACR(%struct.drm_encoder*, i32) #1

declare dso_local i32 @dce_v11_0_audio_write_speaker_allocation(%struct.drm_encoder*) #1

declare dso_local i32 @dce_v11_0_afmt_audio_select_pin(%struct.drm_encoder*) #1

declare dso_local i32 @dce_v11_0_audio_write_sad_regs(%struct.drm_encoder*) #1

declare dso_local i32 @dce_v11_0_audio_write_latency_fields(%struct.drm_encoder*, %struct.drm_display_mode*) #1

declare dso_local i64 @drm_hdmi_avi_infoframe_from_display_mode(%struct.hdmi_avi_infoframe*, %struct.drm_connector*, %struct.drm_display_mode*) #1

declare dso_local i32 @DRM_ERROR(i8*, i64) #1

declare dso_local i64 @hdmi_avi_infoframe_pack(%struct.hdmi_avi_infoframe*, i32*, i32) #1

declare dso_local i32 @dce_v11_0_afmt_update_avi_infoframe(%struct.drm_encoder*, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/extr_cx2341x.c_cx2341x_ctrl_query.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/extr_cx2341x.c_cx2341x_ctrl_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cx2341x_mpeg_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_queryctrl = type { i32, i32 }

@V4L2_MPEG_STREAM_TYPE_MPEG2_PS = common dso_local global i32 0, align 4
@V4L2_MPEG_STREAM_TYPE_MPEG2_SVCD = common dso_local global i32 0, align 4
@CX2341X_CAP_HAS_SLICED_VBI = common dso_local global i32 0, align 4
@V4L2_MPEG_STREAM_VBI_FMT_NONE = common dso_local global i32 0, align 4
@V4L2_MPEG_STREAM_VBI_FMT_IVTV = common dso_local global i32 0, align 4
@default_params = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@V4L2_MPEG_AUDIO_SAMPLING_FREQ_44100 = common dso_local global i32 0, align 4
@V4L2_MPEG_AUDIO_SAMPLING_FREQ_32000 = common dso_local global i32 0, align 4
@V4L2_MPEG_AUDIO_SAMPLING_FREQ_48000 = common dso_local global i32 0, align 4
@CX2341X_CAP_HAS_AC3 = common dso_local global i32 0, align 4
@V4L2_MPEG_AUDIO_ENCODING_LAYER_2 = common dso_local global i32 0, align 4
@V4L2_MPEG_AUDIO_ENCODING_AC3 = common dso_local global i32 0, align 4
@V4L2_MPEG_AUDIO_L2_BITRATE_192K = common dso_local global i32 0, align 4
@V4L2_MPEG_AUDIO_L2_BITRATE_384K = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_INACTIVE = common dso_local global i32 0, align 4
@V4L2_MPEG_AUDIO_MODE_STEREO = common dso_local global i32 0, align 4
@V4L2_MPEG_AUDIO_MODE_MONO = common dso_local global i32 0, align 4
@V4L2_MPEG_AUDIO_MODE_EXTENSION_BOUND_4 = common dso_local global i32 0, align 4
@V4L2_MPEG_AUDIO_MODE_EXTENSION_BOUND_16 = common dso_local global i32 0, align 4
@V4L2_MPEG_AUDIO_MODE_JOINT_STEREO = common dso_local global i32 0, align 4
@V4L2_MPEG_AUDIO_EMPHASIS_NONE = common dso_local global i32 0, align 4
@V4L2_MPEG_AUDIO_EMPHASIS_CCITT_J17 = common dso_local global i32 0, align 4
@V4L2_MPEG_AUDIO_CRC_NONE = common dso_local global i32 0, align 4
@V4L2_MPEG_AUDIO_CRC_CRC16 = common dso_local global i32 0, align 4
@V4L2_MPEG_AUDIO_AC3_BITRATE_48K = common dso_local global i32 0, align 4
@V4L2_MPEG_AUDIO_AC3_BITRATE_448K = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_DISABLED = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_ENCODING_MPEG_1 = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_ENCODING_MPEG_2 = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_READ_ONLY = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_ASPECT_1x1 = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_ASPECT_221x100 = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_ASPECT_4x3 = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_BITRATE_MODE_VBR = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_BITRATE_MODE_CBR = common dso_local global i32 0, align 4
@V4L2_MPEG_CX2341X_VIDEO_SPATIAL_FILTER_MODE_MANUAL = common dso_local global i32 0, align 4
@V4L2_MPEG_CX2341X_VIDEO_SPATIAL_FILTER_MODE_AUTO = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_SLIDER = common dso_local global i32 0, align 4
@V4L2_MPEG_CX2341X_VIDEO_LUMA_SPATIAL_FILTER_TYPE_OFF = common dso_local global i32 0, align 4
@V4L2_MPEG_CX2341X_VIDEO_LUMA_SPATIAL_FILTER_TYPE_2D_SYM_NON_SEPARABLE = common dso_local global i32 0, align 4
@V4L2_MPEG_CX2341X_VIDEO_CHROMA_SPATIAL_FILTER_TYPE_OFF = common dso_local global i32 0, align 4
@V4L2_MPEG_CX2341X_VIDEO_CHROMA_SPATIAL_FILTER_TYPE_1D_HOR = common dso_local global i32 0, align 4
@V4L2_MPEG_CX2341X_VIDEO_TEMPORAL_FILTER_MODE_MANUAL = common dso_local global i32 0, align 4
@V4L2_MPEG_CX2341X_VIDEO_TEMPORAL_FILTER_MODE_AUTO = common dso_local global i32 0, align 4
@V4L2_MPEG_CX2341X_VIDEO_MEDIAN_FILTER_TYPE_OFF = common dso_local global i32 0, align 4
@V4L2_MPEG_CX2341X_VIDEO_MEDIAN_FILTER_TYPE_DIAG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx2341x_ctrl_query(%struct.cx2341x_mpeg_params* %0, %struct.v4l2_queryctrl* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cx2341x_mpeg_params*, align 8
  %5 = alloca %struct.v4l2_queryctrl*, align 8
  %6 = alloca i32, align 4
  store %struct.cx2341x_mpeg_params* %0, %struct.cx2341x_mpeg_params** %4, align 8
  store %struct.v4l2_queryctrl* %1, %struct.v4l2_queryctrl** %5, align 8
  %7 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %8 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %447 [
    i32 153, label %10
    i32 140, label %13
    i32 139, label %19
    i32 154, label %38
    i32 159, label %44
    i32 158, label %63
    i32 157, label %93
    i32 156, label %99
    i32 160, label %121
    i32 161, label %127
    i32 155, label %133
    i32 162, label %136
    i32 133, label %173
    i32 138, label %189
    i32 134, label %195
    i32 131, label %198
    i32 132, label %207
    i32 136, label %210
    i32 137, label %232
    i32 135, label %235
    i32 128, label %254
    i32 130, label %257
    i32 129, label %260
    i32 143, label %263
    i32 144, label %269
    i32 146, label %290
    i32 149, label %308
    i32 141, label %326
    i32 142, label %332
    i32 145, label %353
    i32 147, label %359
    i32 148, label %380
    i32 150, label %401
    i32 151, label %422
    i32 152, label %443
  ]

10:                                               ; preds = %2
  %11 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %12 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %11, i32 0, i32 0, i32 0, i32 0)
  store i32 %12, i32* %3, align 4
  br label %450

13:                                               ; preds = %2
  %14 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %15 = load i32, i32* @V4L2_MPEG_STREAM_TYPE_MPEG2_PS, align 4
  %16 = load i32, i32* @V4L2_MPEG_STREAM_TYPE_MPEG2_SVCD, align 4
  %17 = load i32, i32* @V4L2_MPEG_STREAM_TYPE_MPEG2_PS, align 4
  %18 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %14, i32 %15, i32 %16, i32 1, i32 %17)
  store i32 %18, i32* %3, align 4
  br label %450

19:                                               ; preds = %2
  %20 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %4, align 8
  %21 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @CX2341X_CAP_HAS_SLICED_VBI, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %19
  %27 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %28 = load i32, i32* @V4L2_MPEG_STREAM_VBI_FMT_NONE, align 4
  %29 = load i32, i32* @V4L2_MPEG_STREAM_VBI_FMT_IVTV, align 4
  %30 = load i32, i32* @V4L2_MPEG_STREAM_VBI_FMT_NONE, align 4
  %31 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %27, i32 %28, i32 %29, i32 1, i32 %30)
  store i32 %31, i32* %3, align 4
  br label %450

32:                                               ; preds = %19
  %33 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %34 = load i32, i32* @V4L2_MPEG_STREAM_VBI_FMT_NONE, align 4
  %35 = load i32, i32* @V4L2_MPEG_STREAM_VBI_FMT_NONE, align 4
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @default_params, i32 0, i32 15), align 4
  %37 = call i32 @cx2341x_ctrl_query_fill(%struct.v4l2_queryctrl* %33, i32 %34, i32 %35, i32 1, i32 %36)
  store i32 %37, i32* %3, align 4
  br label %450

38:                                               ; preds = %2
  %39 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %40 = load i32, i32* @V4L2_MPEG_AUDIO_SAMPLING_FREQ_44100, align 4
  %41 = load i32, i32* @V4L2_MPEG_AUDIO_SAMPLING_FREQ_32000, align 4
  %42 = load i32, i32* @V4L2_MPEG_AUDIO_SAMPLING_FREQ_48000, align 4
  %43 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %39, i32 %40, i32 %41, i32 1, i32 %42)
  store i32 %43, i32* %3, align 4
  br label %450

44:                                               ; preds = %2
  %45 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %4, align 8
  %46 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @CX2341X_CAP_HAS_AC3, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %44
  %52 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %53 = load i32, i32* @V4L2_MPEG_AUDIO_ENCODING_LAYER_2, align 4
  %54 = load i32, i32* @V4L2_MPEG_AUDIO_ENCODING_AC3, align 4
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @default_params, i32 0, i32 0), align 4
  %56 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %52, i32 %53, i32 %54, i32 1, i32 %55)
  store i32 %56, i32* %3, align 4
  br label %450

57:                                               ; preds = %44
  %58 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %59 = load i32, i32* @V4L2_MPEG_AUDIO_ENCODING_LAYER_2, align 4
  %60 = load i32, i32* @V4L2_MPEG_AUDIO_ENCODING_LAYER_2, align 4
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @default_params, i32 0, i32 0), align 4
  %62 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %58, i32 %59, i32 %60, i32 1, i32 %61)
  store i32 %62, i32* %3, align 4
  br label %450

63:                                               ; preds = %2
  %64 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %65 = load i32, i32* @V4L2_MPEG_AUDIO_L2_BITRATE_192K, align 4
  %66 = load i32, i32* @V4L2_MPEG_AUDIO_L2_BITRATE_384K, align 4
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @default_params, i32 0, i32 1), align 4
  %68 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %64, i32 %65, i32 %66, i32 1, i32 %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %63
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* %3, align 4
  br label %450

73:                                               ; preds = %63
  %74 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %4, align 8
  %75 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @CX2341X_CAP_HAS_AC3, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %92

80:                                               ; preds = %73
  %81 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %4, align 8
  %82 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @V4L2_MPEG_AUDIO_ENCODING_LAYER_2, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %80
  %87 = load i32, i32* @V4L2_CTRL_FLAG_INACTIVE, align 4
  %88 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %89 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %86, %80, %73
  store i32 0, i32* %3, align 4
  br label %450

93:                                               ; preds = %2
  %94 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %95 = load i32, i32* @V4L2_MPEG_AUDIO_MODE_STEREO, align 4
  %96 = load i32, i32* @V4L2_MPEG_AUDIO_MODE_MONO, align 4
  %97 = load i32, i32* @V4L2_MPEG_AUDIO_MODE_STEREO, align 4
  %98 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %94, i32 %95, i32 %96, i32 1, i32 %97)
  store i32 %98, i32* %3, align 4
  br label %450

99:                                               ; preds = %2
  %100 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %101 = load i32, i32* @V4L2_MPEG_AUDIO_MODE_EXTENSION_BOUND_4, align 4
  %102 = load i32, i32* @V4L2_MPEG_AUDIO_MODE_EXTENSION_BOUND_16, align 4
  %103 = load i32, i32* @V4L2_MPEG_AUDIO_MODE_EXTENSION_BOUND_4, align 4
  %104 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %100, i32 %101, i32 %102, i32 1, i32 %103)
  store i32 %104, i32* %6, align 4
  %105 = load i32, i32* %6, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %119

107:                                              ; preds = %99
  %108 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %4, align 8
  %109 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %108, i32 0, i32 8
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @V4L2_MPEG_AUDIO_MODE_JOINT_STEREO, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %113, label %119

113:                                              ; preds = %107
  %114 = load i32, i32* @V4L2_CTRL_FLAG_INACTIVE, align 4
  %115 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %116 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 4
  br label %119

119:                                              ; preds = %113, %107, %99
  %120 = load i32, i32* %6, align 4
  store i32 %120, i32* %3, align 4
  br label %450

121:                                              ; preds = %2
  %122 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %123 = load i32, i32* @V4L2_MPEG_AUDIO_EMPHASIS_NONE, align 4
  %124 = load i32, i32* @V4L2_MPEG_AUDIO_EMPHASIS_CCITT_J17, align 4
  %125 = load i32, i32* @V4L2_MPEG_AUDIO_EMPHASIS_NONE, align 4
  %126 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %122, i32 %123, i32 %124, i32 1, i32 %125)
  store i32 %126, i32* %3, align 4
  br label %450

127:                                              ; preds = %2
  %128 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %129 = load i32, i32* @V4L2_MPEG_AUDIO_CRC_NONE, align 4
  %130 = load i32, i32* @V4L2_MPEG_AUDIO_CRC_CRC16, align 4
  %131 = load i32, i32* @V4L2_MPEG_AUDIO_CRC_NONE, align 4
  %132 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %128, i32 %129, i32 %130, i32 1, i32 %131)
  store i32 %132, i32* %3, align 4
  br label %450

133:                                              ; preds = %2
  %134 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %135 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %134, i32 0, i32 1, i32 1, i32 0)
  store i32 %135, i32* %3, align 4
  br label %450

136:                                              ; preds = %2
  %137 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %138 = load i32, i32* @V4L2_MPEG_AUDIO_AC3_BITRATE_48K, align 4
  %139 = load i32, i32* @V4L2_MPEG_AUDIO_AC3_BITRATE_448K, align 4
  %140 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @default_params, i32 0, i32 2), align 4
  %141 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %137, i32 %138, i32 %139, i32 1, i32 %140)
  store i32 %141, i32* %6, align 4
  %142 = load i32, i32* %6, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %136
  %145 = load i32, i32* %6, align 4
  store i32 %145, i32* %3, align 4
  br label %450

146:                                              ; preds = %136
  %147 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %4, align 8
  %148 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @CX2341X_CAP_HAS_AC3, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %166

153:                                              ; preds = %146
  %154 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %4, align 8
  %155 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @V4L2_MPEG_AUDIO_ENCODING_AC3, align 4
  %158 = icmp ne i32 %156, %157
  br i1 %158, label %159, label %165

159:                                              ; preds = %153
  %160 = load i32, i32* @V4L2_CTRL_FLAG_INACTIVE, align 4
  %161 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %162 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = or i32 %163, %160
  store i32 %164, i32* %162, align 4
  br label %165

165:                                              ; preds = %159, %153
  br label %172

166:                                              ; preds = %146
  %167 = load i32, i32* @V4L2_CTRL_FLAG_DISABLED, align 4
  %168 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %169 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = or i32 %170, %167
  store i32 %171, i32* %169, align 4
  br label %172

172:                                              ; preds = %166, %165
  store i32 0, i32* %3, align 4
  br label %450

173:                                              ; preds = %2
  %174 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %175 = load i32, i32* @V4L2_MPEG_VIDEO_ENCODING_MPEG_1, align 4
  %176 = load i32, i32* @V4L2_MPEG_VIDEO_ENCODING_MPEG_2, align 4
  %177 = load i32, i32* @V4L2_MPEG_VIDEO_ENCODING_MPEG_2, align 4
  %178 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %174, i32 %175, i32 %176, i32 1, i32 %177)
  store i32 %178, i32* %6, align 4
  %179 = load i32, i32* %6, align 4
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %187

181:                                              ; preds = %173
  %182 = load i32, i32* @V4L2_CTRL_FLAG_READ_ONLY, align 4
  %183 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %184 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = or i32 %185, %182
  store i32 %186, i32* %184, align 4
  br label %187

187:                                              ; preds = %181, %173
  %188 = load i32, i32* %6, align 4
  store i32 %188, i32* %3, align 4
  br label %450

189:                                              ; preds = %2
  %190 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %191 = load i32, i32* @V4L2_MPEG_VIDEO_ASPECT_1x1, align 4
  %192 = load i32, i32* @V4L2_MPEG_VIDEO_ASPECT_221x100, align 4
  %193 = load i32, i32* @V4L2_MPEG_VIDEO_ASPECT_4x3, align 4
  %194 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %190, i32 %191, i32 %192, i32 1, i32 %193)
  store i32 %194, i32* %3, align 4
  br label %450

195:                                              ; preds = %2
  %196 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %197 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %196, i32 0, i32 33, i32 1, i32 2)
  store i32 %197, i32* %3, align 4
  br label %450

198:                                              ; preds = %2
  %199 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %200 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %4, align 8
  %201 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %200, i32 0, i32 7
  %202 = load i32, i32* %201, align 4
  %203 = icmp ne i32 %202, 0
  %204 = zext i1 %203 to i64
  %205 = select i1 %203, i32 12, i32 15
  %206 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %199, i32 1, i32 34, i32 1, i32 %205)
  store i32 %206, i32* %3, align 4
  br label %450

207:                                              ; preds = %2
  %208 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %209 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %208, i32 0, i32 1, i32 1, i32 1)
  store i32 %209, i32* %3, align 4
  br label %450

210:                                              ; preds = %2
  %211 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %212 = load i32, i32* @V4L2_MPEG_VIDEO_BITRATE_MODE_VBR, align 4
  %213 = load i32, i32* @V4L2_MPEG_VIDEO_BITRATE_MODE_CBR, align 4
  %214 = load i32, i32* @V4L2_MPEG_VIDEO_BITRATE_MODE_VBR, align 4
  %215 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %211, i32 %212, i32 %213, i32 1, i32 %214)
  store i32 %215, i32* %6, align 4
  %216 = load i32, i32* %6, align 4
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %230

218:                                              ; preds = %210
  %219 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %4, align 8
  %220 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* @V4L2_MPEG_VIDEO_ENCODING_MPEG_1, align 4
  %223 = icmp eq i32 %221, %222
  br i1 %223, label %224, label %230

224:                                              ; preds = %218
  %225 = load i32, i32* @V4L2_CTRL_FLAG_INACTIVE, align 4
  %226 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %227 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = or i32 %228, %225
  store i32 %229, i32* %227, align 4
  br label %230

230:                                              ; preds = %224, %218, %210
  %231 = load i32, i32* %6, align 4
  store i32 %231, i32* %3, align 4
  br label %450

232:                                              ; preds = %2
  %233 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %234 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %233, i32 0, i32 27000000, i32 1, i32 6000000)
  store i32 %234, i32* %3, align 4
  br label %450

235:                                              ; preds = %2
  %236 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %237 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %236, i32 0, i32 27000000, i32 1, i32 8000000)
  store i32 %237, i32* %6, align 4
  %238 = load i32, i32* %6, align 4
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %252

240:                                              ; preds = %235
  %241 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %4, align 8
  %242 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %241, i32 0, i32 3
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* @V4L2_MPEG_VIDEO_BITRATE_MODE_CBR, align 4
  %245 = icmp eq i32 %243, %244
  br i1 %245, label %246, label %252

246:                                              ; preds = %240
  %247 = load i32, i32* @V4L2_CTRL_FLAG_INACTIVE, align 4
  %248 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %249 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = or i32 %250, %247
  store i32 %251, i32* %249, align 4
  br label %252

252:                                              ; preds = %246, %240, %235
  %253 = load i32, i32* %6, align 4
  store i32 %253, i32* %3, align 4
  br label %450

254:                                              ; preds = %2
  %255 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %256 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %255, i32 0, i32 255, i32 1, i32 0)
  store i32 %256, i32* %3, align 4
  br label %450

257:                                              ; preds = %2
  %258 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %259 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %258, i32 0, i32 1, i32 1, i32 0)
  store i32 %259, i32* %3, align 4
  br label %450

260:                                              ; preds = %2
  %261 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %262 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %261, i32 0, i32 16777215, i32 1, i32 32896)
  store i32 %262, i32* %3, align 4
  br label %450

263:                                              ; preds = %2
  %264 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %265 = load i32, i32* @V4L2_MPEG_CX2341X_VIDEO_SPATIAL_FILTER_MODE_MANUAL, align 4
  %266 = load i32, i32* @V4L2_MPEG_CX2341X_VIDEO_SPATIAL_FILTER_MODE_AUTO, align 4
  %267 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @default_params, i32 0, i32 14), align 4
  %268 = call i32 @cx2341x_ctrl_query_fill(%struct.v4l2_queryctrl* %264, i32 %265, i32 %266, i32 1, i32 %267)
  store i32 %268, i32* %3, align 4
  br label %450

269:                                              ; preds = %2
  %270 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %271 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @default_params, i32 0, i32 13), align 4
  %272 = call i32 @cx2341x_ctrl_query_fill(%struct.v4l2_queryctrl* %270, i32 0, i32 15, i32 1, i32 %271)
  %273 = load i32, i32* @V4L2_CTRL_FLAG_SLIDER, align 4
  %274 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %275 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = or i32 %276, %273
  store i32 %277, i32* %275, align 4
  %278 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %4, align 8
  %279 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %278, i32 0, i32 4
  %280 = load i32, i32* %279, align 4
  %281 = load i32, i32* @V4L2_MPEG_CX2341X_VIDEO_SPATIAL_FILTER_MODE_AUTO, align 4
  %282 = icmp eq i32 %280, %281
  br i1 %282, label %283, label %289

283:                                              ; preds = %269
  %284 = load i32, i32* @V4L2_CTRL_FLAG_INACTIVE, align 4
  %285 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %286 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 4
  %288 = or i32 %287, %284
  store i32 %288, i32* %286, align 4
  br label %289

289:                                              ; preds = %283, %269
  store i32 0, i32* %3, align 4
  br label %450

290:                                              ; preds = %2
  %291 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %292 = load i32, i32* @V4L2_MPEG_CX2341X_VIDEO_LUMA_SPATIAL_FILTER_TYPE_OFF, align 4
  %293 = load i32, i32* @V4L2_MPEG_CX2341X_VIDEO_LUMA_SPATIAL_FILTER_TYPE_2D_SYM_NON_SEPARABLE, align 4
  %294 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @default_params, i32 0, i32 12), align 4
  %295 = call i32 @cx2341x_ctrl_query_fill(%struct.v4l2_queryctrl* %291, i32 %292, i32 %293, i32 1, i32 %294)
  %296 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %4, align 8
  %297 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %296, i32 0, i32 4
  %298 = load i32, i32* %297, align 4
  %299 = load i32, i32* @V4L2_MPEG_CX2341X_VIDEO_SPATIAL_FILTER_MODE_AUTO, align 4
  %300 = icmp eq i32 %298, %299
  br i1 %300, label %301, label %307

301:                                              ; preds = %290
  %302 = load i32, i32* @V4L2_CTRL_FLAG_INACTIVE, align 4
  %303 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %304 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  %306 = or i32 %305, %302
  store i32 %306, i32* %304, align 4
  br label %307

307:                                              ; preds = %301, %290
  store i32 0, i32* %3, align 4
  br label %450

308:                                              ; preds = %2
  %309 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %310 = load i32, i32* @V4L2_MPEG_CX2341X_VIDEO_CHROMA_SPATIAL_FILTER_TYPE_OFF, align 4
  %311 = load i32, i32* @V4L2_MPEG_CX2341X_VIDEO_CHROMA_SPATIAL_FILTER_TYPE_1D_HOR, align 4
  %312 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @default_params, i32 0, i32 11), align 4
  %313 = call i32 @cx2341x_ctrl_query_fill(%struct.v4l2_queryctrl* %309, i32 %310, i32 %311, i32 1, i32 %312)
  %314 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %4, align 8
  %315 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %314, i32 0, i32 4
  %316 = load i32, i32* %315, align 4
  %317 = load i32, i32* @V4L2_MPEG_CX2341X_VIDEO_SPATIAL_FILTER_MODE_AUTO, align 4
  %318 = icmp eq i32 %316, %317
  br i1 %318, label %319, label %325

319:                                              ; preds = %308
  %320 = load i32, i32* @V4L2_CTRL_FLAG_INACTIVE, align 4
  %321 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %322 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 4
  %324 = or i32 %323, %320
  store i32 %324, i32* %322, align 4
  br label %325

325:                                              ; preds = %319, %308
  store i32 0, i32* %3, align 4
  br label %450

326:                                              ; preds = %2
  %327 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %328 = load i32, i32* @V4L2_MPEG_CX2341X_VIDEO_TEMPORAL_FILTER_MODE_MANUAL, align 4
  %329 = load i32, i32* @V4L2_MPEG_CX2341X_VIDEO_TEMPORAL_FILTER_MODE_AUTO, align 4
  %330 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @default_params, i32 0, i32 10), align 4
  %331 = call i32 @cx2341x_ctrl_query_fill(%struct.v4l2_queryctrl* %327, i32 %328, i32 %329, i32 1, i32 %330)
  store i32 %331, i32* %3, align 4
  br label %450

332:                                              ; preds = %2
  %333 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %334 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @default_params, i32 0, i32 9), align 4
  %335 = call i32 @cx2341x_ctrl_query_fill(%struct.v4l2_queryctrl* %333, i32 0, i32 31, i32 1, i32 %334)
  %336 = load i32, i32* @V4L2_CTRL_FLAG_SLIDER, align 4
  %337 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %338 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %337, i32 0, i32 1
  %339 = load i32, i32* %338, align 4
  %340 = or i32 %339, %336
  store i32 %340, i32* %338, align 4
  %341 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %4, align 8
  %342 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %341, i32 0, i32 5
  %343 = load i32, i32* %342, align 4
  %344 = load i32, i32* @V4L2_MPEG_CX2341X_VIDEO_TEMPORAL_FILTER_MODE_AUTO, align 4
  %345 = icmp eq i32 %343, %344
  br i1 %345, label %346, label %352

346:                                              ; preds = %332
  %347 = load i32, i32* @V4L2_CTRL_FLAG_INACTIVE, align 4
  %348 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %349 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %348, i32 0, i32 1
  %350 = load i32, i32* %349, align 4
  %351 = or i32 %350, %347
  store i32 %351, i32* %349, align 4
  br label %352

352:                                              ; preds = %346, %332
  store i32 0, i32* %3, align 4
  br label %450

353:                                              ; preds = %2
  %354 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %355 = load i32, i32* @V4L2_MPEG_CX2341X_VIDEO_MEDIAN_FILTER_TYPE_OFF, align 4
  %356 = load i32, i32* @V4L2_MPEG_CX2341X_VIDEO_MEDIAN_FILTER_TYPE_DIAG, align 4
  %357 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @default_params, i32 0, i32 8), align 4
  %358 = call i32 @cx2341x_ctrl_query_fill(%struct.v4l2_queryctrl* %354, i32 %355, i32 %356, i32 1, i32 %357)
  store i32 %358, i32* %3, align 4
  br label %450

359:                                              ; preds = %2
  %360 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %361 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @default_params, i32 0, i32 7), align 4
  %362 = call i32 @cx2341x_ctrl_query_fill(%struct.v4l2_queryctrl* %360, i32 0, i32 255, i32 1, i32 %361)
  %363 = load i32, i32* @V4L2_CTRL_FLAG_SLIDER, align 4
  %364 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %365 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %364, i32 0, i32 1
  %366 = load i32, i32* %365, align 4
  %367 = or i32 %366, %363
  store i32 %367, i32* %365, align 4
  %368 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %4, align 8
  %369 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %368, i32 0, i32 6
  %370 = load i32, i32* %369, align 4
  %371 = load i32, i32* @V4L2_MPEG_CX2341X_VIDEO_MEDIAN_FILTER_TYPE_OFF, align 4
  %372 = icmp eq i32 %370, %371
  br i1 %372, label %373, label %379

373:                                              ; preds = %359
  %374 = load i32, i32* @V4L2_CTRL_FLAG_INACTIVE, align 4
  %375 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %376 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %375, i32 0, i32 1
  %377 = load i32, i32* %376, align 4
  %378 = or i32 %377, %374
  store i32 %378, i32* %376, align 4
  br label %379

379:                                              ; preds = %373, %359
  store i32 0, i32* %3, align 4
  br label %450

380:                                              ; preds = %2
  %381 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %382 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @default_params, i32 0, i32 6), align 4
  %383 = call i32 @cx2341x_ctrl_query_fill(%struct.v4l2_queryctrl* %381, i32 0, i32 255, i32 1, i32 %382)
  %384 = load i32, i32* @V4L2_CTRL_FLAG_SLIDER, align 4
  %385 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %386 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %385, i32 0, i32 1
  %387 = load i32, i32* %386, align 4
  %388 = or i32 %387, %384
  store i32 %388, i32* %386, align 4
  %389 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %4, align 8
  %390 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %389, i32 0, i32 6
  %391 = load i32, i32* %390, align 4
  %392 = load i32, i32* @V4L2_MPEG_CX2341X_VIDEO_MEDIAN_FILTER_TYPE_OFF, align 4
  %393 = icmp eq i32 %391, %392
  br i1 %393, label %394, label %400

394:                                              ; preds = %380
  %395 = load i32, i32* @V4L2_CTRL_FLAG_INACTIVE, align 4
  %396 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %397 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %396, i32 0, i32 1
  %398 = load i32, i32* %397, align 4
  %399 = or i32 %398, %395
  store i32 %399, i32* %397, align 4
  br label %400

400:                                              ; preds = %394, %380
  store i32 0, i32* %3, align 4
  br label %450

401:                                              ; preds = %2
  %402 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %403 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @default_params, i32 0, i32 5), align 4
  %404 = call i32 @cx2341x_ctrl_query_fill(%struct.v4l2_queryctrl* %402, i32 0, i32 255, i32 1, i32 %403)
  %405 = load i32, i32* @V4L2_CTRL_FLAG_SLIDER, align 4
  %406 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %407 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %406, i32 0, i32 1
  %408 = load i32, i32* %407, align 4
  %409 = or i32 %408, %405
  store i32 %409, i32* %407, align 4
  %410 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %4, align 8
  %411 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %410, i32 0, i32 6
  %412 = load i32, i32* %411, align 4
  %413 = load i32, i32* @V4L2_MPEG_CX2341X_VIDEO_MEDIAN_FILTER_TYPE_OFF, align 4
  %414 = icmp eq i32 %412, %413
  br i1 %414, label %415, label %421

415:                                              ; preds = %401
  %416 = load i32, i32* @V4L2_CTRL_FLAG_INACTIVE, align 4
  %417 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %418 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %417, i32 0, i32 1
  %419 = load i32, i32* %418, align 4
  %420 = or i32 %419, %416
  store i32 %420, i32* %418, align 4
  br label %421

421:                                              ; preds = %415, %401
  store i32 0, i32* %3, align 4
  br label %450

422:                                              ; preds = %2
  %423 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %424 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @default_params, i32 0, i32 4), align 4
  %425 = call i32 @cx2341x_ctrl_query_fill(%struct.v4l2_queryctrl* %423, i32 0, i32 255, i32 1, i32 %424)
  %426 = load i32, i32* @V4L2_CTRL_FLAG_SLIDER, align 4
  %427 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %428 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %427, i32 0, i32 1
  %429 = load i32, i32* %428, align 4
  %430 = or i32 %429, %426
  store i32 %430, i32* %428, align 4
  %431 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %4, align 8
  %432 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %431, i32 0, i32 6
  %433 = load i32, i32* %432, align 4
  %434 = load i32, i32* @V4L2_MPEG_CX2341X_VIDEO_MEDIAN_FILTER_TYPE_OFF, align 4
  %435 = icmp eq i32 %433, %434
  br i1 %435, label %436, label %442

436:                                              ; preds = %422
  %437 = load i32, i32* @V4L2_CTRL_FLAG_INACTIVE, align 4
  %438 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %439 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %438, i32 0, i32 1
  %440 = load i32, i32* %439, align 4
  %441 = or i32 %440, %437
  store i32 %441, i32* %439, align 4
  br label %442

442:                                              ; preds = %436, %422
  store i32 0, i32* %3, align 4
  br label %450

443:                                              ; preds = %2
  %444 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %445 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @default_params, i32 0, i32 3), align 4
  %446 = call i32 @cx2341x_ctrl_query_fill(%struct.v4l2_queryctrl* %444, i32 0, i32 1, i32 1, i32 %445)
  store i32 %446, i32* %3, align 4
  br label %450

447:                                              ; preds = %2
  %448 = load i32, i32* @EINVAL, align 4
  %449 = sub nsw i32 0, %448
  store i32 %449, i32* %3, align 4
  br label %450

450:                                              ; preds = %447, %443, %442, %421, %400, %379, %353, %352, %326, %325, %307, %289, %263, %260, %257, %254, %252, %232, %230, %207, %198, %195, %189, %187, %172, %144, %133, %127, %121, %119, %93, %92, %71, %57, %51, %38, %32, %26, %13, %10
  %451 = load i32, i32* %3, align 4
  ret i32 %451
}

declare dso_local i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl*, i32, i32, i32, i32) #1

declare dso_local i32 @cx2341x_ctrl_query_fill(%struct.v4l2_queryctrl*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/extr_cx2341x.c_cx2341x_handler_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/extr_cx2341x.c_cx2341x_handler_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx2341x_handler = type { i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct.v4l2_ctrl_handler }
%struct.v4l2_ctrl_handler = type { i32 }

@CX2341X_CAP_HAS_SLICED_VBI = common dso_local global i32 0, align 4
@CX2341X_CAP_HAS_AC3 = common dso_local global i32 0, align 4
@CX2341X_CAP_HAS_TS = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_STREAM_TYPE = common dso_local global i32 0, align 4
@V4L2_MPEG_STREAM_TYPE_MPEG2_SVCD = common dso_local global i32 0, align 4
@V4L2_MPEG_STREAM_TYPE_MPEG2_PS = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_STREAM_VBI_FMT = common dso_local global i32 0, align 4
@V4L2_MPEG_STREAM_VBI_FMT_IVTV = common dso_local global i32 0, align 4
@V4L2_MPEG_STREAM_VBI_FMT_NONE = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_AUDIO_SAMPLING_FREQ = common dso_local global i32 0, align 4
@V4L2_MPEG_AUDIO_SAMPLING_FREQ_32000 = common dso_local global i32 0, align 4
@V4L2_MPEG_AUDIO_SAMPLING_FREQ_48000 = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_AUDIO_ENCODING = common dso_local global i32 0, align 4
@V4L2_MPEG_AUDIO_ENCODING_AC3 = common dso_local global i32 0, align 4
@V4L2_MPEG_AUDIO_ENCODING_LAYER_2 = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_AUDIO_L2_BITRATE = common dso_local global i32 0, align 4
@V4L2_MPEG_AUDIO_L2_BITRATE_384K = common dso_local global i32 0, align 4
@V4L2_MPEG_AUDIO_L2_BITRATE_224K = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_AUDIO_MODE = common dso_local global i32 0, align 4
@V4L2_MPEG_AUDIO_MODE_MONO = common dso_local global i32 0, align 4
@V4L2_MPEG_AUDIO_MODE_STEREO = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_AUDIO_MODE_EXTENSION = common dso_local global i32 0, align 4
@V4L2_MPEG_AUDIO_MODE_EXTENSION_BOUND_16 = common dso_local global i32 0, align 4
@V4L2_MPEG_AUDIO_MODE_EXTENSION_BOUND_4 = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_AUDIO_EMPHASIS = common dso_local global i32 0, align 4
@V4L2_MPEG_AUDIO_EMPHASIS_CCITT_J17 = common dso_local global i32 0, align 4
@V4L2_MPEG_AUDIO_EMPHASIS_NONE = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_AUDIO_CRC = common dso_local global i32 0, align 4
@V4L2_MPEG_AUDIO_CRC_CRC16 = common dso_local global i32 0, align 4
@V4L2_MPEG_AUDIO_CRC_NONE = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_AUDIO_MUTE = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_AUDIO_AC3_BITRATE = common dso_local global i32 0, align 4
@V4L2_MPEG_AUDIO_AC3_BITRATE_448K = common dso_local global i32 0, align 4
@V4L2_MPEG_AUDIO_AC3_BITRATE_224K = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_ENCODING = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_ENCODING_MPEG_2 = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_ASPECT = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_ASPECT_221x100 = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_ASPECT_4x3 = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_B_FRAMES = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_GOP_SIZE = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_GOP_CLOSURE = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_BITRATE_MODE = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_BITRATE_MODE_CBR = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_BITRATE_MODE_VBR = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_BITRATE = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_BITRATE_PEAK = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_TEMPORAL_DECIMATION = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_MUTE = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_MUTE_YUV = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_CX2341X_VIDEO_SPATIAL_FILTER_MODE = common dso_local global i32 0, align 4
@V4L2_MPEG_CX2341X_VIDEO_SPATIAL_FILTER_MODE_MANUAL = common dso_local global i32 0, align 4
@V4L2_MPEG_CX2341X_VIDEO_SPATIAL_FILTER_MODE_AUTO = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_CX2341X_VIDEO_SPATIAL_FILTER = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_CX2341X_VIDEO_LUMA_SPATIAL_FILTER_TYPE = common dso_local global i32 0, align 4
@V4L2_MPEG_CX2341X_VIDEO_LUMA_SPATIAL_FILTER_TYPE_OFF = common dso_local global i32 0, align 4
@V4L2_MPEG_CX2341X_VIDEO_LUMA_SPATIAL_FILTER_TYPE_2D_SYM_NON_SEPARABLE = common dso_local global i32 0, align 4
@V4L2_MPEG_CX2341X_VIDEO_LUMA_SPATIAL_FILTER_TYPE_1D_HOR = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_CX2341X_VIDEO_CHROMA_SPATIAL_FILTER_TYPE = common dso_local global i32 0, align 4
@V4L2_MPEG_CX2341X_VIDEO_CHROMA_SPATIAL_FILTER_TYPE_OFF = common dso_local global i32 0, align 4
@V4L2_MPEG_CX2341X_VIDEO_CHROMA_SPATIAL_FILTER_TYPE_1D_HOR = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_CX2341X_VIDEO_TEMPORAL_FILTER_MODE = common dso_local global i32 0, align 4
@V4L2_MPEG_CX2341X_VIDEO_TEMPORAL_FILTER_MODE_MANUAL = common dso_local global i32 0, align 4
@V4L2_MPEG_CX2341X_VIDEO_TEMPORAL_FILTER_MODE_AUTO = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_CX2341X_VIDEO_TEMPORAL_FILTER = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_CX2341X_VIDEO_MEDIAN_FILTER_TYPE = common dso_local global i32 0, align 4
@V4L2_MPEG_CX2341X_VIDEO_MEDIAN_FILTER_TYPE_OFF = common dso_local global i32 0, align 4
@V4L2_MPEG_CX2341X_VIDEO_MEDIAN_FILTER_TYPE_DIAG = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_CX2341X_VIDEO_LUMA_MEDIAN_FILTER_BOTTOM = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_CX2341X_VIDEO_LUMA_MEDIAN_FILTER_TOP = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_CX2341X_VIDEO_CHROMA_MEDIAN_FILTER_BOTTOM = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_CX2341X_VIDEO_CHROMA_MEDIAN_FILTER_TOP = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_CX2341X_STREAM_INSERT_NAV_PACKETS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx2341x_handler_init(%struct.cx2341x_handler* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cx2341x_handler*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_ctrl_handler*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cx2341x_handler* %0, %struct.cx2341x_handler** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %13 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %12, i32 0, i32 33
  store %struct.v4l2_ctrl_handler* %13, %struct.v4l2_ctrl_handler** %6, align 8
  %14 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %15 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @CX2341X_CAP_HAS_SLICED_VBI, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @CX2341X_CAP_HAS_AC3, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @CX2341X_CAP_HAS_TS, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %10, align 4
  %26 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %27 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %26, i32 0, i32 1
  store i32 720, i32* %27, align 4
  %28 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %29 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %28, i32 0, i32 2
  store i32 480, i32* %29, align 8
  %30 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %30, i32 %31)
  %33 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %34 = load i32, i32* @V4L2_CID_MPEG_STREAM_TYPE, align 4
  %35 = load i32, i32* @V4L2_MPEG_STREAM_TYPE_MPEG2_SVCD, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 0, i32 2
  %40 = load i32, i32* @V4L2_MPEG_STREAM_TYPE_MPEG2_PS, align 4
  %41 = call i8* @cx2341x_ctrl_new_menu(%struct.v4l2_ctrl_handler* %33, i32 %34, i32 %35, i32 %39, i32 %40)
  %42 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %43 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %42, i32 0, i32 8
  store i8* %41, i8** %43, align 8
  %44 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %45 = load i32, i32* @V4L2_CID_MPEG_STREAM_VBI_FMT, align 4
  %46 = load i32, i32* @V4L2_MPEG_STREAM_VBI_FMT_IVTV, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 0, i32 2
  %51 = load i32, i32* @V4L2_MPEG_STREAM_VBI_FMT_NONE, align 4
  %52 = call i8* @cx2341x_ctrl_new_menu(%struct.v4l2_ctrl_handler* %44, i32 %45, i32 %46, i32 %50, i32 %51)
  %53 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %54 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %53, i32 0, i32 32
  store i8* %52, i8** %54, align 8
  %55 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %56 = load i32, i32* @V4L2_CID_MPEG_AUDIO_SAMPLING_FREQ, align 4
  %57 = load i32, i32* @V4L2_MPEG_AUDIO_SAMPLING_FREQ_32000, align 4
  %58 = load i32, i32* @V4L2_MPEG_AUDIO_SAMPLING_FREQ_48000, align 4
  %59 = call i8* @cx2341x_ctrl_new_menu(%struct.v4l2_ctrl_handler* %55, i32 %56, i32 %57, i32 0, i32 %58)
  %60 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %61 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %60, i32 0, i32 10
  store i8* %59, i8** %61, align 8
  %62 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %63 = load i32, i32* @V4L2_CID_MPEG_AUDIO_ENCODING, align 4
  %64 = load i32, i32* @V4L2_MPEG_AUDIO_ENCODING_AC3, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32 -19, i32 -3
  %69 = load i32, i32* @V4L2_MPEG_AUDIO_ENCODING_LAYER_2, align 4
  %70 = call i8* @cx2341x_ctrl_new_menu(%struct.v4l2_ctrl_handler* %62, i32 %63, i32 %64, i32 %68, i32 %69)
  %71 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %72 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %71, i32 0, i32 31
  store i8* %70, i8** %72, align 8
  %73 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %74 = load i32, i32* @V4L2_CID_MPEG_AUDIO_L2_BITRATE, align 4
  %75 = load i32, i32* @V4L2_MPEG_AUDIO_L2_BITRATE_384K, align 4
  %76 = load i32, i32* @V4L2_MPEG_AUDIO_L2_BITRATE_224K, align 4
  %77 = call i8* @cx2341x_ctrl_new_menu(%struct.v4l2_ctrl_handler* %73, i32 %74, i32 %75, i32 511, i32 %76)
  %78 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %79 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %78, i32 0, i32 30
  store i8* %77, i8** %79, align 8
  %80 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %81 = load i32, i32* @V4L2_CID_MPEG_AUDIO_MODE, align 4
  %82 = load i32, i32* @V4L2_MPEG_AUDIO_MODE_MONO, align 4
  %83 = load i32, i32* @V4L2_MPEG_AUDIO_MODE_STEREO, align 4
  %84 = call i8* @cx2341x_ctrl_new_menu(%struct.v4l2_ctrl_handler* %80, i32 %81, i32 %82, i32 0, i32 %83)
  %85 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %86 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %85, i32 0, i32 29
  store i8* %84, i8** %86, align 8
  %87 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %88 = load i32, i32* @V4L2_CID_MPEG_AUDIO_MODE_EXTENSION, align 4
  %89 = load i32, i32* @V4L2_MPEG_AUDIO_MODE_EXTENSION_BOUND_16, align 4
  %90 = load i32, i32* @V4L2_MPEG_AUDIO_MODE_EXTENSION_BOUND_4, align 4
  %91 = call i8* @cx2341x_ctrl_new_menu(%struct.v4l2_ctrl_handler* %87, i32 %88, i32 %89, i32 0, i32 %90)
  %92 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %93 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %92, i32 0, i32 28
  store i8* %91, i8** %93, align 8
  %94 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %95 = load i32, i32* @V4L2_CID_MPEG_AUDIO_EMPHASIS, align 4
  %96 = load i32, i32* @V4L2_MPEG_AUDIO_EMPHASIS_CCITT_J17, align 4
  %97 = load i32, i32* @V4L2_MPEG_AUDIO_EMPHASIS_NONE, align 4
  %98 = call i8* @cx2341x_ctrl_new_menu(%struct.v4l2_ctrl_handler* %94, i32 %95, i32 %96, i32 0, i32 %97)
  %99 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %100 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %99, i32 0, i32 27
  store i8* %98, i8** %100, align 8
  %101 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %102 = load i32, i32* @V4L2_CID_MPEG_AUDIO_CRC, align 4
  %103 = load i32, i32* @V4L2_MPEG_AUDIO_CRC_CRC16, align 4
  %104 = load i32, i32* @V4L2_MPEG_AUDIO_CRC_NONE, align 4
  %105 = call i8* @cx2341x_ctrl_new_menu(%struct.v4l2_ctrl_handler* %101, i32 %102, i32 %103, i32 0, i32 %104)
  %106 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %107 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %106, i32 0, i32 26
  store i8* %105, i8** %107, align 8
  %108 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %109 = load i32, i32* @V4L2_CID_MPEG_AUDIO_MUTE, align 4
  %110 = call i8* @cx2341x_ctrl_new_std(%struct.v4l2_ctrl_handler* %108, i32 %109, i32 0, i32 1, i32 1, i32 0)
  %111 = load i32, i32* %9, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %2
  %114 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %115 = load i32, i32* @V4L2_CID_MPEG_AUDIO_AC3_BITRATE, align 4
  %116 = load i32, i32* @V4L2_MPEG_AUDIO_AC3_BITRATE_448K, align 4
  %117 = load i32, i32* @V4L2_MPEG_AUDIO_AC3_BITRATE_224K, align 4
  %118 = call i8* @cx2341x_ctrl_new_menu(%struct.v4l2_ctrl_handler* %114, i32 %115, i32 %116, i32 3, i32 %117)
  %119 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %120 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %119, i32 0, i32 25
  store i8* %118, i8** %120, align 8
  br label %121

121:                                              ; preds = %113, %2
  %122 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %123 = load i32, i32* @V4L2_CID_MPEG_VIDEO_ENCODING, align 4
  %124 = load i32, i32* @V4L2_MPEG_VIDEO_ENCODING_MPEG_2, align 4
  %125 = load i32, i32* @V4L2_MPEG_VIDEO_ENCODING_MPEG_2, align 4
  %126 = call i8* @cx2341x_ctrl_new_menu(%struct.v4l2_ctrl_handler* %122, i32 %123, i32 %124, i32 0, i32 %125)
  %127 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %128 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %127, i32 0, i32 24
  store i8* %126, i8** %128, align 8
  %129 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %130 = load i32, i32* @V4L2_CID_MPEG_VIDEO_ASPECT, align 4
  %131 = load i32, i32* @V4L2_MPEG_VIDEO_ASPECT_221x100, align 4
  %132 = load i32, i32* @V4L2_MPEG_VIDEO_ASPECT_4x3, align 4
  %133 = call i8* @cx2341x_ctrl_new_menu(%struct.v4l2_ctrl_handler* %129, i32 %130, i32 %131, i32 0, i32 %132)
  %134 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %135 = load i32, i32* @V4L2_CID_MPEG_VIDEO_B_FRAMES, align 4
  %136 = call i8* @cx2341x_ctrl_new_std(%struct.v4l2_ctrl_handler* %134, i32 %135, i32 0, i32 33, i32 1, i32 2)
  %137 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %138 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %137, i32 0, i32 9
  store i8* %136, i8** %138, align 8
  %139 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %140 = load i32, i32* @V4L2_CID_MPEG_VIDEO_GOP_SIZE, align 4
  %141 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %142 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %141, i32 0, i32 22
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  %145 = zext i1 %144 to i64
  %146 = select i1 %144, i32 12, i32 15
  %147 = call i8* @cx2341x_ctrl_new_std(%struct.v4l2_ctrl_handler* %139, i32 %140, i32 1, i32 34, i32 1, i32 %146)
  %148 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %149 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %148, i32 0, i32 23
  store i8* %147, i8** %149, align 8
  %150 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %151 = load i32, i32* @V4L2_CID_MPEG_VIDEO_GOP_CLOSURE, align 4
  %152 = call i8* @cx2341x_ctrl_new_std(%struct.v4l2_ctrl_handler* %150, i32 %151, i32 0, i32 1, i32 1, i32 1)
  %153 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %154 = load i32, i32* @V4L2_CID_MPEG_VIDEO_BITRATE_MODE, align 4
  %155 = load i32, i32* @V4L2_MPEG_VIDEO_BITRATE_MODE_CBR, align 4
  %156 = load i32, i32* @V4L2_MPEG_VIDEO_BITRATE_MODE_VBR, align 4
  %157 = call i8* @cx2341x_ctrl_new_menu(%struct.v4l2_ctrl_handler* %153, i32 %154, i32 %155, i32 0, i32 %156)
  %158 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %159 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %158, i32 0, i32 21
  store i8* %157, i8** %159, align 8
  %160 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %161 = load i32, i32* @V4L2_CID_MPEG_VIDEO_BITRATE, align 4
  %162 = call i8* @cx2341x_ctrl_new_std(%struct.v4l2_ctrl_handler* %160, i32 %161, i32 0, i32 27000000, i32 1, i32 6000000)
  %163 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %164 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %163, i32 0, i32 20
  store i8* %162, i8** %164, align 8
  %165 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %166 = load i32, i32* @V4L2_CID_MPEG_VIDEO_BITRATE_PEAK, align 4
  %167 = call i8* @cx2341x_ctrl_new_std(%struct.v4l2_ctrl_handler* %165, i32 %166, i32 0, i32 27000000, i32 1, i32 8000000)
  %168 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %169 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %168, i32 0, i32 19
  store i8* %167, i8** %169, align 8
  %170 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %171 = load i32, i32* @V4L2_CID_MPEG_VIDEO_TEMPORAL_DECIMATION, align 4
  %172 = call i8* @cx2341x_ctrl_new_std(%struct.v4l2_ctrl_handler* %170, i32 %171, i32 0, i32 255, i32 1, i32 0)
  %173 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %174 = load i32, i32* @V4L2_CID_MPEG_VIDEO_MUTE, align 4
  %175 = call i8* @cx2341x_ctrl_new_std(%struct.v4l2_ctrl_handler* %173, i32 %174, i32 0, i32 1, i32 1, i32 0)
  %176 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %177 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %176, i32 0, i32 7
  store i8* %175, i8** %177, align 8
  %178 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %179 = load i32, i32* @V4L2_CID_MPEG_VIDEO_MUTE_YUV, align 4
  %180 = call i8* @cx2341x_ctrl_new_std(%struct.v4l2_ctrl_handler* %178, i32 %179, i32 0, i32 16777215, i32 1, i32 32896)
  %181 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %182 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %181, i32 0, i32 18
  store i8* %180, i8** %182, align 8
  %183 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %184 = load i32, i32* @V4L2_CID_MPEG_CX2341X_VIDEO_SPATIAL_FILTER_MODE, align 4
  %185 = load i32, i32* @V4L2_MPEG_CX2341X_VIDEO_SPATIAL_FILTER_MODE_MANUAL, align 4
  %186 = load i32, i32* @V4L2_MPEG_CX2341X_VIDEO_SPATIAL_FILTER_MODE_AUTO, align 4
  %187 = load i32, i32* @V4L2_MPEG_CX2341X_VIDEO_SPATIAL_FILTER_MODE_MANUAL, align 4
  %188 = call i8* @cx2341x_ctrl_new_custom(%struct.v4l2_ctrl_handler* %183, i32 %184, i32 %185, i32 %186, i32 0, i32 %187)
  %189 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %190 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %189, i32 0, i32 6
  store i8* %188, i8** %190, align 8
  %191 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %192 = load i32, i32* @V4L2_CID_MPEG_CX2341X_VIDEO_SPATIAL_FILTER, align 4
  %193 = call i8* @cx2341x_ctrl_new_custom(%struct.v4l2_ctrl_handler* %191, i32 %192, i32 0, i32 15, i32 1, i32 0)
  %194 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %195 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %194, i32 0, i32 4
  store i8* %193, i8** %195, align 8
  %196 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %197 = load i32, i32* @V4L2_CID_MPEG_CX2341X_VIDEO_LUMA_SPATIAL_FILTER_TYPE, align 4
  %198 = load i32, i32* @V4L2_MPEG_CX2341X_VIDEO_LUMA_SPATIAL_FILTER_TYPE_OFF, align 4
  %199 = load i32, i32* @V4L2_MPEG_CX2341X_VIDEO_LUMA_SPATIAL_FILTER_TYPE_2D_SYM_NON_SEPARABLE, align 4
  %200 = load i32, i32* @V4L2_MPEG_CX2341X_VIDEO_LUMA_SPATIAL_FILTER_TYPE_1D_HOR, align 4
  %201 = call i8* @cx2341x_ctrl_new_custom(%struct.v4l2_ctrl_handler* %196, i32 %197, i32 %198, i32 %199, i32 0, i32 %200)
  %202 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %203 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %202, i32 0, i32 5
  store i8* %201, i8** %203, align 8
  %204 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %205 = load i32, i32* @V4L2_CID_MPEG_CX2341X_VIDEO_CHROMA_SPATIAL_FILTER_TYPE, align 4
  %206 = load i32, i32* @V4L2_MPEG_CX2341X_VIDEO_CHROMA_SPATIAL_FILTER_TYPE_OFF, align 4
  %207 = load i32, i32* @V4L2_MPEG_CX2341X_VIDEO_CHROMA_SPATIAL_FILTER_TYPE_1D_HOR, align 4
  %208 = load i32, i32* @V4L2_MPEG_CX2341X_VIDEO_CHROMA_SPATIAL_FILTER_TYPE_1D_HOR, align 4
  %209 = call i8* @cx2341x_ctrl_new_custom(%struct.v4l2_ctrl_handler* %204, i32 %205, i32 %206, i32 %207, i32 0, i32 %208)
  %210 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %211 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %210, i32 0, i32 17
  store i8* %209, i8** %211, align 8
  %212 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %213 = load i32, i32* @V4L2_CID_MPEG_CX2341X_VIDEO_TEMPORAL_FILTER_MODE, align 4
  %214 = load i32, i32* @V4L2_MPEG_CX2341X_VIDEO_TEMPORAL_FILTER_MODE_MANUAL, align 4
  %215 = load i32, i32* @V4L2_MPEG_CX2341X_VIDEO_TEMPORAL_FILTER_MODE_AUTO, align 4
  %216 = load i32, i32* @V4L2_MPEG_CX2341X_VIDEO_TEMPORAL_FILTER_MODE_MANUAL, align 4
  %217 = call i8* @cx2341x_ctrl_new_custom(%struct.v4l2_ctrl_handler* %212, i32 %213, i32 %214, i32 %215, i32 0, i32 %216)
  %218 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %219 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %218, i32 0, i32 16
  store i8* %217, i8** %219, align 8
  %220 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %221 = load i32, i32* @V4L2_CID_MPEG_CX2341X_VIDEO_TEMPORAL_FILTER, align 4
  %222 = call i8* @cx2341x_ctrl_new_custom(%struct.v4l2_ctrl_handler* %220, i32 %221, i32 0, i32 31, i32 1, i32 8)
  %223 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %224 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %223, i32 0, i32 15
  store i8* %222, i8** %224, align 8
  %225 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %226 = load i32, i32* @V4L2_CID_MPEG_CX2341X_VIDEO_MEDIAN_FILTER_TYPE, align 4
  %227 = load i32, i32* @V4L2_MPEG_CX2341X_VIDEO_MEDIAN_FILTER_TYPE_OFF, align 4
  %228 = load i32, i32* @V4L2_MPEG_CX2341X_VIDEO_MEDIAN_FILTER_TYPE_DIAG, align 4
  %229 = load i32, i32* @V4L2_MPEG_CX2341X_VIDEO_MEDIAN_FILTER_TYPE_OFF, align 4
  %230 = call i8* @cx2341x_ctrl_new_custom(%struct.v4l2_ctrl_handler* %225, i32 %226, i32 %227, i32 %228, i32 0, i32 %229)
  %231 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %232 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %231, i32 0, i32 14
  store i8* %230, i8** %232, align 8
  %233 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %234 = load i32, i32* @V4L2_CID_MPEG_CX2341X_VIDEO_LUMA_MEDIAN_FILTER_BOTTOM, align 4
  %235 = call i8* @cx2341x_ctrl_new_custom(%struct.v4l2_ctrl_handler* %233, i32 %234, i32 0, i32 255, i32 1, i32 0)
  %236 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %237 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %236, i32 0, i32 13
  store i8* %235, i8** %237, align 8
  %238 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %239 = load i32, i32* @V4L2_CID_MPEG_CX2341X_VIDEO_LUMA_MEDIAN_FILTER_TOP, align 4
  %240 = call i8* @cx2341x_ctrl_new_custom(%struct.v4l2_ctrl_handler* %238, i32 %239, i32 0, i32 255, i32 1, i32 255)
  %241 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %242 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %241, i32 0, i32 3
  store i8* %240, i8** %242, align 8
  %243 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %244 = load i32, i32* @V4L2_CID_MPEG_CX2341X_VIDEO_CHROMA_MEDIAN_FILTER_BOTTOM, align 4
  %245 = call i8* @cx2341x_ctrl_new_custom(%struct.v4l2_ctrl_handler* %243, i32 %244, i32 0, i32 255, i32 1, i32 0)
  %246 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %247 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %246, i32 0, i32 12
  store i8* %245, i8** %247, align 8
  %248 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %249 = load i32, i32* @V4L2_CID_MPEG_CX2341X_VIDEO_CHROMA_MEDIAN_FILTER_TOP, align 4
  %250 = call i8* @cx2341x_ctrl_new_custom(%struct.v4l2_ctrl_handler* %248, i32 %249, i32 0, i32 255, i32 1, i32 255)
  %251 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %252 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %251, i32 0, i32 11
  store i8* %250, i8** %252, align 8
  %253 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %254 = load i32, i32* @V4L2_CID_MPEG_CX2341X_STREAM_INSERT_NAV_PACKETS, align 4
  %255 = call i8* @cx2341x_ctrl_new_custom(%struct.v4l2_ctrl_handler* %253, i32 %254, i32 0, i32 1, i32 1, i32 0)
  %256 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %257 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %267

260:                                              ; preds = %121
  %261 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %262 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  store i32 %263, i32* %11, align 4
  %264 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %265 = call i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler* %264)
  %266 = load i32, i32* %11, align 4
  store i32 %266, i32* %3, align 4
  br label %292

267:                                              ; preds = %121
  %268 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %269 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %268, i32 0, i32 10
  %270 = call i32 @v4l2_ctrl_cluster(i32 8, i8** %269)
  %271 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %272 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %271, i32 0, i32 9
  %273 = call i32 @v4l2_ctrl_cluster(i32 2, i8** %272)
  %274 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %275 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %274, i32 0, i32 8
  %276 = call i32 @v4l2_ctrl_cluster(i32 5, i8** %275)
  %277 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %278 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %277, i32 0, i32 7
  %279 = call i32 @v4l2_ctrl_cluster(i32 2, i8** %278)
  %280 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %281 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %280, i32 0, i32 6
  %282 = call i32 @v4l2_ctrl_cluster(i32 3, i8** %281)
  %283 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %284 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %283, i32 0, i32 5
  %285 = call i32 @v4l2_ctrl_cluster(i32 2, i8** %284)
  %286 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %287 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %286, i32 0, i32 4
  %288 = call i32 @v4l2_ctrl_cluster(i32 2, i8** %287)
  %289 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %290 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %289, i32 0, i32 3
  %291 = call i32 @v4l2_ctrl_cluster(i32 4, i8** %290)
  store i32 0, i32* %3, align 4
  br label %292

292:                                              ; preds = %267, %260
  %293 = load i32, i32* %3, align 4
  ret i32 %293
}

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local i8* @cx2341x_ctrl_new_menu(%struct.v4l2_ctrl_handler*, i32, i32, i32, i32) #1

declare dso_local i8* @cx2341x_ctrl_new_std(%struct.v4l2_ctrl_handler*, i32, i32, i32, i32, i32) #1

declare dso_local i8* @cx2341x_ctrl_new_custom(%struct.v4l2_ctrl_handler*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler*) #1

declare dso_local i32 @v4l2_ctrl_cluster(i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

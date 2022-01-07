; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/extr_cx2341x.c_cx2341x_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/extr_cx2341x.c_cx2341x_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx2341x_mpeg_params = type { i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@cx2341x_update.mpeg_stream_type = internal global [6 x i32] [i32 0, i32 1, i32 2, i32 14, i32 11, i32 12], align 16
@CX2341X_ENC_SET_OUTPUT_PORT = common dso_local global i32 0, align 4
@is_50hz = common dso_local global i32 0, align 4
@CX2341X_ENC_SET_FRAME_RATE = common dso_local global i32 0, align 4
@width = common dso_local global i32 0, align 4
@height = common dso_local global i32 0, align 4
@video_encoding = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_ENCODING_MPEG_1 = common dso_local global i64 0, align 8
@CX2341X_ENC_SET_FRAME_SIZE = common dso_local global i32 0, align 4
@stream_type = common dso_local global i32 0, align 4
@CX2341X_ENC_SET_STREAM_TYPE = common dso_local global i32 0, align 4
@video_aspect = common dso_local global i32 0, align 4
@CX2341X_ENC_SET_ASPECT_RATIO = common dso_local global i32 0, align 4
@video_b_frames = common dso_local global i32 0, align 4
@video_gop_size = common dso_local global i32 0, align 4
@CX2341X_ENC_SET_GOP_PROPERTIES = common dso_local global i32 0, align 4
@video_gop_closure = common dso_local global i32 0, align 4
@CX2341X_ENC_SET_GOP_CLOSURE = common dso_local global i32 0, align 4
@audio_properties = common dso_local global i32 0, align 4
@CX2341X_ENC_SET_AUDIO_PROPERTIES = common dso_local global i32 0, align 4
@audio_mute = common dso_local global i32 0, align 4
@CX2341X_ENC_MUTE_AUDIO = common dso_local global i32 0, align 4
@video_bitrate_mode = common dso_local global i32 0, align 4
@video_bitrate = common dso_local global i32 0, align 4
@video_bitrate_peak = common dso_local global i32 0, align 4
@CX2341X_ENC_SET_BIT_RATE = common dso_local global i32 0, align 4
@video_spatial_filter_mode = common dso_local global i32 0, align 4
@video_temporal_filter_mode = common dso_local global i32 0, align 4
@video_median_filter_type = common dso_local global i32 0, align 4
@CX2341X_ENC_SET_DNR_FILTER_MODE = common dso_local global i32 0, align 4
@video_luma_median_filter_bottom = common dso_local global i32 0, align 4
@video_luma_median_filter_top = common dso_local global i32 0, align 4
@video_chroma_median_filter_bottom = common dso_local global i32 0, align 4
@video_chroma_median_filter_top = common dso_local global i32 0, align 4
@CX2341X_ENC_SET_CORING_LEVELS = common dso_local global i32 0, align 4
@video_luma_spatial_filter_type = common dso_local global i32 0, align 4
@video_chroma_spatial_filter_type = common dso_local global i32 0, align 4
@CX2341X_ENC_SET_SPATIAL_FILTER_TYPE = common dso_local global i32 0, align 4
@video_spatial_filter = common dso_local global i32 0, align 4
@video_temporal_filter = common dso_local global i32 0, align 4
@CX2341X_ENC_SET_DNR_FILTER_PROPS = common dso_local global i32 0, align 4
@video_temporal_decimation = common dso_local global i32 0, align 4
@CX2341X_ENC_SET_FRAME_DROP_RATE = common dso_local global i32 0, align 4
@video_mute = common dso_local global i32 0, align 4
@video_mute_yuv = common dso_local global i32 0, align 4
@CX2341X_ENC_MUTE_VIDEO = common dso_local global i32 0, align 4
@stream_insert_nav_packets = common dso_local global i32 0, align 4
@CX2341X_ENC_MISC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx2341x_update(i8* %0, i32 %1, %struct.cx2341x_mpeg_params* %2, %struct.cx2341x_mpeg_params* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cx2341x_mpeg_params*, align 8
  %9 = alloca %struct.cx2341x_mpeg_params*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.cx2341x_mpeg_params* %2, %struct.cx2341x_mpeg_params** %8, align 8
  store %struct.cx2341x_mpeg_params* %3, %struct.cx2341x_mpeg_params** %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @CX2341X_ENC_SET_OUTPUT_PORT, align 4
  %16 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %17 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 (i8*, i32, i32, i32, i32, ...) @cx2341x_api(i8* %13, i32 %14, i32 %15, i32 2, i32 %18, i32 0)
  %20 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %8, align 8
  %21 = icmp ne %struct.cx2341x_mpeg_params* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %4
  %23 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %8, align 8
  %24 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %25 = load i32, i32* @is_50hz, align 4
  %26 = call i64 @CMP_FIELD(%struct.cx2341x_mpeg_params* %23, %struct.cx2341x_mpeg_params* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %22, %4
  %29 = load i8*, i8** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @CX2341X_ENC_SET_FRAME_RATE, align 4
  %32 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %33 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %32, i32 0, i32 29
  %34 = load i32, i32* %33, align 8
  %35 = call i32 (i8*, i32, i32, i32, i32, ...) @cx2341x_api(i8* %29, i32 %30, i32 %31, i32 1, i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %5, align 4
  br label %513

40:                                               ; preds = %28
  br label %41

41:                                               ; preds = %40, %22
  %42 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %8, align 8
  %43 = icmp ne %struct.cx2341x_mpeg_params* %42, null
  br i1 %43, label %44, label %62

44:                                               ; preds = %41
  %45 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %8, align 8
  %46 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %47 = load i32, i32* @width, align 4
  %48 = call i64 @CMP_FIELD(%struct.cx2341x_mpeg_params* %45, %struct.cx2341x_mpeg_params* %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %62, label %50

50:                                               ; preds = %44
  %51 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %8, align 8
  %52 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %53 = load i32, i32* @height, align 4
  %54 = call i64 @CMP_FIELD(%struct.cx2341x_mpeg_params* %51, %struct.cx2341x_mpeg_params* %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %50
  %57 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %8, align 8
  %58 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %59 = load i32, i32* @video_encoding, align 4
  %60 = call i64 @CMP_FIELD(%struct.cx2341x_mpeg_params* %57, %struct.cx2341x_mpeg_params* %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %91

62:                                               ; preds = %56, %50, %44, %41
  %63 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %64 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %11, align 4
  %66 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %67 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %12, align 4
  %69 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %70 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @V4L2_MPEG_VIDEO_ENCODING_MPEG_1, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %62
  %75 = load i32, i32* %11, align 4
  %76 = sdiv i32 %75, 2
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %12, align 4
  %78 = sdiv i32 %77, 2
  store i32 %78, i32* %12, align 4
  br label %79

79:                                               ; preds = %74, %62
  %80 = load i8*, i8** %6, align 8
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @CX2341X_ENC_SET_FRAME_SIZE, align 4
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* %11, align 4
  %85 = call i32 (i8*, i32, i32, i32, i32, ...) @cx2341x_api(i8* %80, i32 %81, i32 %82, i32 2, i32 %83, i32 %84)
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %79
  %89 = load i32, i32* %10, align 4
  store i32 %89, i32* %5, align 4
  br label %513

90:                                               ; preds = %79
  br label %91

91:                                               ; preds = %90, %56
  %92 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %8, align 8
  %93 = icmp ne %struct.cx2341x_mpeg_params* %92, null
  br i1 %93, label %94, label %100

94:                                               ; preds = %91
  %95 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %8, align 8
  %96 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %97 = load i32, i32* @stream_type, align 4
  %98 = call i64 @CMP_FIELD(%struct.cx2341x_mpeg_params* %95, %struct.cx2341x_mpeg_params* %96, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %115

100:                                              ; preds = %94, %91
  %101 = load i8*, i8** %6, align 8
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @CX2341X_ENC_SET_STREAM_TYPE, align 4
  %104 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %105 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %104, i32 0, i32 4
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds [6 x i32], [6 x i32]* @cx2341x_update.mpeg_stream_type, i64 0, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = call i32 (i8*, i32, i32, i32, i32, ...) @cx2341x_api(i8* %101, i32 %102, i32 %103, i32 1, i32 %108)
  store i32 %109, i32* %10, align 4
  %110 = load i32, i32* %10, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %100
  %113 = load i32, i32* %10, align 4
  store i32 %113, i32* %5, align 4
  br label %513

114:                                              ; preds = %100
  br label %115

115:                                              ; preds = %114, %94
  %116 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %8, align 8
  %117 = icmp ne %struct.cx2341x_mpeg_params* %116, null
  br i1 %117, label %118, label %124

118:                                              ; preds = %115
  %119 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %8, align 8
  %120 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %121 = load i32, i32* @video_aspect, align 4
  %122 = call i64 @CMP_FIELD(%struct.cx2341x_mpeg_params* %119, %struct.cx2341x_mpeg_params* %120, i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %138

124:                                              ; preds = %118, %115
  %125 = load i8*, i8** %6, align 8
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* @CX2341X_ENC_SET_ASPECT_RATIO, align 4
  %128 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %129 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 8
  %131 = add nsw i32 1, %130
  %132 = call i32 (i8*, i32, i32, i32, i32, ...) @cx2341x_api(i8* %125, i32 %126, i32 %127, i32 1, i32 %131)
  store i32 %132, i32* %10, align 4
  %133 = load i32, i32* %10, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %124
  %136 = load i32, i32* %10, align 4
  store i32 %136, i32* %5, align 4
  br label %513

137:                                              ; preds = %124
  br label %138

138:                                              ; preds = %137, %118
  %139 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %8, align 8
  %140 = icmp ne %struct.cx2341x_mpeg_params* %139, null
  br i1 %140, label %141, label %153

141:                                              ; preds = %138
  %142 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %8, align 8
  %143 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %144 = load i32, i32* @video_b_frames, align 4
  %145 = call i64 @CMP_FIELD(%struct.cx2341x_mpeg_params* %142, %struct.cx2341x_mpeg_params* %143, i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %153, label %147

147:                                              ; preds = %141
  %148 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %8, align 8
  %149 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %150 = load i32, i32* @video_gop_size, align 4
  %151 = call i64 @CMP_FIELD(%struct.cx2341x_mpeg_params* %148, %struct.cx2341x_mpeg_params* %149, i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %170

153:                                              ; preds = %147, %141, %138
  %154 = load i8*, i8** %6, align 8
  %155 = load i32, i32* %7, align 4
  %156 = load i32, i32* @CX2341X_ENC_SET_GOP_PROPERTIES, align 4
  %157 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %158 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %157, i32 0, i32 6
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %161 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %160, i32 0, i32 7
  %162 = load i32, i32* %161, align 8
  %163 = add nsw i32 %162, 1
  %164 = call i32 (i8*, i32, i32, i32, i32, ...) @cx2341x_api(i8* %154, i32 %155, i32 %156, i32 2, i32 %159, i32 %163)
  store i32 %164, i32* %10, align 4
  %165 = load i32, i32* %10, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %153
  %168 = load i32, i32* %10, align 4
  store i32 %168, i32* %5, align 4
  br label %513

169:                                              ; preds = %153
  br label %170

170:                                              ; preds = %169, %147
  %171 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %8, align 8
  %172 = icmp ne %struct.cx2341x_mpeg_params* %171, null
  br i1 %172, label %173, label %179

173:                                              ; preds = %170
  %174 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %8, align 8
  %175 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %176 = load i32, i32* @video_gop_closure, align 4
  %177 = call i64 @CMP_FIELD(%struct.cx2341x_mpeg_params* %174, %struct.cx2341x_mpeg_params* %175, i32 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %192

179:                                              ; preds = %173, %170
  %180 = load i8*, i8** %6, align 8
  %181 = load i32, i32* %7, align 4
  %182 = load i32, i32* @CX2341X_ENC_SET_GOP_CLOSURE, align 4
  %183 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %184 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %183, i32 0, i32 28
  %185 = load i32, i32* %184, align 4
  %186 = call i32 (i8*, i32, i32, i32, i32, ...) @cx2341x_api(i8* %180, i32 %181, i32 %182, i32 1, i32 %185)
  store i32 %186, i32* %10, align 4
  %187 = load i32, i32* %10, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %179
  %190 = load i32, i32* %10, align 4
  store i32 %190, i32* %5, align 4
  br label %513

191:                                              ; preds = %179
  br label %192

192:                                              ; preds = %191, %173
  %193 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %8, align 8
  %194 = icmp ne %struct.cx2341x_mpeg_params* %193, null
  br i1 %194, label %195, label %201

195:                                              ; preds = %192
  %196 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %8, align 8
  %197 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %198 = load i32, i32* @audio_properties, align 4
  %199 = call i64 @CMP_FIELD(%struct.cx2341x_mpeg_params* %196, %struct.cx2341x_mpeg_params* %197, i32 %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %214

201:                                              ; preds = %195, %192
  %202 = load i8*, i8** %6, align 8
  %203 = load i32, i32* %7, align 4
  %204 = load i32, i32* @CX2341X_ENC_SET_AUDIO_PROPERTIES, align 4
  %205 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %206 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %205, i32 0, i32 27
  %207 = load i32, i32* %206, align 8
  %208 = call i32 (i8*, i32, i32, i32, i32, ...) @cx2341x_api(i8* %202, i32 %203, i32 %204, i32 1, i32 %207)
  store i32 %208, i32* %10, align 4
  %209 = load i32, i32* %10, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %201
  %212 = load i32, i32* %10, align 4
  store i32 %212, i32* %5, align 4
  br label %513

213:                                              ; preds = %201
  br label %214

214:                                              ; preds = %213, %195
  %215 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %8, align 8
  %216 = icmp ne %struct.cx2341x_mpeg_params* %215, null
  br i1 %216, label %217, label %223

217:                                              ; preds = %214
  %218 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %8, align 8
  %219 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %220 = load i32, i32* @audio_mute, align 4
  %221 = call i64 @CMP_FIELD(%struct.cx2341x_mpeg_params* %218, %struct.cx2341x_mpeg_params* %219, i32 %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %236

223:                                              ; preds = %217, %214
  %224 = load i8*, i8** %6, align 8
  %225 = load i32, i32* %7, align 4
  %226 = load i32, i32* @CX2341X_ENC_MUTE_AUDIO, align 4
  %227 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %228 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %227, i32 0, i32 26
  %229 = load i32, i32* %228, align 4
  %230 = call i32 (i8*, i32, i32, i32, i32, ...) @cx2341x_api(i8* %224, i32 %225, i32 %226, i32 1, i32 %229)
  store i32 %230, i32* %10, align 4
  %231 = load i32, i32* %10, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %235

233:                                              ; preds = %223
  %234 = load i32, i32* %10, align 4
  store i32 %234, i32* %5, align 4
  br label %513

235:                                              ; preds = %223
  br label %236

236:                                              ; preds = %235, %217
  %237 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %8, align 8
  %238 = icmp ne %struct.cx2341x_mpeg_params* %237, null
  br i1 %238, label %239, label %257

239:                                              ; preds = %236
  %240 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %8, align 8
  %241 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %242 = load i32, i32* @video_bitrate_mode, align 4
  %243 = call i64 @CMP_FIELD(%struct.cx2341x_mpeg_params* %240, %struct.cx2341x_mpeg_params* %241, i32 %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %257, label %245

245:                                              ; preds = %239
  %246 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %8, align 8
  %247 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %248 = load i32, i32* @video_bitrate, align 4
  %249 = call i64 @CMP_FIELD(%struct.cx2341x_mpeg_params* %246, %struct.cx2341x_mpeg_params* %247, i32 %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %257, label %251

251:                                              ; preds = %245
  %252 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %8, align 8
  %253 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %254 = load i32, i32* @video_bitrate_peak, align 4
  %255 = call i64 @CMP_FIELD(%struct.cx2341x_mpeg_params* %252, %struct.cx2341x_mpeg_params* %253, i32 %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %277

257:                                              ; preds = %251, %245, %239, %236
  %258 = load i8*, i8** %6, align 8
  %259 = load i32, i32* %7, align 4
  %260 = load i32, i32* @CX2341X_ENC_SET_BIT_RATE, align 4
  %261 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %262 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %261, i32 0, i32 25
  %263 = load i32, i32* %262, align 8
  %264 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %265 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %264, i32 0, i32 24
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %268 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %267, i32 0, i32 8
  %269 = load i32, i32* %268, align 4
  %270 = sdiv i32 %269, 400
  %271 = call i32 (i8*, i32, i32, i32, i32, ...) @cx2341x_api(i8* %258, i32 %259, i32 %260, i32 5, i32 %263, i32 %266, i32 %270, i32 0, i32 0)
  store i32 %271, i32* %10, align 4
  %272 = load i32, i32* %10, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %276

274:                                              ; preds = %257
  %275 = load i32, i32* %10, align 4
  store i32 %275, i32* %5, align 4
  br label %513

276:                                              ; preds = %257
  br label %277

277:                                              ; preds = %276, %251
  %278 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %8, align 8
  %279 = icmp ne %struct.cx2341x_mpeg_params* %278, null
  br i1 %279, label %280, label %298

280:                                              ; preds = %277
  %281 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %8, align 8
  %282 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %283 = load i32, i32* @video_spatial_filter_mode, align 4
  %284 = call i64 @CMP_FIELD(%struct.cx2341x_mpeg_params* %281, %struct.cx2341x_mpeg_params* %282, i32 %283)
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %298, label %286

286:                                              ; preds = %280
  %287 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %8, align 8
  %288 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %289 = load i32, i32* @video_temporal_filter_mode, align 4
  %290 = call i64 @CMP_FIELD(%struct.cx2341x_mpeg_params* %287, %struct.cx2341x_mpeg_params* %288, i32 %289)
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %298, label %292

292:                                              ; preds = %286
  %293 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %8, align 8
  %294 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %295 = load i32, i32* @video_median_filter_type, align 4
  %296 = call i64 @CMP_FIELD(%struct.cx2341x_mpeg_params* %293, %struct.cx2341x_mpeg_params* %294, i32 %295)
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %319

298:                                              ; preds = %292, %286, %280, %277
  %299 = load i8*, i8** %6, align 8
  %300 = load i32, i32* %7, align 4
  %301 = load i32, i32* @CX2341X_ENC_SET_DNR_FILTER_MODE, align 4
  %302 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %303 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %302, i32 0, i32 9
  %304 = load i32, i32* %303, align 8
  %305 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %306 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %305, i32 0, i32 10
  %307 = load i32, i32* %306, align 4
  %308 = shl i32 %307, 1
  %309 = or i32 %304, %308
  %310 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %311 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %310, i32 0, i32 11
  %312 = load i32, i32* %311, align 8
  %313 = call i32 (i8*, i32, i32, i32, i32, ...) @cx2341x_api(i8* %299, i32 %300, i32 %301, i32 2, i32 %309, i32 %312)
  store i32 %313, i32* %10, align 4
  %314 = load i32, i32* %10, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %318

316:                                              ; preds = %298
  %317 = load i32, i32* %10, align 4
  store i32 %317, i32* %5, align 4
  br label %513

318:                                              ; preds = %298
  br label %319

319:                                              ; preds = %318, %292
  %320 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %8, align 8
  %321 = icmp ne %struct.cx2341x_mpeg_params* %320, null
  br i1 %321, label %322, label %346

322:                                              ; preds = %319
  %323 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %8, align 8
  %324 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %325 = load i32, i32* @video_luma_median_filter_bottom, align 4
  %326 = call i64 @CMP_FIELD(%struct.cx2341x_mpeg_params* %323, %struct.cx2341x_mpeg_params* %324, i32 %325)
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %346, label %328

328:                                              ; preds = %322
  %329 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %8, align 8
  %330 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %331 = load i32, i32* @video_luma_median_filter_top, align 4
  %332 = call i64 @CMP_FIELD(%struct.cx2341x_mpeg_params* %329, %struct.cx2341x_mpeg_params* %330, i32 %331)
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %346, label %334

334:                                              ; preds = %328
  %335 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %8, align 8
  %336 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %337 = load i32, i32* @video_chroma_median_filter_bottom, align 4
  %338 = call i64 @CMP_FIELD(%struct.cx2341x_mpeg_params* %335, %struct.cx2341x_mpeg_params* %336, i32 %337)
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %346, label %340

340:                                              ; preds = %334
  %341 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %8, align 8
  %342 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %343 = load i32, i32* @video_chroma_median_filter_top, align 4
  %344 = call i64 @CMP_FIELD(%struct.cx2341x_mpeg_params* %341, %struct.cx2341x_mpeg_params* %342, i32 %343)
  %345 = icmp ne i64 %344, 0
  br i1 %345, label %346, label %368

346:                                              ; preds = %340, %334, %328, %322, %319
  %347 = load i8*, i8** %6, align 8
  %348 = load i32, i32* %7, align 4
  %349 = load i32, i32* @CX2341X_ENC_SET_CORING_LEVELS, align 4
  %350 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %351 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %350, i32 0, i32 23
  %352 = load i32, i32* %351, align 8
  %353 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %354 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %353, i32 0, i32 22
  %355 = load i32, i32* %354, align 4
  %356 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %357 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %356, i32 0, i32 21
  %358 = load i32, i32* %357, align 8
  %359 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %360 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %359, i32 0, i32 20
  %361 = load i32, i32* %360, align 4
  %362 = call i32 (i8*, i32, i32, i32, i32, ...) @cx2341x_api(i8* %347, i32 %348, i32 %349, i32 4, i32 %352, i32 %355, i32 %358, i32 %361)
  store i32 %362, i32* %10, align 4
  %363 = load i32, i32* %10, align 4
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %367

365:                                              ; preds = %346
  %366 = load i32, i32* %10, align 4
  store i32 %366, i32* %5, align 4
  br label %513

367:                                              ; preds = %346
  br label %368

368:                                              ; preds = %367, %340
  %369 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %8, align 8
  %370 = icmp ne %struct.cx2341x_mpeg_params* %369, null
  br i1 %370, label %371, label %383

371:                                              ; preds = %368
  %372 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %8, align 8
  %373 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %374 = load i32, i32* @video_luma_spatial_filter_type, align 4
  %375 = call i64 @CMP_FIELD(%struct.cx2341x_mpeg_params* %372, %struct.cx2341x_mpeg_params* %373, i32 %374)
  %376 = icmp ne i64 %375, 0
  br i1 %376, label %383, label %377

377:                                              ; preds = %371
  %378 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %8, align 8
  %379 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %380 = load i32, i32* @video_chroma_spatial_filter_type, align 4
  %381 = call i64 @CMP_FIELD(%struct.cx2341x_mpeg_params* %378, %struct.cx2341x_mpeg_params* %379, i32 %380)
  %382 = icmp ne i64 %381, 0
  br i1 %382, label %383, label %399

383:                                              ; preds = %377, %371, %368
  %384 = load i8*, i8** %6, align 8
  %385 = load i32, i32* %7, align 4
  %386 = load i32, i32* @CX2341X_ENC_SET_SPATIAL_FILTER_TYPE, align 4
  %387 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %388 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %387, i32 0, i32 12
  %389 = load i32, i32* %388, align 4
  %390 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %391 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %390, i32 0, i32 13
  %392 = load i32, i32* %391, align 8
  %393 = call i32 (i8*, i32, i32, i32, i32, ...) @cx2341x_api(i8* %384, i32 %385, i32 %386, i32 2, i32 %389, i32 %392)
  store i32 %393, i32* %10, align 4
  %394 = load i32, i32* %10, align 4
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %398

396:                                              ; preds = %383
  %397 = load i32, i32* %10, align 4
  store i32 %397, i32* %5, align 4
  br label %513

398:                                              ; preds = %383
  br label %399

399:                                              ; preds = %398, %377
  %400 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %8, align 8
  %401 = icmp ne %struct.cx2341x_mpeg_params* %400, null
  br i1 %401, label %402, label %414

402:                                              ; preds = %399
  %403 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %8, align 8
  %404 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %405 = load i32, i32* @video_spatial_filter, align 4
  %406 = call i64 @CMP_FIELD(%struct.cx2341x_mpeg_params* %403, %struct.cx2341x_mpeg_params* %404, i32 %405)
  %407 = icmp ne i64 %406, 0
  br i1 %407, label %414, label %408

408:                                              ; preds = %402
  %409 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %8, align 8
  %410 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %411 = load i32, i32* @video_temporal_filter, align 4
  %412 = call i64 @CMP_FIELD(%struct.cx2341x_mpeg_params* %409, %struct.cx2341x_mpeg_params* %410, i32 %411)
  %413 = icmp ne i64 %412, 0
  br i1 %413, label %414, label %430

414:                                              ; preds = %408, %402, %399
  %415 = load i8*, i8** %6, align 8
  %416 = load i32, i32* %7, align 4
  %417 = load i32, i32* @CX2341X_ENC_SET_DNR_FILTER_PROPS, align 4
  %418 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %419 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %418, i32 0, i32 14
  %420 = load i32, i32* %419, align 4
  %421 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %422 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %421, i32 0, i32 15
  %423 = load i32, i32* %422, align 8
  %424 = call i32 (i8*, i32, i32, i32, i32, ...) @cx2341x_api(i8* %415, i32 %416, i32 %417, i32 2, i32 %420, i32 %423)
  store i32 %424, i32* %10, align 4
  %425 = load i32, i32* %10, align 4
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %427, label %429

427:                                              ; preds = %414
  %428 = load i32, i32* %10, align 4
  store i32 %428, i32* %5, align 4
  br label %513

429:                                              ; preds = %414
  br label %430

430:                                              ; preds = %429, %408
  %431 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %8, align 8
  %432 = icmp ne %struct.cx2341x_mpeg_params* %431, null
  br i1 %432, label %433, label %439

433:                                              ; preds = %430
  %434 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %8, align 8
  %435 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %436 = load i32, i32* @video_temporal_decimation, align 4
  %437 = call i64 @CMP_FIELD(%struct.cx2341x_mpeg_params* %434, %struct.cx2341x_mpeg_params* %435, i32 %436)
  %438 = icmp ne i64 %437, 0
  br i1 %438, label %439, label %452

439:                                              ; preds = %433, %430
  %440 = load i8*, i8** %6, align 8
  %441 = load i32, i32* %7, align 4
  %442 = load i32, i32* @CX2341X_ENC_SET_FRAME_DROP_RATE, align 4
  %443 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %444 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %443, i32 0, i32 19
  %445 = load i32, i32* %444, align 8
  %446 = call i32 (i8*, i32, i32, i32, i32, ...) @cx2341x_api(i8* %440, i32 %441, i32 %442, i32 1, i32 %445)
  store i32 %446, i32* %10, align 4
  %447 = load i32, i32* %10, align 4
  %448 = icmp ne i32 %447, 0
  br i1 %448, label %449, label %451

449:                                              ; preds = %439
  %450 = load i32, i32* %10, align 4
  store i32 %450, i32* %5, align 4
  br label %513

451:                                              ; preds = %439
  br label %452

452:                                              ; preds = %451, %433
  %453 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %8, align 8
  %454 = icmp ne %struct.cx2341x_mpeg_params* %453, null
  br i1 %454, label %455, label %472

455:                                              ; preds = %452
  %456 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %8, align 8
  %457 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %458 = load i32, i32* @video_mute, align 4
  %459 = call i64 @CMP_FIELD(%struct.cx2341x_mpeg_params* %456, %struct.cx2341x_mpeg_params* %457, i32 %458)
  %460 = icmp ne i64 %459, 0
  br i1 %460, label %472, label %461

461:                                              ; preds = %455
  %462 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %463 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %462, i32 0, i32 16
  %464 = load i32, i32* %463, align 4
  %465 = icmp ne i32 %464, 0
  br i1 %465, label %466, label %490

466:                                              ; preds = %461
  %467 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %8, align 8
  %468 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %469 = load i32, i32* @video_mute_yuv, align 4
  %470 = call i64 @CMP_FIELD(%struct.cx2341x_mpeg_params* %467, %struct.cx2341x_mpeg_params* %468, i32 %469)
  %471 = icmp ne i64 %470, 0
  br i1 %471, label %472, label %490

472:                                              ; preds = %466, %455, %452
  %473 = load i8*, i8** %6, align 8
  %474 = load i32, i32* %7, align 4
  %475 = load i32, i32* @CX2341X_ENC_MUTE_VIDEO, align 4
  %476 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %477 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %476, i32 0, i32 16
  %478 = load i32, i32* %477, align 4
  %479 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %480 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %479, i32 0, i32 17
  %481 = load i32, i32* %480, align 8
  %482 = shl i32 %481, 8
  %483 = or i32 %478, %482
  %484 = call i32 (i8*, i32, i32, i32, i32, ...) @cx2341x_api(i8* %473, i32 %474, i32 %475, i32 1, i32 %483)
  store i32 %484, i32* %10, align 4
  %485 = load i32, i32* %10, align 4
  %486 = icmp ne i32 %485, 0
  br i1 %486, label %487, label %489

487:                                              ; preds = %472
  %488 = load i32, i32* %10, align 4
  store i32 %488, i32* %5, align 4
  br label %513

489:                                              ; preds = %472
  br label %490

490:                                              ; preds = %489, %466, %461
  %491 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %8, align 8
  %492 = icmp ne %struct.cx2341x_mpeg_params* %491, null
  br i1 %492, label %493, label %499

493:                                              ; preds = %490
  %494 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %8, align 8
  %495 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %496 = load i32, i32* @stream_insert_nav_packets, align 4
  %497 = call i64 @CMP_FIELD(%struct.cx2341x_mpeg_params* %494, %struct.cx2341x_mpeg_params* %495, i32 %496)
  %498 = icmp ne i64 %497, 0
  br i1 %498, label %499, label %512

499:                                              ; preds = %493, %490
  %500 = load i8*, i8** %6, align 8
  %501 = load i32, i32* %7, align 4
  %502 = load i32, i32* @CX2341X_ENC_MISC, align 4
  %503 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %504 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %503, i32 0, i32 18
  %505 = load i32, i32* %504, align 4
  %506 = call i32 (i8*, i32, i32, i32, i32, ...) @cx2341x_api(i8* %500, i32 %501, i32 %502, i32 2, i32 7, i32 %505)
  store i32 %506, i32* %10, align 4
  %507 = load i32, i32* %10, align 4
  %508 = icmp ne i32 %507, 0
  br i1 %508, label %509, label %511

509:                                              ; preds = %499
  %510 = load i32, i32* %10, align 4
  store i32 %510, i32* %5, align 4
  br label %513

511:                                              ; preds = %499
  br label %512

512:                                              ; preds = %511, %493
  store i32 0, i32* %5, align 4
  br label %513

513:                                              ; preds = %512, %509, %487, %449, %427, %396, %365, %316, %274, %233, %211, %189, %167, %135, %112, %88, %38
  %514 = load i32, i32* %5, align 4
  ret i32 %514
}

declare dso_local i32 @cx2341x_api(i8*, i32, i32, i32, i32, ...) #1

declare dso_local i64 @CMP_FIELD(%struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

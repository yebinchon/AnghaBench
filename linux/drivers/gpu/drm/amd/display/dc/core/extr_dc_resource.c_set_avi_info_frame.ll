; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_resource.c_set_avi_info_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_resource.c_set_avi_info_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_info_packet = type { i64*, i32, i32, i32, i32 }
%struct.pipe_ctx = type { %struct.dc_stream_state* }
%struct.dc_stream_state = type { i32, i32, i32, %struct.TYPE_9__, %union.display_content_support }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i64, i64, i32, i64, i64, i32 }
%union.display_content_support = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%union.hdmi_info_packet = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i64, i64, i32, i32, i32, %struct.TYPE_8__, i64, i64, i32, i64, i32, i64, i8*, i8*, i64, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i64, i64 }
%struct.TYPE_7__ = type { i64*, i32, i32, i32 }

@COLOR_SPACE_UNKNOWN = common dso_local global i32 0, align 4
@SCANNING_TYPE_NODATA = common dso_local global i32 0, align 4
@COLOR_SPACE_SRGB = common dso_local global i32 0, align 4
@COLOR_SPACE_YCBCR709 = common dso_local global i32 0, align 4
@HDMI_INFOFRAME_TYPE_AVI = common dso_local global i64 0, align 8
@HDMI_AVI_INFOFRAME_SIZE = common dso_local global i64 0, align 8
@ACTIVE_FORMAT_VALID = common dso_local global i32 0, align 4
@BAR_INFO_BOTH_VALID = common dso_local global i32 0, align 4
@PICTURE_SCALING_UNIFORM = common dso_local global i32 0, align 4
@SCANNING_TYPE_UNDERSCAN = common dso_local global i32 0, align 4
@COLOR_SPACE_YCBCR709_LIMITED = common dso_local global i32 0, align 4
@COLORIMETRY_ITU709 = common dso_local global i64 0, align 8
@COLOR_SPACE_YCBCR601 = common dso_local global i32 0, align 4
@COLOR_SPACE_YCBCR601_LIMITED = common dso_local global i32 0, align 4
@COLORIMETRY_ITU601 = common dso_local global i64 0, align 8
@COLORIMETRY_NO_DATA = common dso_local global i64 0, align 8
@COLOR_SPACE_2020_RGB_FULLRANGE = common dso_local global i32 0, align 4
@COLOR_SPACE_2020_RGB_LIMITEDRANGE = common dso_local global i32 0, align 4
@COLOR_SPACE_2020_YCBCR = common dso_local global i32 0, align 4
@COLORIMETRYEX_BT2020RGBYCBCR = common dso_local global i64 0, align 8
@COLORIMETRY_EXTENDED = common dso_local global i64 0, align 8
@COLOR_SPACE_ADOBERGB = common dso_local global i32 0, align 4
@COLORIMETRYEX_ADOBERGB = common dso_local global i64 0, align 8
@ACTIVE_FORMAT_ASPECT_RATIO_SAME_AS_PICTURE = common dso_local global i32 0, align 4
@DISPLAY_CONTENT_TYPE_GRAPHICS = common dso_local global i64 0, align 8
@DISPLAY_CONTENT_TYPE_PHOTO = common dso_local global i64 0, align 8
@DISPLAY_CONTENT_TYPE_CINEMA = common dso_local global i64 0, align 8
@DISPLAY_CONTENT_TYPE_GAME = common dso_local global i64 0, align 8
@RGB_QUANTIZATION_FULL_RANGE = common dso_local global i8* null, align 8
@YYC_QUANTIZATION_FULL_RANGE = common dso_local global i8* null, align 8
@COLOR_SPACE_SRGB_LIMITED = common dso_local global i32 0, align 4
@RGB_QUANTIZATION_LIMITED_RANGE = common dso_local global i8* null, align 8
@YYC_QUANTIZATION_LIMITED_RANGE = common dso_local global i8* null, align 8
@RGB_QUANTIZATION_DEFAULT_RANGE = common dso_local global i8* null, align 8
@TIMING_3D_FORMAT_NONE = common dso_local global i32 0, align 4
@COLORIMETRYEX_RESERVED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc_info_packet*, %struct.pipe_ctx*)* @set_avi_info_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_avi_info_frame(%struct.dc_info_packet* %0, %struct.pipe_ctx* %1) #0 {
  %3 = alloca %struct.dc_info_packet*, align 8
  %4 = alloca %struct.pipe_ctx*, align 8
  %5 = alloca %struct.dc_stream_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %union.hdmi_info_packet, align 8
  %17 = alloca %union.display_content_support, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.dc_info_packet* %0, %struct.dc_info_packet** %3, align 8
  store %struct.pipe_ctx* %1, %struct.pipe_ctx** %4, align 8
  %20 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %21 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %20, i32 0, i32 0
  %22 = load %struct.dc_stream_state*, %struct.dc_stream_state** %21, align 8
  store %struct.dc_stream_state* %22, %struct.dc_stream_state** %5, align 8
  %23 = load i32, i32* @COLOR_SPACE_UNKNOWN, align 4
  store i32 %23, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %24 = load i32, i32* @SCANNING_TYPE_NODATA, align 4
  store i32 %24, i32* %8, align 4
  store i32 132, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i32 0, i32* %13, align 4
  store i64* null, i64** %14, align 8
  store i64 0, i64* %15, align 8
  %25 = bitcast %union.display_content_support* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %25, i8 0, i64 20, i1 false)
  %26 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %27 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %26, i32 0, i32 0
  %28 = load %struct.dc_stream_state*, %struct.dc_stream_state** %27, align 8
  %29 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %18, align 4
  %32 = call i32 @memset(%union.hdmi_info_packet* %16, i32 0, i32 152)
  %33 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %34 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %33, i32 0, i32 0
  %35 = load %struct.dc_stream_state*, %struct.dc_stream_state** %34, align 8
  %36 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @COLOR_SPACE_UNKNOWN, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %2
  %42 = load %struct.dc_stream_state*, %struct.dc_stream_state** %5, align 8
  %43 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 131
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* @COLOR_SPACE_SRGB, align 4
  br label %51

49:                                               ; preds = %41
  %50 = load i32, i32* @COLOR_SPACE_YCBCR709, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %51, %2
  %54 = load i64, i64* @HDMI_INFOFRAME_TYPE_AVI, align 8
  %55 = bitcast %union.hdmi_info_packet* %16 to %struct.TYPE_10__*
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 7
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 2
  store i64 %54, i64* %57, align 8
  %58 = bitcast %union.hdmi_info_packet* %16 to %struct.TYPE_10__*
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 7
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  store i32 2, i32* %60, align 8
  %61 = load i64, i64* @HDMI_AVI_INFOFRAME_SIZE, align 8
  %62 = bitcast %union.hdmi_info_packet* %16 to %struct.TYPE_10__*
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 7
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  store i64 %61, i64* %64, align 8
  %65 = load %struct.dc_stream_state*, %struct.dc_stream_state** %5, align 8
  %66 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  switch i32 %68, label %73 [
    i32 129, label %69
    i32 128, label %70
    i32 130, label %71
    i32 131, label %72
  ]

69:                                               ; preds = %53
  store i32 1, i32* %7, align 4
  br label %74

70:                                               ; preds = %53
  store i32 2, i32* %7, align 4
  br label %74

71:                                               ; preds = %53
  store i32 3, i32* %7, align 4
  br label %74

72:                                               ; preds = %53
  br label %73

73:                                               ; preds = %53, %72
  store i32 0, i32* %7, align 4
  br label %74

74:                                               ; preds = %73, %71, %70, %69
  %75 = load i32, i32* %7, align 4
  %76 = bitcast %union.hdmi_info_packet* %16 to %struct.TYPE_10__*
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* @ACTIVE_FORMAT_VALID, align 4
  %79 = bitcast %union.hdmi_info_packet* %16 to %struct.TYPE_10__*
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 20
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* @BAR_INFO_BOTH_VALID, align 4
  %82 = bitcast %union.hdmi_info_packet* %16 to %struct.TYPE_10__*
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 19
  store i32 %81, i32* %83, align 8
  %84 = load i32, i32* @PICTURE_SCALING_UNIFORM, align 4
  %85 = bitcast %union.hdmi_info_packet* %16 to %struct.TYPE_10__*
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 18
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* @SCANNING_TYPE_UNDERSCAN, align 4
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %8, align 4
  %89 = bitcast %union.hdmi_info_packet* %16 to %struct.TYPE_10__*
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @COLOR_SPACE_YCBCR709, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %98, label %94

94:                                               ; preds = %74
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @COLOR_SPACE_YCBCR709_LIMITED, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %94, %74
  %99 = load i64, i64* @COLORIMETRY_ITU709, align 8
  %100 = bitcast %union.hdmi_info_packet* %16 to %struct.TYPE_10__*
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 2
  store i64 %99, i64* %101, align 8
  br label %119

102:                                              ; preds = %94
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* @COLOR_SPACE_YCBCR601, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %110, label %106

106:                                              ; preds = %102
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @COLOR_SPACE_YCBCR601_LIMITED, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %106, %102
  %111 = load i64, i64* @COLORIMETRY_ITU601, align 8
  %112 = bitcast %union.hdmi_info_packet* %16 to %struct.TYPE_10__*
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 2
  store i64 %111, i64* %113, align 8
  br label %118

114:                                              ; preds = %106
  %115 = load i64, i64* @COLORIMETRY_NO_DATA, align 8
  %116 = bitcast %union.hdmi_info_packet* %16 to %struct.TYPE_10__*
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 2
  store i64 %115, i64* %117, align 8
  br label %118

118:                                              ; preds = %114, %110
  br label %119

119:                                              ; preds = %118, %98
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* @COLOR_SPACE_2020_RGB_FULLRANGE, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %131, label %123

123:                                              ; preds = %119
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* @COLOR_SPACE_2020_RGB_LIMITEDRANGE, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %131, label %127

127:                                              ; preds = %123
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* @COLOR_SPACE_2020_YCBCR, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %138

131:                                              ; preds = %127, %123, %119
  %132 = load i64, i64* @COLORIMETRYEX_BT2020RGBYCBCR, align 8
  %133 = bitcast %union.hdmi_info_packet* %16 to %struct.TYPE_10__*
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 3
  store i64 %132, i64* %134, align 8
  %135 = load i64, i64* @COLORIMETRY_EXTENDED, align 8
  %136 = bitcast %union.hdmi_info_packet* %16 to %struct.TYPE_10__*
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 2
  store i64 %135, i64* %137, align 8
  br label %150

138:                                              ; preds = %127
  %139 = load i32, i32* %6, align 4
  %140 = load i32, i32* @COLOR_SPACE_ADOBERGB, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %149

142:                                              ; preds = %138
  %143 = load i64, i64* @COLORIMETRYEX_ADOBERGB, align 8
  %144 = bitcast %union.hdmi_info_packet* %16 to %struct.TYPE_10__*
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 3
  store i64 %143, i64* %145, align 8
  %146 = load i64, i64* @COLORIMETRY_EXTENDED, align 8
  %147 = bitcast %union.hdmi_info_packet* %16 to %struct.TYPE_10__*
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 2
  store i64 %146, i64* %148, align 8
  br label %149

149:                                              ; preds = %142, %138
  br label %150

150:                                              ; preds = %149, %131
  %151 = load %struct.dc_stream_state*, %struct.dc_stream_state** %5, align 8
  %152 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %151, i32 0, i32 3
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  store i32 %154, i32* %9, align 4
  %155 = load i32, i32* %9, align 4
  switch i32 %155, label %161 [
    i32 134, label %156
    i32 136, label %156
    i32 132, label %160
    i32 133, label %160
    i32 135, label %160
  ]

156:                                              ; preds = %150, %150
  %157 = load i32, i32* %9, align 4
  %158 = bitcast %union.hdmi_info_packet* %16 to %struct.TYPE_10__*
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 4
  store i32 %157, i32* %159, align 8
  br label %164

160:                                              ; preds = %150, %150, %150
  br label %161

161:                                              ; preds = %150, %160
  %162 = bitcast %union.hdmi_info_packet* %16 to %struct.TYPE_10__*
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 4
  store i32 0, i32* %163, align 8
  br label %164

164:                                              ; preds = %161, %156
  %165 = load i32, i32* @ACTIVE_FORMAT_ASPECT_RATIO_SAME_AS_PICTURE, align 4
  %166 = bitcast %union.hdmi_info_packet* %16 to %struct.TYPE_10__*
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 17
  store i32 %165, i32* %167, align 8
  store i64 0, i64* %12, align 8
  store i32 0, i32* %13, align 4
  store i32 1, i32* %10, align 4
  store i64 1, i64* %11, align 8
  %168 = load %struct.dc_stream_state*, %struct.dc_stream_state** %5, align 8
  %169 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %168, i32 0, i32 4
  %170 = bitcast %union.display_content_support* %17 to i8*
  %171 = bitcast %union.display_content_support* %169 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %170, i8* align 8 %171, i64 20, i1 false)
  %172 = load i32, i32* %10, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %238

174:                                              ; preds = %164
  %175 = bitcast %union.display_content_support* %17 to %struct.TYPE_6__*
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %180, label %179

179:                                              ; preds = %174
  store i32 0, i32* %13, align 4
  br label %231

180:                                              ; preds = %174
  %181 = load i64, i64* %12, align 8
  %182 = load i64, i64* @DISPLAY_CONTENT_TYPE_GRAPHICS, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %191

184:                                              ; preds = %180
  %185 = bitcast %union.display_content_support* %17 to %struct.TYPE_6__*
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = icmp eq i32 %187, 1
  br i1 %188, label %189, label %190

189:                                              ; preds = %184
  store i32 0, i32* %13, align 4
  br label %190

190:                                              ; preds = %189, %184
  br label %230

191:                                              ; preds = %180
  %192 = load i64, i64* %12, align 8
  %193 = load i64, i64* @DISPLAY_CONTENT_TYPE_PHOTO, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %203

195:                                              ; preds = %191
  %196 = bitcast %union.display_content_support* %17 to %struct.TYPE_6__*
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = icmp eq i32 %198, 1
  br i1 %199, label %200, label %201

200:                                              ; preds = %195
  store i32 1, i32* %13, align 4
  br label %202

201:                                              ; preds = %195
  store i32 0, i32* %13, align 4
  store i64 0, i64* %11, align 8
  br label %202

202:                                              ; preds = %201, %200
  br label %229

203:                                              ; preds = %191
  %204 = load i64, i64* %12, align 8
  %205 = load i64, i64* @DISPLAY_CONTENT_TYPE_CINEMA, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %207, label %215

207:                                              ; preds = %203
  %208 = bitcast %union.display_content_support* %17 to %struct.TYPE_6__*
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 4
  %211 = icmp eq i32 %210, 1
  br i1 %211, label %212, label %213

212:                                              ; preds = %207
  store i32 2, i32* %13, align 4
  br label %214

213:                                              ; preds = %207
  store i32 0, i32* %13, align 4
  store i64 0, i64* %11, align 8
  br label %214

214:                                              ; preds = %213, %212
  br label %228

215:                                              ; preds = %203
  %216 = load i64, i64* %12, align 8
  %217 = load i64, i64* @DISPLAY_CONTENT_TYPE_GAME, align 8
  %218 = icmp eq i64 %216, %217
  br i1 %218, label %219, label %227

219:                                              ; preds = %215
  %220 = bitcast %union.display_content_support* %17 to %struct.TYPE_6__*
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 4
  %223 = icmp eq i32 %222, 1
  br i1 %223, label %224, label %225

224:                                              ; preds = %219
  store i32 3, i32* %13, align 4
  br label %226

225:                                              ; preds = %219
  store i32 0, i32* %13, align 4
  store i64 0, i64* %11, align 8
  br label %226

226:                                              ; preds = %225, %224
  br label %227

227:                                              ; preds = %226, %215
  br label %228

228:                                              ; preds = %227, %214
  br label %229

229:                                              ; preds = %228, %202
  br label %230

230:                                              ; preds = %229, %190
  br label %231

231:                                              ; preds = %230, %179
  %232 = load i32, i32* %13, align 4
  %233 = bitcast %union.hdmi_info_packet* %16 to %struct.TYPE_10__*
  %234 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %233, i32 0, i32 5
  store i32 %232, i32* %234, align 4
  %235 = load i64, i64* %11, align 8
  %236 = bitcast %union.hdmi_info_packet* %16 to %struct.TYPE_10__*
  %237 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %236, i32 0, i32 16
  store i64 %235, i64* %237, align 8
  br label %238

238:                                              ; preds = %231, %164
  %239 = load %struct.dc_stream_state*, %struct.dc_stream_state** %5, align 8
  %240 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = icmp eq i32 %241, 1
  br i1 %242, label %243, label %287

243:                                              ; preds = %238
  %244 = load %struct.dc_stream_state*, %struct.dc_stream_state** %5, align 8
  %245 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 8
  %247 = icmp eq i32 %246, 1
  br i1 %247, label %248, label %287

248:                                              ; preds = %243
  %249 = load i32, i32* %6, align 4
  %250 = load i32, i32* @COLOR_SPACE_SRGB, align 4
  %251 = icmp eq i32 %249, %250
  br i1 %251, label %256, label %252

252:                                              ; preds = %248
  %253 = load i32, i32* %6, align 4
  %254 = load i32, i32* @COLOR_SPACE_2020_RGB_FULLRANGE, align 4
  %255 = icmp eq i32 %253, %254
  br i1 %255, label %256, label %263

256:                                              ; preds = %252, %248
  %257 = load i8*, i8** @RGB_QUANTIZATION_FULL_RANGE, align 8
  %258 = bitcast %union.hdmi_info_packet* %16 to %struct.TYPE_10__*
  %259 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %258, i32 0, i32 15
  store i8* %257, i8** %259, align 8
  %260 = load i8*, i8** @YYC_QUANTIZATION_FULL_RANGE, align 8
  %261 = bitcast %union.hdmi_info_packet* %16 to %struct.TYPE_10__*
  %262 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %261, i32 0, i32 14
  store i8* %260, i8** %262, align 8
  br label %286

263:                                              ; preds = %252
  %264 = load i32, i32* %6, align 4
  %265 = load i32, i32* @COLOR_SPACE_SRGB_LIMITED, align 4
  %266 = icmp eq i32 %264, %265
  br i1 %266, label %271, label %267

267:                                              ; preds = %263
  %268 = load i32, i32* %6, align 4
  %269 = load i32, i32* @COLOR_SPACE_2020_RGB_LIMITEDRANGE, align 4
  %270 = icmp eq i32 %268, %269
  br i1 %270, label %271, label %278

271:                                              ; preds = %267, %263
  %272 = load i8*, i8** @RGB_QUANTIZATION_LIMITED_RANGE, align 8
  %273 = bitcast %union.hdmi_info_packet* %16 to %struct.TYPE_10__*
  %274 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %273, i32 0, i32 15
  store i8* %272, i8** %274, align 8
  %275 = load i8*, i8** @YYC_QUANTIZATION_LIMITED_RANGE, align 8
  %276 = bitcast %union.hdmi_info_packet* %16 to %struct.TYPE_10__*
  %277 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %276, i32 0, i32 14
  store i8* %275, i8** %277, align 8
  br label %285

278:                                              ; preds = %267
  %279 = load i8*, i8** @RGB_QUANTIZATION_DEFAULT_RANGE, align 8
  %280 = bitcast %union.hdmi_info_packet* %16 to %struct.TYPE_10__*
  %281 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %280, i32 0, i32 15
  store i8* %279, i8** %281, align 8
  %282 = load i8*, i8** @YYC_QUANTIZATION_LIMITED_RANGE, align 8
  %283 = bitcast %union.hdmi_info_packet* %16 to %struct.TYPE_10__*
  %284 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %283, i32 0, i32 14
  store i8* %282, i8** %284, align 8
  br label %285

285:                                              ; preds = %278, %271
  br label %286

286:                                              ; preds = %285, %256
  br label %294

287:                                              ; preds = %243, %238
  %288 = load i8*, i8** @RGB_QUANTIZATION_DEFAULT_RANGE, align 8
  %289 = bitcast %union.hdmi_info_packet* %16 to %struct.TYPE_10__*
  %290 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %289, i32 0, i32 15
  store i8* %288, i8** %290, align 8
  %291 = load i8*, i8** @YYC_QUANTIZATION_LIMITED_RANGE, align 8
  %292 = bitcast %union.hdmi_info_packet* %16 to %struct.TYPE_10__*
  %293 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %292, i32 0, i32 14
  store i8* %291, i8** %293, align 8
  br label %294

294:                                              ; preds = %287, %286
  %295 = load %struct.dc_stream_state*, %struct.dc_stream_state** %5, align 8
  %296 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %295, i32 0, i32 3
  %297 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %296, i32 0, i32 3
  %298 = load i32, i32* %297, align 4
  store i32 %298, i32* %19, align 4
  %299 = load i32, i32* %19, align 4
  %300 = load i32, i32* @TIMING_3D_FORMAT_NONE, align 4
  %301 = icmp ne i32 %299, %300
  br i1 %301, label %302, label %315

302:                                              ; preds = %294
  %303 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %304 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %303, i32 0, i32 0
  %305 = load %struct.dc_stream_state*, %struct.dc_stream_state** %304, align 8
  %306 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %305, i32 0, i32 3
  %307 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %306, i32 0, i32 4
  %308 = load i32, i32* %307, align 8
  switch i32 %308, label %313 [
    i32 1, label %309
    i32 2, label %310
    i32 3, label %311
    i32 4, label %312
  ]

309:                                              ; preds = %302
  store i32 95, i32* %18, align 4
  br label %314

310:                                              ; preds = %302
  store i32 94, i32* %18, align 4
  br label %314

311:                                              ; preds = %302
  store i32 93, i32* %18, align 4
  br label %314

312:                                              ; preds = %302
  store i32 98, i32* %18, align 4
  br label %314

313:                                              ; preds = %302
  br label %314

314:                                              ; preds = %313, %312, %311, %310, %309
  br label %315

315:                                              ; preds = %314, %294
  %316 = load i32, i32* %18, align 4
  %317 = bitcast %union.hdmi_info_packet* %16 to %struct.TYPE_10__*
  %318 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %317, i32 0, i32 6
  store i32 %316, i32* %318, align 8
  %319 = load i32, i32* %18, align 4
  %320 = icmp uge i32 %319, 128
  br i1 %320, label %321, label %325

321:                                              ; preds = %315
  %322 = bitcast %union.hdmi_info_packet* %16 to %struct.TYPE_10__*
  %323 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %322, i32 0, i32 7
  %324 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %323, i32 0, i32 0
  store i32 3, i32* %324, align 8
  br label %325

325:                                              ; preds = %321, %315
  %326 = bitcast %union.hdmi_info_packet* %16 to %struct.TYPE_10__*
  %327 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %326, i32 0, i32 2
  %328 = load i64, i64* %327, align 8
  %329 = load i64, i64* @COLORIMETRY_EXTENDED, align 8
  %330 = icmp eq i64 %328, %329
  br i1 %330, label %331, label %344

331:                                              ; preds = %325
  %332 = bitcast %union.hdmi_info_packet* %16 to %struct.TYPE_10__*
  %333 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %332, i32 0, i32 3
  %334 = load i64, i64* %333, align 8
  %335 = load i64, i64* @COLORIMETRYEX_RESERVED, align 8
  %336 = icmp eq i64 %334, %335
  br i1 %336, label %337, label %344

337:                                              ; preds = %331
  %338 = bitcast %union.hdmi_info_packet* %16 to %struct.TYPE_10__*
  %339 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %338, i32 0, i32 7
  %340 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %339, i32 0, i32 0
  store i32 4, i32* %340, align 8
  %341 = bitcast %union.hdmi_info_packet* %16 to %struct.TYPE_10__*
  %342 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %341, i32 0, i32 7
  %343 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %342, i32 0, i32 1
  store i64 14, i64* %343, align 8
  br label %344

344:                                              ; preds = %337, %331, %325
  %345 = bitcast %union.hdmi_info_packet* %16 to %struct.TYPE_10__*
  %346 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %345, i32 0, i32 13
  store i64 0, i64* %346, align 8
  %347 = load %struct.dc_stream_state*, %struct.dc_stream_state** %5, align 8
  %348 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %347, i32 0, i32 3
  %349 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %348, i32 0, i32 10
  %350 = load i32, i32* %349, align 8
  %351 = bitcast %union.hdmi_info_packet* %16 to %struct.TYPE_10__*
  %352 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %351, i32 0, i32 12
  store i32 %350, i32* %352, align 8
  %353 = load %struct.dc_stream_state*, %struct.dc_stream_state** %5, align 8
  %354 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %353, i32 0, i32 3
  %355 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %354, i32 0, i32 9
  %356 = load i64, i64* %355, align 8
  %357 = load %struct.dc_stream_state*, %struct.dc_stream_state** %5, align 8
  %358 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %357, i32 0, i32 3
  %359 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %358, i32 0, i32 8
  %360 = load i64, i64* %359, align 8
  %361 = sub nsw i64 %356, %360
  %362 = add nsw i64 %361, 1
  %363 = bitcast %union.hdmi_info_packet* %16 to %struct.TYPE_10__*
  %364 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %363, i32 0, i32 11
  store i64 %362, i64* %364, align 8
  %365 = load %struct.dc_stream_state*, %struct.dc_stream_state** %5, align 8
  %366 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %365, i32 0, i32 3
  %367 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %366, i32 0, i32 7
  %368 = load i32, i32* %367, align 8
  %369 = bitcast %union.hdmi_info_packet* %16 to %struct.TYPE_10__*
  %370 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %369, i32 0, i32 10
  store i32 %368, i32* %370, align 8
  %371 = load %struct.dc_stream_state*, %struct.dc_stream_state** %5, align 8
  %372 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %371, i32 0, i32 3
  %373 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %372, i32 0, i32 6
  %374 = load i64, i64* %373, align 8
  %375 = load %struct.dc_stream_state*, %struct.dc_stream_state** %5, align 8
  %376 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %375, i32 0, i32 3
  %377 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %376, i32 0, i32 5
  %378 = load i64, i64* %377, align 8
  %379 = sub nsw i64 %374, %378
  %380 = add nsw i64 %379, 1
  %381 = bitcast %union.hdmi_info_packet* %16 to %struct.TYPE_10__*
  %382 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %381, i32 0, i32 9
  store i64 %380, i64* %382, align 8
  %383 = bitcast %union.hdmi_info_packet* %16 to %struct.TYPE_10__*
  %384 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %383, i32 0, i32 8
  store i64 0, i64* %384, align 8
  %385 = bitcast %union.hdmi_info_packet* %16 to %struct.TYPE_7__*
  %386 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %385, i32 0, i32 0
  %387 = load i64*, i64** %386, align 8
  %388 = getelementptr inbounds i64, i64* %387, i64 0
  store i64* %388, i64** %14, align 8
  %389 = load i64, i64* @HDMI_INFOFRAME_TYPE_AVI, align 8
  %390 = bitcast %union.hdmi_info_packet* %16 to %struct.TYPE_10__*
  %391 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %390, i32 0, i32 7
  %392 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %391, i32 0, i32 1
  %393 = load i64, i64* %392, align 8
  %394 = add nsw i64 %389, %393
  %395 = bitcast %union.hdmi_info_packet* %16 to %struct.TYPE_10__*
  %396 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %395, i32 0, i32 7
  %397 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %396, i32 0, i32 0
  %398 = load i32, i32* %397, align 8
  %399 = sext i32 %398 to i64
  %400 = add nsw i64 %394, %399
  %401 = load i64*, i64** %14, align 8
  store i64 %400, i64* %401, align 8
  store i64 1, i64* %15, align 8
  br label %402

402:                                              ; preds = %419, %344
  %403 = load i64, i64* %15, align 8
  %404 = bitcast %union.hdmi_info_packet* %16 to %struct.TYPE_10__*
  %405 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %404, i32 0, i32 7
  %406 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %405, i32 0, i32 1
  %407 = load i64, i64* %406, align 8
  %408 = icmp sle i64 %403, %407
  br i1 %408, label %409, label %422

409:                                              ; preds = %402
  %410 = bitcast %union.hdmi_info_packet* %16 to %struct.TYPE_7__*
  %411 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %410, i32 0, i32 0
  %412 = load i64*, i64** %411, align 8
  %413 = load i64, i64* %15, align 8
  %414 = getelementptr inbounds i64, i64* %412, i64 %413
  %415 = load i64, i64* %414, align 8
  %416 = load i64*, i64** %14, align 8
  %417 = load i64, i64* %416, align 8
  %418 = add nsw i64 %417, %415
  store i64 %418, i64* %416, align 8
  br label %419

419:                                              ; preds = %409
  %420 = load i64, i64* %15, align 8
  %421 = add nsw i64 %420, 1
  store i64 %421, i64* %15, align 8
  br label %402

422:                                              ; preds = %402
  %423 = load i64*, i64** %14, align 8
  %424 = load i64, i64* %423, align 8
  %425 = sub nsw i64 256, %424
  %426 = load i64*, i64** %14, align 8
  store i64 %425, i64* %426, align 8
  %427 = bitcast %union.hdmi_info_packet* %16 to %struct.TYPE_7__*
  %428 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %427, i32 0, i32 3
  %429 = load i32, i32* %428, align 8
  %430 = load %struct.dc_info_packet*, %struct.dc_info_packet** %3, align 8
  %431 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %430, i32 0, i32 4
  store i32 %429, i32* %431, align 4
  %432 = bitcast %union.hdmi_info_packet* %16 to %struct.TYPE_7__*
  %433 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %432, i32 0, i32 2
  %434 = load i32, i32* %433, align 4
  %435 = load %struct.dc_info_packet*, %struct.dc_info_packet** %3, align 8
  %436 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %435, i32 0, i32 3
  store i32 %434, i32* %436, align 8
  %437 = bitcast %union.hdmi_info_packet* %16 to %struct.TYPE_7__*
  %438 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %437, i32 0, i32 1
  %439 = load i32, i32* %438, align 8
  %440 = load %struct.dc_info_packet*, %struct.dc_info_packet** %3, align 8
  %441 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %440, i32 0, i32 2
  store i32 %439, i32* %441, align 4
  store i64 0, i64* %15, align 8
  br label %442

442:                                              ; preds = %457, %422
  %443 = load i64, i64* %15, align 8
  %444 = icmp ult i64 %443, 8
  br i1 %444, label %445, label %460

445:                                              ; preds = %442
  %446 = bitcast %union.hdmi_info_packet* %16 to %struct.TYPE_7__*
  %447 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %446, i32 0, i32 0
  %448 = load i64*, i64** %447, align 8
  %449 = load i64, i64* %15, align 8
  %450 = getelementptr inbounds i64, i64* %448, i64 %449
  %451 = load i64, i64* %450, align 8
  %452 = load %struct.dc_info_packet*, %struct.dc_info_packet** %3, align 8
  %453 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %452, i32 0, i32 0
  %454 = load i64*, i64** %453, align 8
  %455 = load i64, i64* %15, align 8
  %456 = getelementptr inbounds i64, i64* %454, i64 %455
  store i64 %451, i64* %456, align 8
  br label %457

457:                                              ; preds = %445
  %458 = load i64, i64* %15, align 8
  %459 = add nsw i64 %458, 1
  store i64 %459, i64* %15, align 8
  br label %442

460:                                              ; preds = %442
  %461 = load %struct.dc_info_packet*, %struct.dc_info_packet** %3, align 8
  %462 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %461, i32 0, i32 1
  store i32 1, i32* %462, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memset(%union.hdmi_info_packet*, i32, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_stream_encoder.c_enc1_stream_encoder_dp_set_stream_attribute.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_stream_encoder.c_enc1_stream_encoder_dp_set_stream_attribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stream_encoder = type { i32 }
%struct.dc_crtc_timing = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i64 }
%struct.dcn10_stream_encoder = type { i32 }

@DP_PIXEL_ENCODING_TYPE_YCBCR422 = common dso_local global i32 0, align 4
@DP_PIXEL_ENCODING_TYPE_YCBCR444 = common dso_local global i32 0, align 4
@DP_PIXEL_ENCODING_TYPE_Y_ONLY = common dso_local global i32 0, align 4
@DP_PIXEL_ENCODING_TYPE_YCBCR420 = common dso_local global i32 0, align 4
@DP_PIXEL_ENCODING_TYPE_RGB444 = common dso_local global i32 0, align 4
@DP_MSA_MISC = common dso_local global i32 0, align 4
@DP_COMPONENT_PIXEL_DEPTH_6BPC = common dso_local global i32 0, align 4
@DP_COMPONENT_PIXEL_DEPTH_8BPC = common dso_local global i32 0, align 4
@DP_COMPONENT_PIXEL_DEPTH_10BPC = common dso_local global i32 0, align 4
@DP_COMPONENT_PIXEL_DEPTH_12BPC = common dso_local global i32 0, align 4
@DP_COMPONENT_PIXEL_DEPTH_16BPC = common dso_local global i32 0, align 4
@DP_PIXEL_FORMAT = common dso_local global i32 0, align 4
@DP_PIXEL_ENCODING = common dso_local global i32 0, align 4
@DP_COMPONENT_DEPTH = common dso_local global i32 0, align 4
@DP_MSA_COLORIMETRY = common dso_local global i32 0, align 4
@DP_MSA_MISC0 = common dso_local global i32 0, align 4
@DP_MSA_TIMING_PARAM1 = common dso_local global i32 0, align 4
@DP_MSA_HTOTAL = common dso_local global i32 0, align 4
@DP_MSA_VTOTAL = common dso_local global i32 0, align 4
@DP_MSA_TIMING_PARAM2 = common dso_local global i32 0, align 4
@DP_MSA_HSTART = common dso_local global i32 0, align 4
@DP_MSA_VSTART = common dso_local global i32 0, align 4
@DP_MSA_TIMING_PARAM3 = common dso_local global i32 0, align 4
@DP_MSA_HSYNCWIDTH = common dso_local global i32 0, align 4
@DP_MSA_HSYNCPOLARITY = common dso_local global i32 0, align 4
@DP_MSA_VSYNCWIDTH = common dso_local global i32 0, align 4
@DP_MSA_VSYNCPOLARITY = common dso_local global i32 0, align 4
@DP_MSA_TIMING_PARAM4 = common dso_local global i32 0, align 4
@DP_MSA_HWIDTH = common dso_local global i32 0, align 4
@DP_MSA_VHEIGHT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @enc1_stream_encoder_dp_set_stream_attribute(%struct.stream_encoder* %0, %struct.dc_crtc_timing* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.stream_encoder*, align 8
  %6 = alloca %struct.dc_crtc_timing*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.dcn10_stream_encoder*, align 8
  %22 = alloca %struct.dc_crtc_timing, align 8
  store %struct.stream_encoder* %0, %struct.stream_encoder** %5, align 8
  store %struct.dc_crtc_timing* %1, %struct.dc_crtc_timing** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %17, align 4
  store i32 1, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %23 = load %struct.stream_encoder*, %struct.stream_encoder** %5, align 8
  %24 = call %struct.dcn10_stream_encoder* @DCN10STRENC_FROM_STRENC(%struct.stream_encoder* %23)
  store %struct.dcn10_stream_encoder* %24, %struct.dcn10_stream_encoder** %21, align 8
  %25 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %6, align 8
  %26 = bitcast %struct.dc_crtc_timing* %22 to i8*
  %27 = bitcast %struct.dc_crtc_timing* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 %27, i64 80, i1 false)
  %28 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %22, i32 0, i32 14
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %51

32:                                               ; preds = %4
  %33 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %22, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sdiv i32 %34, 2
  store i32 %35, i32* %33, align 8
  %36 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %22, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = sdiv i32 %37, 2
  store i32 %38, i32* %36, align 4
  %39 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %22, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = sdiv i32 %40, 2
  store i32 %41, i32* %39, align 8
  %42 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %22, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = sdiv i32 %43, 2
  store i32 %44, i32* %42, align 4
  %45 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %22, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = sdiv i32 %46, 2
  store i32 %47, i32* %45, align 8
  %48 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %22, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = sdiv i32 %49, 2
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %32, %4
  %52 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %22, i32 0, i32 6
  %53 = load i32, i32* %52, align 8
  switch i32 %53, label %72 [
    i32 129, label %54
    i32 128, label %56
    i32 130, label %70
  ]

54:                                               ; preds = %51
  %55 = load i32, i32* @DP_PIXEL_ENCODING_TYPE_YCBCR422, align 4
  store i32 %55, i32* %19, align 4
  br label %74

56:                                               ; preds = %51
  %57 = load i32, i32* @DP_PIXEL_ENCODING_TYPE_YCBCR444, align 4
  store i32 %57, i32* %19, align 4
  %58 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %22, i32 0, i32 14
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %22, i32 0, i32 7
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 153
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = load i32, i32* @DP_PIXEL_ENCODING_TYPE_Y_ONLY, align 4
  store i32 %67, i32* %19, align 4
  br label %68

68:                                               ; preds = %66, %62
  br label %69

69:                                               ; preds = %68, %56
  br label %74

70:                                               ; preds = %51
  %71 = load i32, i32* @DP_PIXEL_ENCODING_TYPE_YCBCR420, align 4
  store i32 %71, i32* %19, align 4
  br label %74

72:                                               ; preds = %51
  %73 = load i32, i32* @DP_PIXEL_ENCODING_TYPE_RGB444, align 4
  store i32 %73, i32* %19, align 4
  br label %74

74:                                               ; preds = %72, %70, %69, %54
  %75 = load i32, i32* @DP_MSA_MISC, align 4
  %76 = call i32 @REG_READ(i32 %75)
  store i32 %76, i32* %12, align 4
  %77 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %22, i32 0, i32 6
  %78 = load i32, i32* %77, align 8
  %79 = icmp eq i32 %78, 130
  br i1 %79, label %89, label %80

80:                                               ; preds = %74
  %81 = load i32, i32* %7, align 4
  %82 = icmp eq i32 %81, 149
  br i1 %82, label %89, label %83

83:                                               ; preds = %80
  %84 = load i32, i32* %7, align 4
  %85 = icmp eq i32 %84, 151
  br i1 %85, label %89, label %86

86:                                               ; preds = %83
  %87 = load i32, i32* %7, align 4
  %88 = icmp eq i32 %87, 150
  br i1 %88, label %89, label %92

89:                                               ; preds = %86, %83, %80, %74
  %90 = load i32, i32* %12, align 4
  %91 = or i32 %90, 64
  store i32 %91, i32* %12, align 4
  br label %95

92:                                               ; preds = %86
  %93 = load i32, i32* %12, align 4
  %94 = and i32 %93, -65
  store i32 %94, i32* %12, align 4
  br label %95

95:                                               ; preds = %92, %89
  %96 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %22, i32 0, i32 7
  %97 = load i32, i32* %96, align 4
  switch i32 %97, label %108 [
    i32 153, label %98
    i32 152, label %100
    i32 156, label %102
    i32 155, label %104
    i32 154, label %106
  ]

98:                                               ; preds = %95
  %99 = load i32, i32* @DP_COMPONENT_PIXEL_DEPTH_6BPC, align 4
  store i32 %99, i32* %20, align 4
  br label %110

100:                                              ; preds = %95
  %101 = load i32, i32* @DP_COMPONENT_PIXEL_DEPTH_8BPC, align 4
  store i32 %101, i32* %20, align 4
  br label %110

102:                                              ; preds = %95
  %103 = load i32, i32* @DP_COMPONENT_PIXEL_DEPTH_10BPC, align 4
  store i32 %103, i32* %20, align 4
  br label %110

104:                                              ; preds = %95
  %105 = load i32, i32* @DP_COMPONENT_PIXEL_DEPTH_12BPC, align 4
  store i32 %105, i32* %20, align 4
  br label %110

106:                                              ; preds = %95
  %107 = load i32, i32* @DP_COMPONENT_PIXEL_DEPTH_16BPC, align 4
  store i32 %107, i32* %20, align 4
  br label %110

108:                                              ; preds = %95
  %109 = load i32, i32* @DP_COMPONENT_PIXEL_DEPTH_6BPC, align 4
  store i32 %109, i32* %20, align 4
  br label %110

110:                                              ; preds = %108, %106, %104, %102, %100, %98
  %111 = load i32, i32* @DP_PIXEL_FORMAT, align 4
  %112 = load i32, i32* @DP_PIXEL_ENCODING, align 4
  %113 = load i32, i32* %19, align 4
  %114 = load i32, i32* @DP_COMPONENT_DEPTH, align 4
  %115 = load i32, i32* %20, align 4
  %116 = call i32 @REG_UPDATE_2(i32 %111, i32 %112, i32 %113, i32 %114, i32 %115)
  %117 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %22, i32 0, i32 7
  %118 = load i32, i32* %117, align 4
  switch i32 %118, label %123 [
    i32 153, label %119
    i32 152, label %120
    i32 156, label %121
    i32 155, label %122
  ]

119:                                              ; preds = %110
  store i32 0, i32* %16, align 4
  br label %124

120:                                              ; preds = %110
  store i32 1, i32* %16, align 4
  br label %124

121:                                              ; preds = %110
  store i32 2, i32* %16, align 4
  br label %124

122:                                              ; preds = %110
  store i32 3, i32* %16, align 4
  br label %124

123:                                              ; preds = %110
  store i32 0, i32* %16, align 4
  br label %124

124:                                              ; preds = %123, %122, %121, %120, %119
  %125 = load i32, i32* %11, align 4
  %126 = load i32, i32* %15, align 4
  %127 = or i32 %125, %126
  store i32 %127, i32* %11, align 4
  %128 = load i32, i32* %16, align 4
  %129 = shl i32 %128, 5
  store i32 %129, i32* %11, align 4
  %130 = load i32, i32* %7, align 4
  switch i32 %130, label %181 [
    i32 141, label %131
    i32 140, label %134
    i32 135, label %139
    i32 134, label %139
    i32 133, label %159
    i32 131, label %159
    i32 150, label %179
    i32 151, label %180
    i32 149, label %180
    i32 138, label %180
    i32 142, label %180
    i32 148, label %180
    i32 145, label %180
    i32 136, label %180
    i32 137, label %180
    i32 144, label %180
    i32 143, label %180
    i32 147, label %180
    i32 146, label %180
    i32 139, label %180
    i32 132, label %180
  ]

131:                                              ; preds = %124
  %132 = load i32, i32* %12, align 4
  %133 = and i32 %132, -129
  store i32 %133, i32* %12, align 4
  store i32 0, i32* %17, align 4
  br label %181

134:                                              ; preds = %124
  %135 = load i32, i32* %11, align 4
  %136 = or i32 %135, 8
  store i32 %136, i32* %11, align 4
  %137 = load i32, i32* %12, align 4
  %138 = and i32 %137, -129
  store i32 %138, i32* %12, align 4
  store i32 1, i32* %17, align 4
  br label %181

139:                                              ; preds = %124, %124
  %140 = load i32, i32* %11, align 4
  %141 = or i32 %140, 8
  store i32 %141, i32* %11, align 4
  %142 = load i32, i32* %12, align 4
  %143 = and i32 %142, -129
  store i32 %143, i32* %12, align 4
  store i32 0, i32* %18, align 4
  %144 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %22, i32 0, i32 6
  %145 = load i32, i32* %144, align 8
  %146 = icmp eq i32 %145, 129
  br i1 %146, label %147, label %150

147:                                              ; preds = %139
  %148 = load i32, i32* %11, align 4
  %149 = or i32 %148, 2
  store i32 %149, i32* %11, align 4
  br label %158

150:                                              ; preds = %139
  %151 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %22, i32 0, i32 6
  %152 = load i32, i32* %151, align 8
  %153 = icmp eq i32 %152, 128
  br i1 %153, label %154, label %157

154:                                              ; preds = %150
  %155 = load i32, i32* %11, align 4
  %156 = or i32 %155, 4
  store i32 %156, i32* %11, align 4
  br label %157

157:                                              ; preds = %154, %150
  br label %158

158:                                              ; preds = %157, %147
  br label %181

159:                                              ; preds = %124, %124
  %160 = load i32, i32* %11, align 4
  %161 = or i32 %160, 24
  store i32 %161, i32* %11, align 4
  %162 = load i32, i32* %12, align 4
  %163 = and i32 %162, -129
  store i32 %163, i32* %12, align 4
  store i32 1, i32* %18, align 4
  %164 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %22, i32 0, i32 6
  %165 = load i32, i32* %164, align 8
  %166 = icmp eq i32 %165, 129
  br i1 %166, label %167, label %170

167:                                              ; preds = %159
  %168 = load i32, i32* %11, align 4
  %169 = or i32 %168, 2
  store i32 %169, i32* %11, align 4
  br label %178

170:                                              ; preds = %159
  %171 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %22, i32 0, i32 6
  %172 = load i32, i32* %171, align 8
  %173 = icmp eq i32 %172, 128
  br i1 %173, label %174, label %177

174:                                              ; preds = %170
  %175 = load i32, i32* %11, align 4
  %176 = or i32 %175, 4
  store i32 %176, i32* %11, align 4
  br label %177

177:                                              ; preds = %174, %170
  br label %178

178:                                              ; preds = %177, %167
  br label %181

179:                                              ; preds = %124
  store i32 1, i32* %17, align 4
  br label %181

180:                                              ; preds = %124, %124, %124, %124, %124, %124, %124, %124, %124, %124, %124, %124, %124, %124
  br label %181

181:                                              ; preds = %124, %180, %179, %178, %158, %134, %131
  %182 = load i32, i32* @DP_MSA_COLORIMETRY, align 4
  %183 = load i32, i32* @DP_MSA_MISC0, align 4
  %184 = load i32, i32* %11, align 4
  %185 = call i32 @REG_SET(i32 %182, i32 0, i32 %183, i32 %184)
  %186 = load i32, i32* @DP_MSA_MISC, align 4
  %187 = load i32, i32* %12, align 4
  %188 = call i32 @REG_WRITE(i32 %186, i32 %187)
  %189 = load i32, i32* @DP_MSA_TIMING_PARAM1, align 4
  %190 = load i32, i32* @DP_MSA_HTOTAL, align 4
  %191 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %22, i32 0, i32 8
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* @DP_MSA_VTOTAL, align 4
  %194 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %22, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @REG_SET_2(i32 %189, i32 0, i32 %190, i32 %192, i32 %193, i32 %195)
  %197 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %22, i32 0, i32 8
  %198 = load i32, i32* %197, align 8
  %199 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %22, i32 0, i32 9
  %200 = load i32, i32* %199, align 4
  %201 = sub nsw i32 %198, %200
  %202 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %22, i32 0, i32 10
  %203 = load i32, i32* %202, align 8
  %204 = sub nsw i32 %201, %203
  %205 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %22, i32 0, i32 11
  %206 = load i32, i32* %205, align 4
  %207 = sub nsw i32 %204, %206
  store i32 %207, i32* %13, align 4
  %208 = load i32, i32* %13, align 4
  %209 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %22, i32 0, i32 12
  %210 = load i32, i32* %209, align 8
  %211 = sub nsw i32 %208, %210
  %212 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %22, i32 0, i32 13
  %213 = load i32, i32* %212, align 4
  %214 = sub nsw i32 %211, %213
  store i32 %214, i32* %14, align 4
  %215 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %22, i32 0, i32 13
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* %14, align 4
  %218 = add nsw i32 %216, %217
  store i32 %218, i32* %9, align 4
  %219 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %22, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %22, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = sub nsw i32 %220, %222
  %224 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %22, i32 0, i32 2
  %225 = load i32, i32* %224, align 8
  %226 = sub nsw i32 %223, %225
  %227 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %22, i32 0, i32 3
  %228 = load i32, i32* %227, align 4
  %229 = sub nsw i32 %226, %228
  %230 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %22, i32 0, i32 4
  %231 = load i32, i32* %230, align 8
  %232 = sub nsw i32 %229, %231
  store i32 %232, i32* %10, align 4
  %233 = load i32, i32* @DP_MSA_TIMING_PARAM2, align 4
  %234 = load i32, i32* @DP_MSA_HSTART, align 4
  %235 = load i32, i32* %9, align 4
  %236 = load i32, i32* @DP_MSA_VSTART, align 4
  %237 = load i32, i32* %10, align 4
  %238 = call i32 @REG_SET_2(i32 %233, i32 0, i32 %234, i32 %235, i32 %236, i32 %237)
  %239 = load i32, i32* @DP_MSA_TIMING_PARAM3, align 4
  %240 = load i32, i32* @DP_MSA_HSYNCWIDTH, align 4
  %241 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %22, i32 0, i32 13
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* @DP_MSA_HSYNCPOLARITY, align 4
  %244 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %22, i32 0, i32 14
  %245 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = icmp ne i32 %246, 0
  %248 = xor i1 %247, true
  %249 = zext i1 %248 to i32
  %250 = load i32, i32* @DP_MSA_VSYNCWIDTH, align 4
  %251 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %22, i32 0, i32 5
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* @DP_MSA_VSYNCPOLARITY, align 4
  %254 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %22, i32 0, i32 14
  %255 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = icmp ne i32 %256, 0
  %258 = xor i1 %257, true
  %259 = zext i1 %258 to i32
  %260 = call i32 @REG_SET_4(i32 %239, i32 0, i32 %240, i32 %242, i32 %243, i32 %249, i32 %250, i32 %252, i32 %253, i32 %259)
  %261 = load i32, i32* @DP_MSA_TIMING_PARAM4, align 4
  %262 = load i32, i32* @DP_MSA_HWIDTH, align 4
  %263 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %22, i32 0, i32 9
  %264 = load i32, i32* %263, align 4
  %265 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %22, i32 0, i32 10
  %266 = load i32, i32* %265, align 8
  %267 = add nsw i32 %264, %266
  %268 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %22, i32 0, i32 11
  %269 = load i32, i32* %268, align 4
  %270 = add nsw i32 %267, %269
  %271 = load i32, i32* @DP_MSA_VHEIGHT, align 4
  %272 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %22, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %22, i32 0, i32 2
  %275 = load i32, i32* %274, align 8
  %276 = add nsw i32 %273, %275
  %277 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %22, i32 0, i32 3
  %278 = load i32, i32* %277, align 4
  %279 = add nsw i32 %276, %278
  %280 = call i32 @REG_SET_2(i32 %261, i32 0, i32 %262, i32 %270, i32 %271, i32 %279)
  ret void
}

declare dso_local %struct.dcn10_stream_encoder* @DCN10STRENC_FROM_STRENC(%struct.stream_encoder*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @REG_READ(i32) #1

declare dso_local i32 @REG_UPDATE_2(i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_SET(i32, i32, i32, i32) #1

declare dso_local i32 @REG_WRITE(i32, i32) #1

declare dso_local i32 @REG_SET_2(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_SET_4(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

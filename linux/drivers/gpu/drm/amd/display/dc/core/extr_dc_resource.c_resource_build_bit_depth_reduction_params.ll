; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_resource.c_resource_build_bit_depth_reduction_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_resource.c_resource_build_bit_depth_reduction_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_stream_state = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.bit_depth_reduction_params = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@DITHER_OPTION_DEFAULT = common dso_local global i32 0, align 4
@DITHER_OPTION_SPATIAL6 = common dso_local global i32 0, align 4
@DITHER_OPTION_SPATIAL8 = common dso_local global i32 0, align 4
@DITHER_OPTION_SPATIAL10 = common dso_local global i32 0, align 4
@DITHER_OPTION_DISABLE = common dso_local global i32 0, align 4
@DITHER_OPTION_TRUN6 = common dso_local global i32 0, align 4
@DITHER_OPTION_TRUN8 = common dso_local global i32 0, align 4
@DITHER_OPTION_TRUN8_SPATIAL6 = common dso_local global i32 0, align 4
@DITHER_OPTION_TRUN8_FM6 = common dso_local global i32 0, align 4
@DITHER_OPTION_TRUN10 = common dso_local global i32 0, align 4
@DITHER_OPTION_TRUN10_SPATIAL6 = common dso_local global i32 0, align 4
@DITHER_OPTION_TRUN10_SPATIAL8 = common dso_local global i32 0, align 4
@DITHER_OPTION_TRUN10_FM8 = common dso_local global i32 0, align 4
@DITHER_OPTION_TRUN10_FM6 = common dso_local global i32 0, align 4
@DITHER_OPTION_TRUN10_SPATIAL8_FM6 = common dso_local global i32 0, align 4
@DITHER_OPTION_SPATIAL6_FRAME_RANDOM = common dso_local global i32 0, align 4
@DITHER_OPTION_FM6 = common dso_local global i32 0, align 4
@PIXEL_ENCODING_RGB = common dso_local global i32 0, align 4
@DITHER_OPTION_SPATIAL8_FRAME_RANDOM = common dso_local global i32 0, align 4
@DITHER_OPTION_SPATIAL8_FM6 = common dso_local global i32 0, align 4
@DITHER_OPTION_SPATIAL10_FRAME_RANDOM = common dso_local global i32 0, align 4
@DITHER_OPTION_SPATIAL10_FM8 = common dso_local global i32 0, align 4
@DITHER_OPTION_SPATIAL10_FM6 = common dso_local global i32 0, align 4
@DITHER_OPTION_FM8 = common dso_local global i32 0, align 4
@DITHER_OPTION_FM10 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @resource_build_bit_depth_reduction_params(%struct.dc_stream_state* %0, %struct.bit_depth_reduction_params* %1) #0 {
  %3 = alloca %struct.dc_stream_state*, align 8
  %4 = alloca %struct.bit_depth_reduction_params*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dc_stream_state* %0, %struct.dc_stream_state** %3, align 8
  store %struct.bit_depth_reduction_params* %1, %struct.bit_depth_reduction_params** %4, align 8
  %7 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %8 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  %10 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %11 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %4, align 8
  %15 = call i32 @memset(%struct.bit_depth_reduction_params* %14, i32 0, i32 44)
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @DITHER_OPTION_DEFAULT, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %33

19:                                               ; preds = %2
  %20 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %21 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %30 [
    i32 129, label %24
    i32 128, label %26
    i32 130, label %28
  ]

24:                                               ; preds = %19
  %25 = load i32, i32* @DITHER_OPTION_SPATIAL6, align 4
  store i32 %25, i32* %5, align 4
  br label %32

26:                                               ; preds = %19
  %27 = load i32, i32* @DITHER_OPTION_SPATIAL8, align 4
  store i32 %27, i32* %5, align 4
  br label %32

28:                                               ; preds = %19
  %29 = load i32, i32* @DITHER_OPTION_SPATIAL10, align 4
  store i32 %29, i32* %5, align 4
  br label %32

30:                                               ; preds = %19
  %31 = load i32, i32* @DITHER_OPTION_DISABLE, align 4
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %30, %28, %26, %24
  br label %33

33:                                               ; preds = %32, %2
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @DITHER_OPTION_DISABLE, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %318

38:                                               ; preds = %33
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @DITHER_OPTION_TRUN6, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %4, align 8
  %44 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32 1, i32* %45, align 4
  %46 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %4, align 8
  %47 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  store i32 0, i32* %48, align 4
  br label %101

49:                                               ; preds = %38
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @DITHER_OPTION_TRUN8, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %61, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @DITHER_OPTION_TRUN8_SPATIAL6, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @DITHER_OPTION_TRUN8_FM6, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %57, %53, %49
  %62 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %4, align 8
  %63 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store i32 1, i32* %64, align 4
  %65 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %4, align 8
  %66 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  store i32 1, i32* %67, align 4
  br label %100

68:                                               ; preds = %57
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @DITHER_OPTION_TRUN10, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %92, label %72

72:                                               ; preds = %68
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @DITHER_OPTION_TRUN10_SPATIAL6, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %92, label %76

76:                                               ; preds = %72
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @DITHER_OPTION_TRUN10_SPATIAL8, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %92, label %80

80:                                               ; preds = %76
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @DITHER_OPTION_TRUN10_FM8, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %92, label %84

84:                                               ; preds = %80
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* @DITHER_OPTION_TRUN10_FM6, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %92, label %88

88:                                               ; preds = %84
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* @DITHER_OPTION_TRUN10_SPATIAL8_FM6, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %99

92:                                               ; preds = %88, %84, %80, %76, %72, %68
  %93 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %4, align 8
  %94 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  store i32 1, i32* %95, align 4
  %96 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %4, align 8
  %97 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  store i32 2, i32* %98, align 4
  br label %99

99:                                               ; preds = %92, %88
  br label %100

100:                                              ; preds = %99, %61
  br label %101

101:                                              ; preds = %100, %42
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* @DITHER_OPTION_SPATIAL6_FRAME_RANDOM, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %113, label %105

105:                                              ; preds = %101
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* @DITHER_OPTION_SPATIAL6, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %113, label %109

109:                                              ; preds = %105
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* @DITHER_OPTION_FM6, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %123

113:                                              ; preds = %109, %105, %101
  %114 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %4, align 8
  %115 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  store i32 1, i32* %116, align 4
  %117 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %4, align 8
  %118 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  store i32 2, i32* %119, align 4
  %120 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %4, align 8
  %121 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 2
  store i32 1, i32* %122, align 4
  br label %123

123:                                              ; preds = %113, %109
  %124 = load i32, i32* %5, align 4
  %125 = load i32, i32* @DITHER_OPTION_SPATIAL6_FRAME_RANDOM, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %139, label %127

127:                                              ; preds = %123
  %128 = load i32, i32* %5, align 4
  %129 = load i32, i32* @DITHER_OPTION_SPATIAL6, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %139, label %131

131:                                              ; preds = %127
  %132 = load i32, i32* %5, align 4
  %133 = load i32, i32* @DITHER_OPTION_TRUN10_SPATIAL6, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %139, label %135

135:                                              ; preds = %131
  %136 = load i32, i32* %5, align 4
  %137 = load i32, i32* @DITHER_OPTION_TRUN8_SPATIAL6, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %157

139:                                              ; preds = %135, %131, %127, %123
  %140 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %4, align 8
  %141 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 3
  store i32 1, i32* %142, align 4
  %143 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %4, align 8
  %144 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 4
  store i32 0, i32* %145, align 4
  %146 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %4, align 8
  %147 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 5
  store i32 1, i32* %148, align 4
  %149 = load i32, i32* %6, align 4
  %150 = load i32, i32* @PIXEL_ENCODING_RGB, align 4
  %151 = icmp eq i32 %149, %150
  %152 = zext i1 %151 to i64
  %153 = select i1 %151, i32 1, i32 0
  %154 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %4, align 8
  %155 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 6
  store i32 %153, i32* %156, align 4
  br label %231

157:                                              ; preds = %135
  %158 = load i32, i32* %5, align 4
  %159 = load i32, i32* @DITHER_OPTION_SPATIAL8_FRAME_RANDOM, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %177, label %161

161:                                              ; preds = %157
  %162 = load i32, i32* %5, align 4
  %163 = load i32, i32* @DITHER_OPTION_SPATIAL8, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %177, label %165

165:                                              ; preds = %161
  %166 = load i32, i32* %5, align 4
  %167 = load i32, i32* @DITHER_OPTION_SPATIAL8_FM6, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %177, label %169

169:                                              ; preds = %165
  %170 = load i32, i32* %5, align 4
  %171 = load i32, i32* @DITHER_OPTION_TRUN10_SPATIAL8, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %177, label %173

173:                                              ; preds = %169
  %174 = load i32, i32* %5, align 4
  %175 = load i32, i32* @DITHER_OPTION_TRUN10_SPATIAL8_FM6, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %177, label %195

177:                                              ; preds = %173, %169, %165, %161, %157
  %178 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %4, align 8
  %179 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 3
  store i32 1, i32* %180, align 4
  %181 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %4, align 8
  %182 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 4
  store i32 1, i32* %183, align 4
  %184 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %4, align 8
  %185 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 5
  store i32 1, i32* %186, align 4
  %187 = load i32, i32* %6, align 4
  %188 = load i32, i32* @PIXEL_ENCODING_RGB, align 4
  %189 = icmp eq i32 %187, %188
  %190 = zext i1 %189 to i64
  %191 = select i1 %189, i32 1, i32 0
  %192 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %4, align 8
  %193 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 6
  store i32 %191, i32* %194, align 4
  br label %230

195:                                              ; preds = %173
  %196 = load i32, i32* %5, align 4
  %197 = load i32, i32* @DITHER_OPTION_SPATIAL10_FRAME_RANDOM, align 4
  %198 = icmp eq i32 %196, %197
  br i1 %198, label %211, label %199

199:                                              ; preds = %195
  %200 = load i32, i32* %5, align 4
  %201 = load i32, i32* @DITHER_OPTION_SPATIAL10, align 4
  %202 = icmp eq i32 %200, %201
  br i1 %202, label %211, label %203

203:                                              ; preds = %199
  %204 = load i32, i32* %5, align 4
  %205 = load i32, i32* @DITHER_OPTION_SPATIAL10_FM8, align 4
  %206 = icmp eq i32 %204, %205
  br i1 %206, label %211, label %207

207:                                              ; preds = %203
  %208 = load i32, i32* %5, align 4
  %209 = load i32, i32* @DITHER_OPTION_SPATIAL10_FM6, align 4
  %210 = icmp eq i32 %208, %209
  br i1 %210, label %211, label %229

211:                                              ; preds = %207, %203, %199, %195
  %212 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %4, align 8
  %213 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 3
  store i32 1, i32* %214, align 4
  %215 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %4, align 8
  %216 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 4
  store i32 2, i32* %217, align 4
  %218 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %4, align 8
  %219 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 5
  store i32 1, i32* %220, align 4
  %221 = load i32, i32* %6, align 4
  %222 = load i32, i32* @PIXEL_ENCODING_RGB, align 4
  %223 = icmp eq i32 %221, %222
  %224 = zext i1 %223 to i64
  %225 = select i1 %223, i32 1, i32 0
  %226 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %4, align 8
  %227 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 6
  store i32 %225, i32* %228, align 4
  br label %229

229:                                              ; preds = %211, %207
  br label %230

230:                                              ; preds = %229, %177
  br label %231

231:                                              ; preds = %230, %139
  %232 = load i32, i32* %5, align 4
  %233 = load i32, i32* @DITHER_OPTION_SPATIAL6, align 4
  %234 = icmp eq i32 %232, %233
  br i1 %234, label %243, label %235

235:                                              ; preds = %231
  %236 = load i32, i32* %5, align 4
  %237 = load i32, i32* @DITHER_OPTION_SPATIAL8, align 4
  %238 = icmp eq i32 %236, %237
  br i1 %238, label %243, label %239

239:                                              ; preds = %235
  %240 = load i32, i32* %5, align 4
  %241 = load i32, i32* @DITHER_OPTION_SPATIAL10, align 4
  %242 = icmp eq i32 %240, %241
  br i1 %242, label %243, label %247

243:                                              ; preds = %239, %235, %231
  %244 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %4, align 8
  %245 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i32 0, i32 7
  store i32 0, i32* %246, align 4
  br label %251

247:                                              ; preds = %239
  %248 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %4, align 8
  %249 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %249, i32 0, i32 7
  store i32 1, i32* %250, align 4
  br label %251

251:                                              ; preds = %247, %243
  %252 = load i32, i32* %5, align 4
  %253 = load i32, i32* @DITHER_OPTION_FM6, align 4
  %254 = icmp eq i32 %252, %253
  br i1 %254, label %275, label %255

255:                                              ; preds = %251
  %256 = load i32, i32* %5, align 4
  %257 = load i32, i32* @DITHER_OPTION_SPATIAL8_FM6, align 4
  %258 = icmp eq i32 %256, %257
  br i1 %258, label %275, label %259

259:                                              ; preds = %255
  %260 = load i32, i32* %5, align 4
  %261 = load i32, i32* @DITHER_OPTION_SPATIAL10_FM6, align 4
  %262 = icmp eq i32 %260, %261
  br i1 %262, label %275, label %263

263:                                              ; preds = %259
  %264 = load i32, i32* %5, align 4
  %265 = load i32, i32* @DITHER_OPTION_TRUN10_FM6, align 4
  %266 = icmp eq i32 %264, %265
  br i1 %266, label %275, label %267

267:                                              ; preds = %263
  %268 = load i32, i32* %5, align 4
  %269 = load i32, i32* @DITHER_OPTION_TRUN8_FM6, align 4
  %270 = icmp eq i32 %268, %269
  br i1 %270, label %275, label %271

271:                                              ; preds = %267
  %272 = load i32, i32* %5, align 4
  %273 = load i32, i32* @DITHER_OPTION_TRUN10_SPATIAL8_FM6, align 4
  %274 = icmp eq i32 %272, %273
  br i1 %274, label %275, label %282

275:                                              ; preds = %271, %267, %263, %259, %255, %251
  %276 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %4, align 8
  %277 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %276, i32 0, i32 1
  %278 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %277, i32 0, i32 8
  store i32 1, i32* %278, align 4
  %279 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %4, align 8
  %280 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %279, i32 0, i32 1
  %281 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %280, i32 0, i32 9
  store i32 0, i32* %281, align 4
  br label %314

282:                                              ; preds = %271
  %283 = load i32, i32* %5, align 4
  %284 = load i32, i32* @DITHER_OPTION_FM8, align 4
  %285 = icmp eq i32 %283, %284
  br i1 %285, label %294, label %286

286:                                              ; preds = %282
  %287 = load i32, i32* %5, align 4
  %288 = load i32, i32* @DITHER_OPTION_SPATIAL10_FM8, align 4
  %289 = icmp eq i32 %287, %288
  br i1 %289, label %294, label %290

290:                                              ; preds = %286
  %291 = load i32, i32* %5, align 4
  %292 = load i32, i32* @DITHER_OPTION_TRUN10_FM8, align 4
  %293 = icmp eq i32 %291, %292
  br i1 %293, label %294, label %301

294:                                              ; preds = %290, %286, %282
  %295 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %4, align 8
  %296 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %295, i32 0, i32 1
  %297 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %296, i32 0, i32 8
  store i32 1, i32* %297, align 4
  %298 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %4, align 8
  %299 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %298, i32 0, i32 1
  %300 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %299, i32 0, i32 9
  store i32 1, i32* %300, align 4
  br label %313

301:                                              ; preds = %290
  %302 = load i32, i32* %5, align 4
  %303 = load i32, i32* @DITHER_OPTION_FM10, align 4
  %304 = icmp eq i32 %302, %303
  br i1 %304, label %305, label %312

305:                                              ; preds = %301
  %306 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %4, align 8
  %307 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %306, i32 0, i32 1
  %308 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %307, i32 0, i32 8
  store i32 1, i32* %308, align 4
  %309 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %4, align 8
  %310 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %309, i32 0, i32 1
  %311 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %310, i32 0, i32 9
  store i32 2, i32* %311, align 4
  br label %312

312:                                              ; preds = %305, %301
  br label %313

313:                                              ; preds = %312, %294
  br label %314

314:                                              ; preds = %313, %275
  %315 = load i32, i32* %6, align 4
  %316 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %4, align 8
  %317 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %316, i32 0, i32 0
  store i32 %315, i32* %317, align 4
  br label %318

318:                                              ; preds = %314, %37
  ret void
}

declare dso_local i32 @memset(%struct.bit_depth_reduction_params*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/extr_cx2341x.c_cx2341x_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/extr_cx2341x.c_cx2341x_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i64, i32 }
%struct.cx2341x_handler = type { i32, %struct.TYPE_18__*, %struct.TYPE_18__*, %struct.TYPE_18__*, %struct.TYPE_18__*, %struct.TYPE_18__*, %struct.TYPE_18__*, %struct.TYPE_18__*, %struct.TYPE_18__*, %struct.TYPE_24__*, %struct.TYPE_23__*, %struct.TYPE_22__*, %struct.TYPE_21__*, %struct.TYPE_20__*, %struct.TYPE_19__*, %struct.TYPE_28__*, %struct.TYPE_18__*, %struct.TYPE_18__*, %struct.TYPE_17__*, %struct.TYPE_16__*, %struct.TYPE_15__*, %struct.TYPE_19__*, %struct.TYPE_19__*, %struct.TYPE_18__*, %struct.TYPE_18__*, %struct.TYPE_18__*, %struct.TYPE_27__*, %struct.TYPE_26__*, %struct.TYPE_25__* }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_28__ = type { i32 (%struct.cx2341x_handler*, i64)*, i32 (%struct.cx2341x_handler*, i32)*, i32 (%struct.cx2341x_handler*, i32)*, i32 (%struct.cx2341x_handler*, i32)* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_25__ = type { i32 }

@cx2341x_s_ctrl.mpeg_stream_type = internal constant [6 x i32] [i32 0, i32 1, i32 2, i32 14, i32 11, i32 12], align 16
@CX2341X_ENC_SET_ASPECT_RATIO = common dso_local global i32 0, align 4
@CX2341X_ENC_SET_GOP_CLOSURE = common dso_local global i32 0, align 4
@CX2341X_ENC_MUTE_AUDIO = common dso_local global i32 0, align 4
@CX2341X_ENC_SET_FRAME_DROP_RATE = common dso_local global i32 0, align 4
@CX2341X_ENC_MISC = common dso_local global i32 0, align 4
@V4L2_MPEG_AUDIO_EMPHASIS_CCITT_J17 = common dso_local global i32 0, align 4
@V4L2_MPEG_AUDIO_ENCODING_AC3 = common dso_local global i32 0, align 4
@V4L2_MPEG_AUDIO_ENCODING_LAYER_2 = common dso_local global i32 0, align 4
@CX2341X_AUDIO_ENCODING_METHOD_AC3 = common dso_local global i32 0, align 4
@CX2341X_ENC_SET_AUDIO_PROPERTIES = common dso_local global i32 0, align 4
@V4L2_MPEG_AUDIO_MODE_JOINT_STEREO = common dso_local global i32 0, align 4
@CX2341X_ENC_SET_GOP_PROPERTIES = common dso_local global i32 0, align 4
@CX2341X_ENC_SET_STREAM_TYPE = common dso_local global i32 0, align 4
@CX2341X_ENC_SET_BIT_RATE = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_ENCODING_MPEG_1 = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_BITRATE_MODE_CBR = common dso_local global i32 0, align 4
@CX2341X_ENC_MUTE_VIDEO = common dso_local global i32 0, align 4
@CX2341X_ENC_SET_DNR_FILTER_MODE = common dso_local global i32 0, align 4
@V4L2_MPEG_CX2341X_VIDEO_SPATIAL_FILTER_MODE_AUTO = common dso_local global i32 0, align 4
@V4L2_MPEG_CX2341X_VIDEO_TEMPORAL_FILTER_MODE_AUTO = common dso_local global i32 0, align 4
@V4L2_MPEG_CX2341X_VIDEO_MEDIAN_FILTER_TYPE_OFF = common dso_local global i32 0, align 4
@CX2341X_ENC_SET_SPATIAL_FILTER_TYPE = common dso_local global i32 0, align 4
@CX2341X_ENC_SET_DNR_FILTER_PROPS = common dso_local global i32 0, align 4
@CX2341X_ENC_SET_CORING_LEVELS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ctrl*)* @cx2341x_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx2341x_s_ctrl(%struct.v4l2_ctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_ctrl*, align 8
  %4 = alloca %struct.cx2341x_handler*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.v4l2_ctrl* %0, %struct.v4l2_ctrl** %3, align 8
  %10 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %11 = call %struct.cx2341x_handler* @to_cxhdl(%struct.v4l2_ctrl* %10)
  store %struct.cx2341x_handler* %11, %struct.cx2341x_handler** %4, align 8
  %12 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %13 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %5, align 8
  %15 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %16 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %537 [
    i32 133, label %18
    i32 132, label %40
    i32 130, label %47
    i32 141, label %53
    i32 128, label %59
    i32 139, label %65
    i32 140, label %70
    i32 131, label %273
    i32 134, label %288
    i32 129, label %379
    i32 135, label %395
    i32 137, label %485
    i32 136, label %499
    i32 138, label %513
  ]

18:                                               ; preds = %1
  %19 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %20 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %19, i32 0, i32 15
  %21 = load %struct.TYPE_28__*, %struct.TYPE_28__** %20, align 8
  %22 = icmp ne %struct.TYPE_28__* %21, null
  br i1 %22, label %23, label %39

23:                                               ; preds = %18
  %24 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %25 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %24, i32 0, i32 15
  %26 = load %struct.TYPE_28__*, %struct.TYPE_28__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %26, i32 0, i32 0
  %28 = load i32 (%struct.cx2341x_handler*, i64)*, i32 (%struct.cx2341x_handler*, i64)** %27, align 8
  %29 = icmp ne i32 (%struct.cx2341x_handler*, i64)* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %23
  %31 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %32 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %31, i32 0, i32 15
  %33 = load %struct.TYPE_28__*, %struct.TYPE_28__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %33, i32 0, i32 0
  %35 = load i32 (%struct.cx2341x_handler*, i64)*, i32 (%struct.cx2341x_handler*, i64)** %34, align 8
  %36 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %37 = load i64, i64* %5, align 8
  %38 = call i32 %35(%struct.cx2341x_handler* %36, i64 %37)
  store i32 %38, i32* %2, align 4
  br label %540

39:                                               ; preds = %23, %18
  store i32 0, i32* %2, align 4
  br label %540

40:                                               ; preds = %1
  %41 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %42 = load i32, i32* @CX2341X_ENC_SET_ASPECT_RATIO, align 4
  %43 = load i64, i64* %5, align 8
  %44 = add i64 %43, 1
  %45 = trunc i64 %44 to i32
  %46 = call i32 (%struct.cx2341x_handler*, i32, i32, i32, ...) @cx2341x_hdl_api(%struct.cx2341x_handler* %41, i32 %42, i32 1, i32 %45)
  store i32 %46, i32* %2, align 4
  br label %540

47:                                               ; preds = %1
  %48 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %49 = load i32, i32* @CX2341X_ENC_SET_GOP_CLOSURE, align 4
  %50 = load i64, i64* %5, align 8
  %51 = trunc i64 %50 to i32
  %52 = call i32 (%struct.cx2341x_handler*, i32, i32, i32, ...) @cx2341x_hdl_api(%struct.cx2341x_handler* %48, i32 %49, i32 1, i32 %51)
  store i32 %52, i32* %2, align 4
  br label %540

53:                                               ; preds = %1
  %54 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %55 = load i32, i32* @CX2341X_ENC_MUTE_AUDIO, align 4
  %56 = load i64, i64* %5, align 8
  %57 = trunc i64 %56 to i32
  %58 = call i32 (%struct.cx2341x_handler*, i32, i32, i32, ...) @cx2341x_hdl_api(%struct.cx2341x_handler* %54, i32 %55, i32 1, i32 %57)
  store i32 %58, i32* %2, align 4
  br label %540

59:                                               ; preds = %1
  %60 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %61 = load i32, i32* @CX2341X_ENC_SET_FRAME_DROP_RATE, align 4
  %62 = load i64, i64* %5, align 8
  %63 = trunc i64 %62 to i32
  %64 = call i32 (%struct.cx2341x_handler*, i32, i32, i32, ...) @cx2341x_hdl_api(%struct.cx2341x_handler* %60, i32 %61, i32 1, i32 %63)
  store i32 %64, i32* %2, align 4
  br label %540

65:                                               ; preds = %1
  %66 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %67 = load i32, i32* @CX2341X_ENC_MISC, align 4
  %68 = load i64, i64* %5, align 8
  %69 = call i32 (%struct.cx2341x_handler*, i32, i32, i32, ...) @cx2341x_hdl_api(%struct.cx2341x_handler* %66, i32 %67, i32 2, i32 7, i64 %68)
  store i32 %69, i32* %2, align 4
  br label %540

70:                                               ; preds = %1
  %71 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %72 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %71, i32 0, i32 22
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = shl i32 %75, 0
  %77 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %78 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %77, i32 0, i32 21
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = shl i32 %81, 8
  %83 = or i32 %76, %82
  %84 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %85 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %84, i32 0, i32 23
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = shl i32 %88, 10
  %90 = or i32 %83, %89
  %91 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %92 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %91, i32 0, i32 28
  %93 = load %struct.TYPE_25__*, %struct.TYPE_25__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = shl i32 %95, 14
  %97 = or i32 %90, %96
  store i32 %97, i32* %6, align 4
  %98 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %99 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %98, i32 0, i32 27
  %100 = load %struct.TYPE_26__*, %struct.TYPE_26__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @V4L2_MPEG_AUDIO_EMPHASIS_CCITT_J17, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %70
  %106 = load i32, i32* %6, align 4
  %107 = or i32 %106, 12288
  store i32 %107, i32* %6, align 4
  br label %117

108:                                              ; preds = %70
  %109 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %110 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %109, i32 0, i32 27
  %111 = load %struct.TYPE_26__*, %struct.TYPE_26__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = shl i32 %113, 12
  %115 = load i32, i32* %6, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %6, align 4
  br label %117

117:                                              ; preds = %108, %105
  %118 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %119 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %118, i32 0, i32 26
  %120 = load %struct.TYPE_27__*, %struct.TYPE_27__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @V4L2_MPEG_AUDIO_ENCODING_AC3, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %141

125:                                              ; preds = %117
  %126 = load i32, i32* @V4L2_MPEG_AUDIO_ENCODING_LAYER_2, align 4
  %127 = sub nsw i32 3, %126
  %128 = shl i32 %127, 2
  %129 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %130 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %129, i32 0, i32 25
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = shl i32 %133, 4
  %135 = or i32 %128, %134
  %136 = load i32, i32* @CX2341X_AUDIO_ENCODING_METHOD_AC3, align 4
  %137 = shl i32 %136, 28
  %138 = or i32 %135, %137
  %139 = load i32, i32* %6, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %6, align 4
  br label %159

141:                                              ; preds = %117
  %142 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %143 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %142, i32 0, i32 26
  %144 = load %struct.TYPE_27__*, %struct.TYPE_27__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = sub nsw i32 3, %146
  %148 = shl i32 %147, 2
  %149 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %150 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %149, i32 0, i32 24
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 1, %153
  %155 = shl i32 %154, 4
  %156 = or i32 %148, %155
  %157 = load i32, i32* %6, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %6, align 4
  br label %159

159:                                              ; preds = %141, %125
  %160 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %161 = load i32, i32* @CX2341X_ENC_SET_AUDIO_PROPERTIES, align 4
  %162 = load i32, i32* %6, align 4
  %163 = call i32 (%struct.cx2341x_handler*, i32, i32, i32, ...) @cx2341x_hdl_api(%struct.cx2341x_handler* %160, i32 %161, i32 1, i32 %162)
  store i32 %163, i32* %7, align 4
  %164 = load i32, i32* %7, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %159
  %167 = load i32, i32* %7, align 4
  store i32 %167, i32* %2, align 4
  br label %540

168:                                              ; preds = %159
  %169 = load i32, i32* %6, align 4
  %170 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %171 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %170, i32 0, i32 0
  store i32 %169, i32* %171, align 8
  %172 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %173 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %172, i32 0, i32 25
  %174 = load %struct.TYPE_18__*, %struct.TYPE_18__** %173, align 8
  %175 = icmp ne %struct.TYPE_18__* %174, null
  br i1 %175, label %176, label %198

176:                                              ; preds = %168
  %177 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %178 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %177, i32 0, i32 26
  %179 = load %struct.TYPE_27__*, %struct.TYPE_27__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @V4L2_MPEG_AUDIO_ENCODING_AC3, align 4
  %183 = icmp eq i32 %181, %182
  %184 = zext i1 %183 to i32
  store i32 %184, i32* %8, align 4
  %185 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %186 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %185, i32 0, i32 25
  %187 = load %struct.TYPE_18__*, %struct.TYPE_18__** %186, align 8
  %188 = load i32, i32* %8, align 4
  %189 = call i32 @v4l2_ctrl_activate(%struct.TYPE_18__* %187, i32 %188)
  %190 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %191 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %190, i32 0, i32 24
  %192 = load %struct.TYPE_18__*, %struct.TYPE_18__** %191, align 8
  %193 = load i32, i32* %8, align 4
  %194 = icmp ne i32 %193, 0
  %195 = xor i1 %194, true
  %196 = zext i1 %195 to i32
  %197 = call i32 @v4l2_ctrl_activate(%struct.TYPE_18__* %192, i32 %196)
  br label %198

198:                                              ; preds = %176, %168
  %199 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %200 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %199, i32 0, i32 23
  %201 = load %struct.TYPE_18__*, %struct.TYPE_18__** %200, align 8
  %202 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %203 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %202, i32 0, i32 21
  %204 = load %struct.TYPE_19__*, %struct.TYPE_19__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @V4L2_MPEG_AUDIO_MODE_JOINT_STEREO, align 4
  %208 = icmp eq i32 %206, %207
  %209 = zext i1 %208 to i32
  %210 = call i32 @v4l2_ctrl_activate(%struct.TYPE_18__* %201, i32 %209)
  %211 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %212 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %211, i32 0, i32 22
  %213 = load %struct.TYPE_19__*, %struct.TYPE_19__** %212, align 8
  %214 = call i32 @cx2341x_neq(%struct.TYPE_19__* %213)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %241

216:                                              ; preds = %198
  %217 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %218 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %217, i32 0, i32 15
  %219 = load %struct.TYPE_28__*, %struct.TYPE_28__** %218, align 8
  %220 = icmp ne %struct.TYPE_28__* %219, null
  br i1 %220, label %221, label %241

221:                                              ; preds = %216
  %222 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %223 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %222, i32 0, i32 15
  %224 = load %struct.TYPE_28__*, %struct.TYPE_28__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %224, i32 0, i32 1
  %226 = load i32 (%struct.cx2341x_handler*, i32)*, i32 (%struct.cx2341x_handler*, i32)** %225, align 8
  %227 = icmp ne i32 (%struct.cx2341x_handler*, i32)* %226, null
  br i1 %227, label %228, label %241

228:                                              ; preds = %221
  %229 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %230 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %229, i32 0, i32 15
  %231 = load %struct.TYPE_28__*, %struct.TYPE_28__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %231, i32 0, i32 1
  %233 = load i32 (%struct.cx2341x_handler*, i32)*, i32 (%struct.cx2341x_handler*, i32)** %232, align 8
  %234 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %235 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %236 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %235, i32 0, i32 22
  %237 = load %struct.TYPE_19__*, %struct.TYPE_19__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = call i32 %233(%struct.cx2341x_handler* %234, i32 %239)
  store i32 %240, i32* %2, align 4
  br label %540

241:                                              ; preds = %221, %216, %198
  %242 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %243 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %242, i32 0, i32 21
  %244 = load %struct.TYPE_19__*, %struct.TYPE_19__** %243, align 8
  %245 = call i32 @cx2341x_neq(%struct.TYPE_19__* %244)
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %272

247:                                              ; preds = %241
  %248 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %249 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %248, i32 0, i32 15
  %250 = load %struct.TYPE_28__*, %struct.TYPE_28__** %249, align 8
  %251 = icmp ne %struct.TYPE_28__* %250, null
  br i1 %251, label %252, label %272

252:                                              ; preds = %247
  %253 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %254 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %253, i32 0, i32 15
  %255 = load %struct.TYPE_28__*, %struct.TYPE_28__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %255, i32 0, i32 2
  %257 = load i32 (%struct.cx2341x_handler*, i32)*, i32 (%struct.cx2341x_handler*, i32)** %256, align 8
  %258 = icmp ne i32 (%struct.cx2341x_handler*, i32)* %257, null
  br i1 %258, label %259, label %272

259:                                              ; preds = %252
  %260 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %261 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %260, i32 0, i32 15
  %262 = load %struct.TYPE_28__*, %struct.TYPE_28__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %262, i32 0, i32 2
  %264 = load i32 (%struct.cx2341x_handler*, i32)*, i32 (%struct.cx2341x_handler*, i32)** %263, align 8
  %265 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %266 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %267 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %266, i32 0, i32 21
  %268 = load %struct.TYPE_19__*, %struct.TYPE_19__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = call i32 %264(%struct.cx2341x_handler* %265, i32 %270)
  store i32 %271, i32* %2, align 4
  br label %540

272:                                              ; preds = %252, %247, %241
  store i32 0, i32* %2, align 4
  br label %540

273:                                              ; preds = %1
  %274 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %275 = load i32, i32* @CX2341X_ENC_SET_GOP_PROPERTIES, align 4
  %276 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %277 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %276, i32 0, i32 20
  %278 = load %struct.TYPE_15__*, %struct.TYPE_15__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %282 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %281, i32 0, i32 19
  %283 = load %struct.TYPE_16__*, %struct.TYPE_16__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = add nsw i32 %285, 1
  %287 = call i32 (%struct.cx2341x_handler*, i32, i32, i32, ...) @cx2341x_hdl_api(%struct.cx2341x_handler* %274, i32 %275, i32 2, i32 %280, i32 %286)
  store i32 %287, i32* %2, align 4
  br label %540

288:                                              ; preds = %1
  %289 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %290 = load i32, i32* @CX2341X_ENC_SET_STREAM_TYPE, align 4
  %291 = load i64, i64* %5, align 8
  %292 = getelementptr inbounds [6 x i32], [6 x i32]* @cx2341x_s_ctrl.mpeg_stream_type, i64 0, i64 %291
  %293 = load i32, i32* %292, align 4
  %294 = call i32 (%struct.cx2341x_handler*, i32, i32, i32, ...) @cx2341x_hdl_api(%struct.cx2341x_handler* %289, i32 %290, i32 1, i32 %293)
  store i32 %294, i32* %7, align 4
  %295 = load i32, i32* %7, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %299

297:                                              ; preds = %288
  %298 = load i32, i32* %7, align 4
  store i32 %298, i32* %2, align 4
  br label %540

299:                                              ; preds = %288
  %300 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %301 = load i32, i32* @CX2341X_ENC_SET_BIT_RATE, align 4
  %302 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %303 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %302, i32 0, i32 16
  %304 = load %struct.TYPE_18__*, %struct.TYPE_18__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 4
  %307 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %308 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %307, i32 0, i32 18
  %309 = load %struct.TYPE_17__*, %struct.TYPE_17__** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 4
  %312 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %313 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %312, i32 0, i32 17
  %314 = load %struct.TYPE_18__*, %struct.TYPE_18__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 4
  %317 = sdiv i32 %316, 400
  %318 = call i32 (%struct.cx2341x_handler*, i32, i32, i32, ...) @cx2341x_hdl_api(%struct.cx2341x_handler* %300, i32 %301, i32 5, i32 %306, i32 %311, i32 %317, i32 0, i32 0)
  store i32 %318, i32* %7, align 4
  %319 = load i32, i32* %7, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %323

321:                                              ; preds = %299
  %322 = load i32, i32* %7, align 4
  store i32 %322, i32* %2, align 4
  br label %540

323:                                              ; preds = %299
  %324 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %325 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %324, i32 0, i32 16
  %326 = load %struct.TYPE_18__*, %struct.TYPE_18__** %325, align 8
  %327 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %328 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %327, i32 0, i32 14
  %329 = load %struct.TYPE_19__*, %struct.TYPE_19__** %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 4
  %332 = load i32, i32* @V4L2_MPEG_VIDEO_ENCODING_MPEG_1, align 4
  %333 = icmp ne i32 %331, %332
  %334 = zext i1 %333 to i32
  %335 = call i32 @v4l2_ctrl_activate(%struct.TYPE_18__* %326, i32 %334)
  %336 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %337 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %336, i32 0, i32 17
  %338 = load %struct.TYPE_18__*, %struct.TYPE_18__** %337, align 8
  %339 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %340 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %339, i32 0, i32 16
  %341 = load %struct.TYPE_18__*, %struct.TYPE_18__** %340, align 8
  %342 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 4
  %344 = load i32, i32* @V4L2_MPEG_VIDEO_BITRATE_MODE_CBR, align 4
  %345 = icmp ne i32 %343, %344
  %346 = zext i1 %345 to i32
  %347 = call i32 @v4l2_ctrl_activate(%struct.TYPE_18__* %338, i32 %346)
  %348 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %349 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %348, i32 0, i32 14
  %350 = load %struct.TYPE_19__*, %struct.TYPE_19__** %349, align 8
  %351 = call i32 @cx2341x_neq(%struct.TYPE_19__* %350)
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %378

353:                                              ; preds = %323
  %354 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %355 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %354, i32 0, i32 15
  %356 = load %struct.TYPE_28__*, %struct.TYPE_28__** %355, align 8
  %357 = icmp ne %struct.TYPE_28__* %356, null
  br i1 %357, label %358, label %378

358:                                              ; preds = %353
  %359 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %360 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %359, i32 0, i32 15
  %361 = load %struct.TYPE_28__*, %struct.TYPE_28__** %360, align 8
  %362 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %361, i32 0, i32 3
  %363 = load i32 (%struct.cx2341x_handler*, i32)*, i32 (%struct.cx2341x_handler*, i32)** %362, align 8
  %364 = icmp ne i32 (%struct.cx2341x_handler*, i32)* %363, null
  br i1 %364, label %365, label %378

365:                                              ; preds = %358
  %366 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %367 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %366, i32 0, i32 15
  %368 = load %struct.TYPE_28__*, %struct.TYPE_28__** %367, align 8
  %369 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %368, i32 0, i32 3
  %370 = load i32 (%struct.cx2341x_handler*, i32)*, i32 (%struct.cx2341x_handler*, i32)** %369, align 8
  %371 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %372 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %373 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %372, i32 0, i32 14
  %374 = load %struct.TYPE_19__*, %struct.TYPE_19__** %373, align 8
  %375 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 4
  %377 = call i32 %370(%struct.cx2341x_handler* %371, i32 %376)
  store i32 %377, i32* %2, align 4
  br label %540

378:                                              ; preds = %358, %353, %323
  store i32 0, i32* %2, align 4
  br label %540

379:                                              ; preds = %1
  %380 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %381 = load i32, i32* @CX2341X_ENC_MUTE_VIDEO, align 4
  %382 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %383 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %382, i32 0, i32 13
  %384 = load %struct.TYPE_20__*, %struct.TYPE_20__** %383, align 8
  %385 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %384, i32 0, i32 0
  %386 = load i32, i32* %385, align 4
  %387 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %388 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %387, i32 0, i32 12
  %389 = load %struct.TYPE_21__*, %struct.TYPE_21__** %388, align 8
  %390 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %389, i32 0, i32 0
  %391 = load i32, i32* %390, align 4
  %392 = shl i32 %391, 8
  %393 = or i32 %386, %392
  %394 = call i32 (%struct.cx2341x_handler*, i32, i32, i32, ...) @cx2341x_hdl_api(%struct.cx2341x_handler* %380, i32 %381, i32 1, i32 %393)
  store i32 %394, i32* %2, align 4
  br label %540

395:                                              ; preds = %1
  %396 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %397 = load i32, i32* @CX2341X_ENC_SET_DNR_FILTER_MODE, align 4
  %398 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %399 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %398, i32 0, i32 11
  %400 = load %struct.TYPE_22__*, %struct.TYPE_22__** %399, align 8
  %401 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %400, i32 0, i32 0
  %402 = load i32, i32* %401, align 4
  %403 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %404 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %403, i32 0, i32 10
  %405 = load %struct.TYPE_23__*, %struct.TYPE_23__** %404, align 8
  %406 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %405, i32 0, i32 0
  %407 = load i32, i32* %406, align 4
  %408 = shl i32 %407, 1
  %409 = or i32 %402, %408
  %410 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %411 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %410, i32 0, i32 9
  %412 = load %struct.TYPE_24__*, %struct.TYPE_24__** %411, align 8
  %413 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 4
  %415 = call i32 (%struct.cx2341x_handler*, i32, i32, i32, ...) @cx2341x_hdl_api(%struct.cx2341x_handler* %396, i32 %397, i32 2, i32 %409, i32 %414)
  store i32 %415, i32* %7, align 4
  %416 = load i32, i32* %7, align 4
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %418, label %420

418:                                              ; preds = %395
  %419 = load i32, i32* %7, align 4
  store i32 %419, i32* %2, align 4
  br label %540

420:                                              ; preds = %395
  %421 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %422 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %421, i32 0, i32 11
  %423 = load %struct.TYPE_22__*, %struct.TYPE_22__** %422, align 8
  %424 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %423, i32 0, i32 0
  %425 = load i32, i32* %424, align 4
  %426 = load i32, i32* @V4L2_MPEG_CX2341X_VIDEO_SPATIAL_FILTER_MODE_AUTO, align 4
  %427 = icmp ne i32 %425, %426
  %428 = zext i1 %427 to i32
  store i32 %428, i32* %9, align 4
  %429 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %430 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %429, i32 0, i32 6
  %431 = load %struct.TYPE_18__*, %struct.TYPE_18__** %430, align 8
  %432 = load i32, i32* %9, align 4
  %433 = call i32 @v4l2_ctrl_activate(%struct.TYPE_18__* %431, i32 %432)
  %434 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %435 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %434, i32 0, i32 8
  %436 = load %struct.TYPE_18__*, %struct.TYPE_18__** %435, align 8
  %437 = load i32, i32* %9, align 4
  %438 = call i32 @v4l2_ctrl_activate(%struct.TYPE_18__* %436, i32 %437)
  %439 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %440 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %439, i32 0, i32 7
  %441 = load %struct.TYPE_18__*, %struct.TYPE_18__** %440, align 8
  %442 = load i32, i32* %9, align 4
  %443 = call i32 @v4l2_ctrl_activate(%struct.TYPE_18__* %441, i32 %442)
  %444 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %445 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %444, i32 0, i32 10
  %446 = load %struct.TYPE_23__*, %struct.TYPE_23__** %445, align 8
  %447 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %446, i32 0, i32 0
  %448 = load i32, i32* %447, align 4
  %449 = load i32, i32* @V4L2_MPEG_CX2341X_VIDEO_TEMPORAL_FILTER_MODE_AUTO, align 4
  %450 = icmp ne i32 %448, %449
  %451 = zext i1 %450 to i32
  store i32 %451, i32* %9, align 4
  %452 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %453 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %452, i32 0, i32 5
  %454 = load %struct.TYPE_18__*, %struct.TYPE_18__** %453, align 8
  %455 = load i32, i32* %9, align 4
  %456 = call i32 @v4l2_ctrl_activate(%struct.TYPE_18__* %454, i32 %455)
  %457 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %458 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %457, i32 0, i32 9
  %459 = load %struct.TYPE_24__*, %struct.TYPE_24__** %458, align 8
  %460 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %459, i32 0, i32 0
  %461 = load i32, i32* %460, align 4
  %462 = load i32, i32* @V4L2_MPEG_CX2341X_VIDEO_MEDIAN_FILTER_TYPE_OFF, align 4
  %463 = icmp ne i32 %461, %462
  %464 = zext i1 %463 to i32
  store i32 %464, i32* %9, align 4
  %465 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %466 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %465, i32 0, i32 4
  %467 = load %struct.TYPE_18__*, %struct.TYPE_18__** %466, align 8
  %468 = load i32, i32* %9, align 4
  %469 = call i32 @v4l2_ctrl_activate(%struct.TYPE_18__* %467, i32 %468)
  %470 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %471 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %470, i32 0, i32 3
  %472 = load %struct.TYPE_18__*, %struct.TYPE_18__** %471, align 8
  %473 = load i32, i32* %9, align 4
  %474 = call i32 @v4l2_ctrl_activate(%struct.TYPE_18__* %472, i32 %473)
  %475 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %476 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %475, i32 0, i32 2
  %477 = load %struct.TYPE_18__*, %struct.TYPE_18__** %476, align 8
  %478 = load i32, i32* %9, align 4
  %479 = call i32 @v4l2_ctrl_activate(%struct.TYPE_18__* %477, i32 %478)
  %480 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %481 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %480, i32 0, i32 1
  %482 = load %struct.TYPE_18__*, %struct.TYPE_18__** %481, align 8
  %483 = load i32, i32* %9, align 4
  %484 = call i32 @v4l2_ctrl_activate(%struct.TYPE_18__* %482, i32 %483)
  store i32 0, i32* %2, align 4
  br label %540

485:                                              ; preds = %1
  %486 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %487 = load i32, i32* @CX2341X_ENC_SET_SPATIAL_FILTER_TYPE, align 4
  %488 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %489 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %488, i32 0, i32 8
  %490 = load %struct.TYPE_18__*, %struct.TYPE_18__** %489, align 8
  %491 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %490, i32 0, i32 0
  %492 = load i32, i32* %491, align 4
  %493 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %494 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %493, i32 0, i32 7
  %495 = load %struct.TYPE_18__*, %struct.TYPE_18__** %494, align 8
  %496 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %495, i32 0, i32 0
  %497 = load i32, i32* %496, align 4
  %498 = call i32 (%struct.cx2341x_handler*, i32, i32, i32, ...) @cx2341x_hdl_api(%struct.cx2341x_handler* %486, i32 %487, i32 2, i32 %492, i32 %497)
  store i32 %498, i32* %2, align 4
  br label %540

499:                                              ; preds = %1
  %500 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %501 = load i32, i32* @CX2341X_ENC_SET_DNR_FILTER_PROPS, align 4
  %502 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %503 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %502, i32 0, i32 6
  %504 = load %struct.TYPE_18__*, %struct.TYPE_18__** %503, align 8
  %505 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %504, i32 0, i32 0
  %506 = load i32, i32* %505, align 4
  %507 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %508 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %507, i32 0, i32 5
  %509 = load %struct.TYPE_18__*, %struct.TYPE_18__** %508, align 8
  %510 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %509, i32 0, i32 0
  %511 = load i32, i32* %510, align 4
  %512 = call i32 (%struct.cx2341x_handler*, i32, i32, i32, ...) @cx2341x_hdl_api(%struct.cx2341x_handler* %500, i32 %501, i32 2, i32 %506, i32 %511)
  store i32 %512, i32* %2, align 4
  br label %540

513:                                              ; preds = %1
  %514 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %515 = load i32, i32* @CX2341X_ENC_SET_CORING_LEVELS, align 4
  %516 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %517 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %516, i32 0, i32 4
  %518 = load %struct.TYPE_18__*, %struct.TYPE_18__** %517, align 8
  %519 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %518, i32 0, i32 0
  %520 = load i32, i32* %519, align 4
  %521 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %522 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %521, i32 0, i32 3
  %523 = load %struct.TYPE_18__*, %struct.TYPE_18__** %522, align 8
  %524 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %523, i32 0, i32 0
  %525 = load i32, i32* %524, align 4
  %526 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %527 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %526, i32 0, i32 2
  %528 = load %struct.TYPE_18__*, %struct.TYPE_18__** %527, align 8
  %529 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %528, i32 0, i32 0
  %530 = load i32, i32* %529, align 4
  %531 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %4, align 8
  %532 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %531, i32 0, i32 1
  %533 = load %struct.TYPE_18__*, %struct.TYPE_18__** %532, align 8
  %534 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %533, i32 0, i32 0
  %535 = load i32, i32* %534, align 4
  %536 = call i32 (%struct.cx2341x_handler*, i32, i32, i32, ...) @cx2341x_hdl_api(%struct.cx2341x_handler* %514, i32 %515, i32 4, i32 %520, i32 %525, i32 %530, i32 %535)
  store i32 %536, i32* %2, align 4
  br label %540

537:                                              ; preds = %1
  %538 = load i32, i32* @EINVAL, align 4
  %539 = sub nsw i32 0, %538
  store i32 %539, i32* %2, align 4
  br label %540

540:                                              ; preds = %537, %513, %499, %485, %420, %418, %379, %378, %365, %321, %297, %273, %272, %259, %228, %166, %65, %59, %53, %47, %40, %39, %30
  %541 = load i32, i32* %2, align 4
  ret i32 %541
}

declare dso_local %struct.cx2341x_handler* @to_cxhdl(%struct.v4l2_ctrl*) #1

declare dso_local i32 @cx2341x_hdl_api(%struct.cx2341x_handler*, i32, i32, i32, ...) #1

declare dso_local i32 @v4l2_ctrl_activate(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @cx2341x_neq(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/extr_cx2341x.c_cx2341x_set_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/extr_cx2341x.c_cx2341x_set_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx2341x_mpeg_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_ext_control = type { i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@CX2341X_CAP_HAS_AC3 = common dso_local global i32 0, align 4
@V4L2_MPEG_AUDIO_ENCODING_LAYER_2 = common dso_local global i32 0, align 4
@V4L2_MPEG_AUDIO_ENCODING_AC3 = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_ENCODING_MPEG_1 = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_BITRATE_MODE_CBR = common dso_local global i32 0, align 4
@V4L2_MPEG_STREAM_TYPE_MPEG1_SS = common dso_local global i32 0, align 4
@V4L2_MPEG_STREAM_TYPE_MPEG1_VCD = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_ENCODING_MPEG_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx2341x_mpeg_params*, i32, %struct.v4l2_ext_control*)* @cx2341x_set_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx2341x_set_ctrl(%struct.cx2341x_mpeg_params* %0, i32 %1, %struct.v4l2_ext_control* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cx2341x_mpeg_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.v4l2_ext_control*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cx2341x_mpeg_params* %0, %struct.cx2341x_mpeg_params** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.v4l2_ext_control* %2, %struct.v4l2_ext_control** %7, align 8
  %12 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %7, align 8
  %13 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %398 [
    i32 152, label %15
    i32 157, label %27
    i32 156, label %62
    i32 160, label %74
    i32 155, label %96
    i32 154, label %102
    i32 158, label %108
    i32 159, label %114
    i32 153, label %120
    i32 137, label %126
    i32 133, label %132
    i32 131, label %167
    i32 132, label %202
    i32 135, label %208
    i32 136, label %235
    i32 134, label %247
    i32 128, label %259
    i32 130, label %265
    i32 129, label %273
    i32 139, label %279
    i32 138, label %320
    i32 142, label %326
    i32 143, label %332
    i32 145, label %338
    i32 148, label %344
    i32 140, label %350
    i32 141, label %356
    i32 144, label %362
    i32 146, label %368
    i32 147, label %374
    i32 149, label %380
    i32 150, label %386
    i32 151, label %392
  ]

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32, i32* @EBUSY, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %402

21:                                               ; preds = %15
  %22 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %7, align 8
  %23 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %5, align 8
  %26 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  br label %401

27:                                               ; preds = %3
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* @EBUSY, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %402

33:                                               ; preds = %27
  %34 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %5, align 8
  %35 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @CX2341X_CAP_HAS_AC3, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %33
  %41 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %7, align 8
  %42 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @V4L2_MPEG_AUDIO_ENCODING_LAYER_2, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %40
  %47 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %7, align 8
  %48 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @V4L2_MPEG_AUDIO_ENCODING_AC3, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load i32, i32* @ERANGE, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %402

55:                                               ; preds = %46, %40
  br label %56

56:                                               ; preds = %55, %33
  %57 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %7, align 8
  %58 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %5, align 8
  %61 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  br label %401

62:                                               ; preds = %3
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i32, i32* @EBUSY, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %402

68:                                               ; preds = %62
  %69 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %7, align 8
  %70 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %5, align 8
  %73 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 4
  br label %401

74:                                               ; preds = %3
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i32, i32* @EBUSY, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %402

80:                                               ; preds = %74
  %81 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %5, align 8
  %82 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @CX2341X_CAP_HAS_AC3, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %80
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %4, align 4
  br label %402

90:                                               ; preds = %80
  %91 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %7, align 8
  %92 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %5, align 8
  %95 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %94, i32 0, i32 4
  store i32 %93, i32* %95, align 4
  br label %401

96:                                               ; preds = %3
  %97 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %7, align 8
  %98 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %5, align 8
  %101 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %100, i32 0, i32 5
  store i32 %99, i32* %101, align 4
  br label %401

102:                                              ; preds = %3
  %103 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %7, align 8
  %104 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %5, align 8
  %107 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %106, i32 0, i32 6
  store i32 %105, i32* %107, align 4
  br label %401

108:                                              ; preds = %3
  %109 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %7, align 8
  %110 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %5, align 8
  %113 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %112, i32 0, i32 7
  store i32 %111, i32* %113, align 4
  br label %401

114:                                              ; preds = %3
  %115 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %7, align 8
  %116 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %5, align 8
  %119 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %118, i32 0, i32 8
  store i32 %117, i32* %119, align 4
  br label %401

120:                                              ; preds = %3
  %121 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %7, align 8
  %122 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %5, align 8
  %125 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %124, i32 0, i32 9
  store i32 %123, i32* %125, align 4
  br label %401

126:                                              ; preds = %3
  %127 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %7, align 8
  %128 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %5, align 8
  %131 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %130, i32 0, i32 10
  store i32 %129, i32* %131, align 4
  br label %401

132:                                              ; preds = %3
  %133 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %7, align 8
  %134 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %8, align 4
  %137 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %5, align 8
  %138 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %137, i32 0, i32 11
  %139 = load i32, i32* %138, align 4
  store i32 %139, i32* %9, align 4
  %140 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %7, align 8
  %141 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %5, align 8
  %144 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %143, i32 0, i32 12
  store i32 %142, i32* %144, align 4
  %145 = load i32, i32* %8, align 4
  %146 = load i32, i32* %9, align 4
  %147 = load i32, i32* %8, align 4
  %148 = add nsw i32 %146, %147
  %149 = sub nsw i32 %148, 1
  %150 = load i32, i32* %8, align 4
  %151 = sdiv i32 %149, %150
  %152 = mul nsw i32 %145, %151
  %153 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %5, align 8
  %154 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %153, i32 0, i32 11
  store i32 %152, i32* %154, align 4
  br label %155

155:                                              ; preds = %160, %132
  %156 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %5, align 8
  %157 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %156, i32 0, i32 11
  %158 = load i32, i32* %157, align 4
  %159 = icmp sgt i32 %158, 34
  br i1 %159, label %160, label %166

160:                                              ; preds = %155
  %161 = load i32, i32* %8, align 4
  %162 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %5, align 8
  %163 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %162, i32 0, i32 11
  %164 = load i32, i32* %163, align 4
  %165 = sub nsw i32 %164, %161
  store i32 %165, i32* %163, align 4
  br label %155

166:                                              ; preds = %155
  br label %401

167:                                              ; preds = %3
  %168 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %5, align 8
  %169 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %168, i32 0, i32 12
  %170 = load i32, i32* %169, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %10, align 4
  %172 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %7, align 8
  %173 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  store i32 %174, i32* %11, align 4
  %175 = load i32, i32* %10, align 4
  %176 = load i32, i32* %11, align 4
  %177 = load i32, i32* %10, align 4
  %178 = add nsw i32 %176, %177
  %179 = sub nsw i32 %178, 1
  %180 = load i32, i32* %10, align 4
  %181 = sdiv i32 %179, %180
  %182 = mul nsw i32 %175, %181
  %183 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %5, align 8
  %184 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %183, i32 0, i32 11
  store i32 %182, i32* %184, align 4
  br label %185

185:                                              ; preds = %190, %167
  %186 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %5, align 8
  %187 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %186, i32 0, i32 11
  %188 = load i32, i32* %187, align 4
  %189 = icmp sgt i32 %188, 34
  br i1 %189, label %190, label %196

190:                                              ; preds = %185
  %191 = load i32, i32* %10, align 4
  %192 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %5, align 8
  %193 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %192, i32 0, i32 11
  %194 = load i32, i32* %193, align 4
  %195 = sub nsw i32 %194, %191
  store i32 %195, i32* %193, align 4
  br label %185

196:                                              ; preds = %185
  %197 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %5, align 8
  %198 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %197, i32 0, i32 11
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %7, align 8
  %201 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %200, i32 0, i32 1
  store i32 %199, i32* %201, align 4
  br label %401

202:                                              ; preds = %3
  %203 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %7, align 8
  %204 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %5, align 8
  %207 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %206, i32 0, i32 13
  store i32 %205, i32* %207, align 4
  br label %401

208:                                              ; preds = %3
  %209 = load i32, i32* %6, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %208
  %212 = load i32, i32* @EBUSY, align 4
  %213 = sub nsw i32 0, %212
  store i32 %213, i32* %4, align 4
  br label %402

214:                                              ; preds = %208
  %215 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %5, align 8
  %216 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %215, i32 0, i32 34
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* @V4L2_MPEG_VIDEO_ENCODING_MPEG_1, align 4
  %219 = icmp eq i32 %217, %218
  br i1 %219, label %220, label %229

220:                                              ; preds = %214
  %221 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %7, align 8
  %222 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* @V4L2_MPEG_VIDEO_BITRATE_MODE_CBR, align 4
  %225 = icmp ne i32 %223, %224
  br i1 %225, label %226, label %229

226:                                              ; preds = %220
  %227 = load i32, i32* @EINVAL, align 4
  %228 = sub nsw i32 0, %227
  store i32 %228, i32* %4, align 4
  br label %402

229:                                              ; preds = %220, %214
  %230 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %7, align 8
  %231 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %5, align 8
  %234 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %233, i32 0, i32 14
  store i32 %232, i32* %234, align 4
  br label %401

235:                                              ; preds = %3
  %236 = load i32, i32* %6, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %241

238:                                              ; preds = %235
  %239 = load i32, i32* @EBUSY, align 4
  %240 = sub nsw i32 0, %239
  store i32 %240, i32* %4, align 4
  br label %402

241:                                              ; preds = %235
  %242 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %7, align 8
  %243 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %5, align 8
  %246 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %245, i32 0, i32 15
  store i32 %244, i32* %246, align 4
  br label %401

247:                                              ; preds = %3
  %248 = load i32, i32* %6, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %253

250:                                              ; preds = %247
  %251 = load i32, i32* @EBUSY, align 4
  %252 = sub nsw i32 0, %251
  store i32 %252, i32* %4, align 4
  br label %402

253:                                              ; preds = %247
  %254 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %7, align 8
  %255 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %5, align 8
  %258 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %257, i32 0, i32 16
  store i32 %256, i32* %258, align 4
  br label %401

259:                                              ; preds = %3
  %260 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %7, align 8
  %261 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %5, align 8
  %264 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %263, i32 0, i32 17
  store i32 %262, i32* %264, align 4
  br label %401

265:                                              ; preds = %3
  %266 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %7, align 8
  %267 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = icmp ne i32 %268, 0
  %270 = zext i1 %269 to i32
  %271 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %5, align 8
  %272 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %271, i32 0, i32 18
  store i32 %270, i32* %272, align 4
  br label %401

273:                                              ; preds = %3
  %274 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %7, align 8
  %275 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %5, align 8
  %278 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %277, i32 0, i32 19
  store i32 %276, i32* %278, align 4
  br label %401

279:                                              ; preds = %3
  %280 = load i32, i32* %6, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %285

282:                                              ; preds = %279
  %283 = load i32, i32* @EBUSY, align 4
  %284 = sub nsw i32 0, %283
  store i32 %284, i32* %4, align 4
  br label %402

285:                                              ; preds = %279
  %286 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %7, align 8
  %287 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %5, align 8
  %290 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %289, i32 0, i32 20
  store i32 %288, i32* %290, align 4
  %291 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %5, align 8
  %292 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %291, i32 0, i32 20
  %293 = load i32, i32* %292, align 4
  %294 = load i32, i32* @V4L2_MPEG_STREAM_TYPE_MPEG1_SS, align 4
  %295 = icmp eq i32 %293, %294
  br i1 %295, label %302, label %296

296:                                              ; preds = %285
  %297 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %5, align 8
  %298 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %297, i32 0, i32 20
  %299 = load i32, i32* %298, align 4
  %300 = load i32, i32* @V4L2_MPEG_STREAM_TYPE_MPEG1_VCD, align 4
  %301 = icmp eq i32 %299, %300
  br i1 %301, label %302, label %304

302:                                              ; preds = %296, %285
  %303 = load i32, i32* @V4L2_MPEG_VIDEO_ENCODING_MPEG_1, align 4
  br label %306

304:                                              ; preds = %296
  %305 = load i32, i32* @V4L2_MPEG_VIDEO_ENCODING_MPEG_2, align 4
  br label %306

306:                                              ; preds = %304, %302
  %307 = phi i32 [ %303, %302 ], [ %305, %304 ]
  %308 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %5, align 8
  %309 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %308, i32 0, i32 34
  store i32 %307, i32* %309, align 4
  %310 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %5, align 8
  %311 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %310, i32 0, i32 34
  %312 = load i32, i32* %311, align 4
  %313 = load i32, i32* @V4L2_MPEG_VIDEO_ENCODING_MPEG_1, align 4
  %314 = icmp eq i32 %312, %313
  br i1 %314, label %315, label %319

315:                                              ; preds = %306
  %316 = load i32, i32* @V4L2_MPEG_VIDEO_BITRATE_MODE_CBR, align 4
  %317 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %5, align 8
  %318 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %317, i32 0, i32 14
  store i32 %316, i32* %318, align 4
  br label %319

319:                                              ; preds = %315, %306
  br label %401

320:                                              ; preds = %3
  %321 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %7, align 8
  %322 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 4
  %324 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %5, align 8
  %325 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %324, i32 0, i32 21
  store i32 %323, i32* %325, align 4
  br label %401

326:                                              ; preds = %3
  %327 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %7, align 8
  %328 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %327, i32 0, i32 1
  %329 = load i32, i32* %328, align 4
  %330 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %5, align 8
  %331 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %330, i32 0, i32 22
  store i32 %329, i32* %331, align 4
  br label %401

332:                                              ; preds = %3
  %333 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %7, align 8
  %334 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 4
  %336 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %5, align 8
  %337 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %336, i32 0, i32 23
  store i32 %335, i32* %337, align 4
  br label %401

338:                                              ; preds = %3
  %339 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %7, align 8
  %340 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 4
  %342 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %5, align 8
  %343 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %342, i32 0, i32 24
  store i32 %341, i32* %343, align 4
  br label %401

344:                                              ; preds = %3
  %345 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %7, align 8
  %346 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %345, i32 0, i32 1
  %347 = load i32, i32* %346, align 4
  %348 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %5, align 8
  %349 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %348, i32 0, i32 25
  store i32 %347, i32* %349, align 4
  br label %401

350:                                              ; preds = %3
  %351 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %7, align 8
  %352 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %351, i32 0, i32 1
  %353 = load i32, i32* %352, align 4
  %354 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %5, align 8
  %355 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %354, i32 0, i32 26
  store i32 %353, i32* %355, align 4
  br label %401

356:                                              ; preds = %3
  %357 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %7, align 8
  %358 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %357, i32 0, i32 1
  %359 = load i32, i32* %358, align 4
  %360 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %5, align 8
  %361 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %360, i32 0, i32 27
  store i32 %359, i32* %361, align 4
  br label %401

362:                                              ; preds = %3
  %363 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %7, align 8
  %364 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %363, i32 0, i32 1
  %365 = load i32, i32* %364, align 4
  %366 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %5, align 8
  %367 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %366, i32 0, i32 28
  store i32 %365, i32* %367, align 4
  br label %401

368:                                              ; preds = %3
  %369 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %7, align 8
  %370 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %369, i32 0, i32 1
  %371 = load i32, i32* %370, align 4
  %372 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %5, align 8
  %373 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %372, i32 0, i32 29
  store i32 %371, i32* %373, align 4
  br label %401

374:                                              ; preds = %3
  %375 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %7, align 8
  %376 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %375, i32 0, i32 1
  %377 = load i32, i32* %376, align 4
  %378 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %5, align 8
  %379 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %378, i32 0, i32 30
  store i32 %377, i32* %379, align 4
  br label %401

380:                                              ; preds = %3
  %381 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %7, align 8
  %382 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %381, i32 0, i32 1
  %383 = load i32, i32* %382, align 4
  %384 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %5, align 8
  %385 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %384, i32 0, i32 31
  store i32 %383, i32* %385, align 4
  br label %401

386:                                              ; preds = %3
  %387 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %7, align 8
  %388 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %387, i32 0, i32 1
  %389 = load i32, i32* %388, align 4
  %390 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %5, align 8
  %391 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %390, i32 0, i32 32
  store i32 %389, i32* %391, align 4
  br label %401

392:                                              ; preds = %3
  %393 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %7, align 8
  %394 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %393, i32 0, i32 1
  %395 = load i32, i32* %394, align 4
  %396 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %5, align 8
  %397 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %396, i32 0, i32 33
  store i32 %395, i32* %397, align 4
  br label %401

398:                                              ; preds = %3
  %399 = load i32, i32* @EINVAL, align 4
  %400 = sub nsw i32 0, %399
  store i32 %400, i32* %4, align 4
  br label %402

401:                                              ; preds = %392, %386, %380, %374, %368, %362, %356, %350, %344, %338, %332, %326, %320, %319, %273, %265, %259, %253, %241, %229, %202, %196, %166, %126, %120, %114, %108, %102, %96, %90, %68, %56, %21
  store i32 0, i32* %4, align 4
  br label %402

402:                                              ; preds = %401, %398, %282, %250, %238, %226, %211, %87, %77, %65, %52, %30, %18
  %403 = load i32, i32* %4, align 4
  ret i32 %403
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

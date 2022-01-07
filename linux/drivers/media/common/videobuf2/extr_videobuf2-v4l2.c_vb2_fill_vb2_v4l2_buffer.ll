; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-v4l2.c_vb2_fill_vb2_v4l2_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-v4l2.c_vb2_fill_vb2_v4l2_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { i32, %struct.vb2_queue*, %struct.TYPE_10__* }
%struct.vb2_queue = type { i32, i64, i64 }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.v4l2_buffer = type { i64, i32, i64, i64, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, %struct.v4l2_plane* }
%struct.v4l2_plane = type { i64, i64, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.vb2_v4l2_buffer = type { i32, i32, i64, i64, %struct.vb2_plane* }
%struct.vb2_plane = type { i64, i64, i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"plane parameters verification failed: %d\0A\00", align 1
@V4L2_FIELD_ALTERNATE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [64 x i8] c"the field is incorrectly set to ALTERNATE for an output buffer\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@V4L2_BUFFER_MASK_FLAGS = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_TSTAMP_SRC_MASK = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_TIMECODE = common dso_local global i32 0, align 4
@V4L2_BUFFER_OUT_FLAGS = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_LAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_buffer*, %struct.v4l2_buffer*)* @vb2_fill_vb2_v4l2_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vb2_fill_vb2_v4l2_buffer(%struct.vb2_buffer* %0, %struct.v4l2_buffer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vb2_buffer*, align 8
  %5 = alloca %struct.v4l2_buffer*, align 8
  %6 = alloca %struct.vb2_queue*, align 8
  %7 = alloca %struct.vb2_v4l2_buffer*, align 8
  %8 = alloca %struct.vb2_plane*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.vb2_plane*, align 8
  %12 = alloca %struct.v4l2_plane*, align 8
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %4, align 8
  store %struct.v4l2_buffer* %1, %struct.v4l2_buffer** %5, align 8
  %13 = load %struct.vb2_buffer*, %struct.vb2_buffer** %4, align 8
  %14 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %13, i32 0, i32 1
  %15 = load %struct.vb2_queue*, %struct.vb2_queue** %14, align 8
  store %struct.vb2_queue* %15, %struct.vb2_queue** %6, align 8
  %16 = load %struct.vb2_buffer*, %struct.vb2_buffer** %4, align 8
  %17 = call %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer* %16)
  store %struct.vb2_v4l2_buffer* %17, %struct.vb2_v4l2_buffer** %7, align 8
  %18 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %19 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %18, i32 0, i32 4
  %20 = load %struct.vb2_plane*, %struct.vb2_plane** %19, align 8
  store %struct.vb2_plane* %20, %struct.vb2_plane** %8, align 8
  %21 = load %struct.vb2_buffer*, %struct.vb2_buffer** %4, align 8
  %22 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %23 = call i32 @__verify_length(%struct.vb2_buffer* %21, %struct.v4l2_buffer* %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load i32, i32* %10, align 4
  %28 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %3, align 4
  br label %427

30:                                               ; preds = %2
  %31 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %32 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @V4L2_FIELD_ALTERNATE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %30
  %37 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %38 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %427

45:                                               ; preds = %36, %30
  %46 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %47 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %46, i32 0, i32 3
  store i64 0, i64* %47, align 8
  %48 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %49 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %48, i32 0, i32 0
  store i32 -1, i32* %49, align 8
  %50 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %51 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @V4L2_TYPE_IS_MULTIPLANAR(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %256

55:                                               ; preds = %45
  %56 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %57 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  switch i32 %58, label %143 [
    i32 128, label %59
    i32 129, label %101
  ]

59:                                               ; preds = %55
  store i32 0, i32* %9, align 4
  br label %60

60:                                               ; preds = %97, %59
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.vb2_buffer*, %struct.vb2_buffer** %4, align 8
  %63 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ult i32 %61, %64
  br i1 %65, label %66, label %100

66:                                               ; preds = %60
  %67 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %68 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %67, i32 0, i32 6
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 2
  %70 = load %struct.v4l2_plane*, %struct.v4l2_plane** %69, align 8
  %71 = load i32, i32* %9, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.v4l2_plane, %struct.v4l2_plane* %70, i64 %72
  %74 = getelementptr inbounds %struct.v4l2_plane, %struct.v4l2_plane* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.vb2_plane*, %struct.vb2_plane** %8, align 8
  %78 = load i32, i32* %9, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %77, i64 %79
  %81 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 2
  store i32 %76, i32* %82, align 8
  %83 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %84 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %83, i32 0, i32 6
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 2
  %86 = load %struct.v4l2_plane*, %struct.v4l2_plane** %85, align 8
  %87 = load i32, i32* %9, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.v4l2_plane, %struct.v4l2_plane* %86, i64 %88
  %90 = getelementptr inbounds %struct.v4l2_plane, %struct.v4l2_plane* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.vb2_plane*, %struct.vb2_plane** %8, align 8
  %93 = load i32, i32* %9, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %92, i64 %94
  %96 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %95, i32 0, i32 0
  store i64 %91, i64* %96, align 8
  br label %97

97:                                               ; preds = %66
  %98 = load i32, i32* %9, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %9, align 4
  br label %60

100:                                              ; preds = %60
  br label %183

101:                                              ; preds = %55
  store i32 0, i32* %9, align 4
  br label %102

102:                                              ; preds = %139, %101
  %103 = load i32, i32* %9, align 4
  %104 = load %struct.vb2_buffer*, %struct.vb2_buffer** %4, align 8
  %105 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp ult i32 %103, %106
  br i1 %107, label %108, label %142

108:                                              ; preds = %102
  %109 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %110 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %109, i32 0, i32 6
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 2
  %112 = load %struct.v4l2_plane*, %struct.v4l2_plane** %111, align 8
  %113 = load i32, i32* %9, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds %struct.v4l2_plane, %struct.v4l2_plane* %112, i64 %114
  %116 = getelementptr inbounds %struct.v4l2_plane, %struct.v4l2_plane* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.vb2_plane*, %struct.vb2_plane** %8, align 8
  %120 = load i32, i32* %9, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %119, i64 %121
  %123 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 1
  store i32 %118, i32* %124, align 4
  %125 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %126 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %125, i32 0, i32 6
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 2
  %128 = load %struct.v4l2_plane*, %struct.v4l2_plane** %127, align 8
  %129 = load i32, i32* %9, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds %struct.v4l2_plane, %struct.v4l2_plane* %128, i64 %130
  %132 = getelementptr inbounds %struct.v4l2_plane, %struct.v4l2_plane* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.vb2_plane*, %struct.vb2_plane** %8, align 8
  %135 = load i32, i32* %9, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %134, i64 %136
  %138 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %137, i32 0, i32 0
  store i64 %133, i64* %138, align 8
  br label %139

139:                                              ; preds = %108
  %140 = load i32, i32* %9, align 4
  %141 = add i32 %140, 1
  store i32 %141, i32* %9, align 4
  br label %102

142:                                              ; preds = %102
  br label %183

143:                                              ; preds = %55
  store i32 0, i32* %9, align 4
  br label %144

144:                                              ; preds = %179, %143
  %145 = load i32, i32* %9, align 4
  %146 = load %struct.vb2_buffer*, %struct.vb2_buffer** %4, align 8
  %147 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = icmp ult i32 %145, %148
  br i1 %149, label %150, label %182

150:                                              ; preds = %144
  %151 = load %struct.vb2_buffer*, %struct.vb2_buffer** %4, align 8
  %152 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %151, i32 0, i32 2
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %152, align 8
  %154 = load i32, i32* %9, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.vb2_plane*, %struct.vb2_plane** %8, align 8
  %161 = load i32, i32* %9, align 4
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %160, i64 %162
  %164 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %163, i32 0, i32 3
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 0
  store i32 %159, i32* %165, align 8
  %166 = load %struct.vb2_buffer*, %struct.vb2_buffer** %4, align 8
  %167 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %166, i32 0, i32 2
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %167, align 8
  %169 = load i32, i32* %9, align 4
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.vb2_plane*, %struct.vb2_plane** %8, align 8
  %175 = load i32, i32* %9, align 4
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %174, i64 %176
  %178 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %177, i32 0, i32 0
  store i64 %173, i64* %178, align 8
  br label %179

179:                                              ; preds = %150
  %180 = load i32, i32* %9, align 4
  %181 = add i32 %180, 1
  store i32 %181, i32* %9, align 4
  br label %144

182:                                              ; preds = %144
  br label %183

183:                                              ; preds = %182, %142, %100
  %184 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %185 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %184, i32 0, i32 5
  %186 = load i32, i32* %185, align 4
  %187 = call i64 @V4L2_TYPE_IS_OUTPUT(i32 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %255

189:                                              ; preds = %183
  store i32 0, i32* %9, align 4
  br label %190

190:                                              ; preds = %251, %189
  %191 = load i32, i32* %9, align 4
  %192 = load %struct.vb2_buffer*, %struct.vb2_buffer** %4, align 8
  %193 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = icmp ult i32 %191, %194
  br i1 %195, label %196, label %254

196:                                              ; preds = %190
  %197 = load %struct.vb2_plane*, %struct.vb2_plane** %8, align 8
  %198 = load i32, i32* %9, align 4
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %197, i64 %199
  store %struct.vb2_plane* %200, %struct.vb2_plane** %11, align 8
  %201 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %202 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %201, i32 0, i32 6
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 2
  %204 = load %struct.v4l2_plane*, %struct.v4l2_plane** %203, align 8
  %205 = load i32, i32* %9, align 4
  %206 = zext i32 %205 to i64
  %207 = getelementptr inbounds %struct.v4l2_plane, %struct.v4l2_plane* %204, i64 %206
  store %struct.v4l2_plane* %207, %struct.v4l2_plane** %12, align 8
  %208 = load %struct.v4l2_plane*, %struct.v4l2_plane** %12, align 8
  %209 = getelementptr inbounds %struct.v4l2_plane, %struct.v4l2_plane* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = icmp eq i64 %210, 0
  br i1 %211, label %212, label %215

212:                                              ; preds = %196
  %213 = load %struct.vb2_buffer*, %struct.vb2_buffer** %4, align 8
  %214 = call i32 @vb2_warn_zero_bytesused(%struct.vb2_buffer* %213)
  br label %215

215:                                              ; preds = %212, %196
  %216 = load %struct.vb2_buffer*, %struct.vb2_buffer** %4, align 8
  %217 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %216, i32 0, i32 1
  %218 = load %struct.vb2_queue*, %struct.vb2_queue** %217, align 8
  %219 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %228

222:                                              ; preds = %215
  %223 = load %struct.v4l2_plane*, %struct.v4l2_plane** %12, align 8
  %224 = getelementptr inbounds %struct.v4l2_plane, %struct.v4l2_plane* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = load %struct.vb2_plane*, %struct.vb2_plane** %11, align 8
  %227 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %226, i32 0, i32 1
  store i64 %225, i64* %227, align 8
  br label %245

228:                                              ; preds = %215
  %229 = load %struct.v4l2_plane*, %struct.v4l2_plane** %12, align 8
  %230 = getelementptr inbounds %struct.v4l2_plane, %struct.v4l2_plane* %229, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %237

233:                                              ; preds = %228
  %234 = load %struct.v4l2_plane*, %struct.v4l2_plane** %12, align 8
  %235 = getelementptr inbounds %struct.v4l2_plane, %struct.v4l2_plane* %234, i32 0, i32 1
  %236 = load i64, i64* %235, align 8
  br label %241

237:                                              ; preds = %228
  %238 = load %struct.vb2_plane*, %struct.vb2_plane** %11, align 8
  %239 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  br label %241

241:                                              ; preds = %237, %233
  %242 = phi i64 [ %236, %233 ], [ %240, %237 ]
  %243 = load %struct.vb2_plane*, %struct.vb2_plane** %11, align 8
  %244 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %243, i32 0, i32 1
  store i64 %242, i64* %244, align 8
  br label %245

245:                                              ; preds = %241, %222
  %246 = load %struct.v4l2_plane*, %struct.v4l2_plane** %12, align 8
  %247 = getelementptr inbounds %struct.v4l2_plane, %struct.v4l2_plane* %246, i32 0, i32 2
  %248 = load i64, i64* %247, align 8
  %249 = load %struct.vb2_plane*, %struct.vb2_plane** %11, align 8
  %250 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %249, i32 0, i32 2
  store i64 %248, i64* %250, align 8
  br label %251

251:                                              ; preds = %245
  %252 = load i32, i32* %9, align 4
  %253 = add i32 %252, 1
  store i32 %253, i32* %9, align 4
  br label %190

254:                                              ; preds = %190
  br label %255

255:                                              ; preds = %254, %183
  br label %367

256:                                              ; preds = %45
  %257 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %258 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 8
  switch i32 %259, label %290 [
    i32 128, label %260
    i32 129, label %275
  ]

260:                                              ; preds = %256
  %261 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %262 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %261, i32 0, i32 6
  %263 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.vb2_plane*, %struct.vb2_plane** %8, align 8
  %266 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %265, i64 0
  %267 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %266, i32 0, i32 3
  %268 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %267, i32 0, i32 2
  store i32 %264, i32* %268, align 8
  %269 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %270 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %269, i32 0, i32 2
  %271 = load i64, i64* %270, align 8
  %272 = load %struct.vb2_plane*, %struct.vb2_plane** %8, align 8
  %273 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %272, i64 0
  %274 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %273, i32 0, i32 0
  store i64 %271, i64* %274, align 8
  br label %311

275:                                              ; preds = %256
  %276 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %277 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %276, i32 0, i32 6
  %278 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = load %struct.vb2_plane*, %struct.vb2_plane** %8, align 8
  %281 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %280, i64 0
  %282 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %281, i32 0, i32 3
  %283 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %282, i32 0, i32 1
  store i32 %279, i32* %283, align 4
  %284 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %285 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %284, i32 0, i32 2
  %286 = load i64, i64* %285, align 8
  %287 = load %struct.vb2_plane*, %struct.vb2_plane** %8, align 8
  %288 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %287, i64 0
  %289 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %288, i32 0, i32 0
  store i64 %286, i64* %289, align 8
  br label %311

290:                                              ; preds = %256
  %291 = load %struct.vb2_buffer*, %struct.vb2_buffer** %4, align 8
  %292 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %291, i32 0, i32 2
  %293 = load %struct.TYPE_10__*, %struct.TYPE_10__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %293, i64 0
  %295 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %294, i32 0, i32 1
  %296 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = load %struct.vb2_plane*, %struct.vb2_plane** %8, align 8
  %299 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %298, i64 0
  %300 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %299, i32 0, i32 3
  %301 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %300, i32 0, i32 0
  store i32 %297, i32* %301, align 8
  %302 = load %struct.vb2_buffer*, %struct.vb2_buffer** %4, align 8
  %303 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %302, i32 0, i32 2
  %304 = load %struct.TYPE_10__*, %struct.TYPE_10__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %304, i64 0
  %306 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %305, i32 0, i32 0
  %307 = load i64, i64* %306, align 8
  %308 = load %struct.vb2_plane*, %struct.vb2_plane** %8, align 8
  %309 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %308, i64 0
  %310 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %309, i32 0, i32 0
  store i64 %307, i64* %310, align 8
  br label %311

311:                                              ; preds = %290, %275, %260
  %312 = load %struct.vb2_plane*, %struct.vb2_plane** %8, align 8
  %313 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %312, i64 0
  %314 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %313, i32 0, i32 2
  store i64 0, i64* %314, align 8
  %315 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %316 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %315, i32 0, i32 5
  %317 = load i32, i32* %316, align 4
  %318 = call i64 @V4L2_TYPE_IS_OUTPUT(i32 %317)
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %320, label %362

320:                                              ; preds = %311
  %321 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %322 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %321, i32 0, i32 3
  %323 = load i64, i64* %322, align 8
  %324 = icmp eq i64 %323, 0
  br i1 %324, label %325, label %328

325:                                              ; preds = %320
  %326 = load %struct.vb2_buffer*, %struct.vb2_buffer** %4, align 8
  %327 = call i32 @vb2_warn_zero_bytesused(%struct.vb2_buffer* %326)
  br label %328

328:                                              ; preds = %325, %320
  %329 = load %struct.vb2_buffer*, %struct.vb2_buffer** %4, align 8
  %330 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %329, i32 0, i32 1
  %331 = load %struct.vb2_queue*, %struct.vb2_queue** %330, align 8
  %332 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %331, i32 0, i32 1
  %333 = load i64, i64* %332, align 8
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %342

335:                                              ; preds = %328
  %336 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %337 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %336, i32 0, i32 3
  %338 = load i64, i64* %337, align 8
  %339 = load %struct.vb2_plane*, %struct.vb2_plane** %8, align 8
  %340 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %339, i64 0
  %341 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %340, i32 0, i32 1
  store i64 %338, i64* %341, align 8
  br label %361

342:                                              ; preds = %328
  %343 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %344 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %343, i32 0, i32 3
  %345 = load i64, i64* %344, align 8
  %346 = icmp ne i64 %345, 0
  br i1 %346, label %347, label %351

347:                                              ; preds = %342
  %348 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %349 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %348, i32 0, i32 3
  %350 = load i64, i64* %349, align 8
  br label %356

351:                                              ; preds = %342
  %352 = load %struct.vb2_plane*, %struct.vb2_plane** %8, align 8
  %353 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %352, i64 0
  %354 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %353, i32 0, i32 0
  %355 = load i64, i64* %354, align 8
  br label %356

356:                                              ; preds = %351, %347
  %357 = phi i64 [ %350, %347 ], [ %355, %351 ]
  %358 = load %struct.vb2_plane*, %struct.vb2_plane** %8, align 8
  %359 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %358, i64 0
  %360 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %359, i32 0, i32 1
  store i64 %357, i64* %360, align 8
  br label %361

361:                                              ; preds = %356, %335
  br label %366

362:                                              ; preds = %311
  %363 = load %struct.vb2_plane*, %struct.vb2_plane** %8, align 8
  %364 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %363, i64 0
  %365 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %364, i32 0, i32 1
  store i64 0, i64* %365, align 8
  br label %366

366:                                              ; preds = %362, %361
  br label %367

367:                                              ; preds = %366, %255
  %368 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %369 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %368, i32 0, i32 4
  %370 = load i32, i32* %369, align 8
  %371 = load i32, i32* @V4L2_BUFFER_MASK_FLAGS, align 4
  %372 = xor i32 %371, -1
  %373 = and i32 %370, %372
  %374 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %375 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %374, i32 0, i32 1
  store i32 %373, i32* %375, align 4
  %376 = load %struct.vb2_buffer*, %struct.vb2_buffer** %4, align 8
  %377 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %376, i32 0, i32 1
  %378 = load %struct.vb2_queue*, %struct.vb2_queue** %377, align 8
  %379 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 8
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %382, label %388

382:                                              ; preds = %367
  %383 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %384 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %383, i32 0, i32 5
  %385 = load i32, i32* %384, align 4
  %386 = call i64 @V4L2_TYPE_IS_OUTPUT(i32 %385)
  %387 = icmp ne i64 %386, 0
  br i1 %387, label %395, label %388

388:                                              ; preds = %382, %367
  %389 = load i32, i32* @V4L2_BUF_FLAG_TSTAMP_SRC_MASK, align 4
  %390 = xor i32 %389, -1
  %391 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %392 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %391, i32 0, i32 1
  %393 = load i32, i32* %392, align 4
  %394 = and i32 %393, %390
  store i32 %394, i32* %392, align 4
  br label %395

395:                                              ; preds = %388, %382
  %396 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %397 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %396, i32 0, i32 5
  %398 = load i32, i32* %397, align 4
  %399 = call i64 @V4L2_TYPE_IS_OUTPUT(i32 %398)
  %400 = icmp ne i64 %399, 0
  br i1 %400, label %401, label %413

401:                                              ; preds = %395
  %402 = load i32, i32* @V4L2_BUF_FLAG_TIMECODE, align 4
  %403 = xor i32 %402, -1
  %404 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %405 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %404, i32 0, i32 1
  %406 = load i32, i32* %405, align 4
  %407 = and i32 %406, %403
  store i32 %407, i32* %405, align 4
  %408 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %409 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %408, i32 0, i32 0
  %410 = load i64, i64* %409, align 8
  %411 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %412 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %411, i32 0, i32 2
  store i64 %410, i64* %412, align 8
  br label %426

413:                                              ; preds = %395
  %414 = load i32, i32* @V4L2_BUFFER_OUT_FLAGS, align 4
  %415 = xor i32 %414, -1
  %416 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %417 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %416, i32 0, i32 1
  %418 = load i32, i32* %417, align 4
  %419 = and i32 %418, %415
  store i32 %419, i32* %417, align 4
  %420 = load i32, i32* @V4L2_BUF_FLAG_LAST, align 4
  %421 = xor i32 %420, -1
  %422 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %423 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %422, i32 0, i32 1
  %424 = load i32, i32* %423, align 4
  %425 = and i32 %424, %421
  store i32 %425, i32* %423, align 4
  br label %426

426:                                              ; preds = %413, %401
  store i32 0, i32* %3, align 4
  br label %427

427:                                              ; preds = %426, %41, %26
  %428 = load i32, i32* %3, align 4
  ret i32 %428
}

declare dso_local %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer*) #1

declare dso_local i32 @__verify_length(%struct.vb2_buffer*, %struct.v4l2_buffer*) #1

declare dso_local i32 @dprintk(i32, i8*, ...) #1

declare dso_local i64 @V4L2_TYPE_IS_MULTIPLANAR(i32) #1

declare dso_local i64 @V4L2_TYPE_IS_OUTPUT(i32) #1

declare dso_local i32 @vb2_warn_zero_bytesused(%struct.vb2_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

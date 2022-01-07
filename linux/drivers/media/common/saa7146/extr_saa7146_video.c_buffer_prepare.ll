; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_video.c_buffer_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_video.c_buffer_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videobuf_queue = type { %struct.file* }
%struct.file = type { %struct.saa7146_fh* }
%struct.saa7146_fh = type { %struct.saa7146_dev* }
%struct.saa7146_dev = type { i32, %struct.saa7146_vv* }
%struct.saa7146_vv = type { i32, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i32, i32, i64, i64, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.videobuf_buffer = type { i32 }
%struct.saa7146_buf = type { i32, %struct.TYPE_6__, i32*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64, i32, i32, i64, i32, i32, i32, i64 }
%struct.saa7146_format = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"vbuf:%p\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"w (%d) / h (%d) out of bounds\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"size mismatch\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"buffer_prepare [size=%dx%d,bytes=%d,fields=%s]\0A\00", align 1
@v4l2_field_names = common dso_local global i32* null, align 8
@VIDEOBUF_NEEDS_INIT = common dso_local global i64 0, align 8
@VIDEOBUF_PREPARED = common dso_local global i64 0, align 8
@buffer_activate = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"error out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.videobuf_queue*, %struct.videobuf_buffer*, i32)* @buffer_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @buffer_prepare(%struct.videobuf_queue* %0, %struct.videobuf_buffer* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.videobuf_queue*, align 8
  %6 = alloca %struct.videobuf_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.saa7146_fh*, align 8
  %10 = alloca %struct.saa7146_dev*, align 8
  %11 = alloca %struct.saa7146_vv*, align 8
  %12 = alloca %struct.saa7146_buf*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.saa7146_format*, align 8
  store %struct.videobuf_queue* %0, %struct.videobuf_queue** %5, align 8
  store %struct.videobuf_buffer* %1, %struct.videobuf_buffer** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.videobuf_queue*, %struct.videobuf_queue** %5, align 8
  %17 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %16, i32 0, i32 0
  %18 = load %struct.file*, %struct.file** %17, align 8
  store %struct.file* %18, %struct.file** %8, align 8
  %19 = load %struct.file*, %struct.file** %8, align 8
  %20 = getelementptr inbounds %struct.file, %struct.file* %19, i32 0, i32 0
  %21 = load %struct.saa7146_fh*, %struct.saa7146_fh** %20, align 8
  store %struct.saa7146_fh* %21, %struct.saa7146_fh** %9, align 8
  %22 = load %struct.saa7146_fh*, %struct.saa7146_fh** %9, align 8
  %23 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %22, i32 0, i32 0
  %24 = load %struct.saa7146_dev*, %struct.saa7146_dev** %23, align 8
  store %struct.saa7146_dev* %24, %struct.saa7146_dev** %10, align 8
  %25 = load %struct.saa7146_dev*, %struct.saa7146_dev** %10, align 8
  %26 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %25, i32 0, i32 1
  %27 = load %struct.saa7146_vv*, %struct.saa7146_vv** %26, align 8
  store %struct.saa7146_vv* %27, %struct.saa7146_vv** %11, align 8
  %28 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %29 = bitcast %struct.videobuf_buffer* %28 to %struct.saa7146_buf*
  store %struct.saa7146_buf* %29, %struct.saa7146_buf** %12, align 8
  store i32 0, i32* %14, align 4
  %30 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %31 = ptrtoint %struct.videobuf_buffer* %30 to i32
  %32 = call i32 (i8*, i32, ...) @DEB_CAP(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %struct.saa7146_vv*, %struct.saa7146_vv** %11, align 8
  %34 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %36, 48
  br i1 %37, label %66, label %38

38:                                               ; preds = %3
  %39 = load %struct.saa7146_vv*, %struct.saa7146_vv** %11, align 8
  %40 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %42, 32
  br i1 %43, label %66, label %44

44:                                               ; preds = %38
  %45 = load %struct.saa7146_vv*, %struct.saa7146_vv** %11, align 8
  %46 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.saa7146_vv*, %struct.saa7146_vv** %11, align 8
  %50 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %49, i32 0, i32 2
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp sgt i32 %48, %53
  br i1 %54, label %66, label %55

55:                                               ; preds = %44
  %56 = load %struct.saa7146_vv*, %struct.saa7146_vv** %11, align 8
  %57 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.saa7146_vv*, %struct.saa7146_vv** %11, align 8
  %61 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %60, i32 0, i32 2
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp sgt i32 %59, %64
  br i1 %65, label %66, label %78

66:                                               ; preds = %55, %44, %38, %3
  %67 = load %struct.saa7146_vv*, %struct.saa7146_vv** %11, align 8
  %68 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.saa7146_vv*, %struct.saa7146_vv** %11, align 8
  %72 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (i8*, ...) @DEB_D(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %70, i32 %74)
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %4, align 4
  br label %314

78:                                               ; preds = %55
  %79 = load %struct.saa7146_vv*, %struct.saa7146_vv** %11, align 8
  %80 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  store i32 %82, i32* %13, align 4
  %83 = load %struct.saa7146_buf*, %struct.saa7146_buf** %12, align 8
  %84 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 0, %86
  br i1 %87, label %88, label %99

88:                                               ; preds = %78
  %89 = load %struct.saa7146_buf*, %struct.saa7146_buf** %12, align 8
  %90 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %13, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %88
  %96 = call i32 (i8*, ...) @DEB_D(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %4, align 4
  br label %314

99:                                               ; preds = %88, %78
  %100 = load %struct.saa7146_vv*, %struct.saa7146_vv** %11, align 8
  %101 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.saa7146_vv*, %struct.saa7146_vv** %11, align 8
  %105 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %13, align 4
  %109 = load i32*, i32** @v4l2_field_names, align 8
  %110 = load %struct.saa7146_vv*, %struct.saa7146_vv** %11, align 8
  %111 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds i32, i32* %109, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = call i32 (i8*, i32, ...) @DEB_CAP(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %103, i32 %107, i32 %108, i32 %115)
  %117 = load %struct.saa7146_buf*, %struct.saa7146_buf** %12, align 8
  %118 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.saa7146_vv*, %struct.saa7146_vv** %11, align 8
  %122 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp ne i32 %120, %124
  br i1 %125, label %178, label %126

126:                                              ; preds = %99
  %127 = load %struct.saa7146_buf*, %struct.saa7146_buf** %12, align 8
  %128 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.saa7146_vv*, %struct.saa7146_vv** %11, align 8
  %132 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 4
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %130, %134
  br i1 %135, label %178, label %136

136:                                              ; preds = %126
  %137 = load %struct.saa7146_buf*, %struct.saa7146_buf** %12, align 8
  %138 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.saa7146_vv*, %struct.saa7146_vv** %11, align 8
  %142 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = icmp ne i32 %140, %144
  br i1 %145, label %178, label %146

146:                                              ; preds = %136
  %147 = load %struct.saa7146_buf*, %struct.saa7146_buf** %12, align 8
  %148 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 5
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %13, align 4
  %152 = icmp ne i32 %150, %151
  br i1 %152, label %178, label %153

153:                                              ; preds = %146
  %154 = load %struct.saa7146_buf*, %struct.saa7146_buf** %12, align 8
  %155 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 6
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* %7, align 4
  %159 = icmp ne i32 %157, %158
  br i1 %159, label %178, label %160

160:                                              ; preds = %153
  %161 = load %struct.saa7146_buf*, %struct.saa7146_buf** %12, align 8
  %162 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 6
  %164 = load i32, i32* %163, align 8
  %165 = sext i32 %164 to i64
  %166 = load %struct.saa7146_vv*, %struct.saa7146_vv** %11, align 8
  %167 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 3
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %165, %169
  br i1 %170, label %178, label %171

171:                                              ; preds = %160
  %172 = load %struct.saa7146_buf*, %struct.saa7146_buf** %12, align 8
  %173 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %172, i32 0, i32 3
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %173, align 8
  %175 = load %struct.saa7146_vv*, %struct.saa7146_vv** %11, align 8
  %176 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %175, i32 0, i32 1
  %177 = icmp ne %struct.TYPE_5__* %174, %176
  br i1 %177, label %178, label %183

178:                                              ; preds = %171, %160, %153, %146, %136, %126, %99
  %179 = load %struct.saa7146_dev*, %struct.saa7146_dev** %10, align 8
  %180 = load %struct.videobuf_queue*, %struct.videobuf_queue** %5, align 8
  %181 = load %struct.saa7146_buf*, %struct.saa7146_buf** %12, align 8
  %182 = call i32 @saa7146_dma_free(%struct.saa7146_dev* %179, %struct.videobuf_queue* %180, %struct.saa7146_buf* %181)
  br label %183

183:                                              ; preds = %178, %171
  %184 = load i64, i64* @VIDEOBUF_NEEDS_INIT, align 8
  %185 = load %struct.saa7146_buf*, %struct.saa7146_buf** %12, align 8
  %186 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 7
  %188 = load i64, i64* %187, align 8
  %189 = icmp eq i64 %184, %188
  br i1 %189, label %190, label %299

190:                                              ; preds = %183
  %191 = load %struct.saa7146_vv*, %struct.saa7146_vv** %11, align 8
  %192 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 4
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.saa7146_buf*, %struct.saa7146_buf** %12, align 8
  %196 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 3
  store i64 %194, i64* %197, align 8
  %198 = load %struct.saa7146_vv*, %struct.saa7146_vv** %11, align 8
  %199 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.saa7146_buf*, %struct.saa7146_buf** %12, align 8
  %203 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 2
  store i32 %201, i32* %204, align 4
  %205 = load %struct.saa7146_vv*, %struct.saa7146_vv** %11, align 8
  %206 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.saa7146_buf*, %struct.saa7146_buf** %12, align 8
  %210 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 4
  store i32 %208, i32* %211, align 8
  %212 = load i32, i32* %13, align 4
  %213 = load %struct.saa7146_buf*, %struct.saa7146_buf** %12, align 8
  %214 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 5
  store i32 %212, i32* %215, align 4
  %216 = load i32, i32* %7, align 4
  %217 = load %struct.saa7146_buf*, %struct.saa7146_buf** %12, align 8
  %218 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 6
  store i32 %216, i32* %219, align 8
  %220 = load %struct.saa7146_vv*, %struct.saa7146_vv** %11, align 8
  %221 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %220, i32 0, i32 1
  %222 = load %struct.saa7146_buf*, %struct.saa7146_buf** %12, align 8
  %223 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %222, i32 0, i32 3
  store %struct.TYPE_5__* %221, %struct.TYPE_5__** %223, align 8
  %224 = load %struct.saa7146_vv*, %struct.saa7146_vv** %11, align 8
  %225 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 3
  %227 = load i64, i64* %226, align 8
  %228 = trunc i64 %227 to i32
  %229 = load %struct.saa7146_buf*, %struct.saa7146_buf** %12, align 8
  %230 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 6
  store i32 %228, i32* %231, align 8
  %232 = load %struct.saa7146_dev*, %struct.saa7146_dev** %10, align 8
  %233 = load %struct.saa7146_buf*, %struct.saa7146_buf** %12, align 8
  %234 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %233, i32 0, i32 3
  %235 = load %struct.TYPE_5__*, %struct.TYPE_5__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %235, i32 0, i32 5
  %237 = load i32, i32* %236, align 8
  %238 = call %struct.saa7146_format* @saa7146_format_by_fourcc(%struct.saa7146_dev* %232, i32 %237)
  store %struct.saa7146_format* %238, %struct.saa7146_format** %15, align 8
  %239 = load %struct.saa7146_dev*, %struct.saa7146_dev** %10, align 8
  %240 = load %struct.saa7146_buf*, %struct.saa7146_buf** %12, align 8
  %241 = call i32 @release_all_pagetables(%struct.saa7146_dev* %239, %struct.saa7146_buf* %240)
  %242 = load %struct.saa7146_format*, %struct.saa7146_format** %15, align 8
  %243 = getelementptr inbounds %struct.saa7146_format, %struct.saa7146_format* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = call i64 @IS_PLANAR(i32 %244)
  %246 = icmp ne i64 0, %245
  br i1 %246, label %247, label %272

247:                                              ; preds = %190
  %248 = load %struct.saa7146_dev*, %struct.saa7146_dev** %10, align 8
  %249 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = load %struct.saa7146_buf*, %struct.saa7146_buf** %12, align 8
  %252 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %251, i32 0, i32 2
  %253 = load i32*, i32** %252, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 0
  %255 = call i32 @saa7146_pgtable_alloc(i32 %250, i32* %254)
  %256 = load %struct.saa7146_dev*, %struct.saa7146_dev** %10, align 8
  %257 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = load %struct.saa7146_buf*, %struct.saa7146_buf** %12, align 8
  %260 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %259, i32 0, i32 2
  %261 = load i32*, i32** %260, align 8
  %262 = getelementptr inbounds i32, i32* %261, i64 1
  %263 = call i32 @saa7146_pgtable_alloc(i32 %258, i32* %262)
  %264 = load %struct.saa7146_dev*, %struct.saa7146_dev** %10, align 8
  %265 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = load %struct.saa7146_buf*, %struct.saa7146_buf** %12, align 8
  %268 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %267, i32 0, i32 2
  %269 = load i32*, i32** %268, align 8
  %270 = getelementptr inbounds i32, i32* %269, i64 2
  %271 = call i32 @saa7146_pgtable_alloc(i32 %266, i32* %270)
  br label %281

272:                                              ; preds = %190
  %273 = load %struct.saa7146_dev*, %struct.saa7146_dev** %10, align 8
  %274 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = load %struct.saa7146_buf*, %struct.saa7146_buf** %12, align 8
  %277 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %276, i32 0, i32 2
  %278 = load i32*, i32** %277, align 8
  %279 = getelementptr inbounds i32, i32* %278, i64 0
  %280 = call i32 @saa7146_pgtable_alloc(i32 %275, i32* %279)
  br label %281

281:                                              ; preds = %272, %247
  %282 = load %struct.videobuf_queue*, %struct.videobuf_queue** %5, align 8
  %283 = load %struct.saa7146_buf*, %struct.saa7146_buf** %12, align 8
  %284 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %283, i32 0, i32 1
  %285 = load %struct.saa7146_vv*, %struct.saa7146_vv** %11, align 8
  %286 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %285, i32 0, i32 0
  %287 = call i32 @videobuf_iolock(%struct.videobuf_queue* %282, %struct.TYPE_6__* %284, i32* %286)
  store i32 %287, i32* %14, align 4
  %288 = load i32, i32* %14, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %291

290:                                              ; preds = %281
  br label %307

291:                                              ; preds = %281
  %292 = load %struct.saa7146_dev*, %struct.saa7146_dev** %10, align 8
  %293 = load %struct.saa7146_buf*, %struct.saa7146_buf** %12, align 8
  %294 = call i32 @saa7146_pgtable_build(%struct.saa7146_dev* %292, %struct.saa7146_buf* %293)
  store i32 %294, i32* %14, align 4
  %295 = load i32, i32* %14, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %298

297:                                              ; preds = %291
  br label %307

298:                                              ; preds = %291
  br label %299

299:                                              ; preds = %298, %183
  %300 = load i64, i64* @VIDEOBUF_PREPARED, align 8
  %301 = load %struct.saa7146_buf*, %struct.saa7146_buf** %12, align 8
  %302 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %301, i32 0, i32 1
  %303 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %302, i32 0, i32 7
  store i64 %300, i64* %303, align 8
  %304 = load i32, i32* @buffer_activate, align 4
  %305 = load %struct.saa7146_buf*, %struct.saa7146_buf** %12, align 8
  %306 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %305, i32 0, i32 0
  store i32 %304, i32* %306, align 8
  store i32 0, i32* %4, align 4
  br label %314

307:                                              ; preds = %297, %290
  %308 = call i32 (i8*, ...) @DEB_D(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %309 = load %struct.saa7146_dev*, %struct.saa7146_dev** %10, align 8
  %310 = load %struct.videobuf_queue*, %struct.videobuf_queue** %5, align 8
  %311 = load %struct.saa7146_buf*, %struct.saa7146_buf** %12, align 8
  %312 = call i32 @saa7146_dma_free(%struct.saa7146_dev* %309, %struct.videobuf_queue* %310, %struct.saa7146_buf* %311)
  %313 = load i32, i32* %14, align 4
  store i32 %313, i32* %4, align 4
  br label %314

314:                                              ; preds = %307, %299, %95, %66
  %315 = load i32, i32* %4, align 4
  ret i32 %315
}

declare dso_local i32 @DEB_CAP(i8*, i32, ...) #1

declare dso_local i32 @DEB_D(i8*, ...) #1

declare dso_local i32 @saa7146_dma_free(%struct.saa7146_dev*, %struct.videobuf_queue*, %struct.saa7146_buf*) #1

declare dso_local %struct.saa7146_format* @saa7146_format_by_fourcc(%struct.saa7146_dev*, i32) #1

declare dso_local i32 @release_all_pagetables(%struct.saa7146_dev*, %struct.saa7146_buf*) #1

declare dso_local i64 @IS_PLANAR(i32) #1

declare dso_local i32 @saa7146_pgtable_alloc(i32, i32*) #1

declare dso_local i32 @videobuf_iolock(%struct.videobuf_queue*, %struct.TYPE_6__*, i32*) #1

declare dso_local i32 @saa7146_pgtable_build(%struct.saa7146_dev*, %struct.saa7146_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

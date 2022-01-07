; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-v4l2.c___fill_v4l2_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-v4l2.c___fill_v4l2_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { i32, i32, i64, i64, %struct.vb2_plane*, i32, i32, i32, i32, %struct.vb2_queue* }
%struct.vb2_plane = type { i32, %struct.TYPE_6__, i64, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.vb2_queue = type { i64, i32, i32, i64 }
%struct.v4l2_buffer = type { i32, i64, i32, %struct.TYPE_5__, i64, i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, %struct.v4l2_plane* }
%struct.v4l2_plane = type { i32, i32, i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.vb2_v4l2_buffer = type { i32, i64, i32, i32, i32 }

@VB2_MEMORY_MMAP = common dso_local global i64 0, align 8
@VB2_MEMORY_USERPTR = common dso_local global i64 0, align 8
@VB2_MEMORY_DMABUF = common dso_local global i64 0, align 8
@V4L2_BUFFER_MASK_FLAGS = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_TIMESTAMP_MASK = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_TSTAMP_SRC_MASK = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_QUEUED = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_IN_REQUEST = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_ERROR = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_DONE = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_PREPARED = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_MAPPED = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_REQUEST_FD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vb2_buffer*, i8*)* @__fill_v4l2_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__fill_v4l2_buffer(%struct.vb2_buffer* %0, i8* %1) #0 {
  %3 = alloca %struct.vb2_buffer*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.v4l2_buffer*, align 8
  %6 = alloca %struct.vb2_v4l2_buffer*, align 8
  %7 = alloca %struct.vb2_queue*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.v4l2_plane*, align 8
  %10 = alloca %struct.vb2_plane*, align 8
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.v4l2_buffer*
  store %struct.v4l2_buffer* %12, %struct.v4l2_buffer** %5, align 8
  %13 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %14 = call %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer* %13)
  store %struct.vb2_v4l2_buffer* %14, %struct.vb2_v4l2_buffer** %6, align 8
  %15 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %16 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %15, i32 0, i32 9
  %17 = load %struct.vb2_queue*, %struct.vb2_queue** %16, align 8
  store %struct.vb2_queue* %17, %struct.vb2_queue** %7, align 8
  %18 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %19 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %18, i32 0, i32 8
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %22 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %21, i32 0, i32 12
  store i32 %20, i32* %22, align 8
  %23 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %24 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %27 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %26, i32 0, i32 11
  store i32 %25, i32* %27, align 4
  %28 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %29 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %32 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %31, i32 0, i32 10
  store i32 %30, i32* %32, align 8
  %33 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %34 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %33, i32 0, i32 4
  store i64 0, i64* %34, align 8
  %35 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %36 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %39 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %41 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %44 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %43, i32 0, i32 9
  store i32 %42, i32* %44, align 4
  %45 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %46 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @ns_to_timeval(i32 %47)
  %49 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %50 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %49, i32 0, i32 8
  store i32 %48, i32* %50, align 8
  %51 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %52 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %55 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %54, i32 0, i32 7
  store i32 %53, i32* %55, align 4
  %56 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %57 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %60 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %59, i32 0, i32 6
  store i32 %58, i32* %60, align 8
  %61 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %62 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %61, i32 0, i32 5
  store i64 0, i64* %62, align 8
  %63 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %64 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %63, i32 0, i32 1
  store i64 0, i64* %64, align 8
  %65 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %66 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %162

69:                                               ; preds = %2
  %70 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %71 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %74 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  store i32 0, i32* %8, align 4
  br label %75

75:                                               ; preds = %158, %69
  %76 = load i32, i32* %8, align 4
  %77 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %78 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp ult i32 %76, %79
  br i1 %80, label %81, label %161

81:                                               ; preds = %75
  %82 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %83 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 3
  %85 = load %struct.v4l2_plane*, %struct.v4l2_plane** %84, align 8
  %86 = load i32, i32* %8, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.v4l2_plane, %struct.v4l2_plane* %85, i64 %87
  store %struct.v4l2_plane* %88, %struct.v4l2_plane** %9, align 8
  %89 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %90 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %89, i32 0, i32 4
  %91 = load %struct.vb2_plane*, %struct.vb2_plane** %90, align 8
  %92 = load i32, i32* %8, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %91, i64 %93
  store %struct.vb2_plane* %94, %struct.vb2_plane** %10, align 8
  %95 = load %struct.vb2_plane*, %struct.vb2_plane** %10, align 8
  %96 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.v4l2_plane*, %struct.v4l2_plane** %9, align 8
  %99 = getelementptr inbounds %struct.v4l2_plane, %struct.v4l2_plane* %98, i32 0, i32 4
  store i64 %97, i64* %99, align 8
  %100 = load %struct.vb2_plane*, %struct.vb2_plane** %10, align 8
  %101 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.v4l2_plane*, %struct.v4l2_plane** %9, align 8
  %104 = getelementptr inbounds %struct.v4l2_plane, %struct.v4l2_plane* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  %105 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %106 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @VB2_MEMORY_MMAP, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %118

110:                                              ; preds = %81
  %111 = load %struct.vb2_plane*, %struct.vb2_plane** %10, align 8
  %112 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.v4l2_plane*, %struct.v4l2_plane** %9, align 8
  %116 = getelementptr inbounds %struct.v4l2_plane, %struct.v4l2_plane* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 2
  store i32 %114, i32* %117, align 4
  br label %148

118:                                              ; preds = %81
  %119 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %120 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @VB2_MEMORY_USERPTR, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %132

124:                                              ; preds = %118
  %125 = load %struct.vb2_plane*, %struct.vb2_plane** %10, align 8
  %126 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.v4l2_plane*, %struct.v4l2_plane** %9, align 8
  %130 = getelementptr inbounds %struct.v4l2_plane, %struct.v4l2_plane* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 1
  store i32 %128, i32* %131, align 4
  br label %147

132:                                              ; preds = %118
  %133 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %134 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @VB2_MEMORY_DMABUF, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %146

138:                                              ; preds = %132
  %139 = load %struct.vb2_plane*, %struct.vb2_plane** %10, align 8
  %140 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.v4l2_plane*, %struct.v4l2_plane** %9, align 8
  %144 = getelementptr inbounds %struct.v4l2_plane, %struct.v4l2_plane* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  store i32 %142, i32* %145, align 4
  br label %146

146:                                              ; preds = %138, %132
  br label %147

147:                                              ; preds = %146, %124
  br label %148

148:                                              ; preds = %147, %110
  %149 = load %struct.vb2_plane*, %struct.vb2_plane** %10, align 8
  %150 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.v4l2_plane*, %struct.v4l2_plane** %9, align 8
  %153 = getelementptr inbounds %struct.v4l2_plane, %struct.v4l2_plane* %152, i32 0, i32 2
  store i32 %151, i32* %153, align 8
  %154 = load %struct.v4l2_plane*, %struct.v4l2_plane** %9, align 8
  %155 = getelementptr inbounds %struct.v4l2_plane, %struct.v4l2_plane* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @memset(i32 %156, i32 0, i32 4)
  br label %158

158:                                              ; preds = %148
  %159 = load i32, i32* %8, align 4
  %160 = add i32 %159, 1
  store i32 %160, i32* %8, align 4
  br label %75

161:                                              ; preds = %75
  br label %232

162:                                              ; preds = %2
  %163 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %164 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %163, i32 0, i32 4
  %165 = load %struct.vb2_plane*, %struct.vb2_plane** %164, align 8
  %166 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %165, i64 0
  %167 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %170 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %169, i32 0, i32 2
  store i32 %168, i32* %170, align 8
  %171 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %172 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %171, i32 0, i32 4
  %173 = load %struct.vb2_plane*, %struct.vb2_plane** %172, align 8
  %174 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %173, i64 0
  %175 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %174, i32 0, i32 2
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %178 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %177, i32 0, i32 4
  store i64 %176, i64* %178, align 8
  %179 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %180 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @VB2_MEMORY_MMAP, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %195

184:                                              ; preds = %162
  %185 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %186 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %185, i32 0, i32 4
  %187 = load %struct.vb2_plane*, %struct.vb2_plane** %186, align 8
  %188 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %187, i64 0
  %189 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %193 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %192, i32 0, i32 3
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 2
  store i32 %191, i32* %194, align 8
  br label %231

195:                                              ; preds = %162
  %196 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %197 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @VB2_MEMORY_USERPTR, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %201, label %212

201:                                              ; preds = %195
  %202 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %203 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %202, i32 0, i32 4
  %204 = load %struct.vb2_plane*, %struct.vb2_plane** %203, align 8
  %205 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %204, i64 0
  %206 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %210 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %209, i32 0, i32 3
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 1
  store i32 %208, i32* %211, align 4
  br label %230

212:                                              ; preds = %195
  %213 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %214 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @VB2_MEMORY_DMABUF, align 8
  %217 = icmp eq i64 %215, %216
  br i1 %217, label %218, label %229

218:                                              ; preds = %212
  %219 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %220 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %219, i32 0, i32 4
  %221 = load %struct.vb2_plane*, %struct.vb2_plane** %220, align 8
  %222 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %221, i64 0
  %223 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %227 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %226, i32 0, i32 3
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 0
  store i32 %225, i32* %228, align 8
  br label %229

229:                                              ; preds = %218, %212
  br label %230

230:                                              ; preds = %229, %201
  br label %231

231:                                              ; preds = %230, %184
  br label %232

232:                                              ; preds = %231, %161
  %233 = load i32, i32* @V4L2_BUFFER_MASK_FLAGS, align 4
  %234 = xor i32 %233, -1
  %235 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %236 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = and i32 %237, %234
  store i32 %238, i32* %236, align 8
  %239 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %240 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* @V4L2_BUF_FLAG_TIMESTAMP_MASK, align 4
  %243 = and i32 %241, %242
  %244 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %245 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = or i32 %246, %243
  store i32 %247, i32* %245, align 8
  %248 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %249 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %268, label %252

252:                                              ; preds = %232
  %253 = load i32, i32* @V4L2_BUF_FLAG_TSTAMP_SRC_MASK, align 4
  %254 = xor i32 %253, -1
  %255 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %256 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = and i32 %257, %254
  store i32 %258, i32* %256, align 8
  %259 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %260 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 8
  %262 = load i32, i32* @V4L2_BUF_FLAG_TSTAMP_SRC_MASK, align 4
  %263 = and i32 %261, %262
  %264 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %265 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = or i32 %266, %263
  store i32 %267, i32* %265, align 8
  br label %268

268:                                              ; preds = %252, %232
  %269 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %270 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  switch i32 %271, label %297 [
    i32 128, label %272
    i32 134, label %272
    i32 130, label %278
    i32 131, label %284
    i32 132, label %290
    i32 129, label %296
    i32 133, label %296
  ]

272:                                              ; preds = %268, %268
  %273 = load i32, i32* @V4L2_BUF_FLAG_QUEUED, align 4
  %274 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %275 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = or i32 %276, %273
  store i32 %277, i32* %275, align 8
  br label %297

278:                                              ; preds = %268
  %279 = load i32, i32* @V4L2_BUF_FLAG_IN_REQUEST, align 4
  %280 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %281 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = or i32 %282, %279
  store i32 %283, i32* %281, align 8
  br label %297

284:                                              ; preds = %268
  %285 = load i32, i32* @V4L2_BUF_FLAG_ERROR, align 4
  %286 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %287 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = or i32 %288, %285
  store i32 %289, i32* %287, align 8
  br label %290

290:                                              ; preds = %268, %284
  %291 = load i32, i32* @V4L2_BUF_FLAG_DONE, align 4
  %292 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %293 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = or i32 %294, %291
  store i32 %295, i32* %293, align 8
  br label %297

296:                                              ; preds = %268, %268
  br label %297

297:                                              ; preds = %268, %296, %290, %278, %272
  %298 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %299 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  %301 = icmp eq i32 %300, 133
  br i1 %301, label %307, label %302

302:                                              ; preds = %297
  %303 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %304 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  %306 = icmp eq i32 %305, 130
  br i1 %306, label %307, label %323

307:                                              ; preds = %302, %297
  %308 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %309 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %308, i32 0, i32 3
  %310 = load i64, i64* %309, align 8
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %323

312:                                              ; preds = %307
  %313 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %314 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %313, i32 0, i32 2
  %315 = load i64, i64* %314, align 8
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %317, label %323

317:                                              ; preds = %312
  %318 = load i32, i32* @V4L2_BUF_FLAG_PREPARED, align 4
  %319 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %320 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = or i32 %321, %318
  store i32 %322, i32* %320, align 8
  br label %323

323:                                              ; preds = %317, %312, %307, %302
  %324 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %325 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %326 = call i64 @vb2_buffer_in_use(%struct.vb2_queue* %324, %struct.vb2_buffer* %325)
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %328, label %334

328:                                              ; preds = %323
  %329 = load i32, i32* @V4L2_BUF_FLAG_MAPPED, align 4
  %330 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %331 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 8
  %333 = or i32 %332, %329
  store i32 %333, i32* %331, align 8
  br label %334

334:                                              ; preds = %328, %323
  %335 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %336 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %335, i32 0, i32 1
  %337 = load i64, i64* %336, align 8
  %338 = icmp sge i64 %337, 0
  br i1 %338, label %339, label %350

339:                                              ; preds = %334
  %340 = load i32, i32* @V4L2_BUF_FLAG_REQUEST_FD, align 4
  %341 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %342 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 8
  %344 = or i32 %343, %340
  store i32 %344, i32* %342, align 8
  %345 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %346 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %345, i32 0, i32 1
  %347 = load i64, i64* %346, align 8
  %348 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %349 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %348, i32 0, i32 1
  store i64 %347, i64* %349, align 8
  br label %350

350:                                              ; preds = %339, %334
  ret void
}

declare dso_local %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer*) #1

declare dso_local i32 @ns_to_timeval(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i64 @vb2_buffer_in_use(%struct.vb2_queue*, %struct.vb2_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

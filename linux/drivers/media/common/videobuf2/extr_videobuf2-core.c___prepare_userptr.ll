; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-core.c___prepare_userptr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-core.c___prepare_userptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { i32, %struct.TYPE_6__*, i64, %struct.vb2_queue* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, i32*, i64, i64, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.vb2_queue = type { i32, i32, i64* }
%struct.vb2_plane = type { i64, %struct.TYPE_4__, i32, i64 }
%struct.TYPE_4__ = type { i64 }

@VB2_MAX_PLANES = common dso_local global i32 0, align 4
@fill_vb2_buffer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"userspace address for plane %d changed, reacquiring memory\0A\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"provided buffer size %u is less than setup size %u for plane %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@buf_cleanup = common dso_local global i32 0, align 4
@put_userptr = common dso_local global i32 0, align 4
@get_userptr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"failed acquiring userspace memory for plane %d\0A\00", align 1
@buf_init = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"buffer initialization failed\0A\00", align 1
@buf_prepare = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"buffer preparation failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_buffer*)* @__prepare_userptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__prepare_userptr(%struct.vb2_buffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vb2_buffer*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.vb2_queue*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %3, align 8
  %12 = load i32, i32* @VB2_MAX_PLANES, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %4, align 8
  %15 = alloca %struct.vb2_plane, i64 %13, align 16
  store i64 %13, i64* %5, align 8
  %16 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %17 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %16, i32 0, i32 3
  %18 = load %struct.vb2_queue*, %struct.vb2_queue** %17, align 8
  store %struct.vb2_queue* %18, %struct.vb2_queue** %6, align 8
  store i32 0, i32* %9, align 4
  %19 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %20 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %19, i32 0, i32 1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %10, align 4
  %27 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %28 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = mul i64 32, %30
  %32 = trunc i64 %31 to i32
  %33 = call i32 @memset(%struct.vb2_plane* %15, i32 0, i32 %32)
  %34 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %35 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %34, i32 0, i32 3
  %36 = load %struct.vb2_queue*, %struct.vb2_queue** %35, align 8
  %37 = load i32, i32* @fill_vb2_buffer, align 4
  %38 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %39 = call i32 @call_bufop(%struct.vb2_queue* %36, i32 %37, %struct.vb2_buffer* %38, %struct.vb2_plane* %15)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %1
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %399

44:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  br label %45

45:                                               ; preds = %251, %44
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %48 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ult i32 %46, %49
  br i1 %50, label %51, label %254

51:                                               ; preds = %45
  %52 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %53 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %52, i32 0, i32 1
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %95

62:                                               ; preds = %51
  %63 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %64 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %63, i32 0, i32 1
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %15, i64 %73
  %75 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %71, %77
  br i1 %78, label %79, label %95

79:                                               ; preds = %62
  %80 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %81 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %80, i32 0, i32 1
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %15, i64 %89
  %91 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 16
  %93 = icmp eq i32 %87, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %79
  br label %251

95:                                               ; preds = %79, %62, %51
  %96 = load i32, i32* %8, align 4
  %97 = call i32 (i32, i8*, ...) @dprintk(i32 3, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* %8, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %15, i64 %99
  %101 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 16
  %103 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %104 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %103, i32 0, i32 1
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = load i32, i32* %8, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 8
  %111 = icmp slt i32 %102, %110
  br i1 %111, label %112, label %130

112:                                              ; preds = %95
  %113 = load i32, i32* %8, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %15, i64 %114
  %116 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 16
  %118 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %119 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %118, i32 0, i32 1
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %119, align 8
  %121 = load i32, i32* %8, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* %8, align 4
  %127 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %117, i32 %125, i32 %126)
  %128 = load i32, i32* @EINVAL, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %9, align 4
  br label %342

130:                                              ; preds = %95
  %131 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %132 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %131, i32 0, i32 1
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %132, align 8
  %134 = load i32, i32* %8, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 2
  %138 = load i32*, i32** %137, align 8
  %139 = icmp ne i32* %138, null
  br i1 %139, label %140, label %162

140:                                              ; preds = %130
  %141 = load i32, i32* %10, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %150, label %143

143:                                              ; preds = %140
  store i32 1, i32* %10, align 4
  %144 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %145 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %144, i32 0, i32 2
  store i64 0, i64* %145, align 8
  %146 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %147 = load i32, i32* @buf_cleanup, align 4
  %148 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %149 = call i32 @call_void_vb_qop(%struct.vb2_buffer* %146, i32 %147, %struct.vb2_buffer* %148)
  br label %150

150:                                              ; preds = %143, %140
  %151 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %152 = load i32, i32* @put_userptr, align 4
  %153 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %154 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %153, i32 0, i32 1
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %154, align 8
  %156 = load i32, i32* %8, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 2
  %160 = load i32*, i32** %159, align 8
  %161 = call i32 @call_void_memop(%struct.vb2_buffer* %151, i32 %152, i32* %160)
  br label %162

162:                                              ; preds = %150, %130
  %163 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %164 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %163, i32 0, i32 1
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %164, align 8
  %166 = load i32, i32* %8, align 4
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 2
  store i32* null, i32** %169, align 8
  %170 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %171 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %170, i32 0, i32 1
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %171, align 8
  %173 = load i32, i32* %8, align 4
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 4
  store i64 0, i64* %176, align 8
  %177 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %178 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %177, i32 0, i32 1
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %178, align 8
  %180 = load i32, i32* %8, align 4
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 0
  store i32 0, i32* %183, align 8
  %184 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %185 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %184, i32 0, i32 1
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %185, align 8
  %187 = load i32, i32* %8, align 4
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 0
  store i64 0, i64* %191, align 8
  %192 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %193 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %192, i32 0, i32 1
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %193, align 8
  %195 = load i32, i32* %8, align 4
  %196 = zext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 3
  store i64 0, i64* %198, align 8
  %199 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %200 = load i32, i32* @get_userptr, align 4
  %201 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %202 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %201, i32 0, i32 2
  %203 = load i64*, i64** %202, align 8
  %204 = load i32, i32* %8, align 4
  %205 = zext i32 %204 to i64
  %206 = getelementptr inbounds i64, i64* %203, i64 %205
  %207 = load i64, i64* %206, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %162
  br label %215

210:                                              ; preds = %162
  %211 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %212 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = sext i32 %213 to i64
  br label %215

215:                                              ; preds = %210, %209
  %216 = phi i64 [ %207, %209 ], [ %214, %210 ]
  %217 = trunc i64 %216 to i32
  %218 = load i32, i32* %8, align 4
  %219 = zext i32 %218 to i64
  %220 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %15, i64 %219
  %221 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = load i32, i32* %8, align 4
  %225 = zext i32 %224 to i64
  %226 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %15, i64 %225
  %227 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 16
  %229 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %230 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = call i8* @call_ptr_memop(%struct.vb2_buffer* %199, i32 %200, i32 %217, i64 %223, i32 %228, i32 %231)
  store i8* %232, i8** %7, align 8
  %233 = load i8*, i8** %7, align 8
  %234 = call i64 @IS_ERR(i8* %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %241

236:                                              ; preds = %215
  %237 = load i32, i32* %8, align 4
  %238 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %237)
  %239 = load i8*, i8** %7, align 8
  %240 = call i32 @PTR_ERR(i8* %239)
  store i32 %240, i32* %9, align 4
  br label %342

241:                                              ; preds = %215
  %242 = load i8*, i8** %7, align 8
  %243 = bitcast i8* %242 to i32*
  %244 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %245 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %244, i32 0, i32 1
  %246 = load %struct.TYPE_6__*, %struct.TYPE_6__** %245, align 8
  %247 = load i32, i32* %8, align 4
  %248 = zext i32 %247 to i64
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i64 %248
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 2
  store i32* %243, i32** %250, align 8
  br label %251

251:                                              ; preds = %241, %94
  %252 = load i32, i32* %8, align 4
  %253 = add i32 %252, 1
  store i32 %253, i32* %8, align 4
  br label %45

254:                                              ; preds = %45
  store i32 0, i32* %8, align 4
  br label %255

255:                                              ; preds = %312, %254
  %256 = load i32, i32* %8, align 4
  %257 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %258 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = icmp ult i32 %256, %259
  br i1 %260, label %261, label %315

261:                                              ; preds = %255
  %262 = load i32, i32* %8, align 4
  %263 = zext i32 %262 to i64
  %264 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %15, i64 %263
  %265 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %264, i32 0, i32 3
  %266 = load i64, i64* %265, align 8
  %267 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %268 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %267, i32 0, i32 1
  %269 = load %struct.TYPE_6__*, %struct.TYPE_6__** %268, align 8
  %270 = load i32, i32* %8, align 4
  %271 = zext i32 %270 to i64
  %272 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %269, i64 %271
  %273 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %272, i32 0, i32 4
  store i64 %266, i64* %273, align 8
  %274 = load i32, i32* %8, align 4
  %275 = zext i32 %274 to i64
  %276 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %15, i64 %275
  %277 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %276, i32 0, i32 2
  %278 = load i32, i32* %277, align 16
  %279 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %280 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %279, i32 0, i32 1
  %281 = load %struct.TYPE_6__*, %struct.TYPE_6__** %280, align 8
  %282 = load i32, i32* %8, align 4
  %283 = zext i32 %282 to i64
  %284 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %281, i64 %283
  %285 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %284, i32 0, i32 0
  store i32 %278, i32* %285, align 8
  %286 = load i32, i32* %8, align 4
  %287 = zext i32 %286 to i64
  %288 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %15, i64 %287
  %289 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %288, i32 0, i32 1
  %290 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %289, i32 0, i32 0
  %291 = load i64, i64* %290, align 8
  %292 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %293 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %292, i32 0, i32 1
  %294 = load %struct.TYPE_6__*, %struct.TYPE_6__** %293, align 8
  %295 = load i32, i32* %8, align 4
  %296 = zext i32 %295 to i64
  %297 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %294, i64 %296
  %298 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %297, i32 0, i32 1
  %299 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %298, i32 0, i32 0
  store i64 %291, i64* %299, align 8
  %300 = load i32, i32* %8, align 4
  %301 = zext i32 %300 to i64
  %302 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %15, i64 %301
  %303 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %302, i32 0, i32 0
  %304 = load i64, i64* %303, align 16
  %305 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %306 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %305, i32 0, i32 1
  %307 = load %struct.TYPE_6__*, %struct.TYPE_6__** %306, align 8
  %308 = load i32, i32* %8, align 4
  %309 = zext i32 %308 to i64
  %310 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %307, i64 %309
  %311 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %310, i32 0, i32 3
  store i64 %304, i64* %311, align 8
  br label %312

312:                                              ; preds = %261
  %313 = load i32, i32* %8, align 4
  %314 = add i32 %313, 1
  store i32 %314, i32* %8, align 4
  br label %255

315:                                              ; preds = %255
  %316 = load i32, i32* %10, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %328

318:                                              ; preds = %315
  %319 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %320 = load i32, i32* @buf_init, align 4
  %321 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %322 = call i32 @call_vb_qop(%struct.vb2_buffer* %319, i32 %320, %struct.vb2_buffer* %321)
  store i32 %322, i32* %9, align 4
  %323 = load i32, i32* %9, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %327

325:                                              ; preds = %318
  %326 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %342

327:                                              ; preds = %318
  br label %328

328:                                              ; preds = %327, %315
  %329 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %330 = load i32, i32* @buf_prepare, align 4
  %331 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %332 = call i32 @call_vb_qop(%struct.vb2_buffer* %329, i32 %330, %struct.vb2_buffer* %331)
  store i32 %332, i32* %9, align 4
  %333 = load i32, i32* %9, align 4
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %341

335:                                              ; preds = %328
  %336 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %337 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %338 = load i32, i32* @buf_cleanup, align 4
  %339 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %340 = call i32 @call_void_vb_qop(%struct.vb2_buffer* %337, i32 %338, %struct.vb2_buffer* %339)
  br label %342

341:                                              ; preds = %328
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %399

342:                                              ; preds = %335, %325, %236, %112
  store i32 0, i32* %8, align 4
  br label %343

343:                                              ; preds = %394, %342
  %344 = load i32, i32* %8, align 4
  %345 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %346 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 8
  %348 = icmp ult i32 %344, %347
  br i1 %348, label %349, label %397

349:                                              ; preds = %343
  %350 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %351 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %350, i32 0, i32 1
  %352 = load %struct.TYPE_6__*, %struct.TYPE_6__** %351, align 8
  %353 = load i32, i32* %8, align 4
  %354 = zext i32 %353 to i64
  %355 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %352, i64 %354
  %356 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %355, i32 0, i32 2
  %357 = load i32*, i32** %356, align 8
  %358 = icmp ne i32* %357, null
  br i1 %358, label %359, label %371

359:                                              ; preds = %349
  %360 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %361 = load i32, i32* @put_userptr, align 4
  %362 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %363 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %362, i32 0, i32 1
  %364 = load %struct.TYPE_6__*, %struct.TYPE_6__** %363, align 8
  %365 = load i32, i32* %8, align 4
  %366 = zext i32 %365 to i64
  %367 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %364, i64 %366
  %368 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %367, i32 0, i32 2
  %369 = load i32*, i32** %368, align 8
  %370 = call i32 @call_void_memop(%struct.vb2_buffer* %360, i32 %361, i32* %369)
  br label %371

371:                                              ; preds = %359, %349
  %372 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %373 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %372, i32 0, i32 1
  %374 = load %struct.TYPE_6__*, %struct.TYPE_6__** %373, align 8
  %375 = load i32, i32* %8, align 4
  %376 = zext i32 %375 to i64
  %377 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %374, i64 %376
  %378 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %377, i32 0, i32 2
  store i32* null, i32** %378, align 8
  %379 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %380 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %379, i32 0, i32 1
  %381 = load %struct.TYPE_6__*, %struct.TYPE_6__** %380, align 8
  %382 = load i32, i32* %8, align 4
  %383 = zext i32 %382 to i64
  %384 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %381, i64 %383
  %385 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %384, i32 0, i32 1
  %386 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %385, i32 0, i32 0
  store i64 0, i64* %386, align 8
  %387 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %388 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %387, i32 0, i32 1
  %389 = load %struct.TYPE_6__*, %struct.TYPE_6__** %388, align 8
  %390 = load i32, i32* %8, align 4
  %391 = zext i32 %390 to i64
  %392 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %389, i64 %391
  %393 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %392, i32 0, i32 0
  store i32 0, i32* %393, align 8
  br label %394

394:                                              ; preds = %371
  %395 = load i32, i32* %8, align 4
  %396 = add i32 %395, 1
  store i32 %396, i32* %8, align 4
  br label %343

397:                                              ; preds = %343
  %398 = load i32, i32* %9, align 4
  store i32 %398, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %399

399:                                              ; preds = %397, %341, %42
  %400 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %400)
  %401 = load i32, i32* %2, align 4
  ret i32 %401
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.vb2_plane*, i32, i32) #2

declare dso_local i32 @call_bufop(%struct.vb2_queue*, i32, %struct.vb2_buffer*, %struct.vb2_plane*) #2

declare dso_local i32 @dprintk(i32, i8*, ...) #2

declare dso_local i32 @call_void_vb_qop(%struct.vb2_buffer*, i32, %struct.vb2_buffer*) #2

declare dso_local i32 @call_void_memop(%struct.vb2_buffer*, i32, i32*) #2

declare dso_local i8* @call_ptr_memop(%struct.vb2_buffer*, i32, i32, i64, i32, i32) #2

declare dso_local i64 @IS_ERR(i8*) #2

declare dso_local i32 @PTR_ERR(i8*) #2

declare dso_local i32 @call_vb_qop(%struct.vb2_buffer*, i32, %struct.vb2_buffer*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

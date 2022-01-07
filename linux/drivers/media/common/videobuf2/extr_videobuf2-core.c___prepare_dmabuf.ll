; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-core.c___prepare_dmabuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-core.c___prepare_dmabuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { i32, %struct.TYPE_6__*, i64, %struct.vb2_queue* }
%struct.TYPE_6__ = type { i64, i64, i32, i64, %struct.TYPE_4__, i64, i32*, %struct.dma_buf* }
%struct.TYPE_4__ = type { i64 }
%struct.dma_buf = type { i64 }
%struct.vb2_queue = type { i32, i32, i64* }
%struct.vb2_plane = type { i64, i64, %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i64 }

@VB2_MAX_PLANES = common dso_local global i32 0, align 4
@fill_vb2_buffer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"invalid dmabuf fd for plane %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"invalid dmabuf length %u for plane %d, minimum length %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"buffer for plane %d changed\0A\00", align 1
@buf_cleanup = common dso_local global i32 0, align 4
@attach_dmabuf = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"failed to attach dmabuf\0A\00", align 1
@map_dmabuf = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"failed to map dmabuf for plane %d\0A\00", align 1
@buf_init = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"buffer initialization failed\0A\00", align 1
@buf_prepare = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"buffer preparation failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_buffer*)* @__prepare_dmabuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__prepare_dmabuf(%struct.vb2_buffer* %0) #0 {
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
  %12 = alloca %struct.dma_buf*, align 8
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %3, align 8
  %13 = load i32, i32* @VB2_MAX_PLANES, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %4, align 8
  %16 = alloca %struct.vb2_plane, i64 %14, align 16
  store i64 %14, i64* %5, align 8
  %17 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %18 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %17, i32 0, i32 3
  %19 = load %struct.vb2_queue*, %struct.vb2_queue** %18, align 8
  store %struct.vb2_queue* %19, %struct.vb2_queue** %6, align 8
  store i32 0, i32* %9, align 4
  %20 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %21 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %20, i32 0, i32 1
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i64 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 6
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %10, align 4
  %28 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %29 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = mul i64 32, %31
  %33 = trunc i64 %32 to i32
  %34 = call i32 @memset(%struct.vb2_plane* %16, i32 0, i32 %33)
  %35 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %36 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %35, i32 0, i32 3
  %37 = load %struct.vb2_queue*, %struct.vb2_queue** %36, align 8
  %38 = load i32, i32* @fill_vb2_buffer, align 4
  %39 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %40 = call i32 @call_bufop(%struct.vb2_queue* %37, i32 %38, %struct.vb2_buffer* %39, %struct.vb2_plane* %16)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %1
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %394

45:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  br label %46

46:                                               ; preds = %253, %45
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %49 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ult i32 %47, %50
  br i1 %51, label %52, label %256

52:                                               ; preds = %46
  %53 = load i32, i32* %8, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %16, i64 %54
  %56 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 16
  %59 = call %struct.dma_buf* @dma_buf_get(i64 %58)
  store %struct.dma_buf* %59, %struct.dma_buf** %12, align 8
  %60 = load %struct.dma_buf*, %struct.dma_buf** %12, align 8
  %61 = call i64 @IS_ERR_OR_NULL(%struct.dma_buf* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %52
  %64 = load i32, i32* %8, align 4
  %65 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %9, align 4
  br label %390

68:                                               ; preds = %52
  %69 = load i32, i32* %8, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %16, i64 %70
  %72 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 16
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %68
  %76 = load %struct.dma_buf*, %struct.dma_buf** %12, align 8
  %77 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %16, i64 %80
  %82 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %81, i32 0, i32 0
  store i64 %78, i64* %82, align 16
  br label %83

83:                                               ; preds = %75, %68
  %84 = load i32, i32* %8, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %16, i64 %85
  %87 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 16
  %89 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %90 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %89, i32 0, i32 1
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = load i32, i32* %8, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp slt i64 %88, %96
  br i1 %97, label %98, label %118

98:                                               ; preds = %83
  %99 = load i32, i32* %8, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %16, i64 %100
  %102 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 16
  %104 = load i32, i32* %8, align 4
  %105 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %106 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %105, i32 0, i32 1
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %106, align 8
  %108 = load i32, i32* %8, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i64 %103, i32 %104, i64 %112)
  %114 = load %struct.dma_buf*, %struct.dma_buf** %12, align 8
  %115 = call i32 @dma_buf_put(%struct.dma_buf* %114)
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %9, align 4
  br label %390

118:                                              ; preds = %83
  %119 = load %struct.dma_buf*, %struct.dma_buf** %12, align 8
  %120 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %121 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %120, i32 0, i32 1
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = load i32, i32* %8, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 7
  %127 = load %struct.dma_buf*, %struct.dma_buf** %126, align 8
  %128 = icmp eq %struct.dma_buf* %119, %127
  br i1 %128, label %129, label %147

129:                                              ; preds = %118
  %130 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %131 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %130, i32 0, i32 1
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %131, align 8
  %133 = load i32, i32* %8, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load i32, i32* %8, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %16, i64 %139
  %141 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 16
  %143 = icmp eq i64 %137, %142
  br i1 %143, label %144, label %147

144:                                              ; preds = %129
  %145 = load %struct.dma_buf*, %struct.dma_buf** %12, align 8
  %146 = call i32 @dma_buf_put(%struct.dma_buf* %145)
  br label %253

147:                                              ; preds = %129, %118
  %148 = load i32, i32* %8, align 4
  %149 = call i32 (i32, i8*, ...) @dprintk(i32 3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %148)
  %150 = load i32, i32* %10, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %159, label %152

152:                                              ; preds = %147
  store i32 1, i32* %10, align 4
  %153 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %154 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %153, i32 0, i32 2
  store i64 0, i64* %154, align 8
  %155 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %156 = load i32, i32* @buf_cleanup, align 4
  %157 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %158 = call i32 @call_void_vb_qop(%struct.vb2_buffer* %155, i32 %156, %struct.vb2_buffer* %157)
  br label %159

159:                                              ; preds = %152, %147
  %160 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %161 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %162 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %161, i32 0, i32 1
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %162, align 8
  %164 = load i32, i32* %8, align 4
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i64 %165
  %167 = call i32 @__vb2_plane_dmabuf_put(%struct.vb2_buffer* %160, %struct.TYPE_6__* %166)
  %168 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %169 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %168, i32 0, i32 1
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %169, align 8
  %171 = load i32, i32* %8, align 4
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 5
  store i64 0, i64* %174, align 8
  %175 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %176 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %175, i32 0, i32 1
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %176, align 8
  %178 = load i32, i32* %8, align 4
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 1
  store i64 0, i64* %181, align 8
  %182 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %183 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %182, i32 0, i32 1
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %183, align 8
  %185 = load i32, i32* %8, align 4
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 4
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 0
  store i64 0, i64* %189, align 8
  %190 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %191 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %190, i32 0, i32 1
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %191, align 8
  %193 = load i32, i32* %8, align 4
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 3
  store i64 0, i64* %196, align 8
  %197 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %198 = load i32, i32* @attach_dmabuf, align 4
  %199 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %200 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %199, i32 0, i32 2
  %201 = load i64*, i64** %200, align 8
  %202 = load i32, i32* %8, align 4
  %203 = zext i32 %202 to i64
  %204 = getelementptr inbounds i64, i64* %201, i64 %203
  %205 = load i64, i64* %204, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %159
  br label %213

208:                                              ; preds = %159
  %209 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %210 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = sext i32 %211 to i64
  br label %213

213:                                              ; preds = %208, %207
  %214 = phi i64 [ %205, %207 ], [ %212, %208 ]
  %215 = trunc i64 %214 to i32
  %216 = load %struct.dma_buf*, %struct.dma_buf** %12, align 8
  %217 = load i32, i32* %8, align 4
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %16, i64 %218
  %220 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 16
  %222 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %223 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = call i8* @call_ptr_memop(%struct.vb2_buffer* %197, i32 %198, i32 %215, %struct.dma_buf* %216, i64 %221, i32 %224)
  store i8* %225, i8** %7, align 8
  %226 = load i8*, i8** %7, align 8
  %227 = call i64 @IS_ERR(i8* %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %235

229:                                              ; preds = %213
  %230 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %231 = load i8*, i8** %7, align 8
  %232 = call i32 @PTR_ERR(i8* %231)
  store i32 %232, i32* %9, align 4
  %233 = load %struct.dma_buf*, %struct.dma_buf** %12, align 8
  %234 = call i32 @dma_buf_put(%struct.dma_buf* %233)
  br label %390

235:                                              ; preds = %213
  %236 = load %struct.dma_buf*, %struct.dma_buf** %12, align 8
  %237 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %238 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %237, i32 0, i32 1
  %239 = load %struct.TYPE_6__*, %struct.TYPE_6__** %238, align 8
  %240 = load i32, i32* %8, align 4
  %241 = zext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i32 0, i32 7
  store %struct.dma_buf* %236, %struct.dma_buf** %243, align 8
  %244 = load i8*, i8** %7, align 8
  %245 = bitcast i8* %244 to i32*
  %246 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %247 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %246, i32 0, i32 1
  %248 = load %struct.TYPE_6__*, %struct.TYPE_6__** %247, align 8
  %249 = load i32, i32* %8, align 4
  %250 = zext i32 %249 to i64
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i32 0, i32 6
  store i32* %245, i32** %252, align 8
  br label %253

253:                                              ; preds = %235, %144
  %254 = load i32, i32* %8, align 4
  %255 = add i32 %254, 1
  store i32 %255, i32* %8, align 4
  br label %46

256:                                              ; preds = %46
  store i32 0, i32* %8, align 4
  br label %257

257:                                              ; preds = %299, %256
  %258 = load i32, i32* %8, align 4
  %259 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %260 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = icmp ult i32 %258, %261
  br i1 %262, label %263, label %302

263:                                              ; preds = %257
  %264 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %265 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %264, i32 0, i32 1
  %266 = load %struct.TYPE_6__*, %struct.TYPE_6__** %265, align 8
  %267 = load i32, i32* %8, align 4
  %268 = zext i32 %267 to i64
  %269 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %266, i64 %268
  %270 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 8
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %274

273:                                              ; preds = %263
  br label %299

274:                                              ; preds = %263
  %275 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %276 = load i32, i32* @map_dmabuf, align 4
  %277 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %278 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %277, i32 0, i32 1
  %279 = load %struct.TYPE_6__*, %struct.TYPE_6__** %278, align 8
  %280 = load i32, i32* %8, align 4
  %281 = zext i32 %280 to i64
  %282 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %279, i64 %281
  %283 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %282, i32 0, i32 6
  %284 = load i32*, i32** %283, align 8
  %285 = call i32 @call_memop(%struct.vb2_buffer* %275, i32 %276, i32* %284)
  store i32 %285, i32* %9, align 4
  %286 = load i32, i32* %9, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %291

288:                                              ; preds = %274
  %289 = load i32, i32* %8, align 4
  %290 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %289)
  br label %390

291:                                              ; preds = %274
  %292 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %293 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %292, i32 0, i32 1
  %294 = load %struct.TYPE_6__*, %struct.TYPE_6__** %293, align 8
  %295 = load i32, i32* %8, align 4
  %296 = zext i32 %295 to i64
  %297 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %294, i64 %296
  %298 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %297, i32 0, i32 2
  store i32 1, i32* %298, align 8
  br label %299

299:                                              ; preds = %291, %273
  %300 = load i32, i32* %8, align 4
  %301 = add i32 %300, 1
  store i32 %301, i32* %8, align 4
  br label %257

302:                                              ; preds = %257
  store i32 0, i32* %8, align 4
  br label %303

303:                                              ; preds = %360, %302
  %304 = load i32, i32* %8, align 4
  %305 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %306 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = icmp ult i32 %304, %307
  br i1 %308, label %309, label %363

309:                                              ; preds = %303
  %310 = load i32, i32* %8, align 4
  %311 = zext i32 %310 to i64
  %312 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %16, i64 %311
  %313 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %312, i32 0, i32 3
  %314 = load i64, i64* %313, align 8
  %315 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %316 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %315, i32 0, i32 1
  %317 = load %struct.TYPE_6__*, %struct.TYPE_6__** %316, align 8
  %318 = load i32, i32* %8, align 4
  %319 = zext i32 %318 to i64
  %320 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %317, i64 %319
  %321 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %320, i32 0, i32 5
  store i64 %314, i64* %321, align 8
  %322 = load i32, i32* %8, align 4
  %323 = zext i32 %322 to i64
  %324 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %16, i64 %323
  %325 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %324, i32 0, i32 0
  %326 = load i64, i64* %325, align 16
  %327 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %328 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %327, i32 0, i32 1
  %329 = load %struct.TYPE_6__*, %struct.TYPE_6__** %328, align 8
  %330 = load i32, i32* %8, align 4
  %331 = zext i32 %330 to i64
  %332 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %329, i64 %331
  %333 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %332, i32 0, i32 1
  store i64 %326, i64* %333, align 8
  %334 = load i32, i32* %8, align 4
  %335 = zext i32 %334 to i64
  %336 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %16, i64 %335
  %337 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %336, i32 0, i32 2
  %338 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %337, i32 0, i32 0
  %339 = load i64, i64* %338, align 16
  %340 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %341 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %340, i32 0, i32 1
  %342 = load %struct.TYPE_6__*, %struct.TYPE_6__** %341, align 8
  %343 = load i32, i32* %8, align 4
  %344 = zext i32 %343 to i64
  %345 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %342, i64 %344
  %346 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %345, i32 0, i32 4
  %347 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %346, i32 0, i32 0
  store i64 %339, i64* %347, align 8
  %348 = load i32, i32* %8, align 4
  %349 = zext i32 %348 to i64
  %350 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %16, i64 %349
  %351 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %350, i32 0, i32 1
  %352 = load i64, i64* %351, align 8
  %353 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %354 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %353, i32 0, i32 1
  %355 = load %struct.TYPE_6__*, %struct.TYPE_6__** %354, align 8
  %356 = load i32, i32* %8, align 4
  %357 = zext i32 %356 to i64
  %358 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %355, i64 %357
  %359 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %358, i32 0, i32 3
  store i64 %352, i64* %359, align 8
  br label %360

360:                                              ; preds = %309
  %361 = load i32, i32* %8, align 4
  %362 = add i32 %361, 1
  store i32 %362, i32* %8, align 4
  br label %303

363:                                              ; preds = %303
  %364 = load i32, i32* %10, align 4
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %376

366:                                              ; preds = %363
  %367 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %368 = load i32, i32* @buf_init, align 4
  %369 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %370 = call i32 @call_vb_qop(%struct.vb2_buffer* %367, i32 %368, %struct.vb2_buffer* %369)
  store i32 %370, i32* %9, align 4
  %371 = load i32, i32* %9, align 4
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %375

373:                                              ; preds = %366
  %374 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  br label %390

375:                                              ; preds = %366
  br label %376

376:                                              ; preds = %375, %363
  %377 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %378 = load i32, i32* @buf_prepare, align 4
  %379 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %380 = call i32 @call_vb_qop(%struct.vb2_buffer* %377, i32 %378, %struct.vb2_buffer* %379)
  store i32 %380, i32* %9, align 4
  %381 = load i32, i32* %9, align 4
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %383, label %389

383:                                              ; preds = %376
  %384 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %385 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %386 = load i32, i32* @buf_cleanup, align 4
  %387 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %388 = call i32 @call_void_vb_qop(%struct.vb2_buffer* %385, i32 %386, %struct.vb2_buffer* %387)
  br label %390

389:                                              ; preds = %376
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %394

390:                                              ; preds = %383, %373, %288, %229, %98, %63
  %391 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %392 = call i32 @__vb2_buf_dmabuf_put(%struct.vb2_buffer* %391)
  %393 = load i32, i32* %9, align 4
  store i32 %393, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %394

394:                                              ; preds = %390, %389, %43
  %395 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %395)
  %396 = load i32, i32* %2, align 4
  ret i32 %396
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.vb2_plane*, i32, i32) #2

declare dso_local i32 @call_bufop(%struct.vb2_queue*, i32, %struct.vb2_buffer*, %struct.vb2_plane*) #2

declare dso_local %struct.dma_buf* @dma_buf_get(i64) #2

declare dso_local i64 @IS_ERR_OR_NULL(%struct.dma_buf*) #2

declare dso_local i32 @dprintk(i32, i8*, ...) #2

declare dso_local i32 @dma_buf_put(%struct.dma_buf*) #2

declare dso_local i32 @call_void_vb_qop(%struct.vb2_buffer*, i32, %struct.vb2_buffer*) #2

declare dso_local i32 @__vb2_plane_dmabuf_put(%struct.vb2_buffer*, %struct.TYPE_6__*) #2

declare dso_local i8* @call_ptr_memop(%struct.vb2_buffer*, i32, i32, %struct.dma_buf*, i64, i32) #2

declare dso_local i64 @IS_ERR(i8*) #2

declare dso_local i32 @PTR_ERR(i8*) #2

declare dso_local i32 @call_memop(%struct.vb2_buffer*, i32, i32*) #2

declare dso_local i32 @call_vb_qop(%struct.vb2_buffer*, i32, %struct.vb2_buffer*) #2

declare dso_local i32 @__vb2_buf_dmabuf_put(%struct.vb2_buffer*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

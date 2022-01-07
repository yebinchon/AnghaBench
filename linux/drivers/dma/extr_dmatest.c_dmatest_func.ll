; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_dmatest.c_dmatest_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_dmatest.c_dmatest_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.dmatest_thread = type { i32, i64, i32, i32, %struct.dmatest_data, %struct.dmatest_data, %struct.dma_chan*, %struct.dmatest_info*, %struct.dmatest_done }
%struct.dmatest_data = type { i32, i32, i32** }
%struct.dma_chan = type { %struct.dma_device* }
%struct.dma_device = type { i32, i32, i32, i32, %struct.dma_async_tx_descriptor* (%struct.dma_chan*, i32*, i32*, i32, i32*, i32, i32)*, %struct.dma_async_tx_descriptor* (%struct.dma_chan*, i32, i32*, i32, i32, i32)*, %struct.dma_async_tx_descriptor* (%struct.dma_chan*, i32, i32, i32, i32)*, %struct.dma_async_tx_descriptor* (%struct.dma_chan*, i32, i32, i32, i32)*, i32, i32 }
%struct.dma_async_tx_descriptor = type { i32 (%struct.dma_async_tx_descriptor*)*, %struct.dmatest_done*, i32 }
%struct.dmatest_info = type { %struct.dmatest_params }
%struct.dmatest_params = type { i64, i32, i32, i32, i32, i32, i64, i32, i64, i64 }
%struct.dmatest_done = type { i32 }
%struct.dmaengine_unmap_data = type { i32, i32*, i32, i32 }
%struct.page = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@DMA_MEMCPY = common dso_local global i64 0, align 8
@DMA_MEMSET = common dso_local global i64 0, align 8
@DMA_XOR = common dso_local global i64 0, align 8
@DMA_PQ = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"too many buffers (%d of 255 supported)\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"%u-byte buffer too small for %d-byte alignment\0A\00", align 1
@current = common dso_local global %struct.TYPE_3__* null, align 8
@DMA_CTRL_ACK = common dso_local global i32 0, align 4
@DMA_PREP_INTERRUPT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [57 x i8] c"%u-byte transfer size must be lower than %u-buffer size\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"unmap data NULL\00", align 1
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"src mapping error\00", align 1
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"dst mapping error\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"prep error\00", align 1
@dmatest_callback = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"submit error\00", align 1
@DMA_COMPLETE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"test timed out\00", align 1
@DMA_ERROR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [24 x i8] c"completion error status\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"completion busy status\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"test passed\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"%s: verifying source buffer...\0A\00", align 1
@PATTERN_SRC = common dso_local global i32 0, align 4
@PATTERN_COPY = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [30 x i8] c"%s: verifying dest buffer...\0A\00", align 1
@PATTERN_DST = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [11 x i8] c"data error\00", align 1
@.str.15 = private unnamed_addr constant [67 x i8] c"%s: summary %u tests, %u failures %llu.%02llu iops %llu KB/s (%d)\0A\00", align 1
@thread_wait = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @dmatest_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmatest_func(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.dmatest_thread*, align 8
  %4 = alloca %struct.dmatest_done*, align 8
  %5 = alloca %struct.dmatest_info*, align 8
  %6 = alloca %struct.dmatest_params*, align 8
  %7 = alloca %struct.dma_chan*, align 8
  %8 = alloca %struct.dma_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.dmatest_data*, align 8
  %19 = alloca %struct.dmatest_data*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca %struct.dma_async_tx_descriptor*, align 8
  %34 = alloca %struct.dmaengine_unmap_data*, align 8
  %35 = alloca i32*, align 8
  %36 = alloca i32, align 4
  %37 = alloca i8*, align 8
  %38 = alloca %struct.page*, align 8
  %39 = alloca i64, align 8
  %40 = alloca i8*, align 8
  %41 = alloca %struct.page*, align 8
  %42 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %43 = load i8*, i8** %2, align 8
  %44 = bitcast i8* %43 to %struct.dmatest_thread*
  store %struct.dmatest_thread* %44, %struct.dmatest_thread** %3, align 8
  %45 = load %struct.dmatest_thread*, %struct.dmatest_thread** %3, align 8
  %46 = getelementptr inbounds %struct.dmatest_thread, %struct.dmatest_thread* %45, i32 0, i32 8
  store %struct.dmatest_done* %46, %struct.dmatest_done** %4, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32* null, i32** %15, align 8
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  store i64 0, i64* %27, align 8
  store i64 0, i64* %28, align 8
  store i32 0, i32* %29, align 4
  store i32 0, i32* %30, align 4
  %47 = call i32 (...) @set_freezable()
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %16, align 4
  %50 = call i32 (...) @smp_rmb()
  %51 = load %struct.dmatest_thread*, %struct.dmatest_thread** %3, align 8
  %52 = getelementptr inbounds %struct.dmatest_thread, %struct.dmatest_thread* %51, i32 0, i32 0
  store i32 0, i32* %52, align 8
  %53 = load %struct.dmatest_thread*, %struct.dmatest_thread** %3, align 8
  %54 = getelementptr inbounds %struct.dmatest_thread, %struct.dmatest_thread* %53, i32 0, i32 7
  %55 = load %struct.dmatest_info*, %struct.dmatest_info** %54, align 8
  store %struct.dmatest_info* %55, %struct.dmatest_info** %5, align 8
  %56 = load %struct.dmatest_info*, %struct.dmatest_info** %5, align 8
  %57 = getelementptr inbounds %struct.dmatest_info, %struct.dmatest_info* %56, i32 0, i32 0
  store %struct.dmatest_params* %57, %struct.dmatest_params** %6, align 8
  %58 = load %struct.dmatest_thread*, %struct.dmatest_thread** %3, align 8
  %59 = getelementptr inbounds %struct.dmatest_thread, %struct.dmatest_thread* %58, i32 0, i32 6
  %60 = load %struct.dma_chan*, %struct.dma_chan** %59, align 8
  store %struct.dma_chan* %60, %struct.dma_chan** %7, align 8
  %61 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %62 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %61, i32 0, i32 0
  %63 = load %struct.dma_device*, %struct.dma_device** %62, align 8
  store %struct.dma_device* %63, %struct.dma_device** %8, align 8
  %64 = load %struct.dmatest_thread*, %struct.dmatest_thread** %3, align 8
  %65 = getelementptr inbounds %struct.dmatest_thread, %struct.dmatest_thread* %64, i32 0, i32 5
  store %struct.dmatest_data* %65, %struct.dmatest_data** %18, align 8
  %66 = load %struct.dmatest_thread*, %struct.dmatest_thread** %3, align 8
  %67 = getelementptr inbounds %struct.dmatest_thread, %struct.dmatest_thread* %66, i32 0, i32 4
  store %struct.dmatest_data* %67, %struct.dmatest_data** %19, align 8
  %68 = load %struct.dmatest_thread*, %struct.dmatest_thread** %3, align 8
  %69 = getelementptr inbounds %struct.dmatest_thread, %struct.dmatest_thread* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @DMA_MEMCPY, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %94

73:                                               ; preds = %1
  %74 = load %struct.dmatest_params*, %struct.dmatest_params** %6, align 8
  %75 = getelementptr inbounds %struct.dmatest_params, %struct.dmatest_params* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp slt i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load %struct.dma_device*, %struct.dma_device** %8, align 8
  %80 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = zext i32 %81 to i64
  br label %87

83:                                               ; preds = %73
  %84 = load %struct.dmatest_params*, %struct.dmatest_params** %6, align 8
  %85 = getelementptr inbounds %struct.dmatest_params, %struct.dmatest_params* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  br label %87

87:                                               ; preds = %83, %78
  %88 = phi i64 [ %82, %78 ], [ %86, %83 ]
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %29, align 4
  %90 = load %struct.dmatest_data*, %struct.dmatest_data** %19, align 8
  %91 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %90, i32 0, i32 0
  store i32 1, i32* %91, align 8
  %92 = load %struct.dmatest_data*, %struct.dmatest_data** %18, align 8
  %93 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %92, i32 0, i32 0
  store i32 1, i32* %93, align 8
  br label %221

94:                                               ; preds = %1
  %95 = load %struct.dmatest_thread*, %struct.dmatest_thread** %3, align 8
  %96 = getelementptr inbounds %struct.dmatest_thread, %struct.dmatest_thread* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @DMA_MEMSET, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %121

100:                                              ; preds = %94
  %101 = load %struct.dmatest_params*, %struct.dmatest_params** %6, align 8
  %102 = getelementptr inbounds %struct.dmatest_params, %struct.dmatest_params* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp slt i64 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %100
  %106 = load %struct.dma_device*, %struct.dma_device** %8, align 8
  %107 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = zext i32 %108 to i64
  br label %114

110:                                              ; preds = %100
  %111 = load %struct.dmatest_params*, %struct.dmatest_params** %6, align 8
  %112 = getelementptr inbounds %struct.dmatest_params, %struct.dmatest_params* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  br label %114

114:                                              ; preds = %110, %105
  %115 = phi i64 [ %109, %105 ], [ %113, %110 ]
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %29, align 4
  %117 = load %struct.dmatest_data*, %struct.dmatest_data** %19, align 8
  %118 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %117, i32 0, i32 0
  store i32 1, i32* %118, align 8
  %119 = load %struct.dmatest_data*, %struct.dmatest_data** %18, align 8
  %120 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %119, i32 0, i32 0
  store i32 1, i32* %120, align 8
  store i32 1, i32* %30, align 4
  br label %220

121:                                              ; preds = %94
  %122 = load %struct.dmatest_thread*, %struct.dmatest_thread** %3, align 8
  %123 = getelementptr inbounds %struct.dmatest_thread, %struct.dmatest_thread* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @DMA_XOR, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %157

127:                                              ; preds = %121
  %128 = load %struct.dmatest_params*, %struct.dmatest_params** %6, align 8
  %129 = getelementptr inbounds %struct.dmatest_params, %struct.dmatest_params* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = or i32 %130, 1
  %132 = load %struct.dma_device*, %struct.dma_device** %8, align 8
  %133 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %132, i32 0, i32 9
  %134 = load i32, i32* %133, align 4
  %135 = call i8* @min_odd(i32 %131, i32 %134)
  %136 = ptrtoint i8* %135 to i32
  %137 = load %struct.dmatest_data*, %struct.dmatest_data** %18, align 8
  %138 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 8
  %139 = load %struct.dmatest_data*, %struct.dmatest_data** %19, align 8
  %140 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %139, i32 0, i32 0
  store i32 1, i32* %140, align 8
  %141 = load %struct.dmatest_params*, %struct.dmatest_params** %6, align 8
  %142 = getelementptr inbounds %struct.dmatest_params, %struct.dmatest_params* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp slt i64 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %127
  %146 = load %struct.dma_device*, %struct.dma_device** %8, align 8
  %147 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = zext i32 %148 to i64
  br label %154

150:                                              ; preds = %127
  %151 = load %struct.dmatest_params*, %struct.dmatest_params** %6, align 8
  %152 = getelementptr inbounds %struct.dmatest_params, %struct.dmatest_params* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  br label %154

154:                                              ; preds = %150, %145
  %155 = phi i64 [ %149, %145 ], [ %153, %150 ]
  %156 = trunc i64 %155 to i32
  store i32 %156, i32* %29, align 4
  br label %219

157:                                              ; preds = %121
  %158 = load %struct.dmatest_thread*, %struct.dmatest_thread** %3, align 8
  %159 = getelementptr inbounds %struct.dmatest_thread, %struct.dmatest_thread* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @DMA_PQ, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %217

163:                                              ; preds = %157
  %164 = load %struct.dmatest_params*, %struct.dmatest_params** %6, align 8
  %165 = getelementptr inbounds %struct.dmatest_params, %struct.dmatest_params* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = or i32 %166, 1
  %168 = load %struct.dma_device*, %struct.dma_device** %8, align 8
  %169 = call i32 @dma_maxpq(%struct.dma_device* %168, i32 0)
  %170 = call i8* @min_odd(i32 %167, i32 %169)
  %171 = ptrtoint i8* %170 to i32
  %172 = load %struct.dmatest_data*, %struct.dmatest_data** %18, align 8
  %173 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %172, i32 0, i32 0
  store i32 %171, i32* %173, align 8
  %174 = load %struct.dmatest_data*, %struct.dmatest_data** %19, align 8
  %175 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %174, i32 0, i32 0
  store i32 2, i32* %175, align 8
  %176 = load %struct.dmatest_params*, %struct.dmatest_params** %6, align 8
  %177 = getelementptr inbounds %struct.dmatest_params, %struct.dmatest_params* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = icmp slt i64 %178, 0
  br i1 %179, label %180, label %185

180:                                              ; preds = %163
  %181 = load %struct.dma_device*, %struct.dma_device** %8, align 8
  %182 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = zext i32 %183 to i64
  br label %189

185:                                              ; preds = %163
  %186 = load %struct.dmatest_params*, %struct.dmatest_params** %6, align 8
  %187 = getelementptr inbounds %struct.dmatest_params, %struct.dmatest_params* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  br label %189

189:                                              ; preds = %185, %180
  %190 = phi i64 [ %184, %180 ], [ %188, %185 ]
  %191 = trunc i64 %190 to i32
  store i32 %191, i32* %29, align 4
  %192 = load %struct.dmatest_params*, %struct.dmatest_params** %6, align 8
  %193 = getelementptr inbounds %struct.dmatest_params, %struct.dmatest_params* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 4
  %195 = add nsw i32 %194, 1
  %196 = load i32, i32* @GFP_KERNEL, align 4
  %197 = call i32* @kmalloc(i32 %195, i32 %196)
  store i32* %197, i32** %15, align 8
  %198 = load i32*, i32** %15, align 8
  %199 = icmp ne i32* %198, null
  br i1 %199, label %201, label %200

200:                                              ; preds = %189
  br label %1080

201:                                              ; preds = %189
  store i32 0, i32* %20, align 4
  br label %202

202:                                              ; preds = %213, %201
  %203 = load i32, i32* %20, align 4
  %204 = load %struct.dmatest_data*, %struct.dmatest_data** %18, align 8
  %205 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = icmp slt i32 %203, %206
  br i1 %207, label %208, label %216

208:                                              ; preds = %202
  %209 = load i32*, i32** %15, align 8
  %210 = load i32, i32* %20, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  store i32 1, i32* %212, align 4
  br label %213

213:                                              ; preds = %208
  %214 = load i32, i32* %20, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %20, align 4
  br label %202

216:                                              ; preds = %202
  br label %218

217:                                              ; preds = %157
  br label %1080

218:                                              ; preds = %216
  br label %219

219:                                              ; preds = %218, %154
  br label %220

220:                                              ; preds = %219, %114
  br label %221

221:                                              ; preds = %220, %87
  %222 = load %struct.dmatest_data*, %struct.dmatest_data** %18, align 8
  %223 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.dmatest_data*, %struct.dmatest_data** %19, align 8
  %226 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = add nsw i32 %224, %227
  %229 = icmp sge i32 %228, 255
  br i1 %229, label %230, label %239

230:                                              ; preds = %221
  %231 = load %struct.dmatest_data*, %struct.dmatest_data** %18, align 8
  %232 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = load %struct.dmatest_data*, %struct.dmatest_data** %19, align 8
  %235 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = add nsw i32 %233, %236
  %238 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %237)
  br label %1077

239:                                              ; preds = %221
  %240 = load %struct.dmatest_params*, %struct.dmatest_params** %6, align 8
  %241 = getelementptr inbounds %struct.dmatest_params, %struct.dmatest_params* %240, i32 0, i32 3
  %242 = load i32, i32* %241, align 8
  store i32 %242, i32* %17, align 4
  %243 = load i32, i32* %29, align 4
  %244 = shl i32 1, %243
  %245 = load i32, i32* %17, align 4
  %246 = icmp ugt i32 %244, %245
  br i1 %246, label %247, label %252

247:                                              ; preds = %239
  %248 = load i32, i32* %17, align 4
  %249 = load i32, i32* %29, align 4
  %250 = shl i32 1, %249
  %251 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %248, i32 %250)
  br label %1077

252:                                              ; preds = %239
  %253 = load %struct.dmatest_data*, %struct.dmatest_data** %18, align 8
  %254 = load i32, i32* %17, align 4
  %255 = load i32, i32* %29, align 4
  %256 = call i64 @dmatest_alloc_test_data(%struct.dmatest_data* %253, i32 %254, i32 %255)
  %257 = icmp slt i64 %256, 0
  br i1 %257, label %258, label %259

258:                                              ; preds = %252
  br label %1077

259:                                              ; preds = %252
  %260 = load %struct.dmatest_data*, %struct.dmatest_data** %19, align 8
  %261 = load i32, i32* %17, align 4
  %262 = load i32, i32* %29, align 4
  %263 = call i64 @dmatest_alloc_test_data(%struct.dmatest_data* %260, i32 %261, i32 %262)
  %264 = icmp slt i64 %263, 0
  br i1 %264, label %265, label %266

265:                                              ; preds = %259
  br label %1074

266:                                              ; preds = %259
  %267 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %268 = call i32 @set_user_nice(%struct.TYPE_3__* %267, i32 10)
  %269 = load %struct.dmatest_data*, %struct.dmatest_data** %18, align 8
  %270 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = load i32, i32* @GFP_KERNEL, align 4
  %273 = call i32* @kcalloc(i32 %271, i32 4, i32 %272)
  store i32* %273, i32** %31, align 8
  %274 = load i32*, i32** %31, align 8
  %275 = icmp ne i32* %274, null
  br i1 %275, label %277, label %276

276:                                              ; preds = %266
  br label %1071

277:                                              ; preds = %266
  %278 = load %struct.dmatest_data*, %struct.dmatest_data** %19, align 8
  %279 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = load i32, i32* @GFP_KERNEL, align 4
  %282 = call i32* @kcalloc(i32 %280, i32 4, i32 %281)
  store i32* %282, i32** %32, align 8
  %283 = load i32*, i32** %32, align 8
  %284 = icmp ne i32* %283, null
  br i1 %284, label %286, label %285

285:                                              ; preds = %277
  br label %1068

286:                                              ; preds = %277
  %287 = load %struct.dmatest_params*, %struct.dmatest_params** %6, align 8
  %288 = getelementptr inbounds %struct.dmatest_params, %struct.dmatest_params* %287, i32 0, i32 8
  %289 = load i64, i64* %288, align 8
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %293

291:                                              ; preds = %286
  %292 = load i32, i32* @DMA_CTRL_ACK, align 4
  store i32 %292, i32* %14, align 4
  br label %297

293:                                              ; preds = %286
  %294 = load i32, i32* @DMA_CTRL_ACK, align 4
  %295 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %296 = or i32 %294, %295
  store i32 %296, i32* %14, align 4
  br label %297

297:                                              ; preds = %293, %291
  %298 = call i32 (...) @ktime_get()
  store i32 %298, i32* %21, align 4
  br label %299

299:                                              ; preds = %1049, %1048, %897, %468, %297
  %300 = call i32 (...) @kthread_should_stop()
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %316, label %302

302:                                              ; preds = %299
  %303 = load %struct.dmatest_params*, %struct.dmatest_params** %6, align 8
  %304 = getelementptr inbounds %struct.dmatest_params, %struct.dmatest_params* %303, i32 0, i32 4
  %305 = load i32, i32* %304, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %313

307:                                              ; preds = %302
  %308 = load i32, i32* %11, align 4
  %309 = load %struct.dmatest_params*, %struct.dmatest_params** %6, align 8
  %310 = getelementptr inbounds %struct.dmatest_params, %struct.dmatest_params* %309, i32 0, i32 4
  %311 = load i32, i32* %310, align 4
  %312 = icmp uge i32 %308, %311
  br label %313

313:                                              ; preds = %307, %302
  %314 = phi i1 [ false, %302 ], [ %312, %307 ]
  %315 = xor i1 %314, true
  br label %316

316:                                              ; preds = %313, %299
  %317 = phi i1 [ false, %299 ], [ %315, %313 ]
  br i1 %317, label %318, label %1054

318:                                              ; preds = %316
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %33, align 8
  %319 = load i32, i32* %11, align 4
  %320 = add i32 %319, 1
  store i32 %320, i32* %11, align 4
  %321 = load %struct.dmatest_params*, %struct.dmatest_params** %6, align 8
  %322 = getelementptr inbounds %struct.dmatest_params, %struct.dmatest_params* %321, i32 0, i32 5
  %323 = load i32, i32* %322, align 8
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %341

325:                                              ; preds = %318
  %326 = load %struct.dmatest_params*, %struct.dmatest_params** %6, align 8
  %327 = getelementptr inbounds %struct.dmatest_params, %struct.dmatest_params* %326, i32 0, i32 5
  %328 = load i32, i32* %327, align 8
  %329 = load i32, i32* %17, align 4
  %330 = icmp uge i32 %328, %329
  br i1 %330, label %331, label %337

331:                                              ; preds = %325
  %332 = load %struct.dmatest_params*, %struct.dmatest_params** %6, align 8
  %333 = getelementptr inbounds %struct.dmatest_params, %struct.dmatest_params* %332, i32 0, i32 5
  %334 = load i32, i32* %333, align 8
  %335 = load i32, i32* %17, align 4
  %336 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %334, i32 %335)
  br label %1054

337:                                              ; preds = %325
  %338 = load %struct.dmatest_params*, %struct.dmatest_params** %6, align 8
  %339 = getelementptr inbounds %struct.dmatest_params, %struct.dmatest_params* %338, i32 0, i32 5
  %340 = load i32, i32* %339, align 8
  store i32 %340, i32* %36, align 4
  br label %354

341:                                              ; preds = %318
  %342 = load %struct.dmatest_params*, %struct.dmatest_params** %6, align 8
  %343 = getelementptr inbounds %struct.dmatest_params, %struct.dmatest_params* %342, i32 0, i32 9
  %344 = load i64, i64* %343, align 8
  %345 = icmp ne i64 %344, 0
  br i1 %345, label %346, label %348

346:                                              ; preds = %341
  %347 = load i32, i32* %17, align 4
  store i32 %347, i32* %36, align 4
  br label %353

348:                                              ; preds = %341
  %349 = call i32 (...) @dmatest_random()
  %350 = load i32, i32* %17, align 4
  %351 = urem i32 %349, %350
  %352 = add i32 %351, 1
  store i32 %352, i32* %36, align 4
  br label %353

353:                                              ; preds = %348, %346
  br label %354

354:                                              ; preds = %353, %337
  %355 = load %struct.dmatest_params*, %struct.dmatest_params** %6, align 8
  %356 = getelementptr inbounds %struct.dmatest_params, %struct.dmatest_params* %355, i32 0, i32 5
  %357 = load i32, i32* %356, align 8
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %371, label %359

359:                                              ; preds = %354
  %360 = load i32, i32* %36, align 4
  %361 = load i32, i32* %29, align 4
  %362 = lshr i32 %360, %361
  %363 = load i32, i32* %29, align 4
  %364 = shl i32 %362, %363
  store i32 %364, i32* %36, align 4
  %365 = load i32, i32* %36, align 4
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %370, label %367

367:                                              ; preds = %359
  %368 = load i32, i32* %29, align 4
  %369 = shl i32 1, %368
  store i32 %369, i32* %36, align 4
  br label %370

370:                                              ; preds = %367, %359
  br label %371

371:                                              ; preds = %370, %354
  %372 = load i32, i32* %36, align 4
  %373 = zext i32 %372 to i64
  %374 = load i64, i64* %27, align 8
  %375 = add i64 %374, %373
  store i64 %375, i64* %27, align 8
  %376 = load %struct.dmatest_params*, %struct.dmatest_params** %6, align 8
  %377 = getelementptr inbounds %struct.dmatest_params, %struct.dmatest_params* %376, i32 0, i32 9
  %378 = load i64, i64* %377, align 8
  %379 = icmp ne i64 %378, 0
  br i1 %379, label %380, label %385

380:                                              ; preds = %371
  %381 = load %struct.dmatest_data*, %struct.dmatest_data** %18, align 8
  %382 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %381, i32 0, i32 1
  store i32 0, i32* %382, align 4
  %383 = load %struct.dmatest_data*, %struct.dmatest_data** %19, align 8
  %384 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %383, i32 0, i32 1
  store i32 0, i32* %384, align 4
  br label %420

385:                                              ; preds = %371
  %386 = call i32 (...) @dmatest_random()
  %387 = load i32, i32* %17, align 4
  %388 = load i32, i32* %36, align 4
  %389 = sub i32 %387, %388
  %390 = add i32 %389, 1
  %391 = urem i32 %386, %390
  %392 = load %struct.dmatest_data*, %struct.dmatest_data** %18, align 8
  %393 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %392, i32 0, i32 1
  store i32 %391, i32* %393, align 4
  %394 = call i32 (...) @dmatest_random()
  %395 = load i32, i32* %17, align 4
  %396 = load i32, i32* %36, align 4
  %397 = sub i32 %395, %396
  %398 = add i32 %397, 1
  %399 = urem i32 %394, %398
  %400 = load %struct.dmatest_data*, %struct.dmatest_data** %19, align 8
  %401 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %400, i32 0, i32 1
  store i32 %399, i32* %401, align 4
  %402 = load %struct.dmatest_data*, %struct.dmatest_data** %18, align 8
  %403 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %402, i32 0, i32 1
  %404 = load i32, i32* %403, align 4
  %405 = load i32, i32* %29, align 4
  %406 = lshr i32 %404, %405
  %407 = load i32, i32* %29, align 4
  %408 = shl i32 %406, %407
  %409 = load %struct.dmatest_data*, %struct.dmatest_data** %18, align 8
  %410 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %409, i32 0, i32 1
  store i32 %408, i32* %410, align 4
  %411 = load %struct.dmatest_data*, %struct.dmatest_data** %19, align 8
  %412 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %411, i32 0, i32 1
  %413 = load i32, i32* %412, align 4
  %414 = load i32, i32* %29, align 4
  %415 = lshr i32 %413, %414
  %416 = load i32, i32* %29, align 4
  %417 = shl i32 %415, %416
  %418 = load %struct.dmatest_data*, %struct.dmatest_data** %19, align 8
  %419 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %418, i32 0, i32 1
  store i32 %417, i32* %419, align 4
  br label %420

420:                                              ; preds = %385, %380
  %421 = load %struct.dmatest_params*, %struct.dmatest_params** %6, align 8
  %422 = getelementptr inbounds %struct.dmatest_params, %struct.dmatest_params* %421, i32 0, i32 6
  %423 = load i64, i64* %422, align 8
  %424 = icmp ne i64 %423, 0
  br i1 %424, label %453, label %425

425:                                              ; preds = %420
  %426 = call i32 (...) @ktime_get()
  store i32 %426, i32* %22, align 4
  %427 = load %struct.dmatest_data*, %struct.dmatest_data** %18, align 8
  %428 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %427, i32 0, i32 2
  %429 = load i32**, i32*** %428, align 8
  %430 = load %struct.dmatest_data*, %struct.dmatest_data** %18, align 8
  %431 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %430, i32 0, i32 1
  %432 = load i32, i32* %431, align 4
  %433 = load i32, i32* %36, align 4
  %434 = load i32, i32* %17, align 4
  %435 = load i32, i32* %30, align 4
  %436 = call i32 @dmatest_init_srcs(i32** %429, i32 %432, i32 %433, i32 %434, i32 %435)
  %437 = load %struct.dmatest_data*, %struct.dmatest_data** %19, align 8
  %438 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %437, i32 0, i32 2
  %439 = load i32**, i32*** %438, align 8
  %440 = load %struct.dmatest_data*, %struct.dmatest_data** %19, align 8
  %441 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %440, i32 0, i32 1
  %442 = load i32, i32* %441, align 4
  %443 = load i32, i32* %36, align 4
  %444 = load i32, i32* %17, align 4
  %445 = load i32, i32* %30, align 4
  %446 = call i32 @dmatest_init_dsts(i32** %439, i32 %442, i32 %443, i32 %444, i32 %445)
  %447 = call i32 (...) @ktime_get()
  %448 = load i32, i32* %22, align 4
  %449 = call i32 @ktime_sub(i32 %447, i32 %448)
  store i32 %449, i32* %23, align 4
  %450 = load i32, i32* %24, align 4
  %451 = load i32, i32* %23, align 4
  %452 = call i32 @ktime_add(i32 %450, i32 %451)
  store i32 %452, i32* %24, align 4
  br label %453

453:                                              ; preds = %425, %420
  %454 = load %struct.dma_device*, %struct.dma_device** %8, align 8
  %455 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %454, i32 0, i32 8
  %456 = load i32, i32* %455, align 8
  %457 = load %struct.dmatest_data*, %struct.dmatest_data** %18, align 8
  %458 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %457, i32 0, i32 0
  %459 = load i32, i32* %458, align 8
  %460 = load %struct.dmatest_data*, %struct.dmatest_data** %19, align 8
  %461 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %460, i32 0, i32 0
  %462 = load i32, i32* %461, align 8
  %463 = add nsw i32 %459, %462
  %464 = load i32, i32* @GFP_KERNEL, align 4
  %465 = call %struct.dmaengine_unmap_data* @dmaengine_get_unmap_data(i32 %456, i32 %463, i32 %464)
  store %struct.dmaengine_unmap_data* %465, %struct.dmaengine_unmap_data** %34, align 8
  %466 = load %struct.dmaengine_unmap_data*, %struct.dmaengine_unmap_data** %34, align 8
  %467 = icmp ne %struct.dmaengine_unmap_data* %466, null
  br i1 %467, label %481, label %468

468:                                              ; preds = %453
  %469 = load i32, i32* %10, align 4
  %470 = add i32 %469, 1
  store i32 %470, i32* %10, align 4
  %471 = load i32, i32* %11, align 4
  %472 = load %struct.dmatest_data*, %struct.dmatest_data** %18, align 8
  %473 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %472, i32 0, i32 1
  %474 = load i32, i32* %473, align 4
  %475 = load %struct.dmatest_data*, %struct.dmatest_data** %19, align 8
  %476 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %475, i32 0, i32 1
  %477 = load i32, i32* %476, align 4
  %478 = load i32, i32* %36, align 4
  %479 = load i32, i32* %16, align 4
  %480 = call i32 @result(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %471, i32 %474, i32 %477, i32 %478, i32 %479)
  br label %299

481:                                              ; preds = %453
  %482 = load i32, i32* %17, align 4
  %483 = load %struct.dmaengine_unmap_data*, %struct.dmaengine_unmap_data** %34, align 8
  %484 = getelementptr inbounds %struct.dmaengine_unmap_data, %struct.dmaengine_unmap_data* %483, i32 0, i32 0
  store i32 %482, i32* %484, align 8
  store i32 0, i32* %20, align 4
  br label %485

485:                                              ; preds = %565, %481
  %486 = load i32, i32* %20, align 4
  %487 = load %struct.dmatest_data*, %struct.dmatest_data** %18, align 8
  %488 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %487, i32 0, i32 0
  %489 = load i32, i32* %488, align 8
  %490 = icmp slt i32 %486, %489
  br i1 %490, label %491, label %568

491:                                              ; preds = %485
  %492 = load %struct.dmatest_data*, %struct.dmatest_data** %18, align 8
  %493 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %492, i32 0, i32 2
  %494 = load i32**, i32*** %493, align 8
  %495 = load i32, i32* %20, align 4
  %496 = sext i32 %495 to i64
  %497 = getelementptr inbounds i32*, i32** %494, i64 %496
  %498 = load i32*, i32** %497, align 8
  %499 = bitcast i32* %498 to i8*
  store i8* %499, i8** %37, align 8
  %500 = load i8*, i8** %37, align 8
  %501 = call %struct.page* @virt_to_page(i8* %500)
  store %struct.page* %501, %struct.page** %38, align 8
  %502 = load i8*, i8** %37, align 8
  %503 = call i64 @offset_in_page(i8* %502)
  store i64 %503, i64* %39, align 8
  %504 = load %struct.dma_device*, %struct.dma_device** %8, align 8
  %505 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %504, i32 0, i32 8
  %506 = load i32, i32* %505, align 8
  %507 = load %struct.page*, %struct.page** %38, align 8
  %508 = load i64, i64* %39, align 8
  %509 = load %struct.dmaengine_unmap_data*, %struct.dmaengine_unmap_data** %34, align 8
  %510 = getelementptr inbounds %struct.dmaengine_unmap_data, %struct.dmaengine_unmap_data* %509, i32 0, i32 0
  %511 = load i32, i32* %510, align 8
  %512 = load i32, i32* @DMA_TO_DEVICE, align 4
  %513 = call i8* @dma_map_page(i32 %506, %struct.page* %507, i64 %508, i32 %511, i32 %512)
  %514 = ptrtoint i8* %513 to i32
  %515 = load %struct.dmaengine_unmap_data*, %struct.dmaengine_unmap_data** %34, align 8
  %516 = getelementptr inbounds %struct.dmaengine_unmap_data, %struct.dmaengine_unmap_data* %515, i32 0, i32 1
  %517 = load i32*, i32** %516, align 8
  %518 = load i32, i32* %20, align 4
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds i32, i32* %517, i64 %519
  store i32 %514, i32* %520, align 4
  %521 = load %struct.dmaengine_unmap_data*, %struct.dmaengine_unmap_data** %34, align 8
  %522 = getelementptr inbounds %struct.dmaengine_unmap_data, %struct.dmaengine_unmap_data* %521, i32 0, i32 1
  %523 = load i32*, i32** %522, align 8
  %524 = load i32, i32* %20, align 4
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds i32, i32* %523, i64 %525
  %527 = load i32, i32* %526, align 4
  %528 = load %struct.dmatest_data*, %struct.dmatest_data** %18, align 8
  %529 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %528, i32 0, i32 1
  %530 = load i32, i32* %529, align 4
  %531 = add i32 %527, %530
  %532 = load i32*, i32** %31, align 8
  %533 = load i32, i32* %20, align 4
  %534 = sext i32 %533 to i64
  %535 = getelementptr inbounds i32, i32* %532, i64 %534
  store i32 %531, i32* %535, align 4
  %536 = load %struct.dma_device*, %struct.dma_device** %8, align 8
  %537 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %536, i32 0, i32 8
  %538 = load i32, i32* %537, align 8
  %539 = load %struct.dmaengine_unmap_data*, %struct.dmaengine_unmap_data** %34, align 8
  %540 = getelementptr inbounds %struct.dmaengine_unmap_data, %struct.dmaengine_unmap_data* %539, i32 0, i32 1
  %541 = load i32*, i32** %540, align 8
  %542 = load i32, i32* %20, align 4
  %543 = sext i32 %542 to i64
  %544 = getelementptr inbounds i32, i32* %541, i64 %543
  %545 = load i32, i32* %544, align 4
  %546 = call i32 @dma_mapping_error(i32 %538, i32 %545)
  store i32 %546, i32* %16, align 4
  %547 = load i32, i32* %16, align 4
  %548 = icmp ne i32 %547, 0
  br i1 %548, label %549, label %560

549:                                              ; preds = %491
  %550 = load i32, i32* %11, align 4
  %551 = load %struct.dmatest_data*, %struct.dmatest_data** %18, align 8
  %552 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %551, i32 0, i32 1
  %553 = load i32, i32* %552, align 4
  %554 = load %struct.dmatest_data*, %struct.dmatest_data** %19, align 8
  %555 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %554, i32 0, i32 1
  %556 = load i32, i32* %555, align 4
  %557 = load i32, i32* %36, align 4
  %558 = load i32, i32* %16, align 4
  %559 = call i32 @result(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %550, i32 %553, i32 %556, i32 %557, i32 %558)
  br label %1049

560:                                              ; preds = %491
  %561 = load %struct.dmaengine_unmap_data*, %struct.dmaengine_unmap_data** %34, align 8
  %562 = getelementptr inbounds %struct.dmaengine_unmap_data, %struct.dmaengine_unmap_data* %561, i32 0, i32 3
  %563 = load i32, i32* %562, align 4
  %564 = add nsw i32 %563, 1
  store i32 %564, i32* %562, align 4
  br label %565

565:                                              ; preds = %560
  %566 = load i32, i32* %20, align 4
  %567 = add nsw i32 %566, 1
  store i32 %567, i32* %20, align 4
  br label %485

568:                                              ; preds = %485
  %569 = load %struct.dmaengine_unmap_data*, %struct.dmaengine_unmap_data** %34, align 8
  %570 = getelementptr inbounds %struct.dmaengine_unmap_data, %struct.dmaengine_unmap_data* %569, i32 0, i32 1
  %571 = load i32*, i32** %570, align 8
  %572 = load %struct.dmatest_data*, %struct.dmatest_data** %18, align 8
  %573 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %572, i32 0, i32 0
  %574 = load i32, i32* %573, align 8
  %575 = sext i32 %574 to i64
  %576 = getelementptr inbounds i32, i32* %571, i64 %575
  store i32* %576, i32** %35, align 8
  store i32 0, i32* %20, align 4
  br label %577

577:                                              ; preds = %638, %568
  %578 = load i32, i32* %20, align 4
  %579 = load %struct.dmatest_data*, %struct.dmatest_data** %19, align 8
  %580 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %579, i32 0, i32 0
  %581 = load i32, i32* %580, align 8
  %582 = icmp slt i32 %578, %581
  br i1 %582, label %583, label %641

583:                                              ; preds = %577
  %584 = load %struct.dmatest_data*, %struct.dmatest_data** %19, align 8
  %585 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %584, i32 0, i32 2
  %586 = load i32**, i32*** %585, align 8
  %587 = load i32, i32* %20, align 4
  %588 = sext i32 %587 to i64
  %589 = getelementptr inbounds i32*, i32** %586, i64 %588
  %590 = load i32*, i32** %589, align 8
  %591 = bitcast i32* %590 to i8*
  store i8* %591, i8** %40, align 8
  %592 = load i8*, i8** %40, align 8
  %593 = call %struct.page* @virt_to_page(i8* %592)
  store %struct.page* %593, %struct.page** %41, align 8
  %594 = load i8*, i8** %40, align 8
  %595 = call i64 @offset_in_page(i8* %594)
  store i64 %595, i64* %42, align 8
  %596 = load %struct.dma_device*, %struct.dma_device** %8, align 8
  %597 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %596, i32 0, i32 8
  %598 = load i32, i32* %597, align 8
  %599 = load %struct.page*, %struct.page** %41, align 8
  %600 = load i64, i64* %42, align 8
  %601 = load %struct.dmaengine_unmap_data*, %struct.dmaengine_unmap_data** %34, align 8
  %602 = getelementptr inbounds %struct.dmaengine_unmap_data, %struct.dmaengine_unmap_data* %601, i32 0, i32 0
  %603 = load i32, i32* %602, align 8
  %604 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %605 = call i8* @dma_map_page(i32 %598, %struct.page* %599, i64 %600, i32 %603, i32 %604)
  %606 = ptrtoint i8* %605 to i32
  %607 = load i32*, i32** %35, align 8
  %608 = load i32, i32* %20, align 4
  %609 = sext i32 %608 to i64
  %610 = getelementptr inbounds i32, i32* %607, i64 %609
  store i32 %606, i32* %610, align 4
  %611 = load %struct.dma_device*, %struct.dma_device** %8, align 8
  %612 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %611, i32 0, i32 8
  %613 = load i32, i32* %612, align 8
  %614 = load i32*, i32** %35, align 8
  %615 = load i32, i32* %20, align 4
  %616 = sext i32 %615 to i64
  %617 = getelementptr inbounds i32, i32* %614, i64 %616
  %618 = load i32, i32* %617, align 4
  %619 = call i32 @dma_mapping_error(i32 %613, i32 %618)
  store i32 %619, i32* %16, align 4
  %620 = load i32, i32* %16, align 4
  %621 = icmp ne i32 %620, 0
  br i1 %621, label %622, label %633

622:                                              ; preds = %583
  %623 = load i32, i32* %11, align 4
  %624 = load %struct.dmatest_data*, %struct.dmatest_data** %18, align 8
  %625 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %624, i32 0, i32 1
  %626 = load i32, i32* %625, align 4
  %627 = load %struct.dmatest_data*, %struct.dmatest_data** %19, align 8
  %628 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %627, i32 0, i32 1
  %629 = load i32, i32* %628, align 4
  %630 = load i32, i32* %36, align 4
  %631 = load i32, i32* %16, align 4
  %632 = call i32 @result(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %623, i32 %626, i32 %629, i32 %630, i32 %631)
  br label %1049

633:                                              ; preds = %583
  %634 = load %struct.dmaengine_unmap_data*, %struct.dmaengine_unmap_data** %34, align 8
  %635 = getelementptr inbounds %struct.dmaengine_unmap_data, %struct.dmaengine_unmap_data* %634, i32 0, i32 2
  %636 = load i32, i32* %635, align 8
  %637 = add nsw i32 %636, 1
  store i32 %637, i32* %635, align 8
  br label %638

638:                                              ; preds = %633
  %639 = load i32, i32* %20, align 4
  %640 = add nsw i32 %639, 1
  store i32 %640, i32* %20, align 4
  br label %577

641:                                              ; preds = %577
  %642 = load %struct.dmatest_thread*, %struct.dmatest_thread** %3, align 8
  %643 = getelementptr inbounds %struct.dmatest_thread, %struct.dmatest_thread* %642, i32 0, i32 1
  %644 = load i64, i64* %643, align 8
  %645 = load i64, i64* @DMA_MEMCPY, align 8
  %646 = icmp eq i64 %644, %645
  br i1 %646, label %647, label %665

647:                                              ; preds = %641
  %648 = load %struct.dma_device*, %struct.dma_device** %8, align 8
  %649 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %648, i32 0, i32 7
  %650 = load %struct.dma_async_tx_descriptor* (%struct.dma_chan*, i32, i32, i32, i32)*, %struct.dma_async_tx_descriptor* (%struct.dma_chan*, i32, i32, i32, i32)** %649, align 8
  %651 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %652 = load i32*, i32** %35, align 8
  %653 = getelementptr inbounds i32, i32* %652, i64 0
  %654 = load i32, i32* %653, align 4
  %655 = load %struct.dmatest_data*, %struct.dmatest_data** %19, align 8
  %656 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %655, i32 0, i32 1
  %657 = load i32, i32* %656, align 4
  %658 = add i32 %654, %657
  %659 = load i32*, i32** %31, align 8
  %660 = getelementptr inbounds i32, i32* %659, i64 0
  %661 = load i32, i32* %660, align 4
  %662 = load i32, i32* %36, align 4
  %663 = load i32, i32* %14, align 4
  %664 = call %struct.dma_async_tx_descriptor* %650(%struct.dma_chan* %651, i32 %658, i32 %661, i32 %662, i32 %663)
  store %struct.dma_async_tx_descriptor* %664, %struct.dma_async_tx_descriptor** %33, align 8
  br label %769

665:                                              ; preds = %641
  %666 = load %struct.dmatest_thread*, %struct.dmatest_thread** %3, align 8
  %667 = getelementptr inbounds %struct.dmatest_thread, %struct.dmatest_thread* %666, i32 0, i32 1
  %668 = load i64, i64* %667, align 8
  %669 = load i64, i64* @DMA_MEMSET, align 8
  %670 = icmp eq i64 %668, %669
  br i1 %670, label %671, label %697

671:                                              ; preds = %665
  %672 = load %struct.dma_device*, %struct.dma_device** %8, align 8
  %673 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %672, i32 0, i32 6
  %674 = load %struct.dma_async_tx_descriptor* (%struct.dma_chan*, i32, i32, i32, i32)*, %struct.dma_async_tx_descriptor* (%struct.dma_chan*, i32, i32, i32, i32)** %673, align 8
  %675 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %676 = load i32*, i32** %35, align 8
  %677 = getelementptr inbounds i32, i32* %676, i64 0
  %678 = load i32, i32* %677, align 4
  %679 = load %struct.dmatest_data*, %struct.dmatest_data** %19, align 8
  %680 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %679, i32 0, i32 1
  %681 = load i32, i32* %680, align 4
  %682 = add i32 %678, %681
  %683 = load %struct.dmatest_data*, %struct.dmatest_data** %18, align 8
  %684 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %683, i32 0, i32 2
  %685 = load i32**, i32*** %684, align 8
  %686 = getelementptr inbounds i32*, i32** %685, i64 0
  %687 = load i32*, i32** %686, align 8
  %688 = load %struct.dmatest_data*, %struct.dmatest_data** %18, align 8
  %689 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %688, i32 0, i32 1
  %690 = load i32, i32* %689, align 4
  %691 = zext i32 %690 to i64
  %692 = getelementptr inbounds i32, i32* %687, i64 %691
  %693 = load i32, i32* %692, align 4
  %694 = load i32, i32* %36, align 4
  %695 = load i32, i32* %14, align 4
  %696 = call %struct.dma_async_tx_descriptor* %674(%struct.dma_chan* %675, i32 %682, i32 %693, i32 %694, i32 %695)
  store %struct.dma_async_tx_descriptor* %696, %struct.dma_async_tx_descriptor** %33, align 8
  br label %768

697:                                              ; preds = %665
  %698 = load %struct.dmatest_thread*, %struct.dmatest_thread** %3, align 8
  %699 = getelementptr inbounds %struct.dmatest_thread, %struct.dmatest_thread* %698, i32 0, i32 1
  %700 = load i64, i64* %699, align 8
  %701 = load i64, i64* @DMA_XOR, align 8
  %702 = icmp eq i64 %700, %701
  br i1 %702, label %703, label %722

703:                                              ; preds = %697
  %704 = load %struct.dma_device*, %struct.dma_device** %8, align 8
  %705 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %704, i32 0, i32 5
  %706 = load %struct.dma_async_tx_descriptor* (%struct.dma_chan*, i32, i32*, i32, i32, i32)*, %struct.dma_async_tx_descriptor* (%struct.dma_chan*, i32, i32*, i32, i32, i32)** %705, align 8
  %707 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %708 = load i32*, i32** %35, align 8
  %709 = getelementptr inbounds i32, i32* %708, i64 0
  %710 = load i32, i32* %709, align 4
  %711 = load %struct.dmatest_data*, %struct.dmatest_data** %19, align 8
  %712 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %711, i32 0, i32 1
  %713 = load i32, i32* %712, align 4
  %714 = add i32 %710, %713
  %715 = load i32*, i32** %31, align 8
  %716 = load %struct.dmatest_data*, %struct.dmatest_data** %18, align 8
  %717 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %716, i32 0, i32 0
  %718 = load i32, i32* %717, align 8
  %719 = load i32, i32* %36, align 4
  %720 = load i32, i32* %14, align 4
  %721 = call %struct.dma_async_tx_descriptor* %706(%struct.dma_chan* %707, i32 %714, i32* %715, i32 %718, i32 %719, i32 %720)
  store %struct.dma_async_tx_descriptor* %721, %struct.dma_async_tx_descriptor** %33, align 8
  br label %767

722:                                              ; preds = %697
  %723 = load %struct.dmatest_thread*, %struct.dmatest_thread** %3, align 8
  %724 = getelementptr inbounds %struct.dmatest_thread, %struct.dmatest_thread* %723, i32 0, i32 1
  %725 = load i64, i64* %724, align 8
  %726 = load i64, i64* @DMA_PQ, align 8
  %727 = icmp eq i64 %725, %726
  br i1 %727, label %728, label %766

728:                                              ; preds = %722
  store i32 0, i32* %20, align 4
  br label %729

729:                                              ; preds = %749, %728
  %730 = load i32, i32* %20, align 4
  %731 = load %struct.dmatest_data*, %struct.dmatest_data** %19, align 8
  %732 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %731, i32 0, i32 0
  %733 = load i32, i32* %732, align 8
  %734 = icmp slt i32 %730, %733
  br i1 %734, label %735, label %752

735:                                              ; preds = %729
  %736 = load i32*, i32** %35, align 8
  %737 = load i32, i32* %20, align 4
  %738 = sext i32 %737 to i64
  %739 = getelementptr inbounds i32, i32* %736, i64 %738
  %740 = load i32, i32* %739, align 4
  %741 = load %struct.dmatest_data*, %struct.dmatest_data** %19, align 8
  %742 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %741, i32 0, i32 1
  %743 = load i32, i32* %742, align 4
  %744 = add i32 %740, %743
  %745 = load i32*, i32** %32, align 8
  %746 = load i32, i32* %20, align 4
  %747 = sext i32 %746 to i64
  %748 = getelementptr inbounds i32, i32* %745, i64 %747
  store i32 %744, i32* %748, align 4
  br label %749

749:                                              ; preds = %735
  %750 = load i32, i32* %20, align 4
  %751 = add nsw i32 %750, 1
  store i32 %751, i32* %20, align 4
  br label %729

752:                                              ; preds = %729
  %753 = load %struct.dma_device*, %struct.dma_device** %8, align 8
  %754 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %753, i32 0, i32 4
  %755 = load %struct.dma_async_tx_descriptor* (%struct.dma_chan*, i32*, i32*, i32, i32*, i32, i32)*, %struct.dma_async_tx_descriptor* (%struct.dma_chan*, i32*, i32*, i32, i32*, i32, i32)** %754, align 8
  %756 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %757 = load i32*, i32** %32, align 8
  %758 = load i32*, i32** %31, align 8
  %759 = load %struct.dmatest_data*, %struct.dmatest_data** %18, align 8
  %760 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %759, i32 0, i32 0
  %761 = load i32, i32* %760, align 8
  %762 = load i32*, i32** %15, align 8
  %763 = load i32, i32* %36, align 4
  %764 = load i32, i32* %14, align 4
  %765 = call %struct.dma_async_tx_descriptor* %755(%struct.dma_chan* %756, i32* %757, i32* %758, i32 %761, i32* %762, i32 %763, i32 %764)
  store %struct.dma_async_tx_descriptor* %765, %struct.dma_async_tx_descriptor** %33, align 8
  br label %766

766:                                              ; preds = %752, %722
  br label %767

767:                                              ; preds = %766, %703
  br label %768

768:                                              ; preds = %767, %671
  br label %769

769:                                              ; preds = %768, %647
  %770 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %33, align 8
  %771 = icmp ne %struct.dma_async_tx_descriptor* %770, null
  br i1 %771, label %784, label %772

772:                                              ; preds = %769
  %773 = load i32, i32* %11, align 4
  %774 = load %struct.dmatest_data*, %struct.dmatest_data** %18, align 8
  %775 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %774, i32 0, i32 1
  %776 = load i32, i32* %775, align 4
  %777 = load %struct.dmatest_data*, %struct.dmatest_data** %19, align 8
  %778 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %777, i32 0, i32 1
  %779 = load i32, i32* %778, align 4
  %780 = load i32, i32* %36, align 4
  %781 = load i32, i32* %16, align 4
  %782 = call i32 @result(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %773, i32 %776, i32 %779, i32 %780, i32 %781)
  %783 = call i32 @msleep(i32 100)
  br label %1049

784:                                              ; preds = %769
  %785 = load %struct.dmatest_done*, %struct.dmatest_done** %4, align 8
  %786 = getelementptr inbounds %struct.dmatest_done, %struct.dmatest_done* %785, i32 0, i32 0
  store i32 0, i32* %786, align 4
  %787 = load %struct.dmatest_params*, %struct.dmatest_params** %6, align 8
  %788 = getelementptr inbounds %struct.dmatest_params, %struct.dmatest_params* %787, i32 0, i32 8
  %789 = load i64, i64* %788, align 8
  %790 = icmp ne i64 %789, 0
  br i1 %790, label %798, label %791

791:                                              ; preds = %784
  %792 = load i32, i32* @dmatest_callback, align 4
  %793 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %33, align 8
  %794 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %793, i32 0, i32 2
  store i32 %792, i32* %794, align 8
  %795 = load %struct.dmatest_done*, %struct.dmatest_done** %4, align 8
  %796 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %33, align 8
  %797 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %796, i32 0, i32 1
  store %struct.dmatest_done* %795, %struct.dmatest_done** %797, align 8
  br label %798

798:                                              ; preds = %791, %784
  %799 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %33, align 8
  %800 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %799, i32 0, i32 0
  %801 = load i32 (%struct.dma_async_tx_descriptor*)*, i32 (%struct.dma_async_tx_descriptor*)** %800, align 8
  %802 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %33, align 8
  %803 = call i32 %801(%struct.dma_async_tx_descriptor* %802)
  store i32 %803, i32* %12, align 4
  %804 = load i32, i32* %12, align 4
  %805 = call i64 @dma_submit_error(i32 %804)
  %806 = icmp ne i64 %805, 0
  br i1 %806, label %807, label %819

807:                                              ; preds = %798
  %808 = load i32, i32* %11, align 4
  %809 = load %struct.dmatest_data*, %struct.dmatest_data** %18, align 8
  %810 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %809, i32 0, i32 1
  %811 = load i32, i32* %810, align 4
  %812 = load %struct.dmatest_data*, %struct.dmatest_data** %19, align 8
  %813 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %812, i32 0, i32 1
  %814 = load i32, i32* %813, align 4
  %815 = load i32, i32* %36, align 4
  %816 = load i32, i32* %16, align 4
  %817 = call i32 @result(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 %808, i32 %811, i32 %814, i32 %815, i32 %816)
  %818 = call i32 @msleep(i32 100)
  br label %1049

819:                                              ; preds = %798
  %820 = load %struct.dmatest_params*, %struct.dmatest_params** %6, align 8
  %821 = getelementptr inbounds %struct.dmatest_params, %struct.dmatest_params* %820, i32 0, i32 8
  %822 = load i64, i64* %821, align 8
  %823 = icmp ne i64 %822, 0
  br i1 %823, label %824, label %837

824:                                              ; preds = %819
  %825 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %826 = load i32, i32* %12, align 4
  %827 = call i32 @dma_sync_wait(%struct.dma_chan* %825, i32 %826)
  store i32 %827, i32* %13, align 4
  %828 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %829 = call i32 @dmaengine_terminate_sync(%struct.dma_chan* %828)
  %830 = load i32, i32* %13, align 4
  %831 = load i32, i32* @DMA_COMPLETE, align 4
  %832 = icmp eq i32 %830, %831
  br i1 %832, label %833, label %836

833:                                              ; preds = %824
  %834 = load %struct.dmatest_done*, %struct.dmatest_done** %4, align 8
  %835 = getelementptr inbounds %struct.dmatest_done, %struct.dmatest_done* %834, i32 0, i32 0
  store i32 1, i32* %835, align 4
  br label %836

836:                                              ; preds = %833, %824
  br label %854

837:                                              ; preds = %819
  %838 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %839 = call i32 @dma_async_issue_pending(%struct.dma_chan* %838)
  %840 = load %struct.dmatest_thread*, %struct.dmatest_thread** %3, align 8
  %841 = getelementptr inbounds %struct.dmatest_thread, %struct.dmatest_thread* %840, i32 0, i32 3
  %842 = load i32, i32* %841, align 4
  %843 = load %struct.dmatest_done*, %struct.dmatest_done** %4, align 8
  %844 = getelementptr inbounds %struct.dmatest_done, %struct.dmatest_done* %843, i32 0, i32 0
  %845 = load i32, i32* %844, align 4
  %846 = load %struct.dmatest_params*, %struct.dmatest_params** %6, align 8
  %847 = getelementptr inbounds %struct.dmatest_params, %struct.dmatest_params* %846, i32 0, i32 7
  %848 = load i32, i32* %847, align 8
  %849 = call i32 @msecs_to_jiffies(i32 %848)
  %850 = call i32 @wait_event_freezable_timeout(i32 %842, i32 %845, i32 %849)
  %851 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %852 = load i32, i32* %12, align 4
  %853 = call i32 @dma_async_is_tx_complete(%struct.dma_chan* %851, i32 %852, i32* null, i32* null)
  store i32 %853, i32* %13, align 4
  br label %854

854:                                              ; preds = %837, %836
  %855 = load %struct.dmatest_done*, %struct.dmatest_done** %4, align 8
  %856 = getelementptr inbounds %struct.dmatest_done, %struct.dmatest_done* %855, i32 0, i32 0
  %857 = load i32, i32* %856, align 4
  %858 = icmp ne i32 %857, 0
  br i1 %858, label %869, label %859

859:                                              ; preds = %854
  %860 = load i32, i32* %11, align 4
  %861 = load %struct.dmatest_data*, %struct.dmatest_data** %18, align 8
  %862 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %861, i32 0, i32 1
  %863 = load i32, i32* %862, align 4
  %864 = load %struct.dmatest_data*, %struct.dmatest_data** %19, align 8
  %865 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %864, i32 0, i32 1
  %866 = load i32, i32* %865, align 4
  %867 = load i32, i32* %36, align 4
  %868 = call i32 @result(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %860, i32 %863, i32 %866, i32 %867, i32 0)
  br label %1049

869:                                              ; preds = %854
  %870 = load i32, i32* %13, align 4
  %871 = load i32, i32* @DMA_COMPLETE, align 4
  %872 = icmp ne i32 %870, %871
  br i1 %872, label %873, label %889

873:                                              ; preds = %869
  %874 = load i32, i32* %13, align 4
  %875 = load i32, i32* @DMA_ERROR, align 4
  %876 = icmp eq i32 %874, %875
  %877 = zext i1 %876 to i64
  %878 = select i1 %876, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0)
  %879 = load i32, i32* %11, align 4
  %880 = load %struct.dmatest_data*, %struct.dmatest_data** %18, align 8
  %881 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %880, i32 0, i32 1
  %882 = load i32, i32* %881, align 4
  %883 = load %struct.dmatest_data*, %struct.dmatest_data** %19, align 8
  %884 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %883, i32 0, i32 1
  %885 = load i32, i32* %884, align 4
  %886 = load i32, i32* %36, align 4
  %887 = load i32, i32* %16, align 4
  %888 = call i32 @result(i8* %878, i32 %879, i32 %882, i32 %885, i32 %886, i32 %887)
  br label %1049

889:                                              ; preds = %869
  br label %890

890:                                              ; preds = %889
  %891 = load %struct.dmaengine_unmap_data*, %struct.dmaengine_unmap_data** %34, align 8
  %892 = call i32 @dmaengine_unmap_put(%struct.dmaengine_unmap_data* %891)
  %893 = load %struct.dmatest_params*, %struct.dmatest_params** %6, align 8
  %894 = getelementptr inbounds %struct.dmatest_params, %struct.dmatest_params* %893, i32 0, i32 6
  %895 = load i64, i64* %894, align 8
  %896 = icmp ne i64 %895, 0
  br i1 %896, label %897, label %907

897:                                              ; preds = %890
  %898 = load i32, i32* %11, align 4
  %899 = load %struct.dmatest_data*, %struct.dmatest_data** %18, align 8
  %900 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %899, i32 0, i32 1
  %901 = load i32, i32* %900, align 4
  %902 = load %struct.dmatest_data*, %struct.dmatest_data** %19, align 8
  %903 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %902, i32 0, i32 1
  %904 = load i32, i32* %903, align 4
  %905 = load i32, i32* %36, align 4
  %906 = call i32 @verbose_result(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32 %898, i32 %901, i32 %904, i32 %905, i32 0)
  br label %299

907:                                              ; preds = %890
  %908 = call i32 (...) @ktime_get()
  store i32 %908, i32* %22, align 4
  %909 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %910 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %909, i32 0, i32 0
  %911 = load i32, i32* %910, align 4
  %912 = call i32 @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0), i32 %911)
  %913 = load %struct.dmatest_data*, %struct.dmatest_data** %18, align 8
  %914 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %913, i32 0, i32 2
  %915 = load i32**, i32*** %914, align 8
  %916 = load %struct.dmatest_data*, %struct.dmatest_data** %18, align 8
  %917 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %916, i32 0, i32 1
  %918 = load i32, i32* %917, align 4
  %919 = load i32, i32* @PATTERN_SRC, align 4
  %920 = load i32, i32* %30, align 4
  %921 = call i32 @dmatest_verify(i32** %915, i32 0, i32 %918, i32 0, i32 %919, i32 1, i32 %920)
  store i32 %921, i32* %9, align 4
  %922 = load %struct.dmatest_data*, %struct.dmatest_data** %18, align 8
  %923 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %922, i32 0, i32 2
  %924 = load i32**, i32*** %923, align 8
  %925 = load %struct.dmatest_data*, %struct.dmatest_data** %18, align 8
  %926 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %925, i32 0, i32 1
  %927 = load i32, i32* %926, align 4
  %928 = load %struct.dmatest_data*, %struct.dmatest_data** %18, align 8
  %929 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %928, i32 0, i32 1
  %930 = load i32, i32* %929, align 4
  %931 = load i32, i32* %36, align 4
  %932 = add i32 %930, %931
  %933 = load %struct.dmatest_data*, %struct.dmatest_data** %18, align 8
  %934 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %933, i32 0, i32 1
  %935 = load i32, i32* %934, align 4
  %936 = load i32, i32* @PATTERN_SRC, align 4
  %937 = load i32, i32* @PATTERN_COPY, align 4
  %938 = or i32 %936, %937
  %939 = load i32, i32* %30, align 4
  %940 = call i32 @dmatest_verify(i32** %924, i32 %927, i32 %932, i32 %935, i32 %938, i32 1, i32 %939)
  %941 = load i32, i32* %9, align 4
  %942 = add i32 %941, %940
  store i32 %942, i32* %9, align 4
  %943 = load %struct.dmatest_data*, %struct.dmatest_data** %18, align 8
  %944 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %943, i32 0, i32 2
  %945 = load i32**, i32*** %944, align 8
  %946 = load %struct.dmatest_data*, %struct.dmatest_data** %18, align 8
  %947 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %946, i32 0, i32 1
  %948 = load i32, i32* %947, align 4
  %949 = load i32, i32* %36, align 4
  %950 = add i32 %948, %949
  %951 = load i32, i32* %17, align 4
  %952 = load %struct.dmatest_data*, %struct.dmatest_data** %18, align 8
  %953 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %952, i32 0, i32 1
  %954 = load i32, i32* %953, align 4
  %955 = load i32, i32* %36, align 4
  %956 = add i32 %954, %955
  %957 = load i32, i32* @PATTERN_SRC, align 4
  %958 = load i32, i32* %30, align 4
  %959 = call i32 @dmatest_verify(i32** %945, i32 %950, i32 %951, i32 %956, i32 %957, i32 1, i32 %958)
  %960 = load i32, i32* %9, align 4
  %961 = add i32 %960, %959
  store i32 %961, i32* %9, align 4
  %962 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %963 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %962, i32 0, i32 0
  %964 = load i32, i32* %963, align 4
  %965 = call i32 @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0), i32 %964)
  %966 = load %struct.dmatest_data*, %struct.dmatest_data** %19, align 8
  %967 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %966, i32 0, i32 2
  %968 = load i32**, i32*** %967, align 8
  %969 = load %struct.dmatest_data*, %struct.dmatest_data** %19, align 8
  %970 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %969, i32 0, i32 1
  %971 = load i32, i32* %970, align 4
  %972 = load i32, i32* @PATTERN_DST, align 4
  %973 = load i32, i32* %30, align 4
  %974 = call i32 @dmatest_verify(i32** %968, i32 0, i32 %971, i32 0, i32 %972, i32 0, i32 %973)
  %975 = load i32, i32* %9, align 4
  %976 = add i32 %975, %974
  store i32 %976, i32* %9, align 4
  %977 = load %struct.dmatest_data*, %struct.dmatest_data** %19, align 8
  %978 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %977, i32 0, i32 2
  %979 = load i32**, i32*** %978, align 8
  %980 = load %struct.dmatest_data*, %struct.dmatest_data** %19, align 8
  %981 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %980, i32 0, i32 1
  %982 = load i32, i32* %981, align 4
  %983 = load %struct.dmatest_data*, %struct.dmatest_data** %19, align 8
  %984 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %983, i32 0, i32 1
  %985 = load i32, i32* %984, align 4
  %986 = load i32, i32* %36, align 4
  %987 = add i32 %985, %986
  %988 = load %struct.dmatest_data*, %struct.dmatest_data** %18, align 8
  %989 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %988, i32 0, i32 1
  %990 = load i32, i32* %989, align 4
  %991 = load i32, i32* @PATTERN_SRC, align 4
  %992 = load i32, i32* @PATTERN_COPY, align 4
  %993 = or i32 %991, %992
  %994 = load i32, i32* %30, align 4
  %995 = call i32 @dmatest_verify(i32** %979, i32 %982, i32 %987, i32 %990, i32 %993, i32 0, i32 %994)
  %996 = load i32, i32* %9, align 4
  %997 = add i32 %996, %995
  store i32 %997, i32* %9, align 4
  %998 = load %struct.dmatest_data*, %struct.dmatest_data** %19, align 8
  %999 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %998, i32 0, i32 2
  %1000 = load i32**, i32*** %999, align 8
  %1001 = load %struct.dmatest_data*, %struct.dmatest_data** %19, align 8
  %1002 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %1001, i32 0, i32 1
  %1003 = load i32, i32* %1002, align 4
  %1004 = load i32, i32* %36, align 4
  %1005 = add i32 %1003, %1004
  %1006 = load i32, i32* %17, align 4
  %1007 = load %struct.dmatest_data*, %struct.dmatest_data** %19, align 8
  %1008 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %1007, i32 0, i32 1
  %1009 = load i32, i32* %1008, align 4
  %1010 = load i32, i32* %36, align 4
  %1011 = add i32 %1009, %1010
  %1012 = load i32, i32* @PATTERN_DST, align 4
  %1013 = load i32, i32* %30, align 4
  %1014 = call i32 @dmatest_verify(i32** %1000, i32 %1005, i32 %1006, i32 %1011, i32 %1012, i32 0, i32 %1013)
  %1015 = load i32, i32* %9, align 4
  %1016 = add i32 %1015, %1014
  store i32 %1016, i32* %9, align 4
  %1017 = call i32 (...) @ktime_get()
  %1018 = load i32, i32* %22, align 4
  %1019 = call i32 @ktime_sub(i32 %1017, i32 %1018)
  store i32 %1019, i32* %23, align 4
  %1020 = load i32, i32* %25, align 4
  %1021 = load i32, i32* %23, align 4
  %1022 = call i32 @ktime_add(i32 %1020, i32 %1021)
  store i32 %1022, i32* %25, align 4
  %1023 = load i32, i32* %9, align 4
  %1024 = icmp ne i32 %1023, 0
  br i1 %1024, label %1025, label %1038

1025:                                             ; preds = %907
  %1026 = load i32, i32* %11, align 4
  %1027 = load %struct.dmatest_data*, %struct.dmatest_data** %18, align 8
  %1028 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %1027, i32 0, i32 1
  %1029 = load i32, i32* %1028, align 4
  %1030 = load %struct.dmatest_data*, %struct.dmatest_data** %19, align 8
  %1031 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %1030, i32 0, i32 1
  %1032 = load i32, i32* %1031, align 4
  %1033 = load i32, i32* %36, align 4
  %1034 = load i32, i32* %9, align 4
  %1035 = call i32 @result(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i32 %1026, i32 %1029, i32 %1032, i32 %1033, i32 %1034)
  %1036 = load i32, i32* %10, align 4
  %1037 = add i32 %1036, 1
  store i32 %1037, i32* %10, align 4
  br label %1048

1038:                                             ; preds = %907
  %1039 = load i32, i32* %11, align 4
  %1040 = load %struct.dmatest_data*, %struct.dmatest_data** %18, align 8
  %1041 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %1040, i32 0, i32 1
  %1042 = load i32, i32* %1041, align 4
  %1043 = load %struct.dmatest_data*, %struct.dmatest_data** %19, align 8
  %1044 = getelementptr inbounds %struct.dmatest_data, %struct.dmatest_data* %1043, i32 0, i32 1
  %1045 = load i32, i32* %1044, align 4
  %1046 = load i32, i32* %36, align 4
  %1047 = call i32 @verbose_result(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32 %1039, i32 %1042, i32 %1045, i32 %1046, i32 0)
  br label %1048

1048:                                             ; preds = %1038, %1025
  br label %299

1049:                                             ; preds = %873, %859, %807, %772, %622, %549
  %1050 = load %struct.dmaengine_unmap_data*, %struct.dmaengine_unmap_data** %34, align 8
  %1051 = call i32 @dmaengine_unmap_put(%struct.dmaengine_unmap_data* %1050)
  %1052 = load i32, i32* %10, align 4
  %1053 = add i32 %1052, 1
  store i32 %1053, i32* %10, align 4
  br label %299

1054:                                             ; preds = %331, %316
  %1055 = call i32 (...) @ktime_get()
  %1056 = load i32, i32* %21, align 4
  %1057 = call i32 @ktime_sub(i32 %1055, i32 %1056)
  store i32 %1057, i32* %21, align 4
  %1058 = load i32, i32* %21, align 4
  %1059 = load i32, i32* %25, align 4
  %1060 = call i32 @ktime_sub(i32 %1058, i32 %1059)
  store i32 %1060, i32* %21, align 4
  %1061 = load i32, i32* %21, align 4
  %1062 = load i32, i32* %24, align 4
  %1063 = call i32 @ktime_sub(i32 %1061, i32 %1062)
  store i32 %1063, i32* %21, align 4
  %1064 = load i32, i32* %21, align 4
  %1065 = call i32 @ktime_to_us(i32 %1064)
  store i32 %1065, i32* %26, align 4
  store i32 0, i32* %16, align 4
  %1066 = load i32*, i32** %32, align 8
  %1067 = call i32 @kfree(i32* %1066)
  br label %1068

1068:                                             ; preds = %1054, %285
  %1069 = load i32*, i32** %31, align 8
  %1070 = call i32 @kfree(i32* %1069)
  br label %1071

1071:                                             ; preds = %1068, %276
  %1072 = load %struct.dmatest_data*, %struct.dmatest_data** %19, align 8
  %1073 = call i32 @dmatest_free_test_data(%struct.dmatest_data* %1072)
  br label %1074

1074:                                             ; preds = %1071, %265
  %1075 = load %struct.dmatest_data*, %struct.dmatest_data** %18, align 8
  %1076 = call i32 @dmatest_free_test_data(%struct.dmatest_data* %1075)
  br label %1077

1077:                                             ; preds = %1074, %258, %247, %230
  %1078 = load i32*, i32** %15, align 8
  %1079 = call i32 @kfree(i32* %1078)
  br label %1080

1080:                                             ; preds = %1077, %217, %200
  %1081 = load i32, i32* %26, align 4
  %1082 = load i32, i32* %11, align 4
  %1083 = call i64 @dmatest_persec(i32 %1081, i32 %1082)
  store i64 %1083, i64* %28, align 8
  %1084 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %1085 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1084, i32 0, i32 0
  %1086 = load i32, i32* %1085, align 4
  %1087 = load i32, i32* %11, align 4
  %1088 = load i32, i32* %10, align 4
  %1089 = load i64, i64* %28, align 8
  %1090 = call i32 @FIXPT_TO_INT(i64 %1089)
  %1091 = load i64, i64* %28, align 8
  %1092 = call i32 @FIXPT_GET_FRAC(i64 %1091)
  %1093 = load i32, i32* %26, align 4
  %1094 = load i64, i64* %27, align 8
  %1095 = call i32 @dmatest_KBs(i32 %1093, i64 %1094)
  %1096 = load i32, i32* %16, align 4
  %1097 = call i32 @pr_info(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.15, i64 0, i64 0), i32 %1086, i32 %1087, i32 %1088, i32 %1090, i32 %1092, i32 %1095, i32 %1096)
  %1098 = load i32, i32* %16, align 4
  %1099 = icmp ne i32 %1098, 0
  br i1 %1099, label %1103, label %1100

1100:                                             ; preds = %1080
  %1101 = load i32, i32* %10, align 4
  %1102 = icmp ne i32 %1101, 0
  br i1 %1102, label %1103, label %1106

1103:                                             ; preds = %1100, %1080
  %1104 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %1105 = call i32 @dmaengine_terminate_sync(%struct.dma_chan* %1104)
  br label %1106

1106:                                             ; preds = %1103, %1100
  %1107 = load %struct.dmatest_thread*, %struct.dmatest_thread** %3, align 8
  %1108 = getelementptr inbounds %struct.dmatest_thread, %struct.dmatest_thread* %1107, i32 0, i32 2
  store i32 1, i32* %1108, align 8
  %1109 = call i32 @wake_up(i32* @thread_wait)
  %1110 = load i32, i32* %16, align 4
  ret i32 %1110
}

declare dso_local i32 @set_freezable(...) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i8* @min_odd(i32, i32) #1

declare dso_local i32 @dma_maxpq(%struct.dma_device*, i32) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local i64 @dmatest_alloc_test_data(%struct.dmatest_data*, i32, i32) #1

declare dso_local i32 @set_user_nice(%struct.TYPE_3__*, i32) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @kthread_should_stop(...) #1

declare dso_local i32 @dmatest_random(...) #1

declare dso_local i32 @dmatest_init_srcs(i32**, i32, i32, i32, i32) #1

declare dso_local i32 @dmatest_init_dsts(i32**, i32, i32, i32, i32) #1

declare dso_local i32 @ktime_sub(i32, i32) #1

declare dso_local i32 @ktime_add(i32, i32) #1

declare dso_local %struct.dmaengine_unmap_data* @dmaengine_get_unmap_data(i32, i32, i32) #1

declare dso_local i32 @result(i8*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.page* @virt_to_page(i8*) #1

declare dso_local i64 @offset_in_page(i8*) #1

declare dso_local i8* @dma_map_page(i32, %struct.page*, i64, i32, i32) #1

declare dso_local i32 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @dma_submit_error(i32) #1

declare dso_local i32 @dma_sync_wait(%struct.dma_chan*, i32) #1

declare dso_local i32 @dmaengine_terminate_sync(%struct.dma_chan*) #1

declare dso_local i32 @dma_async_issue_pending(%struct.dma_chan*) #1

declare dso_local i32 @wait_event_freezable_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dma_async_is_tx_complete(%struct.dma_chan*, i32, i32*, i32*) #1

declare dso_local i32 @dmaengine_unmap_put(%struct.dmaengine_unmap_data*) #1

declare dso_local i32 @verbose_result(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @dmatest_verify(i32**, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ktime_to_us(i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @dmatest_free_test_data(%struct.dmatest_data*) #1

declare dso_local i64 @dmatest_persec(i32, i32) #1

declare dso_local i32 @pr_info(i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @FIXPT_TO_INT(i64) #1

declare dso_local i32 @FIXPT_GET_FRAC(i64) #1

declare dso_local i32 @dmatest_KBs(i32, i64) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

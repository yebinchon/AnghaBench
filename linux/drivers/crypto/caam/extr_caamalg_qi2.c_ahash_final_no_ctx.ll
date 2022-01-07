; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg_qi2.c_ahash_final_no_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg_qi2.c_ahash_final_no_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.crypto_ahash = type { i32 }
%struct.caam_hash_ctx = type { i32, i32*, i32* }
%struct.caam_hash_state = type { i32, i8*, i8*, i32*, %struct.caam_request }
%struct.caam_request = type { %struct.ahash_edesc*, %struct.TYPE_2__*, i32, i32, i32*, %struct.dpaa2_fl_entry* }
%struct.ahash_edesc = type { i32 }
%struct.dpaa2_fl_entry = type { i32 }

@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"unable to map src\0A\00", align 1
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"unable to map ctx\0A\00", align 1
@dpaa2_fl_single = common dso_local global i32 0, align 4
@DIGEST = common dso_local global i64 0, align 8
@ahash_done = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MAY_BACKLOG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @ahash_final_no_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahash_final_no_ctx(%struct.ahash_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca %struct.crypto_ahash*, align 8
  %5 = alloca %struct.caam_hash_ctx*, align 8
  %6 = alloca %struct.caam_hash_state*, align 8
  %7 = alloca %struct.caam_request*, align 8
  %8 = alloca %struct.dpaa2_fl_entry*, align 8
  %9 = alloca %struct.dpaa2_fl_entry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ahash_edesc*, align 8
  %15 = alloca i32, align 4
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  %16 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %17 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %16)
  store %struct.crypto_ahash* %17, %struct.crypto_ahash** %4, align 8
  %18 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %19 = call %struct.caam_hash_ctx* @crypto_ahash_ctx(%struct.crypto_ahash* %18)
  store %struct.caam_hash_ctx* %19, %struct.caam_hash_ctx** %5, align 8
  %20 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %21 = call %struct.caam_hash_state* @ahash_request_ctx(%struct.ahash_request* %20)
  store %struct.caam_hash_state* %21, %struct.caam_hash_state** %6, align 8
  %22 = load %struct.caam_hash_state*, %struct.caam_hash_state** %6, align 8
  %23 = getelementptr inbounds %struct.caam_hash_state, %struct.caam_hash_state* %22, i32 0, i32 4
  store %struct.caam_request* %23, %struct.caam_request** %7, align 8
  %24 = load %struct.caam_request*, %struct.caam_request** %7, align 8
  %25 = getelementptr inbounds %struct.caam_request, %struct.caam_request* %24, i32 0, i32 5
  %26 = load %struct.dpaa2_fl_entry*, %struct.dpaa2_fl_entry** %25, align 8
  %27 = getelementptr inbounds %struct.dpaa2_fl_entry, %struct.dpaa2_fl_entry* %26, i64 1
  store %struct.dpaa2_fl_entry* %27, %struct.dpaa2_fl_entry** %8, align 8
  %28 = load %struct.caam_request*, %struct.caam_request** %7, align 8
  %29 = getelementptr inbounds %struct.caam_request, %struct.caam_request* %28, i32 0, i32 5
  %30 = load %struct.dpaa2_fl_entry*, %struct.dpaa2_fl_entry** %29, align 8
  %31 = getelementptr inbounds %struct.dpaa2_fl_entry, %struct.dpaa2_fl_entry* %30, i64 0
  store %struct.dpaa2_fl_entry* %31, %struct.dpaa2_fl_entry** %9, align 8
  %32 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %33 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %1
  %40 = load i32, i32* @GFP_KERNEL, align 4
  br label %43

41:                                               ; preds = %1
  %42 = load i32, i32* @GFP_ATOMIC, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  store i32 %44, i32* %10, align 4
  %45 = load %struct.caam_hash_state*, %struct.caam_hash_state** %6, align 8
  %46 = call i32* @current_buf(%struct.caam_hash_state* %45)
  store i32* %46, i32** %11, align 8
  %47 = load %struct.caam_hash_state*, %struct.caam_hash_state** %6, align 8
  %48 = call i32* @current_buflen(%struct.caam_hash_state* %47)
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %12, align 4
  %50 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %51 = call i32 @crypto_ahash_digestsize(%struct.crypto_ahash* %50)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* @GFP_DMA, align 4
  %55 = load i32, i32* %10, align 4
  %56 = or i32 %54, %55
  %57 = call %struct.ahash_edesc* @qi_cache_zalloc(i32 %56)
  store %struct.ahash_edesc* %57, %struct.ahash_edesc** %14, align 8
  %58 = load %struct.ahash_edesc*, %struct.ahash_edesc** %14, align 8
  %59 = icmp ne %struct.ahash_edesc* %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %43
  %61 = load i32, i32* %15, align 4
  store i32 %61, i32* %2, align 4
  br label %212

62:                                               ; preds = %43
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %89

65:                                               ; preds = %62
  %66 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %5, align 8
  %67 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32*, i32** %11, align 8
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* @DMA_TO_DEVICE, align 4
  %72 = call i8* @dma_map_single(i32 %68, i32* %69, i32 %70, i32 %71)
  %73 = load %struct.caam_hash_state*, %struct.caam_hash_state** %6, align 8
  %74 = getelementptr inbounds %struct.caam_hash_state, %struct.caam_hash_state* %73, i32 0, i32 2
  store i8* %72, i8** %74, align 8
  %75 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %5, align 8
  %76 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.caam_hash_state*, %struct.caam_hash_state** %6, align 8
  %79 = getelementptr inbounds %struct.caam_hash_state, %struct.caam_hash_state* %78, i32 0, i32 2
  %80 = load i8*, i8** %79, align 8
  %81 = call i64 @dma_mapping_error(i32 %77, i8* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %65
  %84 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %5, align 8
  %85 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @dev_err(i32 %86, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %201

88:                                               ; preds = %65
  br label %89

89:                                               ; preds = %88, %62
  %90 = load i32, i32* %13, align 4
  %91 = load %struct.caam_hash_state*, %struct.caam_hash_state** %6, align 8
  %92 = getelementptr inbounds %struct.caam_hash_state, %struct.caam_hash_state* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %5, align 8
  %94 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.caam_hash_state*, %struct.caam_hash_state** %6, align 8
  %97 = getelementptr inbounds %struct.caam_hash_state, %struct.caam_hash_state* %96, i32 0, i32 3
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %101 = call i8* @dma_map_single(i32 %95, i32* %98, i32 %99, i32 %100)
  %102 = load %struct.caam_hash_state*, %struct.caam_hash_state** %6, align 8
  %103 = getelementptr inbounds %struct.caam_hash_state, %struct.caam_hash_state* %102, i32 0, i32 1
  store i8* %101, i8** %103, align 8
  %104 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %5, align 8
  %105 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.caam_hash_state*, %struct.caam_hash_state** %6, align 8
  %108 = getelementptr inbounds %struct.caam_hash_state, %struct.caam_hash_state* %107, i32 0, i32 1
  %109 = load i8*, i8** %108, align 8
  %110 = call i64 @dma_mapping_error(i32 %106, i8* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %89
  %113 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %5, align 8
  %114 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @dev_err(i32 %115, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %117 = load %struct.caam_hash_state*, %struct.caam_hash_state** %6, align 8
  %118 = getelementptr inbounds %struct.caam_hash_state, %struct.caam_hash_state* %117, i32 0, i32 1
  store i8* null, i8** %118, align 8
  br label %201

119:                                              ; preds = %89
  %120 = load %struct.caam_request*, %struct.caam_request** %7, align 8
  %121 = getelementptr inbounds %struct.caam_request, %struct.caam_request* %120, i32 0, i32 5
  %122 = call i32 @memset(%struct.dpaa2_fl_entry** %121, i32 0, i32 8)
  %123 = load %struct.dpaa2_fl_entry*, %struct.dpaa2_fl_entry** %8, align 8
  %124 = call i32 @dpaa2_fl_set_final(%struct.dpaa2_fl_entry* %123, i32 1)
  %125 = load i32, i32* %12, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %139

127:                                              ; preds = %119
  %128 = load %struct.dpaa2_fl_entry*, %struct.dpaa2_fl_entry** %8, align 8
  %129 = load i32, i32* @dpaa2_fl_single, align 4
  %130 = call i32 @dpaa2_fl_set_format(%struct.dpaa2_fl_entry* %128, i32 %129)
  %131 = load %struct.dpaa2_fl_entry*, %struct.dpaa2_fl_entry** %8, align 8
  %132 = load %struct.caam_hash_state*, %struct.caam_hash_state** %6, align 8
  %133 = getelementptr inbounds %struct.caam_hash_state, %struct.caam_hash_state* %132, i32 0, i32 2
  %134 = load i8*, i8** %133, align 8
  %135 = call i32 @dpaa2_fl_set_addr(%struct.dpaa2_fl_entry* %131, i8* %134)
  %136 = load %struct.dpaa2_fl_entry*, %struct.dpaa2_fl_entry** %8, align 8
  %137 = load i32, i32* %12, align 4
  %138 = call i32 @dpaa2_fl_set_len(%struct.dpaa2_fl_entry* %136, i32 %137)
  br label %139

139:                                              ; preds = %127, %119
  %140 = load %struct.dpaa2_fl_entry*, %struct.dpaa2_fl_entry** %9, align 8
  %141 = load i32, i32* @dpaa2_fl_single, align 4
  %142 = call i32 @dpaa2_fl_set_format(%struct.dpaa2_fl_entry* %140, i32 %141)
  %143 = load %struct.dpaa2_fl_entry*, %struct.dpaa2_fl_entry** %9, align 8
  %144 = load %struct.caam_hash_state*, %struct.caam_hash_state** %6, align 8
  %145 = getelementptr inbounds %struct.caam_hash_state, %struct.caam_hash_state* %144, i32 0, i32 1
  %146 = load i8*, i8** %145, align 8
  %147 = call i32 @dpaa2_fl_set_addr(%struct.dpaa2_fl_entry* %143, i8* %146)
  %148 = load %struct.dpaa2_fl_entry*, %struct.dpaa2_fl_entry** %9, align 8
  %149 = load i32, i32* %13, align 4
  %150 = call i32 @dpaa2_fl_set_len(%struct.dpaa2_fl_entry* %148, i32 %149)
  %151 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %5, align 8
  %152 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %151, i32 0, i32 2
  %153 = load i32*, i32** %152, align 8
  %154 = load i64, i64* @DIGEST, align 8
  %155 = getelementptr inbounds i32, i32* %153, i64 %154
  %156 = load %struct.caam_request*, %struct.caam_request** %7, align 8
  %157 = getelementptr inbounds %struct.caam_request, %struct.caam_request* %156, i32 0, i32 4
  store i32* %155, i32** %157, align 8
  %158 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %5, align 8
  %159 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %158, i32 0, i32 1
  %160 = load i32*, i32** %159, align 8
  %161 = load i64, i64* @DIGEST, align 8
  %162 = getelementptr inbounds i32, i32* %160, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.caam_request*, %struct.caam_request** %7, align 8
  %165 = getelementptr inbounds %struct.caam_request, %struct.caam_request* %164, i32 0, i32 3
  store i32 %163, i32* %165, align 4
  %166 = load i32, i32* @ahash_done, align 4
  %167 = load %struct.caam_request*, %struct.caam_request** %7, align 8
  %168 = getelementptr inbounds %struct.caam_request, %struct.caam_request* %167, i32 0, i32 2
  store i32 %166, i32* %168, align 8
  %169 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %170 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %169, i32 0, i32 0
  %171 = load %struct.caam_request*, %struct.caam_request** %7, align 8
  %172 = getelementptr inbounds %struct.caam_request, %struct.caam_request* %171, i32 0, i32 1
  store %struct.TYPE_2__* %170, %struct.TYPE_2__** %172, align 8
  %173 = load %struct.ahash_edesc*, %struct.ahash_edesc** %14, align 8
  %174 = load %struct.caam_request*, %struct.caam_request** %7, align 8
  %175 = getelementptr inbounds %struct.caam_request, %struct.caam_request* %174, i32 0, i32 0
  store %struct.ahash_edesc* %173, %struct.ahash_edesc** %175, align 8
  %176 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %5, align 8
  %177 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.caam_request*, %struct.caam_request** %7, align 8
  %180 = call i32 @dpaa2_caam_enqueue(i32 %178, %struct.caam_request* %179)
  store i32 %180, i32* %15, align 4
  %181 = load i32, i32* %15, align 4
  %182 = load i32, i32* @EINPROGRESS, align 4
  %183 = sub nsw i32 0, %182
  %184 = icmp eq i32 %181, %183
  br i1 %184, label %198, label %185

185:                                              ; preds = %139
  %186 = load i32, i32* %15, align 4
  %187 = load i32, i32* @EBUSY, align 4
  %188 = sub nsw i32 0, %187
  %189 = icmp eq i32 %186, %188
  br i1 %189, label %190, label %200

190:                                              ; preds = %185
  %191 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %192 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @CRYPTO_TFM_REQ_MAY_BACKLOG, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %190, %139
  %199 = load i32, i32* %15, align 4
  store i32 %199, i32* %2, align 4
  br label %212

200:                                              ; preds = %190, %185
  br label %201

201:                                              ; preds = %200, %112, %83
  %202 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %5, align 8
  %203 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.ahash_edesc*, %struct.ahash_edesc** %14, align 8
  %206 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %207 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %208 = call i32 @ahash_unmap_ctx(i32 %204, %struct.ahash_edesc* %205, %struct.ahash_request* %206, i32 %207)
  %209 = load %struct.ahash_edesc*, %struct.ahash_edesc** %14, align 8
  %210 = call i32 @qi_cache_free(%struct.ahash_edesc* %209)
  %211 = load i32, i32* %15, align 4
  store i32 %211, i32* %2, align 4
  br label %212

212:                                              ; preds = %201, %198, %60
  %213 = load i32, i32* %2, align 4
  ret i32 %213
}

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local %struct.caam_hash_ctx* @crypto_ahash_ctx(%struct.crypto_ahash*) #1

declare dso_local %struct.caam_hash_state* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32* @current_buf(%struct.caam_hash_state*) #1

declare dso_local i32* @current_buflen(%struct.caam_hash_state*) #1

declare dso_local i32 @crypto_ahash_digestsize(%struct.crypto_ahash*) #1

declare dso_local %struct.ahash_edesc* @qi_cache_zalloc(i32) #1

declare dso_local i8* @dma_map_single(i32, i32*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i8*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @memset(%struct.dpaa2_fl_entry**, i32, i32) #1

declare dso_local i32 @dpaa2_fl_set_final(%struct.dpaa2_fl_entry*, i32) #1

declare dso_local i32 @dpaa2_fl_set_format(%struct.dpaa2_fl_entry*, i32) #1

declare dso_local i32 @dpaa2_fl_set_addr(%struct.dpaa2_fl_entry*, i8*) #1

declare dso_local i32 @dpaa2_fl_set_len(%struct.dpaa2_fl_entry*, i32) #1

declare dso_local i32 @dpaa2_caam_enqueue(i32, %struct.caam_request*) #1

declare dso_local i32 @ahash_unmap_ctx(i32, %struct.ahash_edesc*, %struct.ahash_request*, i32) #1

declare dso_local i32 @qi_cache_free(%struct.ahash_edesc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

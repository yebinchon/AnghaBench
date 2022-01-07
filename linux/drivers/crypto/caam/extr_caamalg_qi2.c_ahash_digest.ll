; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg_qi2.c_ahash_digest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg_qi2.c_ahash_digest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.crypto_ahash = type { i32 }
%struct.caam_hash_ctx = type { i32, i32*, i32* }
%struct.caam_hash_state = type { i32, i8*, %struct.dpaa2_sg_entry*, i64, %struct.caam_request }
%struct.dpaa2_sg_entry = type { i32 }
%struct.caam_request = type { %struct.ahash_edesc*, %struct.TYPE_2__*, i32, i32, i32*, %struct.dpaa2_fl_entry* }
%struct.ahash_edesc = type { i32, i32, i8*, %struct.dpaa2_sg_entry* }
%struct.dpaa2_fl_entry = type { i32 }

@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Invalid number of src SG.\0A\00", align 1
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"unable to map source for DMA\0A\00", align 1
@GFP_DMA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"unable to map S/G table\0A\00", align 1
@dpaa2_fl_sg = common dso_local global i32 0, align 4
@dpaa2_fl_single = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"unable to map ctx\0A\00", align 1
@DIGEST = common dso_local global i64 0, align 8
@ahash_done = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MAY_BACKLOG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @ahash_digest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahash_digest(%struct.ahash_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca %struct.crypto_ahash*, align 8
  %5 = alloca %struct.caam_hash_ctx*, align 8
  %6 = alloca %struct.caam_hash_state*, align 8
  %7 = alloca %struct.caam_request*, align 8
  %8 = alloca %struct.dpaa2_fl_entry*, align 8
  %9 = alloca %struct.dpaa2_fl_entry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ahash_edesc*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.dpaa2_sg_entry*, align 8
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  %18 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %19 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %18)
  store %struct.crypto_ahash* %19, %struct.crypto_ahash** %4, align 8
  %20 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %21 = call %struct.caam_hash_ctx* @crypto_ahash_ctx(%struct.crypto_ahash* %20)
  store %struct.caam_hash_ctx* %21, %struct.caam_hash_ctx** %5, align 8
  %22 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %23 = call %struct.caam_hash_state* @ahash_request_ctx(%struct.ahash_request* %22)
  store %struct.caam_hash_state* %23, %struct.caam_hash_state** %6, align 8
  %24 = load %struct.caam_hash_state*, %struct.caam_hash_state** %6, align 8
  %25 = getelementptr inbounds %struct.caam_hash_state, %struct.caam_hash_state* %24, i32 0, i32 4
  store %struct.caam_request* %25, %struct.caam_request** %7, align 8
  %26 = load %struct.caam_request*, %struct.caam_request** %7, align 8
  %27 = getelementptr inbounds %struct.caam_request, %struct.caam_request* %26, i32 0, i32 5
  %28 = load %struct.dpaa2_fl_entry*, %struct.dpaa2_fl_entry** %27, align 8
  %29 = getelementptr inbounds %struct.dpaa2_fl_entry, %struct.dpaa2_fl_entry* %28, i64 1
  store %struct.dpaa2_fl_entry* %29, %struct.dpaa2_fl_entry** %8, align 8
  %30 = load %struct.caam_request*, %struct.caam_request** %7, align 8
  %31 = getelementptr inbounds %struct.caam_request, %struct.caam_request* %30, i32 0, i32 5
  %32 = load %struct.dpaa2_fl_entry*, %struct.dpaa2_fl_entry** %31, align 8
  %33 = getelementptr inbounds %struct.dpaa2_fl_entry, %struct.dpaa2_fl_entry* %32, i64 0
  store %struct.dpaa2_fl_entry* %33, %struct.dpaa2_fl_entry** %9, align 8
  %34 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %35 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %1
  %42 = load i32, i32* @GFP_KERNEL, align 4
  br label %45

43:                                               ; preds = %1
  %44 = load i32, i32* @GFP_ATOMIC, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  store i32 %46, i32* %10, align 4
  %47 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %48 = call i32 @crypto_ahash_digestsize(%struct.crypto_ahash* %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %15, align 4
  %51 = load %struct.caam_hash_state*, %struct.caam_hash_state** %6, align 8
  %52 = getelementptr inbounds %struct.caam_hash_state, %struct.caam_hash_state* %51, i32 0, i32 3
  store i64 0, i64* %52, align 8
  %53 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %54 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %57 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @sg_nents_for_len(i32 %55, i32 %58)
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %45
  %63 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %5, align 8
  %64 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @dev_err(i32 %65, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %67 = load i32, i32* %12, align 4
  store i32 %67, i32* %2, align 4
  br label %290

68:                                               ; preds = %45
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %90

71:                                               ; preds = %68
  %72 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %5, align 8
  %73 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %76 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* @DMA_TO_DEVICE, align 4
  %80 = call i32 @dma_map_sg(i32 %74, i32 %77, i32 %78, i32 %79)
  store i32 %80, i32* %13, align 4
  %81 = load i32, i32* %13, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %71
  %84 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %5, align 8
  %85 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @dev_err(i32 %86, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %88 = load i32, i32* %15, align 4
  store i32 %88, i32* %2, align 4
  br label %290

89:                                               ; preds = %71
  br label %91

90:                                               ; preds = %68
  store i32 0, i32* %13, align 4
  br label %91

91:                                               ; preds = %90, %89
  %92 = load i32, i32* @GFP_DMA, align 4
  %93 = load i32, i32* %10, align 4
  %94 = or i32 %92, %93
  %95 = call %struct.ahash_edesc* @qi_cache_zalloc(i32 %94)
  store %struct.ahash_edesc* %95, %struct.ahash_edesc** %14, align 8
  %96 = load %struct.ahash_edesc*, %struct.ahash_edesc** %14, align 8
  %97 = icmp ne %struct.ahash_edesc* %96, null
  br i1 %97, label %109, label %98

98:                                               ; preds = %91
  %99 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %5, align 8
  %100 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %103 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* @DMA_TO_DEVICE, align 4
  %107 = call i32 @dma_unmap_sg(i32 %101, i32 %104, i32 %105, i32 %106)
  %108 = load i32, i32* %15, align 4
  store i32 %108, i32* %2, align 4
  br label %290

109:                                              ; preds = %91
  %110 = load i32, i32* %12, align 4
  %111 = load %struct.ahash_edesc*, %struct.ahash_edesc** %14, align 8
  %112 = getelementptr inbounds %struct.ahash_edesc, %struct.ahash_edesc* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  %113 = load %struct.caam_request*, %struct.caam_request** %7, align 8
  %114 = getelementptr inbounds %struct.caam_request, %struct.caam_request* %113, i32 0, i32 5
  %115 = call i32 @memset(%struct.dpaa2_fl_entry** %114, i32 0, i32 8)
  %116 = load i32, i32* %13, align 4
  %117 = icmp sgt i32 %116, 1
  br i1 %117, label %118, label %170

118:                                              ; preds = %109
  %119 = load %struct.ahash_edesc*, %struct.ahash_edesc** %14, align 8
  %120 = getelementptr inbounds %struct.ahash_edesc, %struct.ahash_edesc* %119, i32 0, i32 3
  %121 = load %struct.dpaa2_sg_entry*, %struct.dpaa2_sg_entry** %120, align 8
  %122 = getelementptr inbounds %struct.dpaa2_sg_entry, %struct.dpaa2_sg_entry* %121, i64 0
  store %struct.dpaa2_sg_entry* %122, %struct.dpaa2_sg_entry** %17, align 8
  %123 = load i32, i32* %13, align 4
  %124 = call i32 @pad_sg_nents(i32 %123)
  %125 = sext i32 %124 to i64
  %126 = mul i64 %125, 4
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %16, align 4
  %128 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %129 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %132 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.dpaa2_sg_entry*, %struct.dpaa2_sg_entry** %17, align 8
  %135 = call i32 @sg_to_qm_sg_last(i32 %130, i32 %133, %struct.dpaa2_sg_entry* %134, i32 0)
  %136 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %5, align 8
  %137 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.dpaa2_sg_entry*, %struct.dpaa2_sg_entry** %17, align 8
  %140 = load i32, i32* %16, align 4
  %141 = load i32, i32* @DMA_TO_DEVICE, align 4
  %142 = call i8* @dma_map_single(i32 %138, %struct.dpaa2_sg_entry* %139, i32 %140, i32 %141)
  %143 = load %struct.ahash_edesc*, %struct.ahash_edesc** %14, align 8
  %144 = getelementptr inbounds %struct.ahash_edesc, %struct.ahash_edesc* %143, i32 0, i32 2
  store i8* %142, i8** %144, align 8
  %145 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %5, align 8
  %146 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.ahash_edesc*, %struct.ahash_edesc** %14, align 8
  %149 = getelementptr inbounds %struct.ahash_edesc, %struct.ahash_edesc* %148, i32 0, i32 2
  %150 = load i8*, i8** %149, align 8
  %151 = call i64 @dma_mapping_error(i32 %147, i8* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %118
  %154 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %5, align 8
  %155 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @dev_err(i32 %156, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %279

158:                                              ; preds = %118
  %159 = load i32, i32* %16, align 4
  %160 = load %struct.ahash_edesc*, %struct.ahash_edesc** %14, align 8
  %161 = getelementptr inbounds %struct.ahash_edesc, %struct.ahash_edesc* %160, i32 0, i32 1
  store i32 %159, i32* %161, align 4
  %162 = load %struct.dpaa2_fl_entry*, %struct.dpaa2_fl_entry** %8, align 8
  %163 = load i32, i32* @dpaa2_fl_sg, align 4
  %164 = call i32 @dpaa2_fl_set_format(%struct.dpaa2_fl_entry* %162, i32 %163)
  %165 = load %struct.dpaa2_fl_entry*, %struct.dpaa2_fl_entry** %8, align 8
  %166 = load %struct.ahash_edesc*, %struct.ahash_edesc** %14, align 8
  %167 = getelementptr inbounds %struct.ahash_edesc, %struct.ahash_edesc* %166, i32 0, i32 2
  %168 = load i8*, i8** %167, align 8
  %169 = call i32 @dpaa2_fl_set_addr(%struct.dpaa2_fl_entry* %165, i8* %168)
  br label %180

170:                                              ; preds = %109
  %171 = load %struct.dpaa2_fl_entry*, %struct.dpaa2_fl_entry** %8, align 8
  %172 = load i32, i32* @dpaa2_fl_single, align 4
  %173 = call i32 @dpaa2_fl_set_format(%struct.dpaa2_fl_entry* %171, i32 %172)
  %174 = load %struct.dpaa2_fl_entry*, %struct.dpaa2_fl_entry** %8, align 8
  %175 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %176 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = call i8* @sg_dma_address(i32 %177)
  %179 = call i32 @dpaa2_fl_set_addr(%struct.dpaa2_fl_entry* %174, i8* %178)
  br label %180

180:                                              ; preds = %170, %158
  %181 = load i32, i32* %11, align 4
  %182 = load %struct.caam_hash_state*, %struct.caam_hash_state** %6, align 8
  %183 = getelementptr inbounds %struct.caam_hash_state, %struct.caam_hash_state* %182, i32 0, i32 0
  store i32 %181, i32* %183, align 8
  %184 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %5, align 8
  %185 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.caam_hash_state*, %struct.caam_hash_state** %6, align 8
  %188 = getelementptr inbounds %struct.caam_hash_state, %struct.caam_hash_state* %187, i32 0, i32 2
  %189 = load %struct.dpaa2_sg_entry*, %struct.dpaa2_sg_entry** %188, align 8
  %190 = load i32, i32* %11, align 4
  %191 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %192 = call i8* @dma_map_single(i32 %186, %struct.dpaa2_sg_entry* %189, i32 %190, i32 %191)
  %193 = load %struct.caam_hash_state*, %struct.caam_hash_state** %6, align 8
  %194 = getelementptr inbounds %struct.caam_hash_state, %struct.caam_hash_state* %193, i32 0, i32 1
  store i8* %192, i8** %194, align 8
  %195 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %5, align 8
  %196 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.caam_hash_state*, %struct.caam_hash_state** %6, align 8
  %199 = getelementptr inbounds %struct.caam_hash_state, %struct.caam_hash_state* %198, i32 0, i32 1
  %200 = load i8*, i8** %199, align 8
  %201 = call i64 @dma_mapping_error(i32 %197, i8* %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %210

203:                                              ; preds = %180
  %204 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %5, align 8
  %205 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = call i32 @dev_err(i32 %206, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %208 = load %struct.caam_hash_state*, %struct.caam_hash_state** %6, align 8
  %209 = getelementptr inbounds %struct.caam_hash_state, %struct.caam_hash_state* %208, i32 0, i32 1
  store i8* null, i8** %209, align 8
  br label %279

210:                                              ; preds = %180
  %211 = load %struct.dpaa2_fl_entry*, %struct.dpaa2_fl_entry** %8, align 8
  %212 = call i32 @dpaa2_fl_set_final(%struct.dpaa2_fl_entry* %211, i32 1)
  %213 = load %struct.dpaa2_fl_entry*, %struct.dpaa2_fl_entry** %8, align 8
  %214 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %215 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @dpaa2_fl_set_len(%struct.dpaa2_fl_entry* %213, i32 %216)
  %218 = load %struct.dpaa2_fl_entry*, %struct.dpaa2_fl_entry** %9, align 8
  %219 = load i32, i32* @dpaa2_fl_single, align 4
  %220 = call i32 @dpaa2_fl_set_format(%struct.dpaa2_fl_entry* %218, i32 %219)
  %221 = load %struct.dpaa2_fl_entry*, %struct.dpaa2_fl_entry** %9, align 8
  %222 = load %struct.caam_hash_state*, %struct.caam_hash_state** %6, align 8
  %223 = getelementptr inbounds %struct.caam_hash_state, %struct.caam_hash_state* %222, i32 0, i32 1
  %224 = load i8*, i8** %223, align 8
  %225 = call i32 @dpaa2_fl_set_addr(%struct.dpaa2_fl_entry* %221, i8* %224)
  %226 = load %struct.dpaa2_fl_entry*, %struct.dpaa2_fl_entry** %9, align 8
  %227 = load i32, i32* %11, align 4
  %228 = call i32 @dpaa2_fl_set_len(%struct.dpaa2_fl_entry* %226, i32 %227)
  %229 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %5, align 8
  %230 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %229, i32 0, i32 2
  %231 = load i32*, i32** %230, align 8
  %232 = load i64, i64* @DIGEST, align 8
  %233 = getelementptr inbounds i32, i32* %231, i64 %232
  %234 = load %struct.caam_request*, %struct.caam_request** %7, align 8
  %235 = getelementptr inbounds %struct.caam_request, %struct.caam_request* %234, i32 0, i32 4
  store i32* %233, i32** %235, align 8
  %236 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %5, align 8
  %237 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %236, i32 0, i32 1
  %238 = load i32*, i32** %237, align 8
  %239 = load i64, i64* @DIGEST, align 8
  %240 = getelementptr inbounds i32, i32* %238, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.caam_request*, %struct.caam_request** %7, align 8
  %243 = getelementptr inbounds %struct.caam_request, %struct.caam_request* %242, i32 0, i32 3
  store i32 %241, i32* %243, align 4
  %244 = load i32, i32* @ahash_done, align 4
  %245 = load %struct.caam_request*, %struct.caam_request** %7, align 8
  %246 = getelementptr inbounds %struct.caam_request, %struct.caam_request* %245, i32 0, i32 2
  store i32 %244, i32* %246, align 8
  %247 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %248 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %247, i32 0, i32 1
  %249 = load %struct.caam_request*, %struct.caam_request** %7, align 8
  %250 = getelementptr inbounds %struct.caam_request, %struct.caam_request* %249, i32 0, i32 1
  store %struct.TYPE_2__* %248, %struct.TYPE_2__** %250, align 8
  %251 = load %struct.ahash_edesc*, %struct.ahash_edesc** %14, align 8
  %252 = load %struct.caam_request*, %struct.caam_request** %7, align 8
  %253 = getelementptr inbounds %struct.caam_request, %struct.caam_request* %252, i32 0, i32 0
  store %struct.ahash_edesc* %251, %struct.ahash_edesc** %253, align 8
  %254 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %5, align 8
  %255 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = load %struct.caam_request*, %struct.caam_request** %7, align 8
  %258 = call i32 @dpaa2_caam_enqueue(i32 %256, %struct.caam_request* %257)
  store i32 %258, i32* %15, align 4
  %259 = load i32, i32* %15, align 4
  %260 = load i32, i32* @EINPROGRESS, align 4
  %261 = sub nsw i32 0, %260
  %262 = icmp eq i32 %259, %261
  br i1 %262, label %276, label %263

263:                                              ; preds = %210
  %264 = load i32, i32* %15, align 4
  %265 = load i32, i32* @EBUSY, align 4
  %266 = sub nsw i32 0, %265
  %267 = icmp eq i32 %264, %266
  br i1 %267, label %268, label %278

268:                                              ; preds = %263
  %269 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %270 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %269, i32 0, i32 1
  %271 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = load i32, i32* @CRYPTO_TFM_REQ_MAY_BACKLOG, align 4
  %274 = and i32 %272, %273
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %278

276:                                              ; preds = %268, %210
  %277 = load i32, i32* %15, align 4
  store i32 %277, i32* %2, align 4
  br label %290

278:                                              ; preds = %268, %263
  br label %279

279:                                              ; preds = %278, %203, %153
  %280 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %5, align 8
  %281 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = load %struct.ahash_edesc*, %struct.ahash_edesc** %14, align 8
  %284 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %285 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %286 = call i32 @ahash_unmap_ctx(i32 %282, %struct.ahash_edesc* %283, %struct.ahash_request* %284, i32 %285)
  %287 = load %struct.ahash_edesc*, %struct.ahash_edesc** %14, align 8
  %288 = call i32 @qi_cache_free(%struct.ahash_edesc* %287)
  %289 = load i32, i32* %15, align 4
  store i32 %289, i32* %2, align 4
  br label %290

290:                                              ; preds = %279, %276, %98, %83, %62
  %291 = load i32, i32* %2, align 4
  ret i32 %291
}

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local %struct.caam_hash_ctx* @crypto_ahash_ctx(%struct.crypto_ahash*) #1

declare dso_local %struct.caam_hash_state* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @crypto_ahash_digestsize(%struct.crypto_ahash*) #1

declare dso_local i32 @sg_nents_for_len(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dma_map_sg(i32, i32, i32, i32) #1

declare dso_local %struct.ahash_edesc* @qi_cache_zalloc(i32) #1

declare dso_local i32 @dma_unmap_sg(i32, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.dpaa2_fl_entry**, i32, i32) #1

declare dso_local i32 @pad_sg_nents(i32) #1

declare dso_local i32 @sg_to_qm_sg_last(i32, i32, %struct.dpaa2_sg_entry*, i32) #1

declare dso_local i8* @dma_map_single(i32, %struct.dpaa2_sg_entry*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i8*) #1

declare dso_local i32 @dpaa2_fl_set_format(%struct.dpaa2_fl_entry*, i32) #1

declare dso_local i32 @dpaa2_fl_set_addr(%struct.dpaa2_fl_entry*, i8*) #1

declare dso_local i8* @sg_dma_address(i32) #1

declare dso_local i32 @dpaa2_fl_set_final(%struct.dpaa2_fl_entry*, i32) #1

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

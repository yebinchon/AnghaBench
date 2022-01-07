; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg_qi2.c_ahash_finup_no_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg_qi2.c_ahash_finup_no_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.crypto_ahash = type { i32 }
%struct.caam_hash_ctx = type { i32, i32*, i32* }
%struct.caam_hash_state = type { i32, i8*, %struct.dpaa2_sg_entry*, %struct.caam_request }
%struct.dpaa2_sg_entry = type { i32 }
%struct.caam_request = type { %struct.ahash_edesc*, %struct.TYPE_2__*, i32, i32, i32*, %struct.dpaa2_fl_entry* }
%struct.ahash_edesc = type { i32, i32, i8*, %struct.dpaa2_sg_entry* }
%struct.dpaa2_fl_entry = type { i32 }

@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Invalid number of src SG.\0A\00", align 1
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"unable to DMA map source\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"unable to map S/G table\0A\00", align 1
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"unable to map ctx\0A\00", align 1
@dpaa2_fl_sg = common dso_local global i32 0, align 4
@dpaa2_fl_single = common dso_local global i32 0, align 4
@DIGEST = common dso_local global i64 0, align 8
@ahash_done = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MAY_BACKLOG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @ahash_finup_no_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahash_finup_no_ctx(%struct.ahash_request* %0) #0 {
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
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ahash_edesc*, align 8
  %17 = alloca %struct.dpaa2_sg_entry*, align 8
  %18 = alloca i32, align 4
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  %19 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %20 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %19)
  store %struct.crypto_ahash* %20, %struct.crypto_ahash** %4, align 8
  %21 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %22 = call %struct.caam_hash_ctx* @crypto_ahash_ctx(%struct.crypto_ahash* %21)
  store %struct.caam_hash_ctx* %22, %struct.caam_hash_ctx** %5, align 8
  %23 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %24 = call %struct.caam_hash_state* @ahash_request_ctx(%struct.ahash_request* %23)
  store %struct.caam_hash_state* %24, %struct.caam_hash_state** %6, align 8
  %25 = load %struct.caam_hash_state*, %struct.caam_hash_state** %6, align 8
  %26 = getelementptr inbounds %struct.caam_hash_state, %struct.caam_hash_state* %25, i32 0, i32 3
  store %struct.caam_request* %26, %struct.caam_request** %7, align 8
  %27 = load %struct.caam_request*, %struct.caam_request** %7, align 8
  %28 = getelementptr inbounds %struct.caam_request, %struct.caam_request* %27, i32 0, i32 5
  %29 = load %struct.dpaa2_fl_entry*, %struct.dpaa2_fl_entry** %28, align 8
  %30 = getelementptr inbounds %struct.dpaa2_fl_entry, %struct.dpaa2_fl_entry* %29, i64 1
  store %struct.dpaa2_fl_entry* %30, %struct.dpaa2_fl_entry** %8, align 8
  %31 = load %struct.caam_request*, %struct.caam_request** %7, align 8
  %32 = getelementptr inbounds %struct.caam_request, %struct.caam_request* %31, i32 0, i32 5
  %33 = load %struct.dpaa2_fl_entry*, %struct.dpaa2_fl_entry** %32, align 8
  %34 = getelementptr inbounds %struct.dpaa2_fl_entry, %struct.dpaa2_fl_entry* %33, i64 0
  store %struct.dpaa2_fl_entry* %34, %struct.dpaa2_fl_entry** %9, align 8
  %35 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %36 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %1
  %43 = load i32, i32* @GFP_KERNEL, align 4
  br label %46

44:                                               ; preds = %1
  %45 = load i32, i32* @GFP_ATOMIC, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  store i32 %47, i32* %10, align 4
  %48 = load %struct.caam_hash_state*, %struct.caam_hash_state** %6, align 8
  %49 = call i32* @current_buflen(%struct.caam_hash_state* %48)
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %11, align 4
  %51 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %52 = call i32 @crypto_ahash_digestsize(%struct.crypto_ahash* %51)
  store i32 %52, i32* %15, align 4
  %53 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %54 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %57 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @sg_nents_for_len(i32 %55, i32 %58)
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %46
  %63 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %5, align 8
  %64 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @dev_err(i32 %65, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %67 = load i32, i32* %13, align 4
  store i32 %67, i32* %2, align 4
  br label %297

68:                                               ; preds = %46
  %69 = load i32, i32* %13, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %91

71:                                               ; preds = %68
  %72 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %5, align 8
  %73 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %76 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* @DMA_TO_DEVICE, align 4
  %80 = call i32 @dma_map_sg(i32 %74, i32 %77, i32 %78, i32 %79)
  store i32 %80, i32* %14, align 4
  %81 = load i32, i32* %14, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %90, label %83

83:                                               ; preds = %71
  %84 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %5, align 8
  %85 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @dev_err(i32 %86, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %88 = load i32, i32* @ENOMEM, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %2, align 4
  br label %297

90:                                               ; preds = %71
  br label %92

91:                                               ; preds = %68
  store i32 0, i32* %14, align 4
  br label %92

92:                                               ; preds = %91, %90
  %93 = load i32, i32* @GFP_DMA, align 4
  %94 = load i32, i32* %10, align 4
  %95 = or i32 %93, %94
  %96 = call %struct.ahash_edesc* @qi_cache_zalloc(i32 %95)
  store %struct.ahash_edesc* %96, %struct.ahash_edesc** %16, align 8
  %97 = load %struct.ahash_edesc*, %struct.ahash_edesc** %16, align 8
  %98 = icmp ne %struct.ahash_edesc* %97, null
  br i1 %98, label %111, label %99

99:                                               ; preds = %92
  %100 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %5, align 8
  %101 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %104 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* @DMA_TO_DEVICE, align 4
  %108 = call i32 @dma_unmap_sg(i32 %102, i32 %105, i32 %106, i32 %107)
  %109 = load i32, i32* @ENOMEM, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %2, align 4
  br label %297

111:                                              ; preds = %92
  %112 = load i32, i32* %13, align 4
  %113 = load %struct.ahash_edesc*, %struct.ahash_edesc** %16, align 8
  %114 = getelementptr inbounds %struct.ahash_edesc, %struct.ahash_edesc* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  %115 = load i32, i32* %14, align 4
  %116 = add nsw i32 2, %115
  %117 = call i32 @pad_sg_nents(i32 %116)
  %118 = sext i32 %117 to i64
  %119 = mul i64 %118, 4
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %12, align 4
  %121 = load %struct.ahash_edesc*, %struct.ahash_edesc** %16, align 8
  %122 = getelementptr inbounds %struct.ahash_edesc, %struct.ahash_edesc* %121, i32 0, i32 3
  %123 = load %struct.dpaa2_sg_entry*, %struct.dpaa2_sg_entry** %122, align 8
  %124 = getelementptr inbounds %struct.dpaa2_sg_entry, %struct.dpaa2_sg_entry* %123, i64 0
  store %struct.dpaa2_sg_entry* %124, %struct.dpaa2_sg_entry** %17, align 8
  %125 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %5, align 8
  %126 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.dpaa2_sg_entry*, %struct.dpaa2_sg_entry** %17, align 8
  %129 = load %struct.caam_hash_state*, %struct.caam_hash_state** %6, align 8
  %130 = call i32 @buf_map_to_qm_sg(i32 %127, %struct.dpaa2_sg_entry* %128, %struct.caam_hash_state* %129)
  store i32 %130, i32* %18, align 4
  %131 = load i32, i32* %18, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %111
  br label %285

134:                                              ; preds = %111
  %135 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %136 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %139 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.dpaa2_sg_entry*, %struct.dpaa2_sg_entry** %17, align 8
  %142 = getelementptr inbounds %struct.dpaa2_sg_entry, %struct.dpaa2_sg_entry* %141, i64 1
  %143 = call i32 @sg_to_qm_sg_last(i32 %137, i32 %140, %struct.dpaa2_sg_entry* %142, i32 0)
  %144 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %5, align 8
  %145 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.dpaa2_sg_entry*, %struct.dpaa2_sg_entry** %17, align 8
  %148 = load i32, i32* %12, align 4
  %149 = load i32, i32* @DMA_TO_DEVICE, align 4
  %150 = call i8* @dma_map_single(i32 %146, %struct.dpaa2_sg_entry* %147, i32 %148, i32 %149)
  %151 = load %struct.ahash_edesc*, %struct.ahash_edesc** %16, align 8
  %152 = getelementptr inbounds %struct.ahash_edesc, %struct.ahash_edesc* %151, i32 0, i32 2
  store i8* %150, i8** %152, align 8
  %153 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %5, align 8
  %154 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.ahash_edesc*, %struct.ahash_edesc** %16, align 8
  %157 = getelementptr inbounds %struct.ahash_edesc, %struct.ahash_edesc* %156, i32 0, i32 2
  %158 = load i8*, i8** %157, align 8
  %159 = call i64 @dma_mapping_error(i32 %155, i8* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %168

161:                                              ; preds = %134
  %162 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %5, align 8
  %163 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @dev_err(i32 %164, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %166 = load i32, i32* @ENOMEM, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %18, align 4
  br label %285

168:                                              ; preds = %134
  %169 = load i32, i32* %12, align 4
  %170 = load %struct.ahash_edesc*, %struct.ahash_edesc** %16, align 8
  %171 = getelementptr inbounds %struct.ahash_edesc, %struct.ahash_edesc* %170, i32 0, i32 1
  store i32 %169, i32* %171, align 4
  %172 = load i32, i32* %15, align 4
  %173 = load %struct.caam_hash_state*, %struct.caam_hash_state** %6, align 8
  %174 = getelementptr inbounds %struct.caam_hash_state, %struct.caam_hash_state* %173, i32 0, i32 0
  store i32 %172, i32* %174, align 8
  %175 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %5, align 8
  %176 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.caam_hash_state*, %struct.caam_hash_state** %6, align 8
  %179 = getelementptr inbounds %struct.caam_hash_state, %struct.caam_hash_state* %178, i32 0, i32 2
  %180 = load %struct.dpaa2_sg_entry*, %struct.dpaa2_sg_entry** %179, align 8
  %181 = load i32, i32* %15, align 4
  %182 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %183 = call i8* @dma_map_single(i32 %177, %struct.dpaa2_sg_entry* %180, i32 %181, i32 %182)
  %184 = load %struct.caam_hash_state*, %struct.caam_hash_state** %6, align 8
  %185 = getelementptr inbounds %struct.caam_hash_state, %struct.caam_hash_state* %184, i32 0, i32 1
  store i8* %183, i8** %185, align 8
  %186 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %5, align 8
  %187 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.caam_hash_state*, %struct.caam_hash_state** %6, align 8
  %190 = getelementptr inbounds %struct.caam_hash_state, %struct.caam_hash_state* %189, i32 0, i32 1
  %191 = load i8*, i8** %190, align 8
  %192 = call i64 @dma_mapping_error(i32 %188, i8* %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %203

194:                                              ; preds = %168
  %195 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %5, align 8
  %196 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @dev_err(i32 %197, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %199 = load %struct.caam_hash_state*, %struct.caam_hash_state** %6, align 8
  %200 = getelementptr inbounds %struct.caam_hash_state, %struct.caam_hash_state* %199, i32 0, i32 1
  store i8* null, i8** %200, align 8
  %201 = load i32, i32* @ENOMEM, align 4
  %202 = sub nsw i32 0, %201
  store i32 %202, i32* %18, align 4
  br label %285

203:                                              ; preds = %168
  %204 = load %struct.caam_request*, %struct.caam_request** %7, align 8
  %205 = getelementptr inbounds %struct.caam_request, %struct.caam_request* %204, i32 0, i32 5
  %206 = call i32 @memset(%struct.dpaa2_fl_entry** %205, i32 0, i32 8)
  %207 = load %struct.dpaa2_fl_entry*, %struct.dpaa2_fl_entry** %8, align 8
  %208 = call i32 @dpaa2_fl_set_final(%struct.dpaa2_fl_entry* %207, i32 1)
  %209 = load %struct.dpaa2_fl_entry*, %struct.dpaa2_fl_entry** %8, align 8
  %210 = load i32, i32* @dpaa2_fl_sg, align 4
  %211 = call i32 @dpaa2_fl_set_format(%struct.dpaa2_fl_entry* %209, i32 %210)
  %212 = load %struct.dpaa2_fl_entry*, %struct.dpaa2_fl_entry** %8, align 8
  %213 = load %struct.ahash_edesc*, %struct.ahash_edesc** %16, align 8
  %214 = getelementptr inbounds %struct.ahash_edesc, %struct.ahash_edesc* %213, i32 0, i32 2
  %215 = load i8*, i8** %214, align 8
  %216 = call i32 @dpaa2_fl_set_addr(%struct.dpaa2_fl_entry* %212, i8* %215)
  %217 = load %struct.dpaa2_fl_entry*, %struct.dpaa2_fl_entry** %8, align 8
  %218 = load i32, i32* %11, align 4
  %219 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %220 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = add nsw i32 %218, %221
  %223 = call i32 @dpaa2_fl_set_len(%struct.dpaa2_fl_entry* %217, i32 %222)
  %224 = load %struct.dpaa2_fl_entry*, %struct.dpaa2_fl_entry** %9, align 8
  %225 = load i32, i32* @dpaa2_fl_single, align 4
  %226 = call i32 @dpaa2_fl_set_format(%struct.dpaa2_fl_entry* %224, i32 %225)
  %227 = load %struct.dpaa2_fl_entry*, %struct.dpaa2_fl_entry** %9, align 8
  %228 = load %struct.caam_hash_state*, %struct.caam_hash_state** %6, align 8
  %229 = getelementptr inbounds %struct.caam_hash_state, %struct.caam_hash_state* %228, i32 0, i32 1
  %230 = load i8*, i8** %229, align 8
  %231 = call i32 @dpaa2_fl_set_addr(%struct.dpaa2_fl_entry* %227, i8* %230)
  %232 = load %struct.dpaa2_fl_entry*, %struct.dpaa2_fl_entry** %9, align 8
  %233 = load i32, i32* %15, align 4
  %234 = call i32 @dpaa2_fl_set_len(%struct.dpaa2_fl_entry* %232, i32 %233)
  %235 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %5, align 8
  %236 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %235, i32 0, i32 2
  %237 = load i32*, i32** %236, align 8
  %238 = load i64, i64* @DIGEST, align 8
  %239 = getelementptr inbounds i32, i32* %237, i64 %238
  %240 = load %struct.caam_request*, %struct.caam_request** %7, align 8
  %241 = getelementptr inbounds %struct.caam_request, %struct.caam_request* %240, i32 0, i32 4
  store i32* %239, i32** %241, align 8
  %242 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %5, align 8
  %243 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %242, i32 0, i32 1
  %244 = load i32*, i32** %243, align 8
  %245 = load i64, i64* @DIGEST, align 8
  %246 = getelementptr inbounds i32, i32* %244, i64 %245
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.caam_request*, %struct.caam_request** %7, align 8
  %249 = getelementptr inbounds %struct.caam_request, %struct.caam_request* %248, i32 0, i32 3
  store i32 %247, i32* %249, align 4
  %250 = load i32, i32* @ahash_done, align 4
  %251 = load %struct.caam_request*, %struct.caam_request** %7, align 8
  %252 = getelementptr inbounds %struct.caam_request, %struct.caam_request* %251, i32 0, i32 2
  store i32 %250, i32* %252, align 8
  %253 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %254 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %253, i32 0, i32 1
  %255 = load %struct.caam_request*, %struct.caam_request** %7, align 8
  %256 = getelementptr inbounds %struct.caam_request, %struct.caam_request* %255, i32 0, i32 1
  store %struct.TYPE_2__* %254, %struct.TYPE_2__** %256, align 8
  %257 = load %struct.ahash_edesc*, %struct.ahash_edesc** %16, align 8
  %258 = load %struct.caam_request*, %struct.caam_request** %7, align 8
  %259 = getelementptr inbounds %struct.caam_request, %struct.caam_request* %258, i32 0, i32 0
  store %struct.ahash_edesc* %257, %struct.ahash_edesc** %259, align 8
  %260 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %5, align 8
  %261 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = load %struct.caam_request*, %struct.caam_request** %7, align 8
  %264 = call i32 @dpaa2_caam_enqueue(i32 %262, %struct.caam_request* %263)
  store i32 %264, i32* %18, align 4
  %265 = load i32, i32* %18, align 4
  %266 = load i32, i32* @EINPROGRESS, align 4
  %267 = sub nsw i32 0, %266
  %268 = icmp ne i32 %265, %267
  br i1 %268, label %269, label %283

269:                                              ; preds = %203
  %270 = load i32, i32* %18, align 4
  %271 = load i32, i32* @EBUSY, align 4
  %272 = sub nsw i32 0, %271
  %273 = icmp eq i32 %270, %272
  br i1 %273, label %274, label %282

274:                                              ; preds = %269
  %275 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %276 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %275, i32 0, i32 1
  %277 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = load i32, i32* @CRYPTO_TFM_REQ_MAY_BACKLOG, align 4
  %280 = and i32 %278, %279
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %283, label %282

282:                                              ; preds = %274, %269
  br label %285

283:                                              ; preds = %274, %203
  %284 = load i32, i32* %18, align 4
  store i32 %284, i32* %2, align 4
  br label %297

285:                                              ; preds = %282, %194, %161, %133
  %286 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %5, align 8
  %287 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = load %struct.ahash_edesc*, %struct.ahash_edesc** %16, align 8
  %290 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %291 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %292 = call i32 @ahash_unmap_ctx(i32 %288, %struct.ahash_edesc* %289, %struct.ahash_request* %290, i32 %291)
  %293 = load %struct.ahash_edesc*, %struct.ahash_edesc** %16, align 8
  %294 = call i32 @qi_cache_free(%struct.ahash_edesc* %293)
  %295 = load i32, i32* @ENOMEM, align 4
  %296 = sub nsw i32 0, %295
  store i32 %296, i32* %2, align 4
  br label %297

297:                                              ; preds = %285, %283, %99, %83, %62
  %298 = load i32, i32* %2, align 4
  ret i32 %298
}

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local %struct.caam_hash_ctx* @crypto_ahash_ctx(%struct.crypto_ahash*) #1

declare dso_local %struct.caam_hash_state* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32* @current_buflen(%struct.caam_hash_state*) #1

declare dso_local i32 @crypto_ahash_digestsize(%struct.crypto_ahash*) #1

declare dso_local i32 @sg_nents_for_len(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dma_map_sg(i32, i32, i32, i32) #1

declare dso_local %struct.ahash_edesc* @qi_cache_zalloc(i32) #1

declare dso_local i32 @dma_unmap_sg(i32, i32, i32, i32) #1

declare dso_local i32 @pad_sg_nents(i32) #1

declare dso_local i32 @buf_map_to_qm_sg(i32, %struct.dpaa2_sg_entry*, %struct.caam_hash_state*) #1

declare dso_local i32 @sg_to_qm_sg_last(i32, i32, %struct.dpaa2_sg_entry*, i32) #1

declare dso_local i8* @dma_map_single(i32, %struct.dpaa2_sg_entry*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i8*) #1

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

; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg_qi2.c_ahash_finup_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg_qi2.c_ahash_finup_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.crypto_ahash = type { i32 }
%struct.caam_hash_ctx = type { i32, i32, i32*, i32* }
%struct.caam_hash_state = type { i32, %struct.caam_request }
%struct.caam_request = type { %struct.ahash_edesc*, %struct.TYPE_2__*, i32, i32, i32*, %struct.dpaa2_fl_entry* }
%struct.ahash_edesc = type { i32, i32, i32, %struct.dpaa2_sg_entry* }
%struct.dpaa2_sg_entry = type { i32 }
%struct.dpaa2_fl_entry = type { i32 }

@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Invalid number of src SG.\0A\00", align 1
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"unable to DMA map source\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"unable to map S/G table\0A\00", align 1
@dpaa2_fl_sg = common dso_local global i32 0, align 4
@dpaa2_fl_single = common dso_local global i32 0, align 4
@FINALIZE = common dso_local global i64 0, align 8
@ahash_done_ctx_src = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MAY_BACKLOG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @ahash_finup_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahash_finup_ctx(%struct.ahash_request* %0) #0 {
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
  %16 = alloca i32, align 4
  %17 = alloca %struct.ahash_edesc*, align 8
  %18 = alloca %struct.dpaa2_sg_entry*, align 8
  %19 = alloca i32, align 4
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  %20 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %21 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %20)
  store %struct.crypto_ahash* %21, %struct.crypto_ahash** %4, align 8
  %22 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %23 = call %struct.caam_hash_ctx* @crypto_ahash_ctx(%struct.crypto_ahash* %22)
  store %struct.caam_hash_ctx* %23, %struct.caam_hash_ctx** %5, align 8
  %24 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %25 = call %struct.caam_hash_state* @ahash_request_ctx(%struct.ahash_request* %24)
  store %struct.caam_hash_state* %25, %struct.caam_hash_state** %6, align 8
  %26 = load %struct.caam_hash_state*, %struct.caam_hash_state** %6, align 8
  %27 = getelementptr inbounds %struct.caam_hash_state, %struct.caam_hash_state* %26, i32 0, i32 1
  store %struct.caam_request* %27, %struct.caam_request** %7, align 8
  %28 = load %struct.caam_request*, %struct.caam_request** %7, align 8
  %29 = getelementptr inbounds %struct.caam_request, %struct.caam_request* %28, i32 0, i32 5
  %30 = load %struct.dpaa2_fl_entry*, %struct.dpaa2_fl_entry** %29, align 8
  %31 = getelementptr inbounds %struct.dpaa2_fl_entry, %struct.dpaa2_fl_entry* %30, i64 1
  store %struct.dpaa2_fl_entry* %31, %struct.dpaa2_fl_entry** %8, align 8
  %32 = load %struct.caam_request*, %struct.caam_request** %7, align 8
  %33 = getelementptr inbounds %struct.caam_request, %struct.caam_request* %32, i32 0, i32 5
  %34 = load %struct.dpaa2_fl_entry*, %struct.dpaa2_fl_entry** %33, align 8
  %35 = getelementptr inbounds %struct.dpaa2_fl_entry, %struct.dpaa2_fl_entry* %34, i64 0
  store %struct.dpaa2_fl_entry* %35, %struct.dpaa2_fl_entry** %9, align 8
  %36 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %37 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %1
  %44 = load i32, i32* @GFP_KERNEL, align 4
  br label %47

45:                                               ; preds = %1
  %46 = load i32, i32* @GFP_ATOMIC, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  store i32 %48, i32* %10, align 4
  %49 = load %struct.caam_hash_state*, %struct.caam_hash_state** %6, align 8
  %50 = call i32* @current_buflen(%struct.caam_hash_state* %49)
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %11, align 4
  %52 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %53 = call i32 @crypto_ahash_digestsize(%struct.crypto_ahash* %52)
  store i32 %53, i32* %16, align 4
  %54 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %55 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %58 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @sg_nents_for_len(i32 %56, i32 %59)
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %14, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %47
  %64 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %5, align 8
  %65 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @dev_err(i32 %66, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %68 = load i32, i32* %14, align 4
  store i32 %68, i32* %2, align 4
  br label %292

69:                                               ; preds = %47
  %70 = load i32, i32* %14, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %92

72:                                               ; preds = %69
  %73 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %5, align 8
  %74 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %77 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* @DMA_TO_DEVICE, align 4
  %81 = call i32 @dma_map_sg(i32 %75, i32 %78, i32 %79, i32 %80)
  store i32 %81, i32* %15, align 4
  %82 = load i32, i32* %15, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %91, label %84

84:                                               ; preds = %72
  %85 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %5, align 8
  %86 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @dev_err(i32 %87, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %89 = load i32, i32* @ENOMEM, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %2, align 4
  br label %292

91:                                               ; preds = %72
  br label %93

92:                                               ; preds = %69
  store i32 0, i32* %15, align 4
  br label %93

93:                                               ; preds = %92, %91
  %94 = load i32, i32* @GFP_DMA, align 4
  %95 = load i32, i32* %10, align 4
  %96 = or i32 %94, %95
  %97 = call %struct.ahash_edesc* @qi_cache_zalloc(i32 %96)
  store %struct.ahash_edesc* %97, %struct.ahash_edesc** %17, align 8
  %98 = load %struct.ahash_edesc*, %struct.ahash_edesc** %17, align 8
  %99 = icmp ne %struct.ahash_edesc* %98, null
  br i1 %99, label %112, label %100

100:                                              ; preds = %93
  %101 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %5, align 8
  %102 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %105 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* @DMA_TO_DEVICE, align 4
  %109 = call i32 @dma_unmap_sg(i32 %103, i32 %106, i32 %107, i32 %108)
  %110 = load i32, i32* @ENOMEM, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %2, align 4
  br label %292

112:                                              ; preds = %93
  %113 = load i32, i32* %14, align 4
  %114 = load %struct.ahash_edesc*, %struct.ahash_edesc** %17, align 8
  %115 = getelementptr inbounds %struct.ahash_edesc, %struct.ahash_edesc* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  %116 = load i32, i32* %11, align 4
  %117 = icmp ne i32 %116, 0
  %118 = zext i1 %117 to i64
  %119 = select i1 %117, i32 1, i32 0
  %120 = add nsw i32 1, %119
  store i32 %120, i32* %13, align 4
  %121 = load i32, i32* %13, align 4
  %122 = load i32, i32* %15, align 4
  %123 = add nsw i32 %121, %122
  %124 = call i32 @pad_sg_nents(i32 %123)
  %125 = sext i32 %124 to i64
  %126 = mul i64 %125, 4
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %12, align 4
  %128 = load %struct.ahash_edesc*, %struct.ahash_edesc** %17, align 8
  %129 = getelementptr inbounds %struct.ahash_edesc, %struct.ahash_edesc* %128, i32 0, i32 3
  %130 = load %struct.dpaa2_sg_entry*, %struct.dpaa2_sg_entry** %129, align 8
  %131 = getelementptr inbounds %struct.dpaa2_sg_entry, %struct.dpaa2_sg_entry* %130, i64 0
  store %struct.dpaa2_sg_entry* %131, %struct.dpaa2_sg_entry** %18, align 8
  %132 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %5, align 8
  %133 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.caam_hash_state*, %struct.caam_hash_state** %6, align 8
  %136 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %5, align 8
  %137 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.dpaa2_sg_entry*, %struct.dpaa2_sg_entry** %18, align 8
  %140 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %141 = call i32 @ctx_map_to_qm_sg(i32 %134, %struct.caam_hash_state* %135, i32 %138, %struct.dpaa2_sg_entry* %139, i32 %140)
  store i32 %141, i32* %19, align 4
  %142 = load i32, i32* %19, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %112
  br label %281

145:                                              ; preds = %112
  %146 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %5, align 8
  %147 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.dpaa2_sg_entry*, %struct.dpaa2_sg_entry** %18, align 8
  %150 = getelementptr inbounds %struct.dpaa2_sg_entry, %struct.dpaa2_sg_entry* %149, i64 1
  %151 = load %struct.caam_hash_state*, %struct.caam_hash_state** %6, align 8
  %152 = call i32 @buf_map_to_qm_sg(i32 %148, %struct.dpaa2_sg_entry* %150, %struct.caam_hash_state* %151)
  store i32 %152, i32* %19, align 4
  %153 = load i32, i32* %19, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %145
  br label %281

156:                                              ; preds = %145
  %157 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %158 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %161 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.dpaa2_sg_entry*, %struct.dpaa2_sg_entry** %18, align 8
  %164 = load i32, i32* %13, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.dpaa2_sg_entry, %struct.dpaa2_sg_entry* %163, i64 %165
  %167 = call i32 @sg_to_qm_sg_last(i32 %159, i32 %162, %struct.dpaa2_sg_entry* %166, i32 0)
  %168 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %5, align 8
  %169 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.dpaa2_sg_entry*, %struct.dpaa2_sg_entry** %18, align 8
  %172 = load i32, i32* %12, align 4
  %173 = load i32, i32* @DMA_TO_DEVICE, align 4
  %174 = call i32 @dma_map_single(i32 %170, %struct.dpaa2_sg_entry* %171, i32 %172, i32 %173)
  %175 = load %struct.ahash_edesc*, %struct.ahash_edesc** %17, align 8
  %176 = getelementptr inbounds %struct.ahash_edesc, %struct.ahash_edesc* %175, i32 0, i32 2
  store i32 %174, i32* %176, align 8
  %177 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %5, align 8
  %178 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.ahash_edesc*, %struct.ahash_edesc** %17, align 8
  %181 = getelementptr inbounds %struct.ahash_edesc, %struct.ahash_edesc* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = call i64 @dma_mapping_error(i32 %179, i32 %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %192

185:                                              ; preds = %156
  %186 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %5, align 8
  %187 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @dev_err(i32 %188, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %190 = load i32, i32* @ENOMEM, align 4
  %191 = sub nsw i32 0, %190
  store i32 %191, i32* %19, align 4
  br label %281

192:                                              ; preds = %156
  %193 = load i32, i32* %12, align 4
  %194 = load %struct.ahash_edesc*, %struct.ahash_edesc** %17, align 8
  %195 = getelementptr inbounds %struct.ahash_edesc, %struct.ahash_edesc* %194, i32 0, i32 1
  store i32 %193, i32* %195, align 4
  %196 = load %struct.caam_request*, %struct.caam_request** %7, align 8
  %197 = getelementptr inbounds %struct.caam_request, %struct.caam_request* %196, i32 0, i32 5
  %198 = call i32 @memset(%struct.dpaa2_fl_entry** %197, i32 0, i32 8)
  %199 = load %struct.dpaa2_fl_entry*, %struct.dpaa2_fl_entry** %8, align 8
  %200 = call i32 @dpaa2_fl_set_final(%struct.dpaa2_fl_entry* %199, i32 1)
  %201 = load %struct.dpaa2_fl_entry*, %struct.dpaa2_fl_entry** %8, align 8
  %202 = load i32, i32* @dpaa2_fl_sg, align 4
  %203 = call i32 @dpaa2_fl_set_format(%struct.dpaa2_fl_entry* %201, i32 %202)
  %204 = load %struct.dpaa2_fl_entry*, %struct.dpaa2_fl_entry** %8, align 8
  %205 = load %struct.ahash_edesc*, %struct.ahash_edesc** %17, align 8
  %206 = getelementptr inbounds %struct.ahash_edesc, %struct.ahash_edesc* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @dpaa2_fl_set_addr(%struct.dpaa2_fl_entry* %204, i32 %207)
  %209 = load %struct.dpaa2_fl_entry*, %struct.dpaa2_fl_entry** %8, align 8
  %210 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %5, align 8
  %211 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* %11, align 4
  %214 = add nsw i32 %212, %213
  %215 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %216 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = add nsw i32 %214, %217
  %219 = call i32 @dpaa2_fl_set_len(%struct.dpaa2_fl_entry* %209, i32 %218)
  %220 = load %struct.dpaa2_fl_entry*, %struct.dpaa2_fl_entry** %9, align 8
  %221 = load i32, i32* @dpaa2_fl_single, align 4
  %222 = call i32 @dpaa2_fl_set_format(%struct.dpaa2_fl_entry* %220, i32 %221)
  %223 = load %struct.dpaa2_fl_entry*, %struct.dpaa2_fl_entry** %9, align 8
  %224 = load %struct.caam_hash_state*, %struct.caam_hash_state** %6, align 8
  %225 = getelementptr inbounds %struct.caam_hash_state, %struct.caam_hash_state* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = call i32 @dpaa2_fl_set_addr(%struct.dpaa2_fl_entry* %223, i32 %226)
  %228 = load %struct.dpaa2_fl_entry*, %struct.dpaa2_fl_entry** %9, align 8
  %229 = load i32, i32* %16, align 4
  %230 = call i32 @dpaa2_fl_set_len(%struct.dpaa2_fl_entry* %228, i32 %229)
  %231 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %5, align 8
  %232 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %231, i32 0, i32 3
  %233 = load i32*, i32** %232, align 8
  %234 = load i64, i64* @FINALIZE, align 8
  %235 = getelementptr inbounds i32, i32* %233, i64 %234
  %236 = load %struct.caam_request*, %struct.caam_request** %7, align 8
  %237 = getelementptr inbounds %struct.caam_request, %struct.caam_request* %236, i32 0, i32 4
  store i32* %235, i32** %237, align 8
  %238 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %5, align 8
  %239 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %238, i32 0, i32 2
  %240 = load i32*, i32** %239, align 8
  %241 = load i64, i64* @FINALIZE, align 8
  %242 = getelementptr inbounds i32, i32* %240, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.caam_request*, %struct.caam_request** %7, align 8
  %245 = getelementptr inbounds %struct.caam_request, %struct.caam_request* %244, i32 0, i32 3
  store i32 %243, i32* %245, align 4
  %246 = load i32, i32* @ahash_done_ctx_src, align 4
  %247 = load %struct.caam_request*, %struct.caam_request** %7, align 8
  %248 = getelementptr inbounds %struct.caam_request, %struct.caam_request* %247, i32 0, i32 2
  store i32 %246, i32* %248, align 8
  %249 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %250 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %249, i32 0, i32 1
  %251 = load %struct.caam_request*, %struct.caam_request** %7, align 8
  %252 = getelementptr inbounds %struct.caam_request, %struct.caam_request* %251, i32 0, i32 1
  store %struct.TYPE_2__* %250, %struct.TYPE_2__** %252, align 8
  %253 = load %struct.ahash_edesc*, %struct.ahash_edesc** %17, align 8
  %254 = load %struct.caam_request*, %struct.caam_request** %7, align 8
  %255 = getelementptr inbounds %struct.caam_request, %struct.caam_request* %254, i32 0, i32 0
  store %struct.ahash_edesc* %253, %struct.ahash_edesc** %255, align 8
  %256 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %5, align 8
  %257 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = load %struct.caam_request*, %struct.caam_request** %7, align 8
  %260 = call i32 @dpaa2_caam_enqueue(i32 %258, %struct.caam_request* %259)
  store i32 %260, i32* %19, align 4
  %261 = load i32, i32* %19, align 4
  %262 = load i32, i32* @EINPROGRESS, align 4
  %263 = sub nsw i32 0, %262
  %264 = icmp eq i32 %261, %263
  br i1 %264, label %278, label %265

265:                                              ; preds = %192
  %266 = load i32, i32* %19, align 4
  %267 = load i32, i32* @EBUSY, align 4
  %268 = sub nsw i32 0, %267
  %269 = icmp eq i32 %266, %268
  br i1 %269, label %270, label %280

270:                                              ; preds = %265
  %271 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %272 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %271, i32 0, i32 1
  %273 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = load i32, i32* @CRYPTO_TFM_REQ_MAY_BACKLOG, align 4
  %276 = and i32 %274, %275
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %280

278:                                              ; preds = %270, %192
  %279 = load i32, i32* %19, align 4
  store i32 %279, i32* %2, align 4
  br label %292

280:                                              ; preds = %270, %265
  br label %281

281:                                              ; preds = %280, %185, %155, %144
  %282 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %5, align 8
  %283 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 4
  %285 = load %struct.ahash_edesc*, %struct.ahash_edesc** %17, align 8
  %286 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %287 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %288 = call i32 @ahash_unmap_ctx(i32 %284, %struct.ahash_edesc* %285, %struct.ahash_request* %286, i32 %287)
  %289 = load %struct.ahash_edesc*, %struct.ahash_edesc** %17, align 8
  %290 = call i32 @qi_cache_free(%struct.ahash_edesc* %289)
  %291 = load i32, i32* %19, align 4
  store i32 %291, i32* %2, align 4
  br label %292

292:                                              ; preds = %281, %278, %100, %84, %63
  %293 = load i32, i32* %2, align 4
  ret i32 %293
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

declare dso_local i32 @ctx_map_to_qm_sg(i32, %struct.caam_hash_state*, i32, %struct.dpaa2_sg_entry*, i32) #1

declare dso_local i32 @buf_map_to_qm_sg(i32, %struct.dpaa2_sg_entry*, %struct.caam_hash_state*) #1

declare dso_local i32 @sg_to_qm_sg_last(i32, i32, %struct.dpaa2_sg_entry*, i32) #1

declare dso_local i32 @dma_map_single(i32, %struct.dpaa2_sg_entry*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @memset(%struct.dpaa2_fl_entry**, i32, i32) #1

declare dso_local i32 @dpaa2_fl_set_final(%struct.dpaa2_fl_entry*, i32) #1

declare dso_local i32 @dpaa2_fl_set_format(%struct.dpaa2_fl_entry*, i32) #1

declare dso_local i32 @dpaa2_fl_set_addr(%struct.dpaa2_fl_entry*, i32) #1

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

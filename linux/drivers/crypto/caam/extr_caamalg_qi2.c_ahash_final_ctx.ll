; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg_qi2.c_ahash_final_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg_qi2.c_ahash_final_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.crypto_ahash = type { i32 }
%struct.caam_hash_ctx = type { i32, i32, i32*, i32* }
%struct.caam_hash_state = type { i32, %struct.caam_request }
%struct.caam_request = type { %struct.ahash_edesc*, %struct.TYPE_2__*, i32, i32, i32*, %struct.dpaa2_fl_entry* }
%struct.ahash_edesc = type { i32, i32, %struct.dpaa2_sg_entry* }
%struct.dpaa2_sg_entry = type { i32 }
%struct.dpaa2_fl_entry = type { i32 }

@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"unable to map S/G table\0A\00", align 1
@dpaa2_fl_sg = common dso_local global i32 0, align 4
@dpaa2_fl_single = common dso_local global i32 0, align 4
@FINALIZE = common dso_local global i64 0, align 8
@ahash_done_ctx_src = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MAY_BACKLOG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @ahash_final_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahash_final_ctx(%struct.ahash_request* %0) #0 {
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
  %15 = alloca %struct.dpaa2_sg_entry*, align 8
  %16 = alloca i32, align 4
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  %17 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %18 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %17)
  store %struct.crypto_ahash* %18, %struct.crypto_ahash** %4, align 8
  %19 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %20 = call %struct.caam_hash_ctx* @crypto_ahash_ctx(%struct.crypto_ahash* %19)
  store %struct.caam_hash_ctx* %20, %struct.caam_hash_ctx** %5, align 8
  %21 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %22 = call %struct.caam_hash_state* @ahash_request_ctx(%struct.ahash_request* %21)
  store %struct.caam_hash_state* %22, %struct.caam_hash_state** %6, align 8
  %23 = load %struct.caam_hash_state*, %struct.caam_hash_state** %6, align 8
  %24 = getelementptr inbounds %struct.caam_hash_state, %struct.caam_hash_state* %23, i32 0, i32 1
  store %struct.caam_request* %24, %struct.caam_request** %7, align 8
  %25 = load %struct.caam_request*, %struct.caam_request** %7, align 8
  %26 = getelementptr inbounds %struct.caam_request, %struct.caam_request* %25, i32 0, i32 5
  %27 = load %struct.dpaa2_fl_entry*, %struct.dpaa2_fl_entry** %26, align 8
  %28 = getelementptr inbounds %struct.dpaa2_fl_entry, %struct.dpaa2_fl_entry* %27, i64 1
  store %struct.dpaa2_fl_entry* %28, %struct.dpaa2_fl_entry** %8, align 8
  %29 = load %struct.caam_request*, %struct.caam_request** %7, align 8
  %30 = getelementptr inbounds %struct.caam_request, %struct.caam_request* %29, i32 0, i32 5
  %31 = load %struct.dpaa2_fl_entry*, %struct.dpaa2_fl_entry** %30, align 8
  %32 = getelementptr inbounds %struct.dpaa2_fl_entry, %struct.dpaa2_fl_entry* %31, i64 0
  store %struct.dpaa2_fl_entry* %32, %struct.dpaa2_fl_entry** %9, align 8
  %33 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %34 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %1
  %41 = load i32, i32* @GFP_KERNEL, align 4
  br label %44

42:                                               ; preds = %1
  %43 = load i32, i32* @GFP_ATOMIC, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  store i32 %45, i32* %10, align 4
  %46 = load %struct.caam_hash_state*, %struct.caam_hash_state** %6, align 8
  %47 = call i32* @current_buflen(%struct.caam_hash_state* %46)
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %11, align 4
  %49 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %50 = call i32 @crypto_ahash_digestsize(%struct.crypto_ahash* %49)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* @GFP_DMA, align 4
  %52 = load i32, i32* %10, align 4
  %53 = or i32 %51, %52
  %54 = call %struct.ahash_edesc* @qi_cache_zalloc(i32 %53)
  store %struct.ahash_edesc* %54, %struct.ahash_edesc** %14, align 8
  %55 = load %struct.ahash_edesc*, %struct.ahash_edesc** %14, align 8
  %56 = icmp ne %struct.ahash_edesc* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %44
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %227

60:                                               ; preds = %44
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i32 1, i32 0
  %65 = add nsw i32 1, %64
  %66 = call i32 @pad_sg_nents(i32 %65)
  %67 = sext i32 %66 to i64
  %68 = mul i64 %67, 4
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %12, align 4
  %70 = load %struct.ahash_edesc*, %struct.ahash_edesc** %14, align 8
  %71 = getelementptr inbounds %struct.ahash_edesc, %struct.ahash_edesc* %70, i32 0, i32 2
  %72 = load %struct.dpaa2_sg_entry*, %struct.dpaa2_sg_entry** %71, align 8
  %73 = getelementptr inbounds %struct.dpaa2_sg_entry, %struct.dpaa2_sg_entry* %72, i64 0
  store %struct.dpaa2_sg_entry* %73, %struct.dpaa2_sg_entry** %15, align 8
  %74 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %5, align 8
  %75 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.caam_hash_state*, %struct.caam_hash_state** %6, align 8
  %78 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %5, align 8
  %79 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.dpaa2_sg_entry*, %struct.dpaa2_sg_entry** %15, align 8
  %82 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %83 = call i32 @ctx_map_to_qm_sg(i32 %76, %struct.caam_hash_state* %77, i32 %80, %struct.dpaa2_sg_entry* %81, i32 %82)
  store i32 %83, i32* %16, align 4
  %84 = load i32, i32* %16, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %60
  br label %216

87:                                               ; preds = %60
  %88 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %5, align 8
  %89 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.dpaa2_sg_entry*, %struct.dpaa2_sg_entry** %15, align 8
  %92 = getelementptr inbounds %struct.dpaa2_sg_entry, %struct.dpaa2_sg_entry* %91, i64 1
  %93 = load %struct.caam_hash_state*, %struct.caam_hash_state** %6, align 8
  %94 = call i32 @buf_map_to_qm_sg(i32 %90, %struct.dpaa2_sg_entry* %92, %struct.caam_hash_state* %93)
  store i32 %94, i32* %16, align 4
  %95 = load i32, i32* %16, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %87
  br label %216

98:                                               ; preds = %87
  %99 = load %struct.dpaa2_sg_entry*, %struct.dpaa2_sg_entry** %15, align 8
  %100 = load i32, i32* %11, align 4
  %101 = icmp ne i32 %100, 0
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i32 1, i32 0
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.dpaa2_sg_entry, %struct.dpaa2_sg_entry* %99, i64 %104
  %106 = call i32 @dpaa2_sg_set_final(%struct.dpaa2_sg_entry* %105, i32 1)
  %107 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %5, align 8
  %108 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.dpaa2_sg_entry*, %struct.dpaa2_sg_entry** %15, align 8
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* @DMA_TO_DEVICE, align 4
  %113 = call i32 @dma_map_single(i32 %109, %struct.dpaa2_sg_entry* %110, i32 %111, i32 %112)
  %114 = load %struct.ahash_edesc*, %struct.ahash_edesc** %14, align 8
  %115 = getelementptr inbounds %struct.ahash_edesc, %struct.ahash_edesc* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 4
  %116 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %5, align 8
  %117 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.ahash_edesc*, %struct.ahash_edesc** %14, align 8
  %120 = getelementptr inbounds %struct.ahash_edesc, %struct.ahash_edesc* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i64 @dma_mapping_error(i32 %118, i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %98
  %125 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %5, align 8
  %126 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @dev_err(i32 %127, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %129 = load i32, i32* @ENOMEM, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %16, align 4
  br label %216

131:                                              ; preds = %98
  %132 = load i32, i32* %12, align 4
  %133 = load %struct.ahash_edesc*, %struct.ahash_edesc** %14, align 8
  %134 = getelementptr inbounds %struct.ahash_edesc, %struct.ahash_edesc* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 8
  %135 = load %struct.caam_request*, %struct.caam_request** %7, align 8
  %136 = getelementptr inbounds %struct.caam_request, %struct.caam_request* %135, i32 0, i32 5
  %137 = call i32 @memset(%struct.dpaa2_fl_entry** %136, i32 0, i32 8)
  %138 = load %struct.dpaa2_fl_entry*, %struct.dpaa2_fl_entry** %8, align 8
  %139 = call i32 @dpaa2_fl_set_final(%struct.dpaa2_fl_entry* %138, i32 1)
  %140 = load %struct.dpaa2_fl_entry*, %struct.dpaa2_fl_entry** %8, align 8
  %141 = load i32, i32* @dpaa2_fl_sg, align 4
  %142 = call i32 @dpaa2_fl_set_format(%struct.dpaa2_fl_entry* %140, i32 %141)
  %143 = load %struct.dpaa2_fl_entry*, %struct.dpaa2_fl_entry** %8, align 8
  %144 = load %struct.ahash_edesc*, %struct.ahash_edesc** %14, align 8
  %145 = getelementptr inbounds %struct.ahash_edesc, %struct.ahash_edesc* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @dpaa2_fl_set_addr(%struct.dpaa2_fl_entry* %143, i32 %146)
  %148 = load %struct.dpaa2_fl_entry*, %struct.dpaa2_fl_entry** %8, align 8
  %149 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %5, align 8
  %150 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* %11, align 4
  %153 = add nsw i32 %151, %152
  %154 = call i32 @dpaa2_fl_set_len(%struct.dpaa2_fl_entry* %148, i32 %153)
  %155 = load %struct.dpaa2_fl_entry*, %struct.dpaa2_fl_entry** %9, align 8
  %156 = load i32, i32* @dpaa2_fl_single, align 4
  %157 = call i32 @dpaa2_fl_set_format(%struct.dpaa2_fl_entry* %155, i32 %156)
  %158 = load %struct.dpaa2_fl_entry*, %struct.dpaa2_fl_entry** %9, align 8
  %159 = load %struct.caam_hash_state*, %struct.caam_hash_state** %6, align 8
  %160 = getelementptr inbounds %struct.caam_hash_state, %struct.caam_hash_state* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @dpaa2_fl_set_addr(%struct.dpaa2_fl_entry* %158, i32 %161)
  %163 = load %struct.dpaa2_fl_entry*, %struct.dpaa2_fl_entry** %9, align 8
  %164 = load i32, i32* %13, align 4
  %165 = call i32 @dpaa2_fl_set_len(%struct.dpaa2_fl_entry* %163, i32 %164)
  %166 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %5, align 8
  %167 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %166, i32 0, i32 3
  %168 = load i32*, i32** %167, align 8
  %169 = load i64, i64* @FINALIZE, align 8
  %170 = getelementptr inbounds i32, i32* %168, i64 %169
  %171 = load %struct.caam_request*, %struct.caam_request** %7, align 8
  %172 = getelementptr inbounds %struct.caam_request, %struct.caam_request* %171, i32 0, i32 4
  store i32* %170, i32** %172, align 8
  %173 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %5, align 8
  %174 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %173, i32 0, i32 2
  %175 = load i32*, i32** %174, align 8
  %176 = load i64, i64* @FINALIZE, align 8
  %177 = getelementptr inbounds i32, i32* %175, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.caam_request*, %struct.caam_request** %7, align 8
  %180 = getelementptr inbounds %struct.caam_request, %struct.caam_request* %179, i32 0, i32 3
  store i32 %178, i32* %180, align 4
  %181 = load i32, i32* @ahash_done_ctx_src, align 4
  %182 = load %struct.caam_request*, %struct.caam_request** %7, align 8
  %183 = getelementptr inbounds %struct.caam_request, %struct.caam_request* %182, i32 0, i32 2
  store i32 %181, i32* %183, align 8
  %184 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %185 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %184, i32 0, i32 0
  %186 = load %struct.caam_request*, %struct.caam_request** %7, align 8
  %187 = getelementptr inbounds %struct.caam_request, %struct.caam_request* %186, i32 0, i32 1
  store %struct.TYPE_2__* %185, %struct.TYPE_2__** %187, align 8
  %188 = load %struct.ahash_edesc*, %struct.ahash_edesc** %14, align 8
  %189 = load %struct.caam_request*, %struct.caam_request** %7, align 8
  %190 = getelementptr inbounds %struct.caam_request, %struct.caam_request* %189, i32 0, i32 0
  store %struct.ahash_edesc* %188, %struct.ahash_edesc** %190, align 8
  %191 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %5, align 8
  %192 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.caam_request*, %struct.caam_request** %7, align 8
  %195 = call i32 @dpaa2_caam_enqueue(i32 %193, %struct.caam_request* %194)
  store i32 %195, i32* %16, align 4
  %196 = load i32, i32* %16, align 4
  %197 = load i32, i32* @EINPROGRESS, align 4
  %198 = sub nsw i32 0, %197
  %199 = icmp eq i32 %196, %198
  br i1 %199, label %213, label %200

200:                                              ; preds = %131
  %201 = load i32, i32* %16, align 4
  %202 = load i32, i32* @EBUSY, align 4
  %203 = sub nsw i32 0, %202
  %204 = icmp eq i32 %201, %203
  br i1 %204, label %205, label %215

205:                                              ; preds = %200
  %206 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %207 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @CRYPTO_TFM_REQ_MAY_BACKLOG, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %215

213:                                              ; preds = %205, %131
  %214 = load i32, i32* %16, align 4
  store i32 %214, i32* %2, align 4
  br label %227

215:                                              ; preds = %205, %200
  br label %216

216:                                              ; preds = %215, %124, %97, %86
  %217 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %5, align 8
  %218 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.ahash_edesc*, %struct.ahash_edesc** %14, align 8
  %221 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %222 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %223 = call i32 @ahash_unmap_ctx(i32 %219, %struct.ahash_edesc* %220, %struct.ahash_request* %221, i32 %222)
  %224 = load %struct.ahash_edesc*, %struct.ahash_edesc** %14, align 8
  %225 = call i32 @qi_cache_free(%struct.ahash_edesc* %224)
  %226 = load i32, i32* %16, align 4
  store i32 %226, i32* %2, align 4
  br label %227

227:                                              ; preds = %216, %213, %57
  %228 = load i32, i32* %2, align 4
  ret i32 %228
}

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local %struct.caam_hash_ctx* @crypto_ahash_ctx(%struct.crypto_ahash*) #1

declare dso_local %struct.caam_hash_state* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32* @current_buflen(%struct.caam_hash_state*) #1

declare dso_local i32 @crypto_ahash_digestsize(%struct.crypto_ahash*) #1

declare dso_local %struct.ahash_edesc* @qi_cache_zalloc(i32) #1

declare dso_local i32 @pad_sg_nents(i32) #1

declare dso_local i32 @ctx_map_to_qm_sg(i32, %struct.caam_hash_state*, i32, %struct.dpaa2_sg_entry*, i32) #1

declare dso_local i32 @buf_map_to_qm_sg(i32, %struct.dpaa2_sg_entry*, %struct.caam_hash_state*) #1

declare dso_local i32 @dpaa2_sg_set_final(%struct.dpaa2_sg_entry*, i32) #1

declare dso_local i32 @dma_map_single(i32, %struct.dpaa2_sg_entry*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

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

; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_ahash_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_ahash_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.chcr_ahash_req_ctx = type { i32, i32, i64, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.crypto_ahash = type { i32 }
%struct.uld_ctx = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__*, i32* }
%struct.TYPE_10__ = type { i32 }
%struct.chcr_dev = type { i32 }
%struct.sk_buff = type { i32 }
%struct.hash_wr_param = type { i32, i32, i32, %struct.TYPE_13__, i32, i64, i64, i64, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, %struct.chcr_dev* }

@ENXIO = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MAY_BACKLOG = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CPL_PRIORITY_DATA = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @chcr_ahash_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chcr_ahash_update(%struct.ahash_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca %struct.chcr_ahash_req_ctx*, align 8
  %5 = alloca %struct.crypto_ahash*, align 8
  %6 = alloca %struct.uld_ctx*, align 8
  %7 = alloca %struct.chcr_dev*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.hash_wr_param, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  %15 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %16 = call %struct.chcr_ahash_req_ctx* @ahash_request_ctx(%struct.ahash_request* %15)
  store %struct.chcr_ahash_req_ctx* %16, %struct.chcr_ahash_req_ctx** %4, align 8
  %17 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %18 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %17)
  store %struct.crypto_ahash* %18, %struct.crypto_ahash** %5, align 8
  store %struct.uld_ctx* null, %struct.uld_ctx** %6, align 8
  %19 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %20 = call %struct.TYPE_12__* @h_ctx(%struct.crypto_ahash* %19)
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 1
  %22 = load %struct.chcr_dev*, %struct.chcr_dev** %21, align 8
  store %struct.chcr_dev* %22, %struct.chcr_dev** %7, align 8
  store i32 0, i32* %9, align 4
  %23 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %24 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %11, align 4
  store i32 0, i32* %14, align 4
  %26 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %27 = call i32 @crypto_ahash_tfm(%struct.crypto_ahash* %26)
  %28 = call i32 @crypto_tfm_alg_blocksize(i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %30 = call %struct.TYPE_12__* @h_ctx(%struct.crypto_ahash* %29)
  %31 = call %struct.uld_ctx* @ULD_CTX(%struct.TYPE_12__* %30)
  store %struct.uld_ctx* %31, %struct.uld_ctx** %6, align 8
  %32 = load i32, i32* %11, align 4
  %33 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %4, align 8
  %34 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = add i32 %32, %35
  %37 = load i32, i32* %10, align 4
  %38 = icmp uge i32 %36, %37
  br i1 %38, label %39, label %54

39:                                               ; preds = %1
  %40 = load i32, i32* %11, align 4
  %41 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %4, align 8
  %42 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = add i32 %40, %43
  %45 = load i32, i32* %10, align 4
  %46 = urem i32 %44, %45
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %4, align 8
  %49 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = add i32 %47, %50
  %52 = load i32, i32* %9, align 4
  %53 = sub i32 %51, %52
  store i32 %53, i32* %11, align 4
  br label %77

54:                                               ; preds = %1
  %55 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %56 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %59 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @sg_nents(i32 %60)
  %62 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %4, align 8
  %63 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %4, align 8
  %66 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = zext i32 %67 to i64
  %69 = add nsw i64 %64, %68
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @sg_pcopy_to_buffer(i32 %57, i32 %61, i64 %69, i32 %70, i32 0)
  %72 = load i32, i32* %11, align 4
  %73 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %4, align 8
  %74 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = add i32 %75, %72
  store i32 %76, i32* %74, align 8
  store i32 0, i32* %2, align 4
  br label %289

77:                                               ; preds = %39
  %78 = load %struct.chcr_dev*, %struct.chcr_dev** %7, align 8
  %79 = call i32 @chcr_inc_wrcount(%struct.chcr_dev* %78)
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* %13, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load i32, i32* @ENXIO, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %2, align 4
  br label %289

85:                                               ; preds = %77
  %86 = load %struct.uld_ctx*, %struct.uld_ctx** %6, align 8
  %87 = getelementptr inbounds %struct.uld_ctx, %struct.uld_ctx* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %93 = call %struct.TYPE_12__* @h_ctx(%struct.crypto_ahash* %92)
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @cxgb4_is_crypto_q_full(i32 %91, i32 %95)
  %97 = call i64 @unlikely(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %111

99:                                               ; preds = %85
  store i32 1, i32* %14, align 4
  %100 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %101 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @CRYPTO_TFM_REQ_MAY_BACKLOG, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %99
  %108 = load i32, i32* @ENOSPC, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %13, align 4
  br label %285

110:                                              ; preds = %99
  br label %111

111:                                              ; preds = %110, %85
  %112 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %4, align 8
  %113 = call i32 @chcr_init_hctx_per_wr(%struct.chcr_ahash_req_ctx* %112)
  %114 = load %struct.uld_ctx*, %struct.uld_ctx** %6, align 8
  %115 = getelementptr inbounds %struct.uld_ctx, %struct.uld_ctx* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %120 = call i32 @chcr_hash_dma_map(i32* %118, %struct.ahash_request* %119)
  store i32 %120, i32* %13, align 4
  %121 = load i32, i32* %13, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %111
  %124 = load i32, i32* @ENOMEM, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %13, align 4
  br label %285

126:                                              ; preds = %111
  %127 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %12, i32 0, i32 3
  %128 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %129 = call i32 @crypto_ahash_digestsize(%struct.crypto_ahash* %128)
  %130 = call i32 @get_alg_config(%struct.TYPE_13__* %127, i32 %129)
  %131 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %12, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @roundup(i32 %133, i32 16)
  %135 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %12, i32 0, i32 8
  store i32 %134, i32* %135, align 8
  %136 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %137 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %4, align 8
  %140 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp ne i32 %141, 0
  %143 = xor i1 %142, true
  %144 = xor i1 %143, true
  %145 = zext i1 %144 to i32
  %146 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %12, i32 0, i32 8
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @HASH_SPACE_LEFT(i32 %147)
  %149 = call i32 @chcr_hash_ent_in_wr(i32 %138, i32 %145, i32 %148, i32 0)
  %150 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %12, i32 0, i32 0
  store i32 %149, i32* %150, align 8
  %151 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %12, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %154 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = icmp ugt i32 %152, %155
  br i1 %156, label %157, label %162

157:                                              ; preds = %126
  %158 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %159 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %12, i32 0, i32 0
  store i32 %160, i32* %161, align 8
  br label %162

162:                                              ; preds = %157, %126
  %163 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %12, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %4, align 8
  %166 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = add i32 %164, %167
  %169 = load i32, i32* %10, align 4
  %170 = call i32 @rounddown(i32 %168, i32 %169)
  %171 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %4, align 8
  %172 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = sub i32 %170, %173
  %175 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %12, i32 0, i32 0
  store i32 %174, i32* %175, align 8
  %176 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %12, i32 0, i32 7
  store i64 0, i64* %176, align 8
  %177 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %12, i32 0, i32 1
  store i32 1, i32* %177, align 4
  %178 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %12, i32 0, i32 6
  store i64 0, i64* %178, align 8
  %179 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %4, align 8
  %180 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %12, i32 0, i32 2
  store i32 %181, i32* %182, align 8
  %183 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %12, i32 0, i32 5
  store i64 0, i64* %183, align 8
  %184 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %185 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %4, align 8
  %188 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %187, i32 0, i32 4
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 1
  store i32 %186, i32* %189, align 4
  %190 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %12, i32 0, i32 3
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %12, i32 0, i32 4
  store i32 %192, i32* %193, align 8
  %194 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %12, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %12, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = add i32 %195, %197
  %199 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %4, align 8
  %200 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = add i32 %201, %198
  store i32 %202, i32* %200, align 4
  %203 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %204 = call %struct.sk_buff* @create_hash_wr(%struct.ahash_request* %203, %struct.hash_wr_param* %12)
  store %struct.sk_buff* %204, %struct.sk_buff** %8, align 8
  %205 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %206 = call i64 @IS_ERR(%struct.sk_buff* %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %162
  %209 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %210 = call i32 @PTR_ERR(%struct.sk_buff* %209)
  store i32 %210, i32* %13, align 4
  br label %277

211:                                              ; preds = %162
  %212 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %12, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %4, align 8
  %215 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %214, i32 0, i32 4
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = add i32 %217, %213
  store i32 %218, i32* %216, align 4
  %219 = load i32, i32* %9, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %246

221:                                              ; preds = %211
  %222 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %4, align 8
  %223 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %222, i32 0, i32 2
  %224 = load i64, i64* %223, align 8
  %225 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %4, align 8
  %226 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 8
  %228 = call i32 @swap(i64 %224, i32 %227)
  %229 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %230 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %233 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @sg_nents(i32 %234)
  %236 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %4, align 8
  %237 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %236, i32 0, i32 2
  %238 = load i64, i64* %237, align 8
  %239 = load i32, i32* %9, align 4
  %240 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %241 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* %9, align 4
  %244 = sub i32 %242, %243
  %245 = call i32 @sg_pcopy_to_buffer(i32 %231, i32 %235, i64 %238, i32 %239, i32 %244)
  br label %246

246:                                              ; preds = %221, %211
  %247 = load i32, i32* %9, align 4
  %248 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %4, align 8
  %249 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %248, i32 0, i32 0
  store i32 %247, i32* %249, align 8
  %250 = load %struct.uld_ctx*, %struct.uld_ctx** %6, align 8
  %251 = getelementptr inbounds %struct.uld_ctx, %struct.uld_ctx* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %251, i32 0, i32 1
  %253 = load i32*, i32** %252, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 0
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %257 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %256, i32 0, i32 0
  store i32 %255, i32* %257, align 4
  %258 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %259 = load i32, i32* @CPL_PRIORITY_DATA, align 4
  %260 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %261 = call %struct.TYPE_12__* @h_ctx(%struct.crypto_ahash* %260)
  %262 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = call i32 @set_wr_txq(%struct.sk_buff* %258, i32 %259, i32 %263)
  %265 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %266 = call i32 @chcr_send_wr(%struct.sk_buff* %265)
  %267 = load i32, i32* %14, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %272

269:                                              ; preds = %246
  %270 = load i32, i32* @EBUSY, align 4
  %271 = sub nsw i32 0, %270
  br label %275

272:                                              ; preds = %246
  %273 = load i32, i32* @EINPROGRESS, align 4
  %274 = sub nsw i32 0, %273
  br label %275

275:                                              ; preds = %272, %269
  %276 = phi i32 [ %271, %269 ], [ %274, %272 ]
  store i32 %276, i32* %2, align 4
  br label %289

277:                                              ; preds = %208
  %278 = load %struct.uld_ctx*, %struct.uld_ctx** %6, align 8
  %279 = getelementptr inbounds %struct.uld_ctx, %struct.uld_ctx* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %279, i32 0, i32 0
  %281 = load %struct.TYPE_10__*, %struct.TYPE_10__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %281, i32 0, i32 0
  %283 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %284 = call i32 @chcr_hash_dma_unmap(i32* %282, %struct.ahash_request* %283)
  br label %285

285:                                              ; preds = %277, %123, %107
  %286 = load %struct.chcr_dev*, %struct.chcr_dev** %7, align 8
  %287 = call i32 @chcr_dec_wrcount(%struct.chcr_dev* %286)
  %288 = load i32, i32* %13, align 4
  store i32 %288, i32* %2, align 4
  br label %289

289:                                              ; preds = %285, %275, %82, %54
  %290 = load i32, i32* %2, align 4
  ret i32 %290
}

declare dso_local %struct.chcr_ahash_req_ctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local %struct.TYPE_12__* @h_ctx(%struct.crypto_ahash*) #1

declare dso_local i32 @crypto_tfm_alg_blocksize(i32) #1

declare dso_local i32 @crypto_ahash_tfm(%struct.crypto_ahash*) #1

declare dso_local %struct.uld_ctx* @ULD_CTX(%struct.TYPE_12__*) #1

declare dso_local i32 @sg_pcopy_to_buffer(i32, i32, i64, i32, i32) #1

declare dso_local i32 @sg_nents(i32) #1

declare dso_local i32 @chcr_inc_wrcount(%struct.chcr_dev*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @cxgb4_is_crypto_q_full(i32, i32) #1

declare dso_local i32 @chcr_init_hctx_per_wr(%struct.chcr_ahash_req_ctx*) #1

declare dso_local i32 @chcr_hash_dma_map(i32*, %struct.ahash_request*) #1

declare dso_local i32 @get_alg_config(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @crypto_ahash_digestsize(%struct.crypto_ahash*) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @chcr_hash_ent_in_wr(i32, i32, i32, i32) #1

declare dso_local i32 @HASH_SPACE_LEFT(i32) #1

declare dso_local i32 @rounddown(i32, i32) #1

declare dso_local %struct.sk_buff* @create_hash_wr(%struct.ahash_request*, %struct.hash_wr_param*) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @swap(i64, i32) #1

declare dso_local i32 @set_wr_txq(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @chcr_send_wr(%struct.sk_buff*) #1

declare dso_local i32 @chcr_hash_dma_unmap(i32*, %struct.ahash_request*) #1

declare dso_local i32 @chcr_dec_wrcount(%struct.chcr_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_ahash_finup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_ahash_finup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i64, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.chcr_ahash_req_ctx = type { i64, i64, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.crypto_ahash = type { i32 }
%struct.chcr_dev = type { i32 }
%struct.uld_ctx = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__*, i32* }
%struct.TYPE_10__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.hash_wr_param = type { i32, i32, i64, i32, i32, i64, i64, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, %struct.chcr_dev* }

@ENXIO = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MAY_BACKLOG = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CPL_PRIORITY_DATA = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @chcr_ahash_finup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chcr_ahash_finup(%struct.ahash_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca %struct.chcr_ahash_req_ctx*, align 8
  %5 = alloca %struct.crypto_ahash*, align 8
  %6 = alloca %struct.chcr_dev*, align 8
  %7 = alloca %struct.uld_ctx*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.hash_wr_param, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  %13 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %14 = call %struct.chcr_ahash_req_ctx* @ahash_request_ctx(%struct.ahash_request* %13)
  store %struct.chcr_ahash_req_ctx* %14, %struct.chcr_ahash_req_ctx** %4, align 8
  %15 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %16 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %15)
  store %struct.crypto_ahash* %16, %struct.crypto_ahash** %5, align 8
  %17 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %18 = call %struct.TYPE_12__* @h_ctx(%struct.crypto_ahash* %17)
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 1
  %20 = load %struct.chcr_dev*, %struct.chcr_dev** %19, align 8
  store %struct.chcr_dev* %20, %struct.chcr_dev** %6, align 8
  store %struct.uld_ctx* null, %struct.uld_ctx** %7, align 8
  store i32 0, i32* %12, align 4
  %21 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %22 = call i32 @crypto_ahash_tfm(%struct.crypto_ahash* %21)
  %23 = call i64 @crypto_tfm_alg_blocksize(i32 %22)
  store i64 %23, i64* %10, align 8
  %24 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %25 = call %struct.TYPE_12__* @h_ctx(%struct.crypto_ahash* %24)
  %26 = call %struct.uld_ctx* @ULD_CTX(%struct.TYPE_12__* %25)
  store %struct.uld_ctx* %26, %struct.uld_ctx** %7, align 8
  %27 = load %struct.chcr_dev*, %struct.chcr_dev** %6, align 8
  %28 = call i32 @chcr_inc_wrcount(%struct.chcr_dev* %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %1
  %32 = load i32, i32* @ENXIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %275

34:                                               ; preds = %1
  %35 = load %struct.uld_ctx*, %struct.uld_ctx** %7, align 8
  %36 = getelementptr inbounds %struct.uld_ctx, %struct.uld_ctx* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %42 = call %struct.TYPE_12__* @h_ctx(%struct.crypto_ahash* %41)
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @cxgb4_is_crypto_q_full(i32 %40, i32 %44)
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %34
  store i32 1, i32* %12, align 4
  %49 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %50 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @CRYPTO_TFM_REQ_MAY_BACKLOG, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %48
  %57 = load i32, i32* @ENOSPC, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %11, align 4
  br label %271

59:                                               ; preds = %48
  br label %60

60:                                               ; preds = %59, %34
  %61 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %4, align 8
  %62 = call i32 @chcr_init_hctx_per_wr(%struct.chcr_ahash_req_ctx* %61)
  %63 = load %struct.uld_ctx*, %struct.uld_ctx** %7, align 8
  %64 = getelementptr inbounds %struct.uld_ctx, %struct.uld_ctx* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %69 = call i32 @chcr_hash_dma_map(i32* %67, %struct.ahash_request* %68)
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %60
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %11, align 4
  br label %271

75:                                               ; preds = %60
  %76 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 8
  %77 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %78 = call i32 @crypto_ahash_digestsize(%struct.crypto_ahash* %77)
  %79 = call i32 @get_alg_config(%struct.TYPE_13__* %76, i32 %78)
  %80 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @roundup(i32 %82, i32 16)
  %84 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 0
  store i32 %83, i32* %84, align 8
  %85 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %86 = call i32 @crypto_ahash_tfm(%struct.crypto_ahash* %85)
  %87 = call i64 @is_hmac(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %75
  %90 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = mul nsw i32 %91, 2
  store i32 %92, i32* %90, align 8
  %93 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 1
  store i32 1, i32* %93, align 4
  br label %96

94:                                               ; preds = %75
  %95 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 1
  store i32 0, i32* %95, align 4
  br label %96

96:                                               ; preds = %94, %89
  %97 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %98 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %4, align 8
  %101 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  %104 = xor i1 %103, true
  %105 = xor i1 %104, true
  %106 = zext i1 %105 to i32
  %107 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @HASH_SPACE_LEFT(i32 %108)
  %110 = call i64 @chcr_hash_ent_in_wr(i32 %99, i32 %106, i32 %109, i32 0)
  %111 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 2
  store i64 %110, i64* %111, align 8
  %112 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %115 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp slt i64 %113, %116
  br i1 %117, label %118, label %149

118:                                              ; preds = %96
  %119 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %120 = call i32 @crypto_ahash_tfm(%struct.crypto_ahash* %119)
  %121 = call i64 @is_hmac(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = sdiv i32 %125, 2
  store i32 %126, i32* %124, align 8
  %127 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 1
  store i32 0, i32* %127, align 4
  br label %128

128:                                              ; preds = %123, %118
  %129 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 3
  store i32 0, i32* %129, align 8
  %130 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 4
  store i32 1, i32* %130, align 4
  %131 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %4, align 8
  %134 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = add nsw i64 %132, %135
  %137 = load i64, i64* %10, align 8
  %138 = call i64 @rounddown(i64 %136, i64 %137)
  %139 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %4, align 8
  %140 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = sub nsw i64 %138, %141
  %143 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 2
  store i64 %142, i64* %143, align 8
  %144 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 7
  store i32 %146, i32* %147, align 8
  %148 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 5
  store i64 0, i64* %148, align 8
  br label %170

149:                                              ; preds = %96
  %150 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 3
  store i32 1, i32* %150, align 8
  %151 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 4
  store i32 0, i32* %151, align 4
  %152 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %153 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 2
  store i64 %154, i64* %155, align 8
  %156 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %157 = call i32 @crypto_ahash_digestsize(%struct.crypto_ahash* %156)
  %158 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 7
  store i32 %157, i32* %158, align 8
  %159 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %4, align 8
  %160 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %4, align 8
  %163 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = add nsw i64 %161, %164
  %166 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = add nsw i64 %165, %167
  %169 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 5
  store i64 %168, i64* %169, align 8
  br label %170

170:                                              ; preds = %149, %128
  %171 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %4, align 8
  %172 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 6
  store i64 %173, i64* %174, align 8
  %175 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 6
  %176 = load i64, i64* %175, align 8
  %177 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = add nsw i64 %176, %178
  %180 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %4, align 8
  %181 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = add nsw i64 %182, %179
  store i64 %183, i64* %181, align 8
  %184 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %4, align 8
  %185 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 0
  store i32 1, i32* %186, align 8
  %187 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %188 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %4, align 8
  %191 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 2
  store i32 %189, i32* %192, align 8
  %193 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %4, align 8
  %194 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %197 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = add nsw i64 %195, %198
  %200 = icmp eq i64 %199, 0
  br i1 %200, label %201, label %215

201:                                              ; preds = %170
  %202 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %4, align 8
  %203 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 4
  %205 = load i64, i64* %10, align 8
  %206 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %4, align 8
  %207 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = call i32 @create_last_hash_block(i32 %204, i64 %205, i64 %208)
  %210 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 3
  store i32 0, i32* %210, align 8
  %211 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 4
  store i32 1, i32* %211, align 4
  %212 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 5
  store i64 0, i64* %212, align 8
  %213 = load i64, i64* %10, align 8
  %214 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 6
  store i64 %213, i64* %214, align 8
  br label %215

215:                                              ; preds = %201, %170
  %216 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %217 = call %struct.sk_buff* @create_hash_wr(%struct.ahash_request* %216, %struct.hash_wr_param* %9)
  store %struct.sk_buff* %217, %struct.sk_buff** %8, align 8
  %218 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %219 = call i64 @IS_ERR(%struct.sk_buff* %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %224

221:                                              ; preds = %215
  %222 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %223 = call i32 @PTR_ERR(%struct.sk_buff* %222)
  store i32 %223, i32* %11, align 4
  br label %263

224:                                              ; preds = %215
  %225 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %4, align 8
  %226 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %225, i32 0, i32 0
  store i64 0, i64* %226, align 8
  %227 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 2
  %228 = load i64, i64* %227, align 8
  %229 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %4, align 8
  %230 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %229, i32 0, i32 2
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = sext i32 %232 to i64
  %234 = add nsw i64 %233, %228
  %235 = trunc i64 %234 to i32
  store i32 %235, i32* %231, align 4
  %236 = load %struct.uld_ctx*, %struct.uld_ctx** %7, align 8
  %237 = getelementptr inbounds %struct.uld_ctx, %struct.uld_ctx* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %237, i32 0, i32 1
  %239 = load i32*, i32** %238, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 0
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %243 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %242, i32 0, i32 0
  store i32 %241, i32* %243, align 4
  %244 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %245 = load i32, i32* @CPL_PRIORITY_DATA, align 4
  %246 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %247 = call %struct.TYPE_12__* @h_ctx(%struct.crypto_ahash* %246)
  %248 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = call i32 @set_wr_txq(%struct.sk_buff* %244, i32 %245, i32 %249)
  %251 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %252 = call i32 @chcr_send_wr(%struct.sk_buff* %251)
  %253 = load i32, i32* %12, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %258

255:                                              ; preds = %224
  %256 = load i32, i32* @EBUSY, align 4
  %257 = sub nsw i32 0, %256
  br label %261

258:                                              ; preds = %224
  %259 = load i32, i32* @EINPROGRESS, align 4
  %260 = sub nsw i32 0, %259
  br label %261

261:                                              ; preds = %258, %255
  %262 = phi i32 [ %257, %255 ], [ %260, %258 ]
  store i32 %262, i32* %2, align 4
  br label %275

263:                                              ; preds = %221
  %264 = load %struct.uld_ctx*, %struct.uld_ctx** %7, align 8
  %265 = getelementptr inbounds %struct.uld_ctx, %struct.uld_ctx* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %265, i32 0, i32 0
  %267 = load %struct.TYPE_10__*, %struct.TYPE_10__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %267, i32 0, i32 0
  %269 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %270 = call i32 @chcr_hash_dma_unmap(i32* %268, %struct.ahash_request* %269)
  br label %271

271:                                              ; preds = %263, %72, %56
  %272 = load %struct.chcr_dev*, %struct.chcr_dev** %6, align 8
  %273 = call i32 @chcr_dec_wrcount(%struct.chcr_dev* %272)
  %274 = load i32, i32* %11, align 4
  store i32 %274, i32* %2, align 4
  br label %275

275:                                              ; preds = %271, %261, %31
  %276 = load i32, i32* %2, align 4
  ret i32 %276
}

declare dso_local %struct.chcr_ahash_req_ctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local %struct.TYPE_12__* @h_ctx(%struct.crypto_ahash*) #1

declare dso_local i64 @crypto_tfm_alg_blocksize(i32) #1

declare dso_local i32 @crypto_ahash_tfm(%struct.crypto_ahash*) #1

declare dso_local %struct.uld_ctx* @ULD_CTX(%struct.TYPE_12__*) #1

declare dso_local i32 @chcr_inc_wrcount(%struct.chcr_dev*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @cxgb4_is_crypto_q_full(i32, i32) #1

declare dso_local i32 @chcr_init_hctx_per_wr(%struct.chcr_ahash_req_ctx*) #1

declare dso_local i32 @chcr_hash_dma_map(i32*, %struct.ahash_request*) #1

declare dso_local i32 @get_alg_config(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @crypto_ahash_digestsize(%struct.crypto_ahash*) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i64 @is_hmac(i32) #1

declare dso_local i64 @chcr_hash_ent_in_wr(i32, i32, i32, i32) #1

declare dso_local i32 @HASH_SPACE_LEFT(i32) #1

declare dso_local i64 @rounddown(i64, i64) #1

declare dso_local i32 @create_last_hash_block(i32, i64, i64) #1

declare dso_local %struct.sk_buff* @create_hash_wr(%struct.ahash_request*, %struct.hash_wr_param*) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

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

; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_ahash_digest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_ahash_digest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i64, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.chcr_ahash_req_ctx = type { i64, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.crypto_ahash = type { i32 (%struct.ahash_request.0*)* }
%struct.ahash_request.0 = type opaque
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @chcr_ahash_digest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chcr_ahash_digest(%struct.ahash_request* %0) #0 {
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
  %22 = getelementptr inbounds %struct.crypto_ahash, %struct.crypto_ahash* %21, i32 0, i32 0
  %23 = load i32 (%struct.ahash_request.0*)*, i32 (%struct.ahash_request.0*)** %22, align 8
  %24 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %25 = bitcast %struct.ahash_request* %24 to %struct.ahash_request.0*
  %26 = call i32 %23(%struct.ahash_request.0* %25)
  %27 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %28 = call i32 @crypto_ahash_tfm(%struct.crypto_ahash* %27)
  %29 = call i64 @crypto_tfm_alg_blocksize(i32 %28)
  store i64 %29, i64* %10, align 8
  %30 = load %struct.chcr_dev*, %struct.chcr_dev** %6, align 8
  %31 = call i32 @chcr_inc_wrcount(%struct.chcr_dev* %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %1
  %35 = load i32, i32* @ENXIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %256

37:                                               ; preds = %1
  %38 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %39 = call %struct.TYPE_12__* @h_ctx(%struct.crypto_ahash* %38)
  %40 = call %struct.uld_ctx* @ULD_CTX(%struct.TYPE_12__* %39)
  store %struct.uld_ctx* %40, %struct.uld_ctx** %7, align 8
  %41 = load %struct.uld_ctx*, %struct.uld_ctx** %7, align 8
  %42 = getelementptr inbounds %struct.uld_ctx, %struct.uld_ctx* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %48 = call %struct.TYPE_12__* @h_ctx(%struct.crypto_ahash* %47)
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @cxgb4_is_crypto_q_full(i32 %46, i32 %50)
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %37
  store i32 1, i32* %12, align 4
  %55 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %56 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @CRYPTO_TFM_REQ_MAY_BACKLOG, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %54
  %63 = load i32, i32* @ENOSPC, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %11, align 4
  br label %252

65:                                               ; preds = %54
  br label %66

66:                                               ; preds = %65, %37
  %67 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %4, align 8
  %68 = call i32 @chcr_init_hctx_per_wr(%struct.chcr_ahash_req_ctx* %67)
  %69 = load %struct.uld_ctx*, %struct.uld_ctx** %7, align 8
  %70 = getelementptr inbounds %struct.uld_ctx, %struct.uld_ctx* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %75 = call i32 @chcr_hash_dma_map(i32* %73, %struct.ahash_request* %74)
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %66
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %11, align 4
  br label %252

81:                                               ; preds = %66
  %82 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 8
  %83 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %84 = call i32 @crypto_ahash_digestsize(%struct.crypto_ahash* %83)
  %85 = call i32 @get_alg_config(%struct.TYPE_13__* %82, i32 %84)
  %86 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @roundup(i32 %88, i32 16)
  %90 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 0
  store i32 %89, i32* %90, align 8
  %91 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %92 = call i32 @crypto_ahash_tfm(%struct.crypto_ahash* %91)
  %93 = call i64 @is_hmac(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %81
  %96 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = mul nsw i32 %97, 2
  store i32 %98, i32* %96, align 8
  %99 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 1
  store i32 1, i32* %99, align 4
  br label %102

100:                                              ; preds = %81
  %101 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 1
  store i32 0, i32* %101, align 4
  br label %102

102:                                              ; preds = %100, %95
  %103 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %104 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %4, align 8
  %107 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 0
  %110 = xor i1 %109, true
  %111 = xor i1 %110, true
  %112 = zext i1 %111 to i32
  %113 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @HASH_SPACE_LEFT(i32 %114)
  %116 = call i64 @chcr_hash_ent_in_wr(i32 %105, i32 %112, i32 %115, i32 0)
  %117 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 2
  store i64 %116, i64* %117, align 8
  %118 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %121 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp slt i64 %119, %122
  br i1 %123, label %124, label %147

124:                                              ; preds = %102
  %125 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %126 = call i32 @crypto_ahash_tfm(%struct.crypto_ahash* %125)
  %127 = call i64 @is_hmac(i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %124
  %130 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = sdiv i32 %131, 2
  store i32 %132, i32* %130, align 8
  %133 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 1
  store i32 0, i32* %133, align 4
  br label %134

134:                                              ; preds = %129, %124
  %135 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 3
  store i32 0, i32* %135, align 8
  %136 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 4
  store i32 1, i32* %136, align 4
  %137 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 5
  store i64 0, i64* %137, align 8
  %138 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* %10, align 8
  %141 = call i64 @rounddown(i64 %139, i64 %140)
  %142 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 2
  store i64 %141, i64* %142, align 8
  %143 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 7
  store i32 %145, i32* %146, align 8
  br label %165

147:                                              ; preds = %102
  %148 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %149 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 2
  store i64 %150, i64* %151, align 8
  %152 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %153 = call i32 @crypto_ahash_digestsize(%struct.crypto_ahash* %152)
  %154 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 7
  store i32 %153, i32* %154, align 8
  %155 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 3
  store i32 1, i32* %155, align 8
  %156 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 4
  store i32 0, i32* %156, align 4
  %157 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %158 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %4, align 8
  %161 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = add nsw i64 %159, %162
  %164 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 5
  store i64 %163, i64* %164, align 8
  br label %165

165:                                              ; preds = %147, %134
  %166 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 6
  store i64 0, i64* %166, align 8
  %167 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %4, align 8
  %168 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 0
  store i32 1, i32* %169, align 8
  %170 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %171 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %4, align 8
  %174 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 2
  store i32 %172, i32* %175, align 8
  %176 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 6
  %177 = load i64, i64* %176, align 8
  %178 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 2
  %179 = load i64, i64* %178, align 8
  %180 = add nsw i64 %177, %179
  %181 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %4, align 8
  %182 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = add nsw i64 %183, %180
  store i64 %184, i64* %182, align 8
  %185 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %186 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %189, label %198

189:                                              ; preds = %165
  %190 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %4, align 8
  %191 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 4
  %193 = load i64, i64* %10, align 8
  %194 = call i32 @create_last_hash_block(i32 %192, i64 %193, i32 0)
  %195 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 4
  store i32 1, i32* %195, align 4
  %196 = load i64, i64* %10, align 8
  %197 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 6
  store i64 %196, i64* %197, align 8
  br label %198

198:                                              ; preds = %189, %165
  %199 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %200 = call %struct.sk_buff* @create_hash_wr(%struct.ahash_request* %199, %struct.hash_wr_param* %9)
  store %struct.sk_buff* %200, %struct.sk_buff** %8, align 8
  %201 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %202 = call i64 @IS_ERR(%struct.sk_buff* %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %198
  %205 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %206 = call i32 @PTR_ERR(%struct.sk_buff* %205)
  store i32 %206, i32* %11, align 4
  br label %244

207:                                              ; preds = %198
  %208 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 2
  %209 = load i64, i64* %208, align 8
  %210 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %4, align 8
  %211 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = sext i32 %213 to i64
  %215 = add nsw i64 %214, %209
  %216 = trunc i64 %215 to i32
  store i32 %216, i32* %212, align 4
  %217 = load %struct.uld_ctx*, %struct.uld_ctx** %7, align 8
  %218 = getelementptr inbounds %struct.uld_ctx, %struct.uld_ctx* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 1
  %220 = load i32*, i32** %219, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 0
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %224 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %223, i32 0, i32 0
  store i32 %222, i32* %224, align 4
  %225 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %226 = load i32, i32* @CPL_PRIORITY_DATA, align 4
  %227 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %228 = call %struct.TYPE_12__* @h_ctx(%struct.crypto_ahash* %227)
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = call i32 @set_wr_txq(%struct.sk_buff* %225, i32 %226, i32 %230)
  %232 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %233 = call i32 @chcr_send_wr(%struct.sk_buff* %232)
  %234 = load i32, i32* %12, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %239

236:                                              ; preds = %207
  %237 = load i32, i32* @EBUSY, align 4
  %238 = sub nsw i32 0, %237
  br label %242

239:                                              ; preds = %207
  %240 = load i32, i32* @EINPROGRESS, align 4
  %241 = sub nsw i32 0, %240
  br label %242

242:                                              ; preds = %239, %236
  %243 = phi i32 [ %238, %236 ], [ %241, %239 ]
  store i32 %243, i32* %2, align 4
  br label %256

244:                                              ; preds = %204
  %245 = load %struct.uld_ctx*, %struct.uld_ctx** %7, align 8
  %246 = getelementptr inbounds %struct.uld_ctx, %struct.uld_ctx* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %246, i32 0, i32 0
  %248 = load %struct.TYPE_10__*, %struct.TYPE_10__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %248, i32 0, i32 0
  %250 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %251 = call i32 @chcr_hash_dma_unmap(i32* %249, %struct.ahash_request* %250)
  br label %252

252:                                              ; preds = %244, %78, %62
  %253 = load %struct.chcr_dev*, %struct.chcr_dev** %6, align 8
  %254 = call i32 @chcr_dec_wrcount(%struct.chcr_dev* %253)
  %255 = load i32, i32* %11, align 4
  store i32 %255, i32* %2, align 4
  br label %256

256:                                              ; preds = %252, %242, %34
  %257 = load i32, i32* %2, align 4
  ret i32 %257
}

declare dso_local %struct.chcr_ahash_req_ctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local %struct.TYPE_12__* @h_ctx(%struct.crypto_ahash*) #1

declare dso_local i64 @crypto_tfm_alg_blocksize(i32) #1

declare dso_local i32 @crypto_ahash_tfm(%struct.crypto_ahash*) #1

declare dso_local i32 @chcr_inc_wrcount(%struct.chcr_dev*) #1

declare dso_local %struct.uld_ctx* @ULD_CTX(%struct.TYPE_12__*) #1

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

declare dso_local i32 @create_last_hash_block(i32, i64, i32) #1

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

; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_create_hash_wr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_create_hash_wr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ahash_request = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.hash_wr_param = type { i32, i32, i32, i32, i64, i64, %struct.TYPE_16__, i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.chcr_ahash_req_ctx = type { %struct.TYPE_20__, i32, i32 }
%struct.TYPE_20__ = type { i32, i32, %struct.sk_buff*, i64, i32, i32 }
%struct.crypto_ahash = type { i32 }
%struct.hmac_ctx = type { i32 }
%struct.uld_ctx = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }
%struct.chcr_wr = type { %struct.TYPE_17__, %struct.TYPE_15__ }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.ulptx_sgl = type { i32 }
%struct.adapter = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_21__ = type { i32, i32 }

@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@SGE_MAX_WR_LEN = common dso_local global i32 0, align 4
@CHCR_SRC_SG_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CHCR_HASH_MAX_DIGEST_SIZE = common dso_local global i32 0, align 4
@CHCR_KEYCTX_NO_KEY = common dso_local global i32 0, align 4
@DUMMY_BYTES = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ahash_request*, %struct.hash_wr_param*)* @create_hash_wr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @create_hash_wr(%struct.ahash_request* %0, %struct.hash_wr_param* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.ahash_request*, align 8
  %5 = alloca %struct.hash_wr_param*, align 8
  %6 = alloca %struct.chcr_ahash_req_ctx*, align 8
  %7 = alloca %struct.crypto_ahash*, align 8
  %8 = alloca %struct.hmac_ctx*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.uld_ctx*, align 8
  %11 = alloca %struct.chcr_wr*, align 8
  %12 = alloca %struct.ulptx_sgl*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.adapter*, align 8
  %18 = alloca i32, align 4
  store %struct.ahash_request* %0, %struct.ahash_request** %4, align 8
  store %struct.hash_wr_param* %1, %struct.hash_wr_param** %5, align 8
  %19 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %20 = call %struct.chcr_ahash_req_ctx* @ahash_request_ctx(%struct.ahash_request* %19)
  store %struct.chcr_ahash_req_ctx* %20, %struct.chcr_ahash_req_ctx** %6, align 8
  %21 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %22 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %21)
  store %struct.crypto_ahash* %22, %struct.crypto_ahash** %7, align 8
  %23 = load %struct.crypto_ahash*, %struct.crypto_ahash** %7, align 8
  %24 = call %struct.TYPE_21__* @h_ctx(%struct.crypto_ahash* %23)
  %25 = call %struct.hmac_ctx* @HMAC_CTX(%struct.TYPE_21__* %24)
  store %struct.hmac_ctx* %25, %struct.hmac_ctx** %8, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %9, align 8
  %26 = load %struct.crypto_ahash*, %struct.crypto_ahash** %7, align 8
  %27 = call %struct.TYPE_21__* @h_ctx(%struct.crypto_ahash* %26)
  %28 = call %struct.uld_ctx* @ULD_CTX(%struct.TYPE_21__* %27)
  store %struct.uld_ctx* %28, %struct.uld_ctx** %10, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %29 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %30 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %2
  %37 = load i32, i32* @GFP_KERNEL, align 4
  br label %40

38:                                               ; preds = %2
  %39 = load i32, i32* @GFP_ATOMIC, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  store i32 %41, i32* %16, align 4
  %42 = load %struct.crypto_ahash*, %struct.crypto_ahash** %7, align 8
  %43 = call %struct.TYPE_21__* @h_ctx(%struct.crypto_ahash* %42)
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call %struct.adapter* @padap(i32 %45)
  store %struct.adapter* %46, %struct.adapter** %17, align 8
  store i32 0, i32* %18, align 4
  %47 = load %struct.hash_wr_param*, %struct.hash_wr_param** %5, align 8
  %48 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @HASH_TRANSHDR_SIZE(i32 %49)
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %14, align 4
  %52 = load %struct.hash_wr_param*, %struct.hash_wr_param** %5, align 8
  %53 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = add i32 %51, %54
  %56 = load %struct.hash_wr_param*, %struct.hash_wr_param** %5, align 8
  %57 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = add i32 %55, %58
  %60 = load i32, i32* @SGE_MAX_WR_LEN, align 4
  %61 = icmp ule i32 %59, %60
  %62 = zext i1 %61 to i32
  %63 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %6, align 8
  %64 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 8
  %66 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %6, align 8
  %67 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.hash_wr_param*, %struct.hash_wr_param** %5, align 8
  %71 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @CHCR_SRC_SG_SIZE, align 4
  %74 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %6, align 8
  %75 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @sg_nents_xlen(i32 %69, i32 %72, i32 %73, i32 %77)
  store i32 %78, i32* %13, align 4
  %79 = load %struct.hash_wr_param*, %struct.hash_wr_param** %5, align 8
  %80 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i32 1, i32 0
  %85 = load i32, i32* %13, align 4
  %86 = add i32 %85, %84
  store i32 %86, i32* %13, align 4
  %87 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %6, align 8
  %88 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %40
  %93 = load %struct.hash_wr_param*, %struct.hash_wr_param** %5, align 8
  %94 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.hash_wr_param*, %struct.hash_wr_param** %5, align 8
  %97 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = add i32 %95, %98
  %100 = call i32 @roundup(i32 %99, i32 16)
  br label %105

101:                                              ; preds = %40
  %102 = load i32, i32* %13, align 4
  %103 = call i32 @sgl_len(i32 %102)
  %104 = mul nsw i32 %103, 8
  br label %105

105:                                              ; preds = %101, %92
  %106 = phi i32 [ %100, %92 ], [ %104, %101 ]
  %107 = load i32, i32* %14, align 4
  %108 = add i32 %107, %106
  store i32 %108, i32* %14, align 4
  %109 = load i32, i32* %14, align 4
  %110 = call i32 @roundup(i32 %109, i32 16)
  store i32 %110, i32* %14, align 4
  %111 = load i32, i32* %14, align 4
  %112 = load i32, i32* %16, align 4
  %113 = call %struct.sk_buff* @alloc_skb(i32 %111, i32 %112)
  store %struct.sk_buff* %113, %struct.sk_buff** %9, align 8
  %114 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %115 = icmp ne %struct.sk_buff* %114, null
  br i1 %115, label %120, label %116

116:                                              ; preds = %105
  %117 = load i32, i32* @ENOMEM, align 4
  %118 = sub nsw i32 0, %117
  %119 = call %struct.sk_buff* @ERR_PTR(i32 %118)
  store %struct.sk_buff* %119, %struct.sk_buff** %3, align 8
  br label %354

120:                                              ; preds = %105
  %121 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %122 = load i32, i32* %14, align 4
  %123 = call %struct.chcr_wr* @__skb_put_zero(%struct.sk_buff* %121, i32 %122)
  store %struct.chcr_wr* %123, %struct.chcr_wr** %11, align 8
  %124 = load %struct.crypto_ahash*, %struct.crypto_ahash** %7, align 8
  %125 = call %struct.TYPE_21__* @h_ctx(%struct.crypto_ahash* %124)
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @FILL_SEC_CPL_OP_IVINSR(i32 %127, i32 2, i32 0)
  %129 = load %struct.chcr_wr*, %struct.chcr_wr** %11, align 8
  %130 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 6
  store i32 %128, i32* %131, align 4
  %132 = load %struct.hash_wr_param*, %struct.hash_wr_param** %5, align 8
  %133 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.hash_wr_param*, %struct.hash_wr_param** %5, align 8
  %136 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = add i32 %134, %137
  %139 = call i32 @htonl(i32 %138)
  %140 = load %struct.chcr_wr*, %struct.chcr_wr** %11, align 8
  %141 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 5
  store i32 %139, i32* %142, align 4
  %143 = call i32 @FILL_SEC_CPL_CIPHERSTOP_HI(i32 0, i32 0, i32 0, i32 0)
  %144 = load %struct.chcr_wr*, %struct.chcr_wr** %11, align 8
  %145 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i32 0, i32 4
  store i32 %143, i32* %146, align 4
  %147 = call i32 @FILL_SEC_CPL_AUTHINSERT(i32 0, i32 1, i32 0, i32 0)
  %148 = load %struct.chcr_wr*, %struct.chcr_wr** %11, align 8
  %149 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 3
  store i32 %147, i32* %150, align 4
  %151 = load %struct.hash_wr_param*, %struct.hash_wr_param** %5, align 8
  %152 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %151, i32 0, i32 6
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.hash_wr_param*, %struct.hash_wr_param** %5, align 8
  %156 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %155, i32 0, i32 5
  %157 = load i64, i64* %156, align 8
  %158 = call i32 @FILL_SEC_CPL_SCMD0_SEQNO(i32 0, i32 0, i32 0, i32 %154, i64 %157, i32 0)
  %159 = load %struct.chcr_wr*, %struct.chcr_wr** %11, align 8
  %160 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %160, i32 0, i32 2
  store i32 %158, i32* %161, align 4
  %162 = load %struct.hash_wr_param*, %struct.hash_wr_param** %5, align 8
  %163 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %162, i32 0, i32 8
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.hash_wr_param*, %struct.hash_wr_param** %5, align 8
  %166 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %165, i32 0, i32 7
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @FILL_SEC_CPL_IVGEN_HDRLEN(i32 %164, i32 %167, i32 0, i32 1, i32 0, i32 0)
  %169 = load %struct.chcr_wr*, %struct.chcr_wr** %11, align 8
  %170 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %170, i32 0, i32 1
  store i32 %168, i32* %171, align 4
  %172 = load %struct.chcr_wr*, %struct.chcr_wr** %11, align 8
  %173 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %6, align 8
  %177 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.hash_wr_param*, %struct.hash_wr_param** %5, align 8
  %180 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %179, i32 0, i32 6
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @memcpy(i32 %175, i32 %178, i32 %182)
  %184 = load %struct.hash_wr_param*, %struct.hash_wr_param** %5, align 8
  %185 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %184, i32 0, i32 5
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %212

188:                                              ; preds = %120
  %189 = load %struct.chcr_wr*, %struct.chcr_wr** %11, align 8
  %190 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.hash_wr_param*, %struct.hash_wr_param** %5, align 8
  %194 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %193, i32 0, i32 6
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = icmp sle i32 %196, 32
  br i1 %197, label %198, label %199

198:                                              ; preds = %188
  br label %201

199:                                              ; preds = %188
  %200 = load i32, i32* @CHCR_HASH_MAX_DIGEST_SIZE, align 4
  br label %201

201:                                              ; preds = %199, %198
  %202 = phi i32 [ 32, %198 ], [ %200, %199 ]
  %203 = add nsw i32 %192, %202
  %204 = load %struct.hmac_ctx*, %struct.hmac_ctx** %8, align 8
  %205 = getelementptr inbounds %struct.hmac_ctx, %struct.hmac_ctx* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.hash_wr_param*, %struct.hash_wr_param** %5, align 8
  %208 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %207, i32 0, i32 6
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = call i32 @memcpy(i32 %203, i32 %206, i32 %210)
  br label %212

212:                                              ; preds = %201, %120
  %213 = load i32, i32* @CHCR_KEYCTX_NO_KEY, align 4
  %214 = load %struct.hash_wr_param*, %struct.hash_wr_param** %5, align 8
  %215 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %214, i32 0, i32 6
  %216 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.hash_wr_param*, %struct.hash_wr_param** %5, align 8
  %219 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %218, i32 0, i32 5
  %220 = load i64, i64* %219, align 8
  %221 = load %struct.hash_wr_param*, %struct.hash_wr_param** %5, align 8
  %222 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = sext i32 %223 to i64
  %225 = add i64 %224, 8
  %226 = lshr i64 %225, 4
  %227 = trunc i64 %226 to i32
  %228 = call i32 @FILL_KEY_CTX_HDR(i32 %213, i32 %217, i32 0, i64 %220, i32 %227)
  %229 = load %struct.chcr_wr*, %struct.chcr_wr** %11, align 8
  %230 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %230, i32 0, i32 1
  store i32 %228, i32* %231, align 4
  %232 = load %struct.hash_wr_param*, %struct.hash_wr_param** %5, align 8
  %233 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %232, i32 0, i32 4
  %234 = load i64, i64* %233, align 8
  %235 = trunc i64 %234 to i32
  %236 = call i32 @cpu_to_be64(i32 %235)
  %237 = load %struct.chcr_wr*, %struct.chcr_wr** %11, align 8
  %238 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %238, i32 0, i32 0
  store i32 %236, i32* %239, align 4
  %240 = load %struct.chcr_wr*, %struct.chcr_wr** %11, align 8
  %241 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %240, i64 1
  %242 = bitcast %struct.chcr_wr* %241 to i32*
  %243 = load %struct.hash_wr_param*, %struct.hash_wr_param** %5, align 8
  %244 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %242, i64 %246
  %248 = load i32, i32* @DUMMY_BYTES, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %247, i64 %249
  %251 = bitcast i32* %250 to %struct.ulptx_sgl*
  store %struct.ulptx_sgl* %251, %struct.ulptx_sgl** %12, align 8
  %252 = load %struct.hash_wr_param*, %struct.hash_wr_param** %5, align 8
  %253 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %294

256:                                              ; preds = %212
  %257 = load %struct.uld_ctx*, %struct.uld_ctx** %10, align 8
  %258 = getelementptr inbounds %struct.uld_ctx, %struct.uld_ctx* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %258, i32 0, i32 0
  %260 = load %struct.TYPE_18__*, %struct.TYPE_18__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %260, i32 0, i32 0
  %262 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %6, align 8
  %263 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 8
  %265 = load %struct.hash_wr_param*, %struct.hash_wr_param** %5, align 8
  %266 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = load i32, i32* @DMA_TO_DEVICE, align 4
  %269 = call i64 @dma_map_single(i32* %261, i32 %264, i32 %267, i32 %268)
  %270 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %6, align 8
  %271 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %271, i32 0, i32 3
  store i64 %269, i64* %272, align 8
  %273 = load %struct.uld_ctx*, %struct.uld_ctx** %10, align 8
  %274 = getelementptr inbounds %struct.uld_ctx, %struct.uld_ctx* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %274, i32 0, i32 0
  %276 = load %struct.TYPE_18__*, %struct.TYPE_18__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %276, i32 0, i32 0
  %278 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %6, align 8
  %279 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %279, i32 0, i32 3
  %281 = load i64, i64* %280, align 8
  %282 = call i64 @dma_mapping_error(i32* %277, i64 %281)
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %287

284:                                              ; preds = %256
  %285 = load i32, i32* @ENOMEM, align 4
  %286 = sub nsw i32 0, %285
  store i32 %286, i32* %18, align 4
  br label %349

287:                                              ; preds = %256
  %288 = load %struct.hash_wr_param*, %struct.hash_wr_param** %5, align 8
  %289 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %6, align 8
  %292 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %292, i32 0, i32 1
  store i32 %290, i32* %293, align 4
  br label %298

294:                                              ; preds = %212
  %295 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %6, align 8
  %296 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %296, i32 0, i32 3
  store i64 0, i64* %297, align 8
  br label %298

298:                                              ; preds = %294, %287
  %299 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %300 = load %struct.ulptx_sgl*, %struct.ulptx_sgl** %12, align 8
  %301 = load %struct.hash_wr_param*, %struct.hash_wr_param** %5, align 8
  %302 = call i32 @chcr_add_hash_src_ent(%struct.ahash_request* %299, %struct.ulptx_sgl* %300, %struct.hash_wr_param* %301)
  %303 = load %struct.hash_wr_param*, %struct.hash_wr_param** %5, align 8
  %304 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = load i32, i32* @DUMMY_BYTES, align 4
  %307 = add nsw i32 %305, %306
  %308 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %6, align 8
  %309 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %321

313:                                              ; preds = %298
  %314 = load %struct.hash_wr_param*, %struct.hash_wr_param** %5, align 8
  %315 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %314, i32 0, i32 2
  %316 = load i32, i32* %315, align 8
  %317 = load %struct.hash_wr_param*, %struct.hash_wr_param** %5, align 8
  %318 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 4
  %320 = add i32 %316, %319
  br label %322

321:                                              ; preds = %298
  br label %322

322:                                              ; preds = %321, %313
  %323 = phi i32 [ %320, %313 ], [ 0, %321 ]
  %324 = add i32 %307, %323
  store i32 %324, i32* %15, align 4
  %325 = load %struct.adapter*, %struct.adapter** %17, align 8
  %326 = getelementptr inbounds %struct.adapter, %struct.adapter* %325, i32 0, i32 0
  %327 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %326, i32 0, i32 0
  %328 = call i32 @atomic_inc(i32* %327)
  %329 = load %struct.crypto_ahash*, %struct.crypto_ahash** %7, align 8
  %330 = call %struct.TYPE_21__* @h_ctx(%struct.crypto_ahash* %329)
  %331 = load %struct.chcr_wr*, %struct.chcr_wr** %11, align 8
  %332 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %333 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %332, i32 0, i32 0
  %334 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %6, align 8
  %335 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 8
  %338 = load %struct.hash_wr_param*, %struct.hash_wr_param** %5, align 8
  %339 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %338, i32 0, i32 3
  %340 = load i32, i32* %339, align 4
  %341 = load i32, i32* %14, align 4
  %342 = load i32, i32* %15, align 4
  %343 = call i32 @create_wreq(%struct.TYPE_21__* %330, %struct.chcr_wr* %331, %struct.TYPE_13__* %333, i32 %337, i32 %340, i32 %341, i32 %342, i32 0)
  %344 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %345 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %6, align 8
  %346 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %345, i32 0, i32 0
  %347 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %346, i32 0, i32 2
  store %struct.sk_buff* %344, %struct.sk_buff** %347, align 8
  %348 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* %348, %struct.sk_buff** %3, align 8
  br label %354

349:                                              ; preds = %284
  %350 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %351 = call i32 @kfree_skb(%struct.sk_buff* %350)
  %352 = load i32, i32* %18, align 4
  %353 = call %struct.sk_buff* @ERR_PTR(i32 %352)
  store %struct.sk_buff* %353, %struct.sk_buff** %3, align 8
  br label %354

354:                                              ; preds = %349, %322, %116
  %355 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %355
}

declare dso_local %struct.chcr_ahash_req_ctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local %struct.hmac_ctx* @HMAC_CTX(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_21__* @h_ctx(%struct.crypto_ahash*) #1

declare dso_local %struct.uld_ctx* @ULD_CTX(%struct.TYPE_21__*) #1

declare dso_local %struct.adapter* @padap(i32) #1

declare dso_local i32 @HASH_TRANSHDR_SIZE(i32) #1

declare dso_local i32 @sg_nents_xlen(i32, i32, i32, i32) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @sgl_len(i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local %struct.chcr_wr* @__skb_put_zero(%struct.sk_buff*, i32) #1

declare dso_local i32 @FILL_SEC_CPL_OP_IVINSR(i32, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @FILL_SEC_CPL_CIPHERSTOP_HI(i32, i32, i32, i32) #1

declare dso_local i32 @FILL_SEC_CPL_AUTHINSERT(i32, i32, i32, i32) #1

declare dso_local i32 @FILL_SEC_CPL_SCMD0_SEQNO(i32, i32, i32, i32, i64, i32) #1

declare dso_local i32 @FILL_SEC_CPL_IVGEN_HDRLEN(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @FILL_KEY_CTX_HDR(i32, i32, i32, i64, i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i64 @dma_map_single(i32*, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i64) #1

declare dso_local i32 @chcr_add_hash_src_ent(%struct.ahash_request*, %struct.ulptx_sgl*, %struct.hash_wr_param*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @create_wreq(%struct.TYPE_21__*, %struct.chcr_wr*, %struct.TYPE_13__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

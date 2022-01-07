; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_create_cipher_wr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_create_cipher_wr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.cipher_wr_param = type { i32, %struct.TYPE_15__*, i32 }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.crypto_ablkcipher = type { i32 }
%struct.ablk_ctx = type { i32, i64, i64, i32 }
%struct.chcr_wr = type { %struct.TYPE_14__, %struct.TYPE_12__ }
%struct.TYPE_14__ = type { i64, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32 }
%struct.cpl_rx_phys_dsgl = type { i32 }
%struct.ulptx_sgl = type { i32 }
%struct.chcr_blkcipher_req_ctx = type { i64, i32, %struct.sk_buff*, i64, i32, i32, i32, i32 }
%struct.adapter = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32 }

@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@CHCR_DST_SG_SIZE = common dso_local global i32 0, align 4
@CHCR_SRC_SG_SIZE = common dso_local global i32 0, align 4
@SGE_MAX_WR_LEN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IV = common dso_local global i32 0, align 4
@CHCR_DECRYPT_OP = common dso_local global i64 0, align 8
@CRYPTO_ALG_SUB_TYPE_CTR = common dso_local global i64 0, align 8
@CRYPTO_ALG_SUB_TYPE_CTR_RFC3686 = common dso_local global i64 0, align 8
@CHCR_SCMD_CIPHER_MODE_AES_CBC = common dso_local global i64 0, align 8
@CHCR_SCMD_CIPHER_MODE_AES_CTR = common dso_local global i64 0, align 8
@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.cipher_wr_param*)* @create_cipher_wr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @create_cipher_wr(%struct.cipher_wr_param* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.cipher_wr_param*, align 8
  %4 = alloca %struct.crypto_ablkcipher*, align 8
  %5 = alloca %struct.ablk_ctx*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.chcr_wr*, align 8
  %8 = alloca %struct.cpl_rx_phys_dsgl*, align 8
  %9 = alloca %struct.ulptx_sgl*, align 8
  %10 = alloca %struct.chcr_blkcipher_req_ctx*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.adapter*, align 8
  store %struct.cipher_wr_param* %0, %struct.cipher_wr_param** %3, align 8
  %19 = load %struct.cipher_wr_param*, %struct.cipher_wr_param** %3, align 8
  %20 = getelementptr inbounds %struct.cipher_wr_param, %struct.cipher_wr_param* %19, i32 0, i32 1
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %22 = call %struct.crypto_ablkcipher* @crypto_ablkcipher_reqtfm(%struct.TYPE_15__* %21)
  store %struct.crypto_ablkcipher* %22, %struct.crypto_ablkcipher** %4, align 8
  %23 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %4, align 8
  %24 = call %struct.TYPE_16__* @c_ctx(%struct.crypto_ablkcipher* %23)
  %25 = call %struct.ablk_ctx* @ABLK_CTX(%struct.TYPE_16__* %24)
  store %struct.ablk_ctx* %25, %struct.ablk_ctx** %5, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  %26 = load %struct.cipher_wr_param*, %struct.cipher_wr_param** %3, align 8
  %27 = getelementptr inbounds %struct.cipher_wr_param, %struct.cipher_wr_param* %26, i32 0, i32 1
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  %29 = call %struct.chcr_blkcipher_req_ctx* @ablkcipher_request_ctx(%struct.TYPE_15__* %28)
  store %struct.chcr_blkcipher_req_ctx* %29, %struct.chcr_blkcipher_req_ctx** %10, align 8
  store i32 0, i32* %11, align 4
  %30 = load %struct.cipher_wr_param*, %struct.cipher_wr_param** %3, align 8
  %31 = getelementptr inbounds %struct.cipher_wr_param, %struct.cipher_wr_param* %30, i32 0, i32 1
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
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
  store i32 %44, i32* %17, align 4
  %45 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %4, align 8
  %46 = call %struct.TYPE_16__* @c_ctx(%struct.crypto_ablkcipher* %45)
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.adapter* @padap(i32 %48)
  store %struct.adapter* %49, %struct.adapter** %18, align 8
  %50 = load %struct.chcr_blkcipher_req_ctx*, %struct.chcr_blkcipher_req_ctx** %10, align 8
  %51 = getelementptr inbounds %struct.chcr_blkcipher_req_ctx, %struct.chcr_blkcipher_req_ctx* %50, i32 0, i32 7
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.cipher_wr_param*, %struct.cipher_wr_param** %3, align 8
  %54 = getelementptr inbounds %struct.cipher_wr_param, %struct.cipher_wr_param* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @CHCR_DST_SG_SIZE, align 4
  %57 = load %struct.chcr_blkcipher_req_ctx*, %struct.chcr_blkcipher_req_ctx** %10, align 8
  %58 = getelementptr inbounds %struct.chcr_blkcipher_req_ctx, %struct.chcr_blkcipher_req_ctx* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @sg_nents_xlen(i32 %52, i32 %55, i32 %56, i32 %59)
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* %15, align 4
  %62 = call i32 @get_space_for_phys_dsgl(i32 %61)
  store i32 %62, i32* %13, align 4
  %63 = load %struct.ablk_ctx*, %struct.ablk_ctx** %5, align 8
  %64 = getelementptr inbounds %struct.ablk_ctx, %struct.ablk_ctx* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @roundup(i32 %65, i32 16)
  store i32 %66, i32* %16, align 4
  %67 = load i32, i32* %16, align 4
  %68 = load i32, i32* %13, align 4
  %69 = call i32 @CIPHER_TRANSHDR_SIZE(i32 %67, i32 %68)
  store i32 %69, i32* %12, align 4
  %70 = load %struct.chcr_blkcipher_req_ctx*, %struct.chcr_blkcipher_req_ctx** %10, align 8
  %71 = getelementptr inbounds %struct.chcr_blkcipher_req_ctx, %struct.chcr_blkcipher_req_ctx* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.cipher_wr_param*, %struct.cipher_wr_param** %3, align 8
  %74 = getelementptr inbounds %struct.cipher_wr_param, %struct.cipher_wr_param* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @CHCR_SRC_SG_SIZE, align 4
  %77 = load %struct.chcr_blkcipher_req_ctx*, %struct.chcr_blkcipher_req_ctx** %10, align 8
  %78 = getelementptr inbounds %struct.chcr_blkcipher_req_ctx, %struct.chcr_blkcipher_req_ctx* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @sg_nents_xlen(i32 %72, i32 %75, i32 %76, i32 %79)
  store i32 %80, i32* %15, align 4
  %81 = load %struct.chcr_blkcipher_req_ctx*, %struct.chcr_blkcipher_req_ctx** %10, align 8
  %82 = getelementptr inbounds %struct.chcr_blkcipher_req_ctx, %struct.chcr_blkcipher_req_ctx* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %43
  %86 = load %struct.cipher_wr_param*, %struct.cipher_wr_param** %3, align 8
  %87 = getelementptr inbounds %struct.cipher_wr_param, %struct.cipher_wr_param* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @roundup(i32 %88, i32 16)
  br label %94

90:                                               ; preds = %43
  %91 = load i32, i32* %15, align 4
  %92 = call i32 @sgl_len(i32 %91)
  %93 = mul nsw i32 %92, 8
  br label %94

94:                                               ; preds = %90, %85
  %95 = phi i32 [ %89, %85 ], [ %93, %90 ]
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* %12, align 4
  %98 = add i32 %97, %96
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %12, align 4
  %100 = call i32 @roundup(i32 %99, i32 16)
  store i32 %100, i32* %12, align 4
  %101 = load i32, i32* @SGE_MAX_WR_LEN, align 4
  %102 = load i32, i32* %17, align 4
  %103 = call %struct.sk_buff* @alloc_skb(i32 %101, i32 %102)
  store %struct.sk_buff* %103, %struct.sk_buff** %6, align 8
  %104 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %105 = icmp ne %struct.sk_buff* %104, null
  br i1 %105, label %109, label %106

106:                                              ; preds = %94
  %107 = load i32, i32* @ENOMEM, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %14, align 4
  br label %365

109:                                              ; preds = %94
  %110 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %111 = load i32, i32* %12, align 4
  %112 = call %struct.chcr_wr* @__skb_put_zero(%struct.sk_buff* %110, i32 %111)
  store %struct.chcr_wr* %112, %struct.chcr_wr** %7, align 8
  %113 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %4, align 8
  %114 = call %struct.TYPE_16__* @c_ctx(%struct.crypto_ablkcipher* %113)
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @FILL_SEC_CPL_OP_IVINSR(i32 %116, i32 2, i32 1)
  %118 = load %struct.chcr_wr*, %struct.chcr_wr** %7, align 8
  %119 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 5
  store i32 %117, i32* %120, align 4
  %121 = load i32, i32* @IV, align 4
  %122 = load %struct.cipher_wr_param*, %struct.cipher_wr_param** %3, align 8
  %123 = getelementptr inbounds %struct.cipher_wr_param, %struct.cipher_wr_param* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = add i32 %121, %124
  %126 = call i32 @htonl(i32 %125)
  %127 = load %struct.chcr_wr*, %struct.chcr_wr** %7, align 8
  %128 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 4
  store i32 %126, i32* %129, align 8
  %130 = load i32, i32* @IV, align 4
  %131 = add nsw i32 %130, 1
  %132 = call i32 @FILL_SEC_CPL_CIPHERSTOP_HI(i32 0, i32 0, i32 %131, i32 0)
  %133 = load %struct.chcr_wr*, %struct.chcr_wr** %7, align 8
  %134 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 3
  store i32 %132, i32* %135, align 4
  %136 = call i32 @FILL_SEC_CPL_AUTHINSERT(i32 0, i32 0, i32 0, i32 0)
  %137 = load %struct.chcr_wr*, %struct.chcr_wr** %7, align 8
  %138 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 2
  store i32 %136, i32* %139, align 8
  %140 = load %struct.chcr_blkcipher_req_ctx*, %struct.chcr_blkcipher_req_ctx** %10, align 8
  %141 = getelementptr inbounds %struct.chcr_blkcipher_req_ctx, %struct.chcr_blkcipher_req_ctx* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.ablk_ctx*, %struct.ablk_ctx** %5, align 8
  %144 = getelementptr inbounds %struct.ablk_ctx, %struct.ablk_ctx* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load i32, i32* @IV, align 4
  %147 = ashr i32 %146, 1
  %148 = call i32 @FILL_SEC_CPL_SCMD0_SEQNO(i64 %142, i32 0, i64 %145, i32 0, i32 0, i32 %147)
  %149 = load %struct.chcr_wr*, %struct.chcr_wr** %7, align 8
  %150 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 1
  store i32 %148, i32* %151, align 4
  %152 = load i32, i32* %13, align 4
  %153 = call i32 @FILL_SEC_CPL_IVGEN_HDRLEN(i32 0, i32 0, i32 0, i32 0, i32 1, i32 %152)
  %154 = load %struct.chcr_wr*, %struct.chcr_wr** %7, align 8
  %155 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 0
  store i32 %153, i32* %156, align 8
  %157 = load %struct.ablk_ctx*, %struct.ablk_ctx** %5, align 8
  %158 = getelementptr inbounds %struct.ablk_ctx, %struct.ablk_ctx* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.chcr_wr*, %struct.chcr_wr** %7, align 8
  %161 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 1
  store i32 %159, i32* %162, align 8
  %163 = load %struct.chcr_blkcipher_req_ctx*, %struct.chcr_blkcipher_req_ctx** %10, align 8
  %164 = getelementptr inbounds %struct.chcr_blkcipher_req_ctx, %struct.chcr_blkcipher_req_ctx* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @CHCR_DECRYPT_OP, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %185

168:                                              ; preds = %109
  %169 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %4, align 8
  %170 = call i32 @crypto_ablkcipher_tfm(%struct.crypto_ablkcipher* %169)
  %171 = call i64 @get_cryptoalg_subtype(i32 %170)
  %172 = load i64, i64* @CRYPTO_ALG_SUB_TYPE_CTR, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %185, label %174

174:                                              ; preds = %168
  %175 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %4, align 8
  %176 = call i32 @crypto_ablkcipher_tfm(%struct.crypto_ablkcipher* %175)
  %177 = call i64 @get_cryptoalg_subtype(i32 %176)
  %178 = load i64, i64* @CRYPTO_ALG_SUB_TYPE_CTR_RFC3686, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %185, label %180

180:                                              ; preds = %174
  %181 = load %struct.ablk_ctx*, %struct.ablk_ctx** %5, align 8
  %182 = load %struct.chcr_wr*, %struct.chcr_wr** %7, align 8
  %183 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %182, i32 0, i32 0
  %184 = call i32 @generate_copy_rrkey(%struct.ablk_ctx* %181, %struct.TYPE_14__* %183)
  br label %247

185:                                              ; preds = %174, %168, %109
  %186 = load %struct.ablk_ctx*, %struct.ablk_ctx** %5, align 8
  %187 = getelementptr inbounds %struct.ablk_ctx, %struct.ablk_ctx* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @CHCR_SCMD_CIPHER_MODE_AES_CBC, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %197, label %191

191:                                              ; preds = %185
  %192 = load %struct.ablk_ctx*, %struct.ablk_ctx** %5, align 8
  %193 = getelementptr inbounds %struct.ablk_ctx, %struct.ablk_ctx* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @CHCR_SCMD_CIPHER_MODE_AES_CTR, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %209

197:                                              ; preds = %191, %185
  %198 = load %struct.chcr_wr*, %struct.chcr_wr** %7, align 8
  %199 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load %struct.ablk_ctx*, %struct.ablk_ctx** %5, align 8
  %203 = getelementptr inbounds %struct.ablk_ctx, %struct.ablk_ctx* %202, i32 0, i32 2
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.ablk_ctx*, %struct.ablk_ctx** %5, align 8
  %206 = getelementptr inbounds %struct.ablk_ctx, %struct.ablk_ctx* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @memcpy(i64 %201, i64 %204, i32 %207)
  br label %246

209:                                              ; preds = %191
  %210 = load %struct.chcr_wr*, %struct.chcr_wr** %7, align 8
  %211 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load %struct.ablk_ctx*, %struct.ablk_ctx** %5, align 8
  %215 = getelementptr inbounds %struct.ablk_ctx, %struct.ablk_ctx* %214, i32 0, i32 2
  %216 = load i64, i64* %215, align 8
  %217 = load %struct.ablk_ctx*, %struct.ablk_ctx** %5, align 8
  %218 = getelementptr inbounds %struct.ablk_ctx, %struct.ablk_ctx* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = lshr i32 %219, 1
  %221 = zext i32 %220 to i64
  %222 = add nsw i64 %216, %221
  %223 = load %struct.ablk_ctx*, %struct.ablk_ctx** %5, align 8
  %224 = getelementptr inbounds %struct.ablk_ctx, %struct.ablk_ctx* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = lshr i32 %225, 1
  %227 = call i32 @memcpy(i64 %213, i64 %222, i32 %226)
  %228 = load %struct.chcr_wr*, %struct.chcr_wr** %7, align 8
  %229 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = load %struct.ablk_ctx*, %struct.ablk_ctx** %5, align 8
  %233 = getelementptr inbounds %struct.ablk_ctx, %struct.ablk_ctx* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = lshr i32 %234, 1
  %236 = zext i32 %235 to i64
  %237 = add nsw i64 %231, %236
  %238 = load %struct.ablk_ctx*, %struct.ablk_ctx** %5, align 8
  %239 = getelementptr inbounds %struct.ablk_ctx, %struct.ablk_ctx* %238, i32 0, i32 2
  %240 = load i64, i64* %239, align 8
  %241 = load %struct.ablk_ctx*, %struct.ablk_ctx** %5, align 8
  %242 = getelementptr inbounds %struct.ablk_ctx, %struct.ablk_ctx* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = lshr i32 %243, 1
  %245 = call i32 @memcpy(i64 %237, i64 %240, i32 %244)
  br label %246

246:                                              ; preds = %209, %197
  br label %247

247:                                              ; preds = %246, %180
  %248 = load %struct.chcr_wr*, %struct.chcr_wr** %7, align 8
  %249 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %248, i64 1
  %250 = bitcast %struct.chcr_wr* %249 to i32*
  %251 = load i32, i32* %16, align 4
  %252 = zext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %250, i64 %252
  %254 = bitcast i32* %253 to %struct.cpl_rx_phys_dsgl*
  store %struct.cpl_rx_phys_dsgl* %254, %struct.cpl_rx_phys_dsgl** %8, align 8
  %255 = load %struct.cpl_rx_phys_dsgl*, %struct.cpl_rx_phys_dsgl** %8, align 8
  %256 = getelementptr inbounds %struct.cpl_rx_phys_dsgl, %struct.cpl_rx_phys_dsgl* %255, i64 1
  %257 = bitcast %struct.cpl_rx_phys_dsgl* %256 to i32*
  %258 = load i32, i32* %13, align 4
  %259 = zext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %257, i64 %259
  %261 = bitcast i32* %260 to %struct.ulptx_sgl*
  store %struct.ulptx_sgl* %261, %struct.ulptx_sgl** %9, align 8
  %262 = load %struct.cipher_wr_param*, %struct.cipher_wr_param** %3, align 8
  %263 = getelementptr inbounds %struct.cipher_wr_param, %struct.cipher_wr_param* %262, i32 0, i32 1
  %264 = load %struct.TYPE_15__*, %struct.TYPE_15__** %263, align 8
  %265 = load %struct.ulptx_sgl*, %struct.ulptx_sgl** %9, align 8
  %266 = load %struct.cipher_wr_param*, %struct.cipher_wr_param** %3, align 8
  %267 = call i32 @chcr_add_cipher_src_ent(%struct.TYPE_15__* %264, %struct.ulptx_sgl* %265, %struct.cipher_wr_param* %266)
  %268 = load %struct.cipher_wr_param*, %struct.cipher_wr_param** %3, align 8
  %269 = getelementptr inbounds %struct.cipher_wr_param, %struct.cipher_wr_param* %268, i32 0, i32 1
  %270 = load %struct.TYPE_15__*, %struct.TYPE_15__** %269, align 8
  %271 = load %struct.cpl_rx_phys_dsgl*, %struct.cpl_rx_phys_dsgl** %8, align 8
  %272 = load %struct.cipher_wr_param*, %struct.cipher_wr_param** %3, align 8
  %273 = load %struct.cipher_wr_param*, %struct.cipher_wr_param** %3, align 8
  %274 = getelementptr inbounds %struct.cipher_wr_param, %struct.cipher_wr_param* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 8
  %276 = call i32 @chcr_add_cipher_dst_ent(%struct.TYPE_15__* %270, %struct.cpl_rx_phys_dsgl* %271, %struct.cipher_wr_param* %272, i32 %275)
  %277 = load %struct.adapter*, %struct.adapter** %18, align 8
  %278 = getelementptr inbounds %struct.adapter, %struct.adapter* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %278, i32 0, i32 0
  %280 = call i32 @atomic_inc(i32* %279)
  %281 = load i32, i32* %13, align 4
  %282 = zext i32 %281 to i64
  %283 = add i64 4, %282
  %284 = load i32, i32* %16, align 4
  %285 = zext i32 %284 to i64
  %286 = add i64 %283, %285
  %287 = load i32, i32* @IV, align 4
  %288 = sext i32 %287 to i64
  %289 = add i64 %286, %288
  %290 = load %struct.chcr_blkcipher_req_ctx*, %struct.chcr_blkcipher_req_ctx** %10, align 8
  %291 = getelementptr inbounds %struct.chcr_blkcipher_req_ctx, %struct.chcr_blkcipher_req_ctx* %290, i32 0, i32 3
  %292 = load i64, i64* %291, align 8
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %298

294:                                              ; preds = %247
  %295 = load %struct.cipher_wr_param*, %struct.cipher_wr_param** %3, align 8
  %296 = getelementptr inbounds %struct.cipher_wr_param, %struct.cipher_wr_param* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  br label %299

298:                                              ; preds = %247
  br label %299

299:                                              ; preds = %298, %294
  %300 = phi i32 [ %297, %294 ], [ 0, %298 ]
  %301 = zext i32 %300 to i64
  %302 = add i64 %289, %301
  %303 = trunc i64 %302 to i32
  store i32 %303, i32* %11, align 4
  %304 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %4, align 8
  %305 = call %struct.TYPE_16__* @c_ctx(%struct.crypto_ablkcipher* %304)
  %306 = load %struct.chcr_wr*, %struct.chcr_wr** %7, align 8
  %307 = load %struct.cipher_wr_param*, %struct.cipher_wr_param** %3, align 8
  %308 = getelementptr inbounds %struct.cipher_wr_param, %struct.cipher_wr_param* %307, i32 0, i32 1
  %309 = load %struct.TYPE_15__*, %struct.TYPE_15__** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %309, i32 0, i32 2
  %311 = load %struct.chcr_blkcipher_req_ctx*, %struct.chcr_blkcipher_req_ctx** %10, align 8
  %312 = getelementptr inbounds %struct.chcr_blkcipher_req_ctx, %struct.chcr_blkcipher_req_ctx* %311, i32 0, i32 3
  %313 = load i64, i64* %312, align 8
  %314 = load i32, i32* %12, align 4
  %315 = load i32, i32* %11, align 4
  %316 = load %struct.ablk_ctx*, %struct.ablk_ctx** %5, align 8
  %317 = getelementptr inbounds %struct.ablk_ctx, %struct.ablk_ctx* %316, i32 0, i32 1
  %318 = load i64, i64* %317, align 8
  %319 = load i64, i64* @CHCR_SCMD_CIPHER_MODE_AES_CBC, align 8
  %320 = icmp eq i64 %318, %319
  %321 = zext i1 %320 to i32
  %322 = call i32 @create_wreq(%struct.TYPE_16__* %305, %struct.chcr_wr* %306, %struct.TYPE_17__* %310, i64 %313, i32 0, i32 %314, i32 %315, i32 %321)
  %323 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %324 = load %struct.chcr_blkcipher_req_ctx*, %struct.chcr_blkcipher_req_ctx** %10, align 8
  %325 = getelementptr inbounds %struct.chcr_blkcipher_req_ctx, %struct.chcr_blkcipher_req_ctx* %324, i32 0, i32 2
  store %struct.sk_buff* %323, %struct.sk_buff** %325, align 8
  %326 = load %struct.chcr_blkcipher_req_ctx*, %struct.chcr_blkcipher_req_ctx** %10, align 8
  %327 = getelementptr inbounds %struct.chcr_blkcipher_req_ctx, %struct.chcr_blkcipher_req_ctx* %326, i32 0, i32 0
  %328 = load i64, i64* %327, align 8
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %330, label %363

330:                                              ; preds = %299
  %331 = load %struct.ablk_ctx*, %struct.ablk_ctx** %5, align 8
  %332 = getelementptr inbounds %struct.ablk_ctx, %struct.ablk_ctx* %331, i32 0, i32 1
  %333 = load i64, i64* %332, align 8
  %334 = load i64, i64* @CHCR_SCMD_CIPHER_MODE_AES_CBC, align 8
  %335 = icmp eq i64 %333, %334
  br i1 %335, label %336, label %363

336:                                              ; preds = %330
  %337 = load %struct.cipher_wr_param*, %struct.cipher_wr_param** %3, align 8
  %338 = getelementptr inbounds %struct.cipher_wr_param, %struct.cipher_wr_param* %337, i32 0, i32 1
  %339 = load %struct.TYPE_15__*, %struct.TYPE_15__** %338, align 8
  %340 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 4
  %342 = load %struct.cipher_wr_param*, %struct.cipher_wr_param** %3, align 8
  %343 = getelementptr inbounds %struct.cipher_wr_param, %struct.cipher_wr_param* %342, i32 0, i32 1
  %344 = load %struct.TYPE_15__*, %struct.TYPE_15__** %343, align 8
  %345 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %344, i32 0, i32 1
  %346 = load i32, i32* %345, align 4
  %347 = call i32 @sg_nents(i32 %346)
  %348 = load %struct.cipher_wr_param*, %struct.cipher_wr_param** %3, align 8
  %349 = getelementptr inbounds %struct.cipher_wr_param, %struct.cipher_wr_param* %348, i32 0, i32 1
  %350 = load %struct.TYPE_15__*, %struct.TYPE_15__** %349, align 8
  %351 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 4
  %353 = load %struct.chcr_blkcipher_req_ctx*, %struct.chcr_blkcipher_req_ctx** %10, align 8
  %354 = getelementptr inbounds %struct.chcr_blkcipher_req_ctx, %struct.chcr_blkcipher_req_ctx* %353, i32 0, i32 1
  %355 = load i32, i32* %354, align 8
  %356 = load %struct.cipher_wr_param*, %struct.cipher_wr_param** %3, align 8
  %357 = getelementptr inbounds %struct.cipher_wr_param, %struct.cipher_wr_param* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 8
  %359 = add i32 %355, %358
  %360 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %361 = sub i32 %359, %360
  %362 = call i32 @sg_pcopy_to_buffer(i32 %341, i32 %347, i32 %352, i32 16, i32 %361)
  br label %363

363:                                              ; preds = %336, %330, %299
  %364 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %364, %struct.sk_buff** %2, align 8
  br label %368

365:                                              ; preds = %106
  %366 = load i32, i32* %14, align 4
  %367 = call %struct.sk_buff* @ERR_PTR(i32 %366)
  store %struct.sk_buff* %367, %struct.sk_buff** %2, align 8
  br label %368

368:                                              ; preds = %365, %363
  %369 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  ret %struct.sk_buff* %369
}

declare dso_local %struct.crypto_ablkcipher* @crypto_ablkcipher_reqtfm(%struct.TYPE_15__*) #1

declare dso_local %struct.ablk_ctx* @ABLK_CTX(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_16__* @c_ctx(%struct.crypto_ablkcipher*) #1

declare dso_local %struct.chcr_blkcipher_req_ctx* @ablkcipher_request_ctx(%struct.TYPE_15__*) #1

declare dso_local %struct.adapter* @padap(i32) #1

declare dso_local i32 @sg_nents_xlen(i32, i32, i32, i32) #1

declare dso_local i32 @get_space_for_phys_dsgl(i32) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @CIPHER_TRANSHDR_SIZE(i32, i32) #1

declare dso_local i32 @sgl_len(i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local %struct.chcr_wr* @__skb_put_zero(%struct.sk_buff*, i32) #1

declare dso_local i32 @FILL_SEC_CPL_OP_IVINSR(i32, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @FILL_SEC_CPL_CIPHERSTOP_HI(i32, i32, i32, i32) #1

declare dso_local i32 @FILL_SEC_CPL_AUTHINSERT(i32, i32, i32, i32) #1

declare dso_local i32 @FILL_SEC_CPL_SCMD0_SEQNO(i64, i32, i64, i32, i32, i32) #1

declare dso_local i32 @FILL_SEC_CPL_IVGEN_HDRLEN(i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @get_cryptoalg_subtype(i32) #1

declare dso_local i32 @crypto_ablkcipher_tfm(%struct.crypto_ablkcipher*) #1

declare dso_local i32 @generate_copy_rrkey(%struct.ablk_ctx*, %struct.TYPE_14__*) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

declare dso_local i32 @chcr_add_cipher_src_ent(%struct.TYPE_15__*, %struct.ulptx_sgl*, %struct.cipher_wr_param*) #1

declare dso_local i32 @chcr_add_cipher_dst_ent(%struct.TYPE_15__*, %struct.cpl_rx_phys_dsgl*, %struct.cipher_wr_param*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @create_wreq(%struct.TYPE_16__*, %struct.chcr_wr*, %struct.TYPE_17__*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @sg_pcopy_to_buffer(i32, i32, i32, i32, i32) #1

declare dso_local i32 @sg_nents(i32) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

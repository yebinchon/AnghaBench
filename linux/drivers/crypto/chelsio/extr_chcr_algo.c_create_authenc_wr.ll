; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_create_authenc_wr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_create_authenc_wr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.aead_request = type { i64, i64, %struct.TYPE_12__, i32, i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.crypto_aead = type { i32 }
%struct.chcr_aead_ctx = type { i32, i32, i32, i32, i32 }
%struct.chcr_authenc_ctx = type { i32, i32, i32 }
%struct.chcr_aead_reqctx = type { i64, i32, %struct.sk_buff*, i64 }
%struct.chcr_wr = type { %struct.TYPE_8__, %struct.TYPE_10__ }
%struct.TYPE_8__ = type { i32*, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32 }
%struct.cpl_rx_phys_dsgl = type { i32 }
%struct.ulptx_sgl = type { i32 }
%struct.adapter = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@CRYPTO_ALG_SUB_TYPE_CBC_NULL = common dso_local global i32 0, align 4
@CRYPTO_ALG_SUB_TYPE_CTR_NULL = common dso_local global i32 0, align 4
@CHCR_DST_SG_SIZE = common dso_local global i32 0, align 4
@MIN_AUTH_SG = common dso_local global i64 0, align 8
@CHCR_SRC_SG_SIZE = common dso_local global i32 0, align 4
@SGE_MAX_WR_LEN = common dso_local global i64 0, align 8
@T6_MAX_AAD_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CHCR_ENCRYPT_OP = common dso_local global i64 0, align 8
@IV = common dso_local global i32 0, align 4
@CRYPTO_ALG_SUB_TYPE_CTR_SHA = common dso_local global i32 0, align 4
@CHCR_SCMD_CIPHER_MODE_AES_CTR = common dso_local global i32 0, align 4
@CHCR_SCMD_CIPHER_MODE_AES_CBC = common dso_local global i32 0, align 4
@CTR_RFC3686_NONCE_SIZE = common dso_local global i32 0, align 4
@CTR_RFC3686_IV_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.aead_request*, i16, i32)* @create_authenc_wr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @create_authenc_wr(%struct.aead_request* %0, i16 zeroext %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.aead_request*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca %struct.crypto_aead*, align 8
  %9 = alloca %struct.chcr_aead_ctx*, align 8
  %10 = alloca %struct.chcr_authenc_ctx*, align 8
  %11 = alloca %struct.chcr_aead_reqctx*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.chcr_wr*, align 8
  %14 = alloca %struct.cpl_rx_phys_dsgl*, align 8
  %15 = alloca %struct.ulptx_sgl*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.adapter*, align 8
  store %struct.aead_request* %0, %struct.aead_request** %5, align 8
  store i16 %1, i16* %6, align 2
  store i32 %2, i32* %7, align 4
  %29 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %30 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %29)
  store %struct.crypto_aead* %30, %struct.crypto_aead** %8, align 8
  %31 = load %struct.crypto_aead*, %struct.crypto_aead** %8, align 8
  %32 = call %struct.TYPE_11__* @a_ctx(%struct.crypto_aead* %31)
  %33 = call %struct.chcr_aead_ctx* @AEAD_CTX(%struct.TYPE_11__* %32)
  store %struct.chcr_aead_ctx* %33, %struct.chcr_aead_ctx** %9, align 8
  %34 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %9, align 8
  %35 = call %struct.chcr_authenc_ctx* @AUTHENC_CTX(%struct.chcr_aead_ctx* %34)
  store %struct.chcr_authenc_ctx* %35, %struct.chcr_authenc_ctx** %10, align 8
  %36 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %37 = call %struct.chcr_aead_reqctx* @aead_request_ctx(%struct.aead_request* %36)
  store %struct.chcr_aead_reqctx* %37, %struct.chcr_aead_reqctx** %11, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %12, align 8
  store i32 0, i32* %17, align 4
  %38 = load %struct.crypto_aead*, %struct.crypto_aead** %8, align 8
  %39 = call i32 @get_aead_subtype(%struct.crypto_aead* %38)
  store i32 %39, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %40 = load %struct.crypto_aead*, %struct.crypto_aead** %8, align 8
  %41 = call i32 @crypto_aead_authsize(%struct.crypto_aead* %40)
  store i32 %41, i32* %23, align 4
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %24, align 4
  store i32 0, i32* %26, align 4
  %44 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %45 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %3
  %52 = load i32, i32* @GFP_KERNEL, align 4
  br label %55

53:                                               ; preds = %3
  %54 = load i32, i32* @GFP_ATOMIC, align 4
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i32 [ %52, %51 ], [ %54, %53 ]
  store i32 %56, i32* %27, align 4
  %57 = load %struct.crypto_aead*, %struct.crypto_aead** %8, align 8
  %58 = call %struct.TYPE_11__* @a_ctx(%struct.crypto_aead* %57)
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call %struct.adapter* @padap(i32 %60)
  store %struct.adapter* %61, %struct.adapter** %28, align 8
  %62 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %63 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %55
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %528

67:                                               ; preds = %55
  %68 = load %struct.chcr_aead_reqctx*, %struct.chcr_aead_reqctx** %11, align 8
  %69 = getelementptr inbounds %struct.chcr_aead_reqctx, %struct.chcr_aead_reqctx* %68, i32 0, i32 3
  store i64 0, i64* %69, align 8
  %70 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %71 = call i32 @chcr_aead_common_init(%struct.aead_request* %70)
  store i32 %71, i32* %24, align 4
  %72 = load i32, i32* %24, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %67
  %75 = load i32, i32* %24, align 4
  %76 = call %struct.sk_buff* @ERR_PTR(i32 %75)
  store %struct.sk_buff* %76, %struct.sk_buff** %4, align 8
  br label %528

77:                                               ; preds = %67
  %78 = load i32, i32* %19, align 4
  %79 = load i32, i32* @CRYPTO_ALG_SUB_TYPE_CBC_NULL, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %85, label %81

81:                                               ; preds = %77
  %82 = load i32, i32* %19, align 4
  %83 = load i32, i32* @CRYPTO_ALG_SUB_TYPE_CTR_NULL, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %81, %77
  store i32 1, i32* %26, align 4
  br label %86

86:                                               ; preds = %85, %81
  %87 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %88 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %91 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %94 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %92, %95
  %97 = load %struct.chcr_aead_reqctx*, %struct.chcr_aead_reqctx** %11, align 8
  %98 = getelementptr inbounds %struct.chcr_aead_reqctx, %struct.chcr_aead_reqctx* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %86
  %102 = load i32, i32* %23, align 4
  %103 = sub i32 0, %102
  br label %106

104:                                              ; preds = %86
  %105 = load i32, i32* %23, align 4
  br label %106

106:                                              ; preds = %104, %101
  %107 = phi i32 [ %103, %101 ], [ %105, %104 ]
  %108 = zext i32 %107 to i64
  %109 = add nsw i64 %96, %108
  %110 = load i32, i32* @CHCR_DST_SG_SIZE, align 4
  %111 = call i32 @sg_nents_xlen(i32 %89, i64 %109, i32 %110, i32 0)
  store i32 %111, i32* %21, align 4
  %112 = load i64, i64* @MIN_AUTH_SG, align 8
  %113 = load i32, i32* %21, align 4
  %114 = zext i32 %113 to i64
  %115 = add nsw i64 %114, %112
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %21, align 4
  %117 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %118 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %121 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %124 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = add nsw i64 %122, %125
  %127 = load i32, i32* @CHCR_SRC_SG_SIZE, align 4
  %128 = call i32 @sg_nents_xlen(i32 %119, i64 %126, i32 %127, i32 0)
  store i32 %128, i32* %22, align 4
  %129 = load i32, i32* %21, align 4
  %130 = call i32 @get_space_for_phys_dsgl(i32 %129)
  store i32 %130, i32* %17, align 4
  %131 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %9, align 8
  %132 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @KEY_CONTEXT_CTX_LEN_V(i32 %133)
  %135 = call i32 @ntohl(i32 %134)
  %136 = shl i32 %135, 4
  %137 = sext i32 %136 to i64
  %138 = sub i64 %137, 16
  %139 = trunc i64 %138 to i32
  store i32 %139, i32* %20, align 4
  %140 = load i32, i32* %20, align 4
  %141 = load i32, i32* %17, align 4
  %142 = call i32 @CIPHER_TRANSHDR_SIZE(i32 %140, i32 %141)
  store i32 %142, i32* %16, align 4
  %143 = load i32, i32* %16, align 4
  %144 = zext i32 %143 to i64
  %145 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %146 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = add nsw i64 %144, %147
  %149 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %150 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = add nsw i64 %148, %151
  %153 = load i64, i64* @SGE_MAX_WR_LEN, align 8
  %154 = icmp slt i64 %152, %153
  %155 = zext i1 %154 to i32
  %156 = load %struct.chcr_aead_reqctx*, %struct.chcr_aead_reqctx** %11, align 8
  %157 = getelementptr inbounds %struct.chcr_aead_reqctx, %struct.chcr_aead_reqctx* %156, i32 0, i32 1
  store i32 %155, i32* %157, align 8
  %158 = load %struct.chcr_aead_reqctx*, %struct.chcr_aead_reqctx** %11, align 8
  %159 = getelementptr inbounds %struct.chcr_aead_reqctx, %struct.chcr_aead_reqctx* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %172

162:                                              ; preds = %106
  %163 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %164 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %167 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = add nsw i64 %165, %168
  %170 = trunc i64 %169 to i32
  %171 = call i32 @roundup(i32 %170, i32 16)
  br label %176

172:                                              ; preds = %106
  %173 = load i32, i32* %22, align 4
  %174 = call i32 @sgl_len(i32 %173)
  %175 = mul nsw i32 %174, 8
  br label %176

176:                                              ; preds = %172, %162
  %177 = phi i32 [ %171, %162 ], [ %175, %172 ]
  store i32 %177, i32* %18, align 4
  %178 = load i32, i32* %18, align 4
  %179 = load i32, i32* %16, align 4
  %180 = add i32 %179, %178
  store i32 %180, i32* %16, align 4
  %181 = load i32, i32* %16, align 4
  %182 = call i32 @roundup(i32 %181, i32 16)
  store i32 %182, i32* %16, align 4
  %183 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %184 = load i32, i32* %21, align 4
  %185 = load i32, i32* @T6_MAX_AAD_SIZE, align 4
  %186 = load i32, i32* %16, align 4
  %187 = load %struct.chcr_aead_reqctx*, %struct.chcr_aead_reqctx** %11, align 8
  %188 = getelementptr inbounds %struct.chcr_aead_reqctx, %struct.chcr_aead_reqctx* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = call i64 @chcr_aead_need_fallback(%struct.aead_request* %183, i32 %184, i32 %185, i32 %186, i64 %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %205

192:                                              ; preds = %176
  %193 = load %struct.adapter*, %struct.adapter** %28, align 8
  %194 = getelementptr inbounds %struct.adapter, %struct.adapter* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 1
  %196 = call i32 @atomic_inc(i32* %195)
  %197 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %198 = call i32 @chcr_aead_common_exit(%struct.aead_request* %197)
  %199 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %200 = load %struct.chcr_aead_reqctx*, %struct.chcr_aead_reqctx** %11, align 8
  %201 = getelementptr inbounds %struct.chcr_aead_reqctx, %struct.chcr_aead_reqctx* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = call i32 @chcr_aead_fallback(%struct.aead_request* %199, i64 %202)
  %204 = call %struct.sk_buff* @ERR_PTR(i32 %203)
  store %struct.sk_buff* %204, %struct.sk_buff** %4, align 8
  br label %528

205:                                              ; preds = %176
  %206 = load i32, i32* %16, align 4
  %207 = load i32, i32* %27, align 4
  %208 = call %struct.sk_buff* @alloc_skb(i32 %206, i32 %207)
  store %struct.sk_buff* %208, %struct.sk_buff** %12, align 8
  %209 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %210 = icmp ne %struct.sk_buff* %209, null
  br i1 %210, label %214, label %211

211:                                              ; preds = %205
  %212 = load i32, i32* @ENOMEM, align 4
  %213 = sub nsw i32 0, %212
  store i32 %213, i32* %24, align 4
  br label %523

214:                                              ; preds = %205
  %215 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %216 = load i32, i32* %16, align 4
  %217 = call %struct.chcr_wr* @__skb_put_zero(%struct.sk_buff* %215, i32 %216)
  store %struct.chcr_wr* %217, %struct.chcr_wr** %13, align 8
  %218 = load %struct.chcr_aead_reqctx*, %struct.chcr_aead_reqctx** %11, align 8
  %219 = getelementptr inbounds %struct.chcr_aead_reqctx, %struct.chcr_aead_reqctx* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* @CHCR_ENCRYPT_OP, align 8
  %222 = icmp eq i64 %220, %221
  br i1 %222, label %223, label %224

223:                                              ; preds = %214
  br label %226

224:                                              ; preds = %214
  %225 = load i32, i32* %23, align 4
  br label %226

226:                                              ; preds = %224, %223
  %227 = phi i32 [ 0, %223 ], [ %225, %224 ]
  store i32 %227, i32* %18, align 4
  %228 = load %struct.crypto_aead*, %struct.crypto_aead** %8, align 8
  %229 = call %struct.TYPE_11__* @a_ctx(%struct.crypto_aead* %228)
  %230 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @FILL_SEC_CPL_OP_IVINSR(i32 %231, i32 2, i32 1)
  %233 = load %struct.chcr_wr*, %struct.chcr_wr** %13, align 8
  %234 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 5
  store i32 %232, i32* %235, align 4
  %236 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %237 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %236, i32 0, i32 1
  %238 = load i64, i64* %237, align 8
  %239 = load i32, i32* @IV, align 4
  %240 = sext i32 %239 to i64
  %241 = add nsw i64 %238, %240
  %242 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %243 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = add nsw i64 %241, %244
  %246 = trunc i64 %245 to i32
  %247 = call i32 @htonl(i32 %246)
  %248 = load %struct.chcr_wr*, %struct.chcr_wr** %13, align 8
  %249 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %249, i32 0, i32 4
  store i32 %247, i32* %250, align 8
  %251 = load i32, i32* %26, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %254

253:                                              ; preds = %226
  br label %257

254:                                              ; preds = %226
  %255 = load i32, i32* @IV, align 4
  %256 = add nsw i32 1, %255
  br label %257

257:                                              ; preds = %254, %253
  %258 = phi i32 [ 0, %253 ], [ %256, %254 ]
  %259 = load i32, i32* %26, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %262

261:                                              ; preds = %257
  br label %269

262:                                              ; preds = %257
  %263 = load i32, i32* @IV, align 4
  %264 = sext i32 %263 to i64
  %265 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %266 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %265, i32 0, i32 1
  %267 = load i64, i64* %266, align 8
  %268 = add nsw i64 %264, %267
  br label %269

269:                                              ; preds = %262, %261
  %270 = phi i64 [ 0, %261 ], [ %268, %262 ]
  %271 = trunc i64 %270 to i32
  %272 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %273 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %272, i32 0, i32 1
  %274 = load i64, i64* %273, align 8
  %275 = load i32, i32* @IV, align 4
  %276 = sext i32 %275 to i64
  %277 = add nsw i64 %274, %276
  %278 = add nsw i64 %277, 1
  %279 = trunc i64 %278 to i32
  %280 = load i32, i32* %18, align 4
  %281 = and i32 %280, 496
  %282 = lshr i32 %281, 4
  %283 = call i32 @FILL_SEC_CPL_CIPHERSTOP_HI(i32 %258, i32 %271, i32 %279, i32 %282)
  %284 = load %struct.chcr_wr*, %struct.chcr_wr** %13, align 8
  %285 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %284, i32 0, i32 1
  %286 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %285, i32 0, i32 3
  store i32 %283, i32* %286, align 4
  %287 = load i32, i32* %18, align 4
  %288 = and i32 %287, 15
  %289 = load i32, i32* %26, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %292

291:                                              ; preds = %269
  br label %300

292:                                              ; preds = %269
  %293 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %294 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %293, i32 0, i32 1
  %295 = load i64, i64* %294, align 8
  %296 = load i32, i32* @IV, align 4
  %297 = sext i32 %296 to i64
  %298 = add nsw i64 %295, %297
  %299 = add nsw i64 %298, 1
  br label %300

300:                                              ; preds = %292, %291
  %301 = phi i64 [ 0, %291 ], [ %299, %292 ]
  %302 = trunc i64 %301 to i32
  %303 = load i32, i32* %18, align 4
  %304 = load i32, i32* %18, align 4
  %305 = call i32 @FILL_SEC_CPL_AUTHINSERT(i32 %288, i32 %302, i32 %303, i32 %304)
  %306 = load %struct.chcr_wr*, %struct.chcr_wr** %13, align 8
  %307 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %306, i32 0, i32 1
  %308 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %307, i32 0, i32 2
  store i32 %305, i32* %308, align 8
  %309 = load i32, i32* %19, align 4
  %310 = load i32, i32* @CRYPTO_ALG_SUB_TYPE_CTR_NULL, align 4
  %311 = icmp eq i32 %309, %310
  br i1 %311, label %316, label %312

312:                                              ; preds = %300
  %313 = load i32, i32* %19, align 4
  %314 = load i32, i32* @CRYPTO_ALG_SUB_TYPE_CTR_SHA, align 4
  %315 = icmp eq i32 %313, %314
  br i1 %315, label %316, label %318

316:                                              ; preds = %312, %300
  %317 = load i32, i32* @CHCR_SCMD_CIPHER_MODE_AES_CTR, align 4
  store i32 %317, i32* %18, align 4
  br label %320

318:                                              ; preds = %312
  %319 = load i32, i32* @CHCR_SCMD_CIPHER_MODE_AES_CBC, align 4
  store i32 %319, i32* %18, align 4
  br label %320

320:                                              ; preds = %318, %316
  %321 = load %struct.chcr_aead_reqctx*, %struct.chcr_aead_reqctx** %11, align 8
  %322 = getelementptr inbounds %struct.chcr_aead_reqctx, %struct.chcr_aead_reqctx* %321, i32 0, i32 0
  %323 = load i64, i64* %322, align 8
  %324 = load %struct.chcr_aead_reqctx*, %struct.chcr_aead_reqctx** %11, align 8
  %325 = getelementptr inbounds %struct.chcr_aead_reqctx, %struct.chcr_aead_reqctx* %324, i32 0, i32 0
  %326 = load i64, i64* %325, align 8
  %327 = load i64, i64* @CHCR_ENCRYPT_OP, align 8
  %328 = icmp eq i64 %326, %327
  %329 = zext i1 %328 to i64
  %330 = select i1 %328, i32 1, i32 0
  %331 = load i32, i32* %18, align 4
  %332 = load %struct.chcr_authenc_ctx*, %struct.chcr_authenc_ctx** %10, align 8
  %333 = getelementptr inbounds %struct.chcr_authenc_ctx, %struct.chcr_authenc_ctx* %332, i32 0, i32 2
  %334 = load i32, i32* %333, align 4
  %335 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %9, align 8
  %336 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %335, i32 0, i32 4
  %337 = load i32, i32* %336, align 4
  %338 = load i32, i32* @IV, align 4
  %339 = ashr i32 %338, 1
  %340 = call i32 @FILL_SEC_CPL_SCMD0_SEQNO(i64 %323, i32 %330, i32 %331, i32 %334, i32 %337, i32 %339)
  %341 = load %struct.chcr_wr*, %struct.chcr_wr** %13, align 8
  %342 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %341, i32 0, i32 1
  %343 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %342, i32 0, i32 1
  store i32 %340, i32* %343, align 4
  %344 = load i32, i32* %17, align 4
  %345 = call i32 @FILL_SEC_CPL_IVGEN_HDRLEN(i32 0, i32 0, i32 1, i32 0, i32 0, i32 %344)
  %346 = load %struct.chcr_wr*, %struct.chcr_wr** %13, align 8
  %347 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %346, i32 0, i32 1
  %348 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %347, i32 0, i32 0
  store i32 %345, i32* %348, align 8
  %349 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %9, align 8
  %350 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %349, i32 0, i32 3
  %351 = load i32, i32* %350, align 4
  %352 = load %struct.chcr_wr*, %struct.chcr_wr** %13, align 8
  %353 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %352, i32 0, i32 0
  %354 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %353, i32 0, i32 1
  store i32 %351, i32* %354, align 8
  %355 = load %struct.chcr_aead_reqctx*, %struct.chcr_aead_reqctx** %11, align 8
  %356 = getelementptr inbounds %struct.chcr_aead_reqctx, %struct.chcr_aead_reqctx* %355, i32 0, i32 0
  %357 = load i64, i64* %356, align 8
  %358 = load i64, i64* @CHCR_ENCRYPT_OP, align 8
  %359 = icmp eq i64 %357, %358
  br i1 %359, label %368, label %360

360:                                              ; preds = %320
  %361 = load i32, i32* %19, align 4
  %362 = load i32, i32* @CRYPTO_ALG_SUB_TYPE_CTR_SHA, align 4
  %363 = icmp eq i32 %361, %362
  br i1 %363, label %368, label %364

364:                                              ; preds = %360
  %365 = load i32, i32* %19, align 4
  %366 = load i32, i32* @CRYPTO_ALG_SUB_TYPE_CTR_NULL, align 4
  %367 = icmp eq i32 %365, %366
  br i1 %367, label %368, label %380

368:                                              ; preds = %364, %360, %320
  %369 = load %struct.chcr_wr*, %struct.chcr_wr** %13, align 8
  %370 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %369, i32 0, i32 0
  %371 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %370, i32 0, i32 0
  %372 = load i32*, i32** %371, align 8
  %373 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %9, align 8
  %374 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %373, i32 0, i32 2
  %375 = load i32, i32* %374, align 4
  %376 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %9, align 8
  %377 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 4
  %379 = call i32 @memcpy(i32* %372, i32 %375, i32 %378)
  br label %392

380:                                              ; preds = %364
  %381 = load %struct.chcr_wr*, %struct.chcr_wr** %13, align 8
  %382 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %381, i32 0, i32 0
  %383 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %382, i32 0, i32 0
  %384 = load i32*, i32** %383, align 8
  %385 = load %struct.chcr_authenc_ctx*, %struct.chcr_authenc_ctx** %10, align 8
  %386 = getelementptr inbounds %struct.chcr_authenc_ctx, %struct.chcr_authenc_ctx* %385, i32 0, i32 1
  %387 = load i32, i32* %386, align 4
  %388 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %9, align 8
  %389 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %388, i32 0, i32 0
  %390 = load i32, i32* %389, align 4
  %391 = call i32 @memcpy(i32* %384, i32 %387, i32 %390)
  br label %392

392:                                              ; preds = %380, %368
  %393 = load %struct.chcr_wr*, %struct.chcr_wr** %13, align 8
  %394 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %393, i32 0, i32 0
  %395 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %394, i32 0, i32 0
  %396 = load i32*, i32** %395, align 8
  %397 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %9, align 8
  %398 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %397, i32 0, i32 0
  %399 = load i32, i32* %398, align 4
  %400 = call i32 @roundup(i32 %399, i32 16)
  %401 = zext i32 %400 to i64
  %402 = getelementptr inbounds i32, i32* %396, i64 %401
  %403 = load %struct.chcr_authenc_ctx*, %struct.chcr_authenc_ctx** %10, align 8
  %404 = getelementptr inbounds %struct.chcr_authenc_ctx, %struct.chcr_authenc_ctx* %403, i32 0, i32 0
  %405 = load i32, i32* %404, align 4
  %406 = load i32, i32* %20, align 4
  %407 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %9, align 8
  %408 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %407, i32 0, i32 0
  %409 = load i32, i32* %408, align 4
  %410 = call i32 @roundup(i32 %409, i32 16)
  %411 = sub i32 %406, %410
  %412 = call i32 @memcpy(i32* %402, i32 %405, i32 %411)
  %413 = load %struct.chcr_wr*, %struct.chcr_wr** %13, align 8
  %414 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %413, i64 1
  %415 = bitcast %struct.chcr_wr* %414 to i32*
  %416 = load i32, i32* %20, align 4
  %417 = zext i32 %416 to i64
  %418 = getelementptr inbounds i32, i32* %415, i64 %417
  %419 = bitcast i32* %418 to %struct.cpl_rx_phys_dsgl*
  store %struct.cpl_rx_phys_dsgl* %419, %struct.cpl_rx_phys_dsgl** %14, align 8
  %420 = load %struct.cpl_rx_phys_dsgl*, %struct.cpl_rx_phys_dsgl** %14, align 8
  %421 = getelementptr inbounds %struct.cpl_rx_phys_dsgl, %struct.cpl_rx_phys_dsgl* %420, i64 1
  %422 = bitcast %struct.cpl_rx_phys_dsgl* %421 to i32*
  %423 = load i32, i32* %17, align 4
  %424 = zext i32 %423 to i64
  %425 = getelementptr inbounds i32, i32* %422, i64 %424
  store i32* %425, i32** %25, align 8
  %426 = load i32*, i32** %25, align 8
  %427 = load i32, i32* @IV, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds i32, i32* %426, i64 %428
  %430 = bitcast i32* %429 to %struct.ulptx_sgl*
  store %struct.ulptx_sgl* %430, %struct.ulptx_sgl** %15, align 8
  %431 = load i32, i32* %19, align 4
  %432 = load i32, i32* @CRYPTO_ALG_SUB_TYPE_CTR_SHA, align 4
  %433 = icmp eq i32 %431, %432
  br i1 %433, label %438, label %434

434:                                              ; preds = %392
  %435 = load i32, i32* %19, align 4
  %436 = load i32, i32* @CRYPTO_ALG_SUB_TYPE_CTR_NULL, align 4
  %437 = icmp eq i32 %435, %436
  br i1 %437, label %438, label %462

438:                                              ; preds = %434, %392
  %439 = load i32*, i32** %25, align 8
  %440 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %9, align 8
  %441 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %440, i32 0, i32 1
  %442 = load i32, i32* %441, align 4
  %443 = load i32, i32* @CTR_RFC3686_NONCE_SIZE, align 4
  %444 = call i32 @memcpy(i32* %439, i32 %442, i32 %443)
  %445 = load i32*, i32** %25, align 8
  %446 = load i32, i32* @CTR_RFC3686_NONCE_SIZE, align 4
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds i32, i32* %445, i64 %447
  %449 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %450 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %449, i32 0, i32 3
  %451 = load i32, i32* %450, align 4
  %452 = load i32, i32* @CTR_RFC3686_IV_SIZE, align 4
  %453 = call i32 @memcpy(i32* %448, i32 %451, i32 %452)
  %454 = call i32 @cpu_to_be32(i32 1)
  %455 = load i32*, i32** %25, align 8
  %456 = load i32, i32* @CTR_RFC3686_NONCE_SIZE, align 4
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds i32, i32* %455, i64 %457
  %459 = load i32, i32* @CTR_RFC3686_IV_SIZE, align 4
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds i32, i32* %458, i64 %460
  store i32 %454, i32* %461, align 4
  br label %469

462:                                              ; preds = %434
  %463 = load i32*, i32** %25, align 8
  %464 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %465 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %464, i32 0, i32 3
  %466 = load i32, i32* %465, align 4
  %467 = load i32, i32* @IV, align 4
  %468 = call i32 @memcpy(i32* %463, i32 %466, i32 %467)
  br label %469

469:                                              ; preds = %462, %438
  %470 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %471 = load %struct.cpl_rx_phys_dsgl*, %struct.cpl_rx_phys_dsgl** %14, align 8
  %472 = load i16, i16* %6, align 2
  %473 = call i32 @chcr_add_aead_dst_ent(%struct.aead_request* %470, %struct.cpl_rx_phys_dsgl* %471, i16 zeroext %472)
  %474 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %475 = load %struct.ulptx_sgl*, %struct.ulptx_sgl** %15, align 8
  %476 = call i32 @chcr_add_aead_src_ent(%struct.aead_request* %474, %struct.ulptx_sgl* %475)
  %477 = load %struct.adapter*, %struct.adapter** %28, align 8
  %478 = getelementptr inbounds %struct.adapter, %struct.adapter* %477, i32 0, i32 0
  %479 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %478, i32 0, i32 0
  %480 = call i32 @atomic_inc(i32* %479)
  %481 = load i32, i32* %17, align 4
  %482 = zext i32 %481 to i64
  %483 = add i64 4, %482
  %484 = load i32, i32* @IV, align 4
  %485 = sext i32 %484 to i64
  %486 = add i64 %483, %485
  %487 = load i32, i32* %20, align 4
  %488 = zext i32 %487 to i64
  %489 = add i64 %486, %488
  %490 = load %struct.chcr_aead_reqctx*, %struct.chcr_aead_reqctx** %11, align 8
  %491 = getelementptr inbounds %struct.chcr_aead_reqctx, %struct.chcr_aead_reqctx* %490, i32 0, i32 1
  %492 = load i32, i32* %491, align 8
  %493 = icmp ne i32 %492, 0
  br i1 %493, label %494, label %502

494:                                              ; preds = %469
  %495 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %496 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %495, i32 0, i32 1
  %497 = load i64, i64* %496, align 8
  %498 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %499 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %498, i32 0, i32 0
  %500 = load i64, i64* %499, align 8
  %501 = add nsw i64 %497, %500
  br label %503

502:                                              ; preds = %469
  br label %503

503:                                              ; preds = %502, %494
  %504 = phi i64 [ %501, %494 ], [ 0, %502 ]
  %505 = add i64 %489, %504
  %506 = trunc i64 %505 to i32
  store i32 %506, i32* %18, align 4
  %507 = load %struct.crypto_aead*, %struct.crypto_aead** %8, align 8
  %508 = call %struct.TYPE_11__* @a_ctx(%struct.crypto_aead* %507)
  %509 = load %struct.chcr_wr*, %struct.chcr_wr** %13, align 8
  %510 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %511 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %510, i32 0, i32 2
  %512 = load %struct.chcr_aead_reqctx*, %struct.chcr_aead_reqctx** %11, align 8
  %513 = getelementptr inbounds %struct.chcr_aead_reqctx, %struct.chcr_aead_reqctx* %512, i32 0, i32 1
  %514 = load i32, i32* %513, align 8
  %515 = load i32, i32* %7, align 4
  %516 = load i32, i32* %16, align 4
  %517 = load i32, i32* %18, align 4
  %518 = call i32 @create_wreq(%struct.TYPE_11__* %508, %struct.chcr_wr* %509, %struct.TYPE_12__* %511, i32 %514, i32 %515, i32 %516, i32 %517, i32 0)
  %519 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %520 = load %struct.chcr_aead_reqctx*, %struct.chcr_aead_reqctx** %11, align 8
  %521 = getelementptr inbounds %struct.chcr_aead_reqctx, %struct.chcr_aead_reqctx* %520, i32 0, i32 2
  store %struct.sk_buff* %519, %struct.sk_buff** %521, align 8
  %522 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  store %struct.sk_buff* %522, %struct.sk_buff** %4, align 8
  br label %528

523:                                              ; preds = %211
  %524 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %525 = call i32 @chcr_aead_common_exit(%struct.aead_request* %524)
  %526 = load i32, i32* %24, align 4
  %527 = call %struct.sk_buff* @ERR_PTR(i32 %526)
  store %struct.sk_buff* %527, %struct.sk_buff** %4, align 8
  br label %528

528:                                              ; preds = %523, %503, %192, %74, %66
  %529 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %529
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.chcr_aead_ctx* @AEAD_CTX(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_11__* @a_ctx(%struct.crypto_aead*) #1

declare dso_local %struct.chcr_authenc_ctx* @AUTHENC_CTX(%struct.chcr_aead_ctx*) #1

declare dso_local %struct.chcr_aead_reqctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local i32 @get_aead_subtype(%struct.crypto_aead*) #1

declare dso_local i32 @crypto_aead_authsize(%struct.crypto_aead*) #1

declare dso_local %struct.adapter* @padap(i32) #1

declare dso_local i32 @chcr_aead_common_init(%struct.aead_request*) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local i32 @sg_nents_xlen(i32, i64, i32, i32) #1

declare dso_local i32 @get_space_for_phys_dsgl(i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @KEY_CONTEXT_CTX_LEN_V(i32) #1

declare dso_local i32 @CIPHER_TRANSHDR_SIZE(i32, i32) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @sgl_len(i32) #1

declare dso_local i64 @chcr_aead_need_fallback(%struct.aead_request*, i32, i32, i32, i64) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @chcr_aead_common_exit(%struct.aead_request*) #1

declare dso_local i32 @chcr_aead_fallback(%struct.aead_request*, i64) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local %struct.chcr_wr* @__skb_put_zero(%struct.sk_buff*, i32) #1

declare dso_local i32 @FILL_SEC_CPL_OP_IVINSR(i32, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @FILL_SEC_CPL_CIPHERSTOP_HI(i32, i32, i32, i32) #1

declare dso_local i32 @FILL_SEC_CPL_AUTHINSERT(i32, i32, i32, i32) #1

declare dso_local i32 @FILL_SEC_CPL_SCMD0_SEQNO(i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @FILL_SEC_CPL_IVGEN_HDRLEN(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @chcr_add_aead_dst_ent(%struct.aead_request*, %struct.cpl_rx_phys_dsgl*, i16 zeroext) #1

declare dso_local i32 @chcr_add_aead_src_ent(%struct.aead_request*, %struct.ulptx_sgl*) #1

declare dso_local i32 @create_wreq(%struct.TYPE_11__*, %struct.chcr_wr*, %struct.TYPE_12__*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

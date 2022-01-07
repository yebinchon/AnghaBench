; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_create_gcm_wr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_create_gcm_wr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.aead_request = type { i32, i64, %struct.TYPE_13__, i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.crypto_aead = type { i32 }
%struct.chcr_aead_ctx = type { i32, i32, i32, i32, i32 }
%struct.chcr_aead_reqctx = type { i64, i32, %struct.sk_buff*, i32, i64 }
%struct.chcr_wr = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32*, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i8*, i32 }
%struct.cpl_rx_phys_dsgl = type { i32 }
%struct.ulptx_sgl = type { i32 }
%struct.adapter = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@CRYPTO_ALG_SUB_TYPE_AEAD_RFC4106 = common dso_local global i64 0, align 8
@CHCR_DST_SG_SIZE = common dso_local global i32 0, align 4
@CHCR_SRC_SG_SIZE = common dso_local global i32 0, align 4
@MIN_GCM_SG = common dso_local global i64 0, align 8
@AEAD_H_SIZE = common dso_local global i32 0, align 4
@SGE_MAX_WR_LEN = common dso_local global i64 0, align 8
@T6_MAX_AAD_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CHCR_ENCRYPT_OP = common dso_local global i64 0, align 8
@IV = common dso_local global i32 0, align 4
@CHCR_SCMD_CIPHER_MODE_AES_GCM = common dso_local global i32 0, align 4
@CHCR_SCMD_AUTH_MODE_GHASH = common dso_local global i32 0, align 4
@GCM_RFC4106_IV_SIZE = common dso_local global i32 0, align 4
@GCM_AES_IV_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.aead_request*, i16, i32)* @create_gcm_wr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @create_gcm_wr(%struct.aead_request* %0, i16 zeroext %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.aead_request*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca %struct.crypto_aead*, align 8
  %9 = alloca %struct.chcr_aead_ctx*, align 8
  %10 = alloca %struct.chcr_aead_reqctx*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.chcr_wr*, align 8
  %13 = alloca %struct.cpl_rx_phys_dsgl*, align 8
  %14 = alloca %struct.ulptx_sgl*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.adapter*, align 8
  store %struct.aead_request* %0, %struct.aead_request** %5, align 8
  store i16 %1, i16* %6, align 2
  store i32 %2, i32* %7, align 4
  %27 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %28 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %27)
  store %struct.crypto_aead* %28, %struct.crypto_aead** %8, align 8
  %29 = load %struct.crypto_aead*, %struct.crypto_aead** %8, align 8
  %30 = call %struct.TYPE_12__* @a_ctx(%struct.crypto_aead* %29)
  %31 = call %struct.chcr_aead_ctx* @AEAD_CTX(%struct.TYPE_12__* %30)
  store %struct.chcr_aead_ctx* %31, %struct.chcr_aead_ctx** %9, align 8
  %32 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %33 = call %struct.chcr_aead_reqctx* @aead_request_ctx(%struct.aead_request* %32)
  store %struct.chcr_aead_reqctx* %33, %struct.chcr_aead_reqctx** %10, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %11, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %34 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %35 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %21, align 4
  %37 = load %struct.crypto_aead*, %struct.crypto_aead** %8, align 8
  %38 = call i32 @crypto_aead_authsize(%struct.crypto_aead* %37)
  store i32 %38, i32* %22, align 4
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %23, align 4
  %41 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %42 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %3
  %49 = load i32, i32* @GFP_KERNEL, align 4
  br label %52

50:                                               ; preds = %3
  %51 = load i32, i32* @GFP_ATOMIC, align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32 [ %49, %48 ], [ %51, %50 ]
  store i32 %53, i32* %25, align 4
  %54 = load %struct.crypto_aead*, %struct.crypto_aead** %8, align 8
  %55 = call %struct.TYPE_12__* @a_ctx(%struct.crypto_aead* %54)
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call %struct.adapter* @padap(i32 %57)
  store %struct.adapter* %58, %struct.adapter** %26, align 8
  %59 = load %struct.crypto_aead*, %struct.crypto_aead** %8, align 8
  %60 = call i64 @get_aead_subtype(%struct.crypto_aead* %59)
  %61 = load i64, i64* @CRYPTO_ALG_SUB_TYPE_AEAD_RFC4106, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %52
  %64 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %65 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sub i32 %66, 8
  store i32 %67, i32* %21, align 4
  br label %68

68:                                               ; preds = %63, %52
  %69 = load %struct.chcr_aead_reqctx*, %struct.chcr_aead_reqctx** %10, align 8
  %70 = getelementptr inbounds %struct.chcr_aead_reqctx, %struct.chcr_aead_reqctx* %69, i32 0, i32 4
  store i64 0, i64* %70, align 8
  %71 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %72 = call i32 @chcr_aead_common_init(%struct.aead_request* %71)
  store i32 %72, i32* %23, align 4
  %73 = load i32, i32* %23, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %68
  %76 = load i32, i32* %23, align 4
  %77 = call %struct.sk_buff* @ERR_PTR(i32 %76)
  store %struct.sk_buff* %77, %struct.sk_buff** %4, align 8
  br label %448

78:                                               ; preds = %68
  %79 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %80 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %83 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = zext i32 %84 to i64
  %86 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %87 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %85, %88
  %90 = load %struct.chcr_aead_reqctx*, %struct.chcr_aead_reqctx** %10, align 8
  %91 = getelementptr inbounds %struct.chcr_aead_reqctx, %struct.chcr_aead_reqctx* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %78
  %95 = load i32, i32* %22, align 4
  %96 = sub i32 0, %95
  br label %99

97:                                               ; preds = %78
  %98 = load i32, i32* %22, align 4
  br label %99

99:                                               ; preds = %97, %94
  %100 = phi i32 [ %96, %94 ], [ %98, %97 ]
  %101 = zext i32 %100 to i64
  %102 = add nsw i64 %89, %101
  %103 = load i32, i32* @CHCR_DST_SG_SIZE, align 4
  %104 = call i32 @sg_nents_xlen(i32 %81, i64 %102, i32 %103, i32 0)
  store i32 %104, i32* %16, align 4
  %105 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %106 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %109 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = zext i32 %110 to i64
  %112 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %113 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %111, %114
  %116 = load i32, i32* @CHCR_SRC_SG_SIZE, align 4
  %117 = call i32 @sg_nents_xlen(i32 %107, i64 %115, i32 %116, i32 0)
  store i32 %117, i32* %17, align 4
  %118 = load i64, i64* @MIN_GCM_SG, align 8
  %119 = load i32, i32* %16, align 4
  %120 = zext i32 %119 to i64
  %121 = add nsw i64 %120, %118
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %16, align 4
  %123 = load i32, i32* %16, align 4
  %124 = call i32 @get_space_for_phys_dsgl(i32 %123)
  store i32 %124, i32* %18, align 4
  %125 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %9, align 8
  %126 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @roundup(i32 %127, i32 16)
  %129 = load i32, i32* @AEAD_H_SIZE, align 4
  %130 = add nsw i32 %128, %129
  store i32 %130, i32* %20, align 4
  %131 = load i32, i32* %20, align 4
  %132 = load i32, i32* %18, align 4
  %133 = call i32 @CIPHER_TRANSHDR_SIZE(i32 %131, i32 %132)
  store i32 %133, i32* %15, align 4
  %134 = load i32, i32* %15, align 4
  %135 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %136 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = add i32 %134, %137
  %139 = zext i32 %138 to i64
  %140 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %141 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = add nsw i64 %139, %142
  %144 = load i64, i64* @SGE_MAX_WR_LEN, align 8
  %145 = icmp sle i64 %143, %144
  %146 = zext i1 %145 to i32
  %147 = load %struct.chcr_aead_reqctx*, %struct.chcr_aead_reqctx** %10, align 8
  %148 = getelementptr inbounds %struct.chcr_aead_reqctx, %struct.chcr_aead_reqctx* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 8
  %149 = load %struct.chcr_aead_reqctx*, %struct.chcr_aead_reqctx** %10, align 8
  %150 = getelementptr inbounds %struct.chcr_aead_reqctx, %struct.chcr_aead_reqctx* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %164

153:                                              ; preds = %99
  %154 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %155 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = zext i32 %156 to i64
  %158 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %159 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = add nsw i64 %157, %160
  %162 = trunc i64 %161 to i32
  %163 = call i32 @roundup(i32 %162, i32 16)
  br label %168

164:                                              ; preds = %99
  %165 = load i32, i32* %17, align 4
  %166 = call i32 @sgl_len(i32 %165)
  %167 = mul nsw i32 %166, 8
  br label %168

168:                                              ; preds = %164, %153
  %169 = phi i32 [ %163, %153 ], [ %167, %164 ]
  store i32 %169, i32* %19, align 4
  %170 = load i32, i32* %19, align 4
  %171 = load i32, i32* %15, align 4
  %172 = add i32 %171, %170
  store i32 %172, i32* %15, align 4
  %173 = load i32, i32* %15, align 4
  %174 = call i32 @roundup(i32 %173, i32 16)
  store i32 %174, i32* %15, align 4
  %175 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %176 = load i32, i32* %16, align 4
  %177 = load i32, i32* @T6_MAX_AAD_SIZE, align 4
  %178 = load i32, i32* %15, align 4
  %179 = load %struct.chcr_aead_reqctx*, %struct.chcr_aead_reqctx** %10, align 8
  %180 = getelementptr inbounds %struct.chcr_aead_reqctx, %struct.chcr_aead_reqctx* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = call i64 @chcr_aead_need_fallback(%struct.aead_request* %175, i32 %176, i32 %177, i32 %178, i64 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %197

184:                                              ; preds = %168
  %185 = load %struct.adapter*, %struct.adapter** %26, align 8
  %186 = getelementptr inbounds %struct.adapter, %struct.adapter* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 1
  %188 = call i32 @atomic_inc(i32* %187)
  %189 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %190 = call i32 @chcr_aead_common_exit(%struct.aead_request* %189)
  %191 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %192 = load %struct.chcr_aead_reqctx*, %struct.chcr_aead_reqctx** %10, align 8
  %193 = getelementptr inbounds %struct.chcr_aead_reqctx, %struct.chcr_aead_reqctx* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = call i32 @chcr_aead_fallback(%struct.aead_request* %191, i64 %194)
  %196 = call %struct.sk_buff* @ERR_PTR(i32 %195)
  store %struct.sk_buff* %196, %struct.sk_buff** %4, align 8
  br label %448

197:                                              ; preds = %168
  %198 = load i32, i32* %15, align 4
  %199 = load i32, i32* %25, align 4
  %200 = call %struct.sk_buff* @alloc_skb(i32 %198, i32 %199)
  store %struct.sk_buff* %200, %struct.sk_buff** %11, align 8
  %201 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %202 = icmp ne %struct.sk_buff* %201, null
  br i1 %202, label %206, label %203

203:                                              ; preds = %197
  %204 = load i32, i32* @ENOMEM, align 4
  %205 = sub nsw i32 0, %204
  store i32 %205, i32* %23, align 4
  br label %443

206:                                              ; preds = %197
  %207 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %208 = load i32, i32* %15, align 4
  %209 = call %struct.chcr_wr* @__skb_put_zero(%struct.sk_buff* %207, i32 %208)
  store %struct.chcr_wr* %209, %struct.chcr_wr** %12, align 8
  %210 = load %struct.chcr_aead_reqctx*, %struct.chcr_aead_reqctx** %10, align 8
  %211 = getelementptr inbounds %struct.chcr_aead_reqctx, %struct.chcr_aead_reqctx* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @CHCR_ENCRYPT_OP, align 8
  %214 = icmp eq i64 %212, %213
  br i1 %214, label %215, label %216

215:                                              ; preds = %206
  br label %218

216:                                              ; preds = %206
  %217 = load i32, i32* %22, align 4
  br label %218

218:                                              ; preds = %216, %215
  %219 = phi i32 [ 0, %215 ], [ %217, %216 ]
  store i32 %219, i32* %19, align 4
  %220 = load %struct.crypto_aead*, %struct.crypto_aead** %8, align 8
  %221 = call %struct.TYPE_12__* @a_ctx(%struct.crypto_aead* %220)
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @FILL_SEC_CPL_OP_IVINSR(i32 %223, i32 2, i32 1)
  %225 = load %struct.chcr_wr*, %struct.chcr_wr** %12, align 8
  %226 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 5
  store i32 %224, i32* %227, align 8
  %228 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %229 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* @IV, align 4
  %232 = add i32 %230, %231
  %233 = zext i32 %232 to i64
  %234 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %235 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %234, i32 0, i32 1
  %236 = load i64, i64* %235, align 8
  %237 = add nsw i64 %233, %236
  %238 = trunc i64 %237 to i32
  %239 = call i8* @htonl(i32 %238)
  %240 = load %struct.chcr_wr*, %struct.chcr_wr** %12, align 8
  %241 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %241, i32 0, i32 4
  store i8* %239, i8** %242, align 8
  %243 = load i32, i32* %21, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %248

245:                                              ; preds = %218
  %246 = load i32, i32* @IV, align 4
  %247 = add nsw i32 1, %246
  br label %249

248:                                              ; preds = %218
  br label %249

249:                                              ; preds = %248, %245
  %250 = phi i32 [ %247, %245 ], [ 0, %248 ]
  %251 = load i32, i32* %21, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %257

253:                                              ; preds = %249
  %254 = load i32, i32* @IV, align 4
  %255 = load i32, i32* %21, align 4
  %256 = add i32 %254, %255
  br label %258

257:                                              ; preds = %249
  br label %258

258:                                              ; preds = %257, %253
  %259 = phi i32 [ %256, %253 ], [ 0, %257 ]
  %260 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %261 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = load i32, i32* @IV, align 4
  %264 = add i32 %262, %263
  %265 = add i32 %264, 1
  %266 = call i32 @FILL_SEC_CPL_CIPHERSTOP_HI(i32 %250, i32 %259, i32 %265, i32 0)
  %267 = load %struct.chcr_wr*, %struct.chcr_wr** %12, align 8
  %268 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %267, i32 0, i32 1
  %269 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %268, i32 0, i32 3
  store i32 %266, i32* %269, align 4
  %270 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %271 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = load i32, i32* @IV, align 4
  %274 = add i32 %272, %273
  %275 = add i32 %274, 1
  %276 = load i32, i32* %19, align 4
  %277 = load i32, i32* %19, align 4
  %278 = call i32 @FILL_SEC_CPL_AUTHINSERT(i32 0, i32 %275, i32 %276, i32 %277)
  %279 = load %struct.chcr_wr*, %struct.chcr_wr** %12, align 8
  %280 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %279, i32 0, i32 1
  %281 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %280, i32 0, i32 2
  store i32 %278, i32* %281, align 8
  %282 = load %struct.chcr_aead_reqctx*, %struct.chcr_aead_reqctx** %10, align 8
  %283 = getelementptr inbounds %struct.chcr_aead_reqctx, %struct.chcr_aead_reqctx* %282, i32 0, i32 0
  %284 = load i64, i64* %283, align 8
  %285 = load %struct.chcr_aead_reqctx*, %struct.chcr_aead_reqctx** %10, align 8
  %286 = getelementptr inbounds %struct.chcr_aead_reqctx, %struct.chcr_aead_reqctx* %285, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  %288 = load i64, i64* @CHCR_ENCRYPT_OP, align 8
  %289 = icmp eq i64 %287, %288
  %290 = zext i1 %289 to i64
  %291 = select i1 %289, i32 1, i32 0
  %292 = load i32, i32* @CHCR_SCMD_CIPHER_MODE_AES_GCM, align 4
  %293 = load i32, i32* @CHCR_SCMD_AUTH_MODE_GHASH, align 4
  %294 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %9, align 8
  %295 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %294, i32 0, i32 4
  %296 = load i32, i32* %295, align 4
  %297 = load i32, i32* @IV, align 4
  %298 = ashr i32 %297, 1
  %299 = call i32 @FILL_SEC_CPL_SCMD0_SEQNO(i64 %284, i32 %291, i32 %292, i32 %293, i32 %296, i32 %298)
  %300 = load %struct.chcr_wr*, %struct.chcr_wr** %12, align 8
  %301 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %300, i32 0, i32 1
  %302 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %301, i32 0, i32 1
  store i32 %299, i32* %302, align 4
  %303 = load i32, i32* %18, align 4
  %304 = call i32 @FILL_SEC_CPL_IVGEN_HDRLEN(i32 0, i32 0, i32 1, i32 0, i32 0, i32 %303)
  %305 = load %struct.chcr_wr*, %struct.chcr_wr** %12, align 8
  %306 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %305, i32 0, i32 1
  %307 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %306, i32 0, i32 0
  store i32 %304, i32* %307, align 8
  %308 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %9, align 8
  %309 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %308, i32 0, i32 3
  %310 = load i32, i32* %309, align 4
  %311 = load %struct.chcr_wr*, %struct.chcr_wr** %12, align 8
  %312 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %312, i32 0, i32 1
  store i32 %310, i32* %313, align 8
  %314 = load %struct.chcr_wr*, %struct.chcr_wr** %12, align 8
  %315 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %315, i32 0, i32 0
  %317 = load i32*, i32** %316, align 8
  %318 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %9, align 8
  %319 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %318, i32 0, i32 2
  %320 = load i32, i32* %319, align 4
  %321 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %9, align 8
  %322 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 4
  %324 = call i32 @memcpy(i32* %317, i32 %320, i32 %323)
  %325 = load %struct.chcr_wr*, %struct.chcr_wr** %12, align 8
  %326 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %325, i32 0, i32 0
  %327 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %326, i32 0, i32 0
  %328 = load i32*, i32** %327, align 8
  %329 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %9, align 8
  %330 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 4
  %332 = call i32 @roundup(i32 %331, i32 16)
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i32, i32* %328, i64 %333
  %335 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %9, align 8
  %336 = call %struct.TYPE_14__* @GCM_CTX(%struct.chcr_aead_ctx* %335)
  %337 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 4
  %339 = load i32, i32* @AEAD_H_SIZE, align 4
  %340 = call i32 @memcpy(i32* %334, i32 %338, i32 %339)
  %341 = load %struct.chcr_wr*, %struct.chcr_wr** %12, align 8
  %342 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %341, i64 1
  %343 = bitcast %struct.chcr_wr* %342 to i32*
  %344 = load i32, i32* %20, align 4
  %345 = zext i32 %344 to i64
  %346 = getelementptr inbounds i32, i32* %343, i64 %345
  %347 = bitcast i32* %346 to %struct.cpl_rx_phys_dsgl*
  store %struct.cpl_rx_phys_dsgl* %347, %struct.cpl_rx_phys_dsgl** %13, align 8
  %348 = load %struct.cpl_rx_phys_dsgl*, %struct.cpl_rx_phys_dsgl** %13, align 8
  %349 = getelementptr inbounds %struct.cpl_rx_phys_dsgl, %struct.cpl_rx_phys_dsgl* %348, i64 1
  %350 = bitcast %struct.cpl_rx_phys_dsgl* %349 to i32*
  %351 = load i32, i32* %18, align 4
  %352 = zext i32 %351 to i64
  %353 = getelementptr inbounds i32, i32* %350, i64 %352
  store i32* %353, i32** %24, align 8
  %354 = load %struct.crypto_aead*, %struct.crypto_aead** %8, align 8
  %355 = call i64 @get_aead_subtype(%struct.crypto_aead* %354)
  %356 = load i64, i64* @CRYPTO_ALG_SUB_TYPE_AEAD_RFC4106, align 8
  %357 = icmp eq i64 %355, %356
  br i1 %357, label %358, label %371

358:                                              ; preds = %258
  %359 = load i32*, i32** %24, align 8
  %360 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %9, align 8
  %361 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %360, i32 0, i32 1
  %362 = load i32, i32* %361, align 4
  %363 = call i32 @memcpy(i32* %359, i32 %362, i32 4)
  %364 = load i32*, i32** %24, align 8
  %365 = getelementptr inbounds i32, i32* %364, i64 4
  %366 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %367 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %366, i32 0, i32 3
  %368 = load i32, i32* %367, align 4
  %369 = load i32, i32* @GCM_RFC4106_IV_SIZE, align 4
  %370 = call i32 @memcpy(i32* %365, i32 %368, i32 %369)
  br label %378

371:                                              ; preds = %258
  %372 = load i32*, i32** %24, align 8
  %373 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %374 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %373, i32 0, i32 3
  %375 = load i32, i32* %374, align 4
  %376 = load i32, i32* @GCM_AES_IV_SIZE, align 4
  %377 = call i32 @memcpy(i32* %372, i32 %375, i32 %376)
  br label %378

378:                                              ; preds = %371, %358
  %379 = call i8* @htonl(i32 1)
  %380 = ptrtoint i8* %379 to i32
  %381 = load i32*, i32** %24, align 8
  %382 = getelementptr inbounds i32, i32* %381, i64 12
  store i32 %380, i32* %382, align 4
  %383 = load i32*, i32** %24, align 8
  %384 = getelementptr inbounds i32, i32* %383, i64 16
  %385 = bitcast i32* %384 to %struct.ulptx_sgl*
  store %struct.ulptx_sgl* %385, %struct.ulptx_sgl** %14, align 8
  %386 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %387 = load %struct.cpl_rx_phys_dsgl*, %struct.cpl_rx_phys_dsgl** %13, align 8
  %388 = load i16, i16* %6, align 2
  %389 = call i32 @chcr_add_aead_dst_ent(%struct.aead_request* %386, %struct.cpl_rx_phys_dsgl* %387, i16 zeroext %388)
  %390 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %391 = load %struct.ulptx_sgl*, %struct.ulptx_sgl** %14, align 8
  %392 = call i32 @chcr_add_aead_src_ent(%struct.aead_request* %390, %struct.ulptx_sgl* %391)
  %393 = load %struct.adapter*, %struct.adapter** %26, align 8
  %394 = getelementptr inbounds %struct.adapter, %struct.adapter* %393, i32 0, i32 0
  %395 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %394, i32 0, i32 0
  %396 = call i32 @atomic_inc(i32* %395)
  %397 = load i32, i32* %18, align 4
  %398 = zext i32 %397 to i64
  %399 = add i64 4, %398
  %400 = load i32, i32* @IV, align 4
  %401 = sext i32 %400 to i64
  %402 = add i64 %399, %401
  %403 = load i32, i32* %20, align 4
  %404 = zext i32 %403 to i64
  %405 = add i64 %402, %404
  %406 = load %struct.chcr_aead_reqctx*, %struct.chcr_aead_reqctx** %10, align 8
  %407 = getelementptr inbounds %struct.chcr_aead_reqctx, %struct.chcr_aead_reqctx* %406, i32 0, i32 1
  %408 = load i32, i32* %407, align 8
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %410, label %419

410:                                              ; preds = %378
  %411 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %412 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %411, i32 0, i32 0
  %413 = load i32, i32* %412, align 8
  %414 = zext i32 %413 to i64
  %415 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %416 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %415, i32 0, i32 1
  %417 = load i64, i64* %416, align 8
  %418 = add nsw i64 %414, %417
  br label %420

419:                                              ; preds = %378
  br label %420

420:                                              ; preds = %419, %410
  %421 = phi i64 [ %418, %410 ], [ 0, %419 ]
  %422 = add i64 %405, %421
  %423 = trunc i64 %422 to i32
  store i32 %423, i32* %19, align 4
  %424 = load %struct.crypto_aead*, %struct.crypto_aead** %8, align 8
  %425 = call %struct.TYPE_12__* @a_ctx(%struct.crypto_aead* %424)
  %426 = load %struct.chcr_wr*, %struct.chcr_wr** %12, align 8
  %427 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %428 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %427, i32 0, i32 2
  %429 = load %struct.chcr_aead_reqctx*, %struct.chcr_aead_reqctx** %10, align 8
  %430 = getelementptr inbounds %struct.chcr_aead_reqctx, %struct.chcr_aead_reqctx* %429, i32 0, i32 1
  %431 = load i32, i32* %430, align 8
  %432 = load i32, i32* %7, align 4
  %433 = load i32, i32* %15, align 4
  %434 = load i32, i32* %19, align 4
  %435 = load %struct.chcr_aead_reqctx*, %struct.chcr_aead_reqctx** %10, align 8
  %436 = getelementptr inbounds %struct.chcr_aead_reqctx, %struct.chcr_aead_reqctx* %435, i32 0, i32 3
  %437 = load i32, i32* %436, align 8
  %438 = call i32 @create_wreq(%struct.TYPE_12__* %425, %struct.chcr_wr* %426, %struct.TYPE_13__* %428, i32 %431, i32 %432, i32 %433, i32 %434, i32 %437)
  %439 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %440 = load %struct.chcr_aead_reqctx*, %struct.chcr_aead_reqctx** %10, align 8
  %441 = getelementptr inbounds %struct.chcr_aead_reqctx, %struct.chcr_aead_reqctx* %440, i32 0, i32 2
  store %struct.sk_buff* %439, %struct.sk_buff** %441, align 8
  %442 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  store %struct.sk_buff* %442, %struct.sk_buff** %4, align 8
  br label %448

443:                                              ; preds = %203
  %444 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %445 = call i32 @chcr_aead_common_exit(%struct.aead_request* %444)
  %446 = load i32, i32* %23, align 4
  %447 = call %struct.sk_buff* @ERR_PTR(i32 %446)
  store %struct.sk_buff* %447, %struct.sk_buff** %4, align 8
  br label %448

448:                                              ; preds = %443, %420, %184, %75
  %449 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %449
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.chcr_aead_ctx* @AEAD_CTX(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @a_ctx(%struct.crypto_aead*) #1

declare dso_local %struct.chcr_aead_reqctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local i32 @crypto_aead_authsize(%struct.crypto_aead*) #1

declare dso_local %struct.adapter* @padap(i32) #1

declare dso_local i64 @get_aead_subtype(%struct.crypto_aead*) #1

declare dso_local i32 @chcr_aead_common_init(%struct.aead_request*) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local i32 @sg_nents_xlen(i32, i64, i32, i32) #1

declare dso_local i32 @get_space_for_phys_dsgl(i32) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @CIPHER_TRANSHDR_SIZE(i32, i32) #1

declare dso_local i32 @sgl_len(i32) #1

declare dso_local i64 @chcr_aead_need_fallback(%struct.aead_request*, i32, i32, i32, i64) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @chcr_aead_common_exit(%struct.aead_request*) #1

declare dso_local i32 @chcr_aead_fallback(%struct.aead_request*, i64) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local %struct.chcr_wr* @__skb_put_zero(%struct.sk_buff*, i32) #1

declare dso_local i32 @FILL_SEC_CPL_OP_IVINSR(i32, i32, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @FILL_SEC_CPL_CIPHERSTOP_HI(i32, i32, i32, i32) #1

declare dso_local i32 @FILL_SEC_CPL_AUTHINSERT(i32, i32, i32, i32) #1

declare dso_local i32 @FILL_SEC_CPL_SCMD0_SEQNO(i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @FILL_SEC_CPL_IVGEN_HDRLEN(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local %struct.TYPE_14__* @GCM_CTX(%struct.chcr_aead_ctx*) #1

declare dso_local i32 @chcr_add_aead_dst_ent(%struct.aead_request*, %struct.cpl_rx_phys_dsgl*, i16 zeroext) #1

declare dso_local i32 @chcr_add_aead_src_ent(%struct.aead_request*, %struct.ulptx_sgl*) #1

declare dso_local i32 @create_wreq(%struct.TYPE_12__*, %struct.chcr_wr*, %struct.TYPE_13__*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

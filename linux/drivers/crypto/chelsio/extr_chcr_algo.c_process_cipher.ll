; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_process_cipher.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_process_cipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ablkcipher_request = type { i32, i32, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.crypto_ablkcipher = type { i32 }
%struct.chcr_blkcipher_req_ctx = type { i32, i32, i32, i16, i32, i64, i64, i32, i32 }
%struct.ablk_ctx = type { i64, i32, i32 }
%struct.cipher_wr_param = type { i16, i32, %struct.ablkcipher_request* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"AES: Invalid value of Key Len %d nbytes %d IV Len %d\0A\00", align 1
@SGE_MAX_WR_LEN = common dso_local global i32 0, align 4
@AES_MIN_KEY_SIZE = common dso_local global i32 0, align 4
@CHCR_DST_SG_SIZE = common dso_local global i32 0, align 4
@IV = common dso_local global i32 0, align 4
@CRYPTO_ALG_SUB_TYPE_CTR = common dso_local global i64 0, align 8
@CRYPTO_ALG_SUB_TYPE_CTR_RFC3686 = common dso_local global i64 0, align 8
@CTR_RFC3686_NONCE_SIZE = common dso_local global i32 0, align 4
@CTR_RFC3686_IV_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ablkcipher_request*, i16, %struct.sk_buff**, i16)* @process_cipher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_cipher(%struct.ablkcipher_request* %0, i16 zeroext %1, %struct.sk_buff** %2, i16 zeroext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ablkcipher_request*, align 8
  %7 = alloca i16, align 2
  %8 = alloca %struct.sk_buff**, align 8
  %9 = alloca i16, align 2
  %10 = alloca %struct.crypto_ablkcipher*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.chcr_blkcipher_req_ctx*, align 8
  %13 = alloca %struct.ablk_ctx*, align 8
  %14 = alloca %struct.cipher_wr_param, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.ablkcipher_request* %0, %struct.ablkcipher_request** %6, align 8
  store i16 %1, i16* %7, align 2
  store %struct.sk_buff** %2, %struct.sk_buff*** %8, align 8
  store i16 %3, i16* %9, align 2
  %21 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %22 = call %struct.crypto_ablkcipher* @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request* %21)
  store %struct.crypto_ablkcipher* %22, %struct.crypto_ablkcipher** %10, align 8
  %23 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %10, align 8
  %24 = call i32 @crypto_ablkcipher_ivsize(%struct.crypto_ablkcipher* %23)
  store i32 %24, i32* %11, align 4
  %25 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %26 = call %struct.chcr_blkcipher_req_ctx* @ablkcipher_request_ctx(%struct.ablkcipher_request* %25)
  store %struct.chcr_blkcipher_req_ctx* %26, %struct.chcr_blkcipher_req_ctx** %12, align 8
  %27 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %10, align 8
  %28 = call i32 @c_ctx(%struct.crypto_ablkcipher* %27)
  %29 = call %struct.ablk_ctx* @ABLK_CTX(i32 %28)
  store %struct.ablk_ctx* %29, %struct.ablk_ctx** %13, align 8
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %16, align 4
  %32 = load %struct.chcr_blkcipher_req_ctx*, %struct.chcr_blkcipher_req_ctx** %12, align 8
  %33 = getelementptr inbounds %struct.chcr_blkcipher_req_ctx, %struct.chcr_blkcipher_req_ctx* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  %34 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %35 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %4
  br label %321

39:                                               ; preds = %4
  %40 = load %struct.ablk_ctx*, %struct.ablk_ctx** %13, align 8
  %41 = getelementptr inbounds %struct.ablk_ctx, %struct.ablk_ctx* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %61, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %47 = icmp ugt i32 %45, %46
  br i1 %47, label %61, label %48

48:                                               ; preds = %44
  %49 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %50 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %48
  %54 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %55 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %10, align 8
  %58 = call i32 @crypto_ablkcipher_blocksize(%struct.crypto_ablkcipher* %57)
  %59 = srem i32 %56, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %53, %48, %44, %39
  %62 = load %struct.ablk_ctx*, %struct.ablk_ctx** %13, align 8
  %63 = getelementptr inbounds %struct.ablk_ctx, %struct.ablk_ctx* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %66 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @pr_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %64, i32 %67, i32 %68)
  br label %321

70:                                               ; preds = %53
  %71 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %10, align 8
  %72 = call i32 @c_ctx(%struct.crypto_ablkcipher* %71)
  %73 = call %struct.TYPE_8__* @ULD_CTX(i32 %72)
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %79 = call i32 @chcr_cipher_dma_map(i32* %77, %struct.ablkcipher_request* %78)
  store i32 %79, i32* %16, align 4
  %80 = load i32, i32* %16, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %70
  br label %321

83:                                               ; preds = %70
  %84 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %85 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = load i32, i32* @SGE_MAX_WR_LEN, align 4
  %89 = zext i32 %88 to i64
  %90 = load i32, i32* @AES_MIN_KEY_SIZE, align 4
  %91 = zext i32 %90 to i64
  %92 = add i64 4, %91
  %93 = add i64 %92, 4
  %94 = add i64 %93, 32
  %95 = sub i64 %89, %94
  %96 = icmp ult i64 %87, %95
  br i1 %96, label %97, label %132

97:                                               ; preds = %83
  store i32 0, i32* %17, align 4
  %98 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %99 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %102 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @CHCR_DST_SG_SIZE, align 4
  %105 = call i32 @sg_nents_xlen(i32 %100, i32 %103, i32 %104, i32 0)
  store i32 %105, i32* %17, align 4
  %106 = load i32, i32* %17, align 4
  %107 = call i32 @get_space_for_phys_dsgl(i32 %106)
  store i32 %107, i32* %19, align 4
  %108 = load %struct.ablk_ctx*, %struct.ablk_ctx** %13, align 8
  %109 = getelementptr inbounds %struct.ablk_ctx, %struct.ablk_ctx* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @roundup(i64 %110, i32 16)
  store i32 %111, i32* %20, align 4
  %112 = load i32, i32* %20, align 4
  %113 = load i32, i32* %19, align 4
  %114 = call i32 @CIPHER_TRANSHDR_SIZE(i32 %112, i32 %113)
  store i32 %114, i32* %18, align 4
  %115 = load i32, i32* %18, align 4
  %116 = load i32, i32* @IV, align 4
  %117 = add i32 %115, %116
  %118 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %119 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = add i32 %117, %120
  %122 = load i32, i32* @SGE_MAX_WR_LEN, align 4
  %123 = icmp ule i32 %121, %122
  %124 = zext i1 %123 to i32
  %125 = load %struct.chcr_blkcipher_req_ctx*, %struct.chcr_blkcipher_req_ctx** %12, align 8
  %126 = getelementptr inbounds %struct.chcr_blkcipher_req_ctx, %struct.chcr_blkcipher_req_ctx* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 4
  %127 = load i32, i32* @IV, align 4
  %128 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %129 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = add i32 %127, %130
  store i32 %131, i32* %15, align 4
  br label %135

132:                                              ; preds = %83
  %133 = load %struct.chcr_blkcipher_req_ctx*, %struct.chcr_blkcipher_req_ctx** %12, align 8
  %134 = getelementptr inbounds %struct.chcr_blkcipher_req_ctx, %struct.chcr_blkcipher_req_ctx* %133, i32 0, i32 1
  store i32 0, i32* %134, align 4
  br label %135

135:                                              ; preds = %132, %97
  %136 = load %struct.chcr_blkcipher_req_ctx*, %struct.chcr_blkcipher_req_ctx** %12, align 8
  %137 = getelementptr inbounds %struct.chcr_blkcipher_req_ctx, %struct.chcr_blkcipher_req_ctx* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %173, label %140

140:                                              ; preds = %135
  %141 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %142 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %145 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.ablk_ctx*, %struct.ablk_ctx** %13, align 8
  %148 = getelementptr inbounds %struct.ablk_ctx, %struct.ablk_ctx* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = call i32 @CIP_SPACE_LEFT(i64 %149)
  %151 = call i32 @chcr_sg_ent_in_wr(i32 %143, i32 %146, i32 0, i32 %150, i32 0, i32 0)
  store i32 %151, i32* %15, align 4
  %152 = load i32, i32* %15, align 4
  %153 = load %struct.chcr_blkcipher_req_ctx*, %struct.chcr_blkcipher_req_ctx** %12, align 8
  %154 = getelementptr inbounds %struct.chcr_blkcipher_req_ctx, %struct.chcr_blkcipher_req_ctx* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = add nsw i32 %152, %155
  %157 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %158 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = icmp sge i32 %156, %159
  br i1 %160, label %161, label %169

161:                                              ; preds = %140
  %162 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %163 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.chcr_blkcipher_req_ctx*, %struct.chcr_blkcipher_req_ctx** %12, align 8
  %166 = getelementptr inbounds %struct.chcr_blkcipher_req_ctx, %struct.chcr_blkcipher_req_ctx* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = sub nsw i32 %164, %167
  store i32 %168, i32* %15, align 4
  br label %172

169:                                              ; preds = %140
  %170 = load i32, i32* %15, align 4
  %171 = call i32 @rounddown(i32 %170, i32 16)
  store i32 %171, i32* %15, align 4
  br label %172

172:                                              ; preds = %169, %161
  br label %177

173:                                              ; preds = %135
  %174 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %175 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  store i32 %176, i32* %15, align 4
  br label %177

177:                                              ; preds = %173, %172
  %178 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %10, align 8
  %179 = call i32 @crypto_ablkcipher_tfm(%struct.crypto_ablkcipher* %178)
  %180 = call i64 @get_cryptoalg_subtype(i32 %179)
  %181 = load i64, i64* @CRYPTO_ALG_SUB_TYPE_CTR, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %189

183:                                              ; preds = %177
  %184 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %185 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %184, i32 0, i32 4
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* %15, align 4
  %188 = call i32 @adjust_ctr_overflow(i32 %186, i32 %187)
  store i32 %188, i32* %15, align 4
  br label %189

189:                                              ; preds = %183, %177
  %190 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %10, align 8
  %191 = call i32 @crypto_ablkcipher_tfm(%struct.crypto_ablkcipher* %190)
  %192 = call i64 @get_cryptoalg_subtype(i32 %191)
  %193 = load i64, i64* @CRYPTO_ALG_SUB_TYPE_CTR_RFC3686, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %224

195:                                              ; preds = %189
  %196 = load %struct.chcr_blkcipher_req_ctx*, %struct.chcr_blkcipher_req_ctx** %12, align 8
  %197 = getelementptr inbounds %struct.chcr_blkcipher_req_ctx, %struct.chcr_blkcipher_req_ctx* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.ablk_ctx*, %struct.ablk_ctx** %13, align 8
  %200 = getelementptr inbounds %struct.ablk_ctx, %struct.ablk_ctx* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @CTR_RFC3686_NONCE_SIZE, align 4
  %203 = call i32 @memcpy(i32 %198, i32 %201, i32 %202)
  %204 = load %struct.chcr_blkcipher_req_ctx*, %struct.chcr_blkcipher_req_ctx** %12, align 8
  %205 = getelementptr inbounds %struct.chcr_blkcipher_req_ctx, %struct.chcr_blkcipher_req_ctx* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* @CTR_RFC3686_NONCE_SIZE, align 4
  %208 = add i32 %206, %207
  %209 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %210 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %209, i32 0, i32 4
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @CTR_RFC3686_IV_SIZE, align 4
  %213 = call i32 @memcpy(i32 %208, i32 %211, i32 %212)
  %214 = call i32 @cpu_to_be32(i32 1)
  %215 = load %struct.chcr_blkcipher_req_ctx*, %struct.chcr_blkcipher_req_ctx** %12, align 8
  %216 = getelementptr inbounds %struct.chcr_blkcipher_req_ctx, %struct.chcr_blkcipher_req_ctx* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* @CTR_RFC3686_NONCE_SIZE, align 4
  %219 = add i32 %217, %218
  %220 = load i32, i32* @CTR_RFC3686_IV_SIZE, align 4
  %221 = add i32 %219, %220
  %222 = zext i32 %221 to i64
  %223 = inttoptr i64 %222 to i32*
  store i32 %214, i32* %223, align 4
  br label %233

224:                                              ; preds = %189
  %225 = load %struct.chcr_blkcipher_req_ctx*, %struct.chcr_blkcipher_req_ctx** %12, align 8
  %226 = getelementptr inbounds %struct.chcr_blkcipher_req_ctx, %struct.chcr_blkcipher_req_ctx* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %229 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %228, i32 0, i32 4
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* @IV, align 4
  %232 = call i32 @memcpy(i32 %227, i32 %230, i32 %231)
  br label %233

233:                                              ; preds = %224, %195
  %234 = load i32, i32* %15, align 4
  %235 = icmp eq i32 %234, 0
  %236 = zext i1 %235 to i32
  %237 = call i64 @unlikely(i32 %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %270

239:                                              ; preds = %233
  %240 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %10, align 8
  %241 = call i32 @c_ctx(%struct.crypto_ablkcipher* %240)
  %242 = call %struct.TYPE_8__* @ULD_CTX(i32 %241)
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 0
  %245 = load %struct.TYPE_6__*, %struct.TYPE_6__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 0
  %247 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %248 = call i32 @chcr_cipher_dma_unmap(i32* %246, %struct.ablkcipher_request* %247)
  %249 = load %struct.ablk_ctx*, %struct.ablk_ctx** %13, align 8
  %250 = getelementptr inbounds %struct.ablk_ctx, %struct.ablk_ctx* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 8
  %252 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %253 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %252, i32 0, i32 3
  %254 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %257 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 4
  %259 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %260 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %263 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.chcr_blkcipher_req_ctx*, %struct.chcr_blkcipher_req_ctx** %12, align 8
  %266 = getelementptr inbounds %struct.chcr_blkcipher_req_ctx, %struct.chcr_blkcipher_req_ctx* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 8
  %268 = load i16, i16* %9, align 2
  %269 = call i32 @chcr_cipher_fallback(i32 %251, i32 %255, i32 %258, i32 %261, i32 %264, i32 %267, i16 zeroext %268)
  store i32 %269, i32* %16, align 4
  br label %321

270:                                              ; preds = %233
  %271 = load i16, i16* %9, align 2
  %272 = load %struct.chcr_blkcipher_req_ctx*, %struct.chcr_blkcipher_req_ctx** %12, align 8
  %273 = getelementptr inbounds %struct.chcr_blkcipher_req_ctx, %struct.chcr_blkcipher_req_ctx* %272, i32 0, i32 3
  store i16 %271, i16* %273, align 4
  %274 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %275 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %274, i32 0, i32 2
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.chcr_blkcipher_req_ctx*, %struct.chcr_blkcipher_req_ctx** %12, align 8
  %278 = getelementptr inbounds %struct.chcr_blkcipher_req_ctx, %struct.chcr_blkcipher_req_ctx* %277, i32 0, i32 8
  store i32 %276, i32* %278, align 4
  %279 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %280 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.chcr_blkcipher_req_ctx*, %struct.chcr_blkcipher_req_ctx** %12, align 8
  %283 = getelementptr inbounds %struct.chcr_blkcipher_req_ctx, %struct.chcr_blkcipher_req_ctx* %282, i32 0, i32 7
  store i32 %281, i32* %283, align 8
  %284 = load %struct.chcr_blkcipher_req_ctx*, %struct.chcr_blkcipher_req_ctx** %12, align 8
  %285 = getelementptr inbounds %struct.chcr_blkcipher_req_ctx, %struct.chcr_blkcipher_req_ctx* %284, i32 0, i32 6
  store i64 0, i64* %285, align 8
  %286 = load %struct.chcr_blkcipher_req_ctx*, %struct.chcr_blkcipher_req_ctx** %12, align 8
  %287 = getelementptr inbounds %struct.chcr_blkcipher_req_ctx, %struct.chcr_blkcipher_req_ctx* %286, i32 0, i32 5
  store i64 0, i64* %287, align 8
  %288 = load i16, i16* %7, align 2
  %289 = getelementptr inbounds %struct.cipher_wr_param, %struct.cipher_wr_param* %14, i32 0, i32 0
  store i16 %288, i16* %289, align 8
  %290 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %291 = getelementptr inbounds %struct.cipher_wr_param, %struct.cipher_wr_param* %14, i32 0, i32 2
  store %struct.ablkcipher_request* %290, %struct.ablkcipher_request** %291, align 8
  %292 = load i32, i32* %15, align 4
  %293 = getelementptr inbounds %struct.cipher_wr_param, %struct.cipher_wr_param* %14, i32 0, i32 1
  store i32 %292, i32* %293, align 4
  %294 = call %struct.sk_buff* @create_cipher_wr(%struct.cipher_wr_param* %14)
  %295 = load %struct.sk_buff**, %struct.sk_buff*** %8, align 8
  store %struct.sk_buff* %294, %struct.sk_buff** %295, align 8
  %296 = load %struct.sk_buff**, %struct.sk_buff*** %8, align 8
  %297 = load %struct.sk_buff*, %struct.sk_buff** %296, align 8
  %298 = call i64 @IS_ERR(%struct.sk_buff* %297)
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %304

300:                                              ; preds = %270
  %301 = load %struct.sk_buff**, %struct.sk_buff*** %8, align 8
  %302 = load %struct.sk_buff*, %struct.sk_buff** %301, align 8
  %303 = call i32 @PTR_ERR(%struct.sk_buff* %302)
  store i32 %303, i32* %16, align 4
  br label %311

304:                                              ; preds = %270
  %305 = load i32, i32* %15, align 4
  %306 = load %struct.chcr_blkcipher_req_ctx*, %struct.chcr_blkcipher_req_ctx** %12, align 8
  %307 = getelementptr inbounds %struct.chcr_blkcipher_req_ctx, %struct.chcr_blkcipher_req_ctx* %306, i32 0, i32 0
  store i32 %305, i32* %307, align 8
  %308 = load i32, i32* %15, align 4
  %309 = load %struct.chcr_blkcipher_req_ctx*, %struct.chcr_blkcipher_req_ctx** %12, align 8
  %310 = getelementptr inbounds %struct.chcr_blkcipher_req_ctx, %struct.chcr_blkcipher_req_ctx* %309, i32 0, i32 4
  store i32 %308, i32* %310, align 8
  store i32 0, i32* %5, align 4
  br label %323

311:                                              ; preds = %300
  %312 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %10, align 8
  %313 = call i32 @c_ctx(%struct.crypto_ablkcipher* %312)
  %314 = call %struct.TYPE_8__* @ULD_CTX(i32 %313)
  %315 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %315, i32 0, i32 0
  %317 = load %struct.TYPE_6__*, %struct.TYPE_6__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %317, i32 0, i32 0
  %319 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %320 = call i32 @chcr_cipher_dma_unmap(i32* %318, %struct.ablkcipher_request* %319)
  br label %321

321:                                              ; preds = %311, %239, %82, %61, %38
  %322 = load i32, i32* %16, align 4
  store i32 %322, i32* %5, align 4
  br label %323

323:                                              ; preds = %321, %304
  %324 = load i32, i32* %5, align 4
  ret i32 %324
}

declare dso_local %struct.crypto_ablkcipher* @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request*) #1

declare dso_local i32 @crypto_ablkcipher_ivsize(%struct.crypto_ablkcipher*) #1

declare dso_local %struct.chcr_blkcipher_req_ctx* @ablkcipher_request_ctx(%struct.ablkcipher_request*) #1

declare dso_local %struct.ablk_ctx* @ABLK_CTX(i32) #1

declare dso_local i32 @c_ctx(%struct.crypto_ablkcipher*) #1

declare dso_local i32 @crypto_ablkcipher_blocksize(%struct.crypto_ablkcipher*) #1

declare dso_local i32 @pr_err(i8*, i64, i32, i32) #1

declare dso_local i32 @chcr_cipher_dma_map(i32*, %struct.ablkcipher_request*) #1

declare dso_local %struct.TYPE_8__* @ULD_CTX(i32) #1

declare dso_local i32 @sg_nents_xlen(i32, i32, i32, i32) #1

declare dso_local i32 @get_space_for_phys_dsgl(i32) #1

declare dso_local i32 @roundup(i64, i32) #1

declare dso_local i32 @CIPHER_TRANSHDR_SIZE(i32, i32) #1

declare dso_local i32 @chcr_sg_ent_in_wr(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @CIP_SPACE_LEFT(i64) #1

declare dso_local i32 @rounddown(i32, i32) #1

declare dso_local i64 @get_cryptoalg_subtype(i32) #1

declare dso_local i32 @crypto_ablkcipher_tfm(%struct.crypto_ablkcipher*) #1

declare dso_local i32 @adjust_ctr_overflow(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @chcr_cipher_dma_unmap(i32*, %struct.ablkcipher_request*) #1

declare dso_local i32 @chcr_cipher_fallback(i32, i32, i32, i32, i32, i32, i16 zeroext) #1

declare dso_local %struct.sk_buff* @create_cipher_wr(%struct.cipher_wr_param*) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_create_aead_ccm_wr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_create_aead_ccm_wr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.aead_request = type { i32, i32, %struct.TYPE_10__, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.crypto_aead = type { i32 }
%struct.chcr_aead_ctx = type { i32, i32, i32 }
%struct.chcr_aead_reqctx = type { i32, i32, %struct.sk_buff*, i64 }
%struct.chcr_wr = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i64, i32 }
%struct.cpl_rx_phys_dsgl = type { i32 }
%struct.ulptx_sgl = type { i32 }
%struct.adapter = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@CRYPTO_ALG_SUB_TYPE_AEAD_RFC4309 = common dso_local global i32 0, align 4
@CCM_B0_SIZE = common dso_local global i32 0, align 4
@CCM_AAD_FIELD_SIZE = common dso_local global i32 0, align 4
@CHCR_DST_SG_SIZE = common dso_local global i32 0, align 4
@MIN_CCM_SG = common dso_local global i64 0, align 8
@CHCR_SRC_SG_SIZE = common dso_local global i32 0, align 4
@SGE_MAX_WR_LEN = common dso_local global i32 0, align 4
@T6_MAX_AAD_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@IV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.aead_request*, i16, i32)* @create_aead_ccm_wr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @create_aead_ccm_wr(%struct.aead_request* %0, i16 zeroext %1, i32 %2) #0 {
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
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca %struct.adapter*, align 8
  store %struct.aead_request* %0, %struct.aead_request** %5, align 8
  store i16 %1, i16* %6, align 2
  store i32 %2, i32* %7, align 4
  %28 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %29 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %28)
  store %struct.crypto_aead* %29, %struct.crypto_aead** %8, align 8
  %30 = load %struct.crypto_aead*, %struct.crypto_aead** %8, align 8
  %31 = call %struct.TYPE_9__* @a_ctx(%struct.crypto_aead* %30)
  %32 = call %struct.chcr_aead_ctx* @AEAD_CTX(%struct.TYPE_9__* %31)
  store %struct.chcr_aead_ctx* %32, %struct.chcr_aead_ctx** %9, align 8
  %33 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %34 = call %struct.chcr_aead_reqctx* @aead_request_ctx(%struct.aead_request* %33)
  store %struct.chcr_aead_reqctx* %34, %struct.chcr_aead_reqctx** %10, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %11, align 8
  store i32 0, i32* %16, align 4
  %35 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %36 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %22, align 4
  %38 = load %struct.crypto_aead*, %struct.crypto_aead** %8, align 8
  %39 = call i32 @crypto_aead_authsize(%struct.crypto_aead* %38)
  store i32 %39, i32* %23, align 4
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %24, align 4
  %42 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %43 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %3
  %50 = load i32, i32* @GFP_KERNEL, align 4
  br label %53

51:                                               ; preds = %3
  %52 = load i32, i32* @GFP_ATOMIC, align 4
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i32 [ %50, %49 ], [ %52, %51 ]
  store i32 %54, i32* %26, align 4
  %55 = load %struct.crypto_aead*, %struct.crypto_aead** %8, align 8
  %56 = call %struct.TYPE_9__* @a_ctx(%struct.crypto_aead* %55)
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call %struct.adapter* @padap(i32 %58)
  store %struct.adapter* %59, %struct.adapter** %27, align 8
  %60 = load %struct.crypto_aead*, %struct.crypto_aead** %8, align 8
  %61 = call i32 @get_aead_subtype(%struct.crypto_aead* %60)
  store i32 %61, i32* %21, align 4
  %62 = load i32, i32* %21, align 4
  %63 = load i32, i32* @CRYPTO_ALG_SUB_TYPE_AEAD_RFC4309, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %53
  %66 = load i32, i32* %22, align 4
  %67 = sub i32 %66, 8
  store i32 %67, i32* %22, align 4
  br label %68

68:                                               ; preds = %65, %53
  %69 = load i32, i32* @CCM_B0_SIZE, align 4
  %70 = load i32, i32* %22, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i32, i32* @CCM_AAD_FIELD_SIZE, align 4
  br label %75

74:                                               ; preds = %68
  br label %75

75:                                               ; preds = %74, %72
  %76 = phi i32 [ %73, %72 ], [ 0, %74 ]
  %77 = add i32 %69, %76
  %78 = load %struct.chcr_aead_reqctx*, %struct.chcr_aead_reqctx** %10, align 8
  %79 = getelementptr inbounds %struct.chcr_aead_reqctx, %struct.chcr_aead_reqctx* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %81 = call i32 @chcr_aead_common_init(%struct.aead_request* %80)
  store i32 %81, i32* %24, align 4
  %82 = load i32, i32* %24, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %75
  %85 = load i32, i32* %24, align 4
  %86 = call %struct.sk_buff* @ERR_PTR(i32 %85)
  store %struct.sk_buff* %86, %struct.sk_buff** %4, align 8
  br label %378

87:                                               ; preds = %75
  %88 = load %struct.chcr_aead_reqctx*, %struct.chcr_aead_reqctx** %10, align 8
  %89 = getelementptr inbounds %struct.chcr_aead_reqctx, %struct.chcr_aead_reqctx* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %92 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %9, align 8
  %93 = load i32, i32* %21, align 4
  %94 = call i32 @aead_ccm_validate_input(i64 %90, %struct.aead_request* %91, %struct.chcr_aead_ctx* %92, i32 %93)
  store i32 %94, i32* %24, align 4
  %95 = load i32, i32* %24, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %87
  br label %373

98:                                               ; preds = %87
  %99 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %100 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %103 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %106 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = add i32 %104, %107
  %109 = load %struct.chcr_aead_reqctx*, %struct.chcr_aead_reqctx** %10, align 8
  %110 = getelementptr inbounds %struct.chcr_aead_reqctx, %struct.chcr_aead_reqctx* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %98
  %114 = load i32, i32* %23, align 4
  %115 = sub i32 0, %114
  br label %118

116:                                              ; preds = %98
  %117 = load i32, i32* %23, align 4
  br label %118

118:                                              ; preds = %116, %113
  %119 = phi i32 [ %115, %113 ], [ %117, %116 ]
  %120 = add i32 %108, %119
  %121 = load i32, i32* @CHCR_DST_SG_SIZE, align 4
  %122 = call i32 @sg_nents_xlen(i32 %101, i32 %120, i32 %121, i32 0)
  store i32 %122, i32* %18, align 4
  %123 = load i64, i64* @MIN_CCM_SG, align 8
  %124 = load i32, i32* %18, align 4
  %125 = zext i32 %124 to i64
  %126 = add nsw i64 %125, %123
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %18, align 4
  %128 = load i32, i32* %18, align 4
  %129 = call i32 @get_space_for_phys_dsgl(i32 %128)
  store i32 %129, i32* %16, align 4
  %130 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %131 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %134 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %137 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = add i32 %135, %138
  %140 = load i32, i32* @CHCR_SRC_SG_SIZE, align 4
  %141 = call i32 @sg_nents_xlen(i32 %132, i32 %139, i32 %140, i32 0)
  store i32 %141, i32* %20, align 4
  %142 = load i64, i64* @MIN_CCM_SG, align 8
  %143 = load i32, i32* %20, align 4
  %144 = zext i32 %143 to i64
  %145 = add nsw i64 %144, %142
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %20, align 4
  %147 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %9, align 8
  %148 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @roundup(i32 %149, i32 16)
  %151 = mul nsw i32 %150, 2
  store i32 %151, i32* %17, align 4
  %152 = load i32, i32* %17, align 4
  %153 = load i32, i32* %16, align 4
  %154 = call i32 @CIPHER_TRANSHDR_SIZE(i32 %152, i32 %153)
  store i32 %154, i32* %15, align 4
  %155 = load i32, i32* %15, align 4
  %156 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %157 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = add i32 %155, %158
  %160 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %161 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = add i32 %159, %162
  %164 = load %struct.chcr_aead_reqctx*, %struct.chcr_aead_reqctx** %10, align 8
  %165 = getelementptr inbounds %struct.chcr_aead_reqctx, %struct.chcr_aead_reqctx* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = add i32 %163, %166
  %168 = load i32, i32* @SGE_MAX_WR_LEN, align 4
  %169 = icmp ule i32 %167, %168
  %170 = zext i1 %169 to i32
  %171 = load %struct.chcr_aead_reqctx*, %struct.chcr_aead_reqctx** %10, align 8
  %172 = getelementptr inbounds %struct.chcr_aead_reqctx, %struct.chcr_aead_reqctx* %171, i32 0, i32 1
  store i32 %170, i32* %172, align 4
  %173 = load %struct.chcr_aead_reqctx*, %struct.chcr_aead_reqctx** %10, align 8
  %174 = getelementptr inbounds %struct.chcr_aead_reqctx, %struct.chcr_aead_reqctx* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %190

177:                                              ; preds = %118
  %178 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %179 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %182 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = add i32 %180, %183
  %185 = load %struct.chcr_aead_reqctx*, %struct.chcr_aead_reqctx** %10, align 8
  %186 = getelementptr inbounds %struct.chcr_aead_reqctx, %struct.chcr_aead_reqctx* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = add i32 %184, %187
  %189 = call i32 @roundup(i32 %188, i32 16)
  br label %194

190:                                              ; preds = %118
  %191 = load i32, i32* %20, align 4
  %192 = call i32 @sgl_len(i32 %191)
  %193 = mul nsw i32 %192, 8
  br label %194

194:                                              ; preds = %190, %177
  %195 = phi i32 [ %189, %177 ], [ %193, %190 ]
  store i32 %195, i32* %19, align 4
  %196 = load i32, i32* %19, align 4
  %197 = load i32, i32* %15, align 4
  %198 = add i32 %197, %196
  store i32 %198, i32* %15, align 4
  %199 = load i32, i32* %15, align 4
  %200 = call i32 @roundup(i32 %199, i32 16)
  store i32 %200, i32* %15, align 4
  %201 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %202 = load i32, i32* %18, align 4
  %203 = load i64, i64* @T6_MAX_AAD_SIZE, align 8
  %204 = load %struct.chcr_aead_reqctx*, %struct.chcr_aead_reqctx** %10, align 8
  %205 = getelementptr inbounds %struct.chcr_aead_reqctx, %struct.chcr_aead_reqctx* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = zext i32 %206 to i64
  %208 = sub nsw i64 %203, %207
  %209 = load i32, i32* %15, align 4
  %210 = load %struct.chcr_aead_reqctx*, %struct.chcr_aead_reqctx** %10, align 8
  %211 = getelementptr inbounds %struct.chcr_aead_reqctx, %struct.chcr_aead_reqctx* %210, i32 0, i32 3
  %212 = load i64, i64* %211, align 8
  %213 = call i64 @chcr_aead_need_fallback(%struct.aead_request* %201, i32 %202, i64 %208, i32 %209, i64 %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %228

215:                                              ; preds = %194
  %216 = load %struct.adapter*, %struct.adapter** %27, align 8
  %217 = getelementptr inbounds %struct.adapter, %struct.adapter* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 1
  %219 = call i32 @atomic_inc(i32* %218)
  %220 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %221 = call i32 @chcr_aead_common_exit(%struct.aead_request* %220)
  %222 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %223 = load %struct.chcr_aead_reqctx*, %struct.chcr_aead_reqctx** %10, align 8
  %224 = getelementptr inbounds %struct.chcr_aead_reqctx, %struct.chcr_aead_reqctx* %223, i32 0, i32 3
  %225 = load i64, i64* %224, align 8
  %226 = call i32 @chcr_aead_fallback(%struct.aead_request* %222, i64 %225)
  %227 = call %struct.sk_buff* @ERR_PTR(i32 %226)
  store %struct.sk_buff* %227, %struct.sk_buff** %4, align 8
  br label %378

228:                                              ; preds = %194
  %229 = load i32, i32* %15, align 4
  %230 = load i32, i32* %26, align 4
  %231 = call %struct.sk_buff* @alloc_skb(i32 %229, i32 %230)
  store %struct.sk_buff* %231, %struct.sk_buff** %11, align 8
  %232 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %233 = icmp ne %struct.sk_buff* %232, null
  br i1 %233, label %237, label %234

234:                                              ; preds = %228
  %235 = load i32, i32* @ENOMEM, align 4
  %236 = sub nsw i32 0, %235
  store i32 %236, i32* %24, align 4
  br label %373

237:                                              ; preds = %228
  %238 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %239 = load i32, i32* %15, align 4
  %240 = call %struct.chcr_wr* @__skb_put_zero(%struct.sk_buff* %238, i32 %239)
  store %struct.chcr_wr* %240, %struct.chcr_wr** %12, align 8
  %241 = load %struct.chcr_wr*, %struct.chcr_wr** %12, align 8
  %242 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %241, i32 0, i32 1
  %243 = load i32, i32* %16, align 4
  %244 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %245 = load %struct.chcr_aead_reqctx*, %struct.chcr_aead_reqctx** %10, align 8
  %246 = getelementptr inbounds %struct.chcr_aead_reqctx, %struct.chcr_aead_reqctx* %245, i32 0, i32 3
  %247 = load i64, i64* %246, align 8
  %248 = call i32 @fill_sec_cpl_for_aead(i32* %242, i32 %243, %struct.aead_request* %244, i64 %247)
  %249 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %9, align 8
  %250 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.chcr_wr*, %struct.chcr_wr** %12, align 8
  %253 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %253, i32 0, i32 1
  store i32 %251, i32* %254, align 8
  %255 = load %struct.chcr_wr*, %struct.chcr_wr** %12, align 8
  %256 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %9, align 8
  %260 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %9, align 8
  %263 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = call i32 @memcpy(i64 %258, i32 %261, i32 %264)
  %266 = load %struct.chcr_wr*, %struct.chcr_wr** %12, align 8
  %267 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %9, align 8
  %271 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = call i32 @roundup(i32 %272, i32 16)
  %274 = sext i32 %273 to i64
  %275 = add nsw i64 %269, %274
  %276 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %9, align 8
  %277 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %9, align 8
  %280 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = call i32 @memcpy(i64 %275, i32 %278, i32 %281)
  %283 = load %struct.chcr_wr*, %struct.chcr_wr** %12, align 8
  %284 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %283, i64 1
  %285 = bitcast %struct.chcr_wr* %284 to i32*
  %286 = load i32, i32* %17, align 4
  %287 = zext i32 %286 to i64
  %288 = getelementptr inbounds i32, i32* %285, i64 %287
  %289 = bitcast i32* %288 to %struct.cpl_rx_phys_dsgl*
  store %struct.cpl_rx_phys_dsgl* %289, %struct.cpl_rx_phys_dsgl** %13, align 8
  %290 = load %struct.cpl_rx_phys_dsgl*, %struct.cpl_rx_phys_dsgl** %13, align 8
  %291 = getelementptr inbounds %struct.cpl_rx_phys_dsgl, %struct.cpl_rx_phys_dsgl* %290, i64 1
  %292 = bitcast %struct.cpl_rx_phys_dsgl* %291 to i32*
  %293 = load i32, i32* %16, align 4
  %294 = zext i32 %293 to i64
  %295 = getelementptr inbounds i32, i32* %292, i64 %294
  store i32* %295, i32** %25, align 8
  %296 = load i32*, i32** %25, align 8
  %297 = load i32, i32* @IV, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i32, i32* %296, i64 %298
  %300 = bitcast i32* %299 to %struct.ulptx_sgl*
  store %struct.ulptx_sgl* %300, %struct.ulptx_sgl** %14, align 8
  %301 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %302 = load i32*, i32** %25, align 8
  %303 = load i32, i32* %21, align 4
  %304 = load %struct.chcr_aead_reqctx*, %struct.chcr_aead_reqctx** %10, align 8
  %305 = getelementptr inbounds %struct.chcr_aead_reqctx, %struct.chcr_aead_reqctx* %304, i32 0, i32 3
  %306 = load i64, i64* %305, align 8
  %307 = load i32, i32* %22, align 4
  %308 = call i32 @ccm_format_packet(%struct.aead_request* %301, i32* %302, i32 %303, i64 %306, i32 %307)
  store i32 %308, i32* %24, align 4
  %309 = load i32, i32* %24, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %312

311:                                              ; preds = %237
  br label %370

312:                                              ; preds = %237
  %313 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %314 = load %struct.cpl_rx_phys_dsgl*, %struct.cpl_rx_phys_dsgl** %13, align 8
  %315 = load i16, i16* %6, align 2
  %316 = call i32 @chcr_add_aead_dst_ent(%struct.aead_request* %313, %struct.cpl_rx_phys_dsgl* %314, i16 zeroext %315)
  %317 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %318 = load %struct.ulptx_sgl*, %struct.ulptx_sgl** %14, align 8
  %319 = call i32 @chcr_add_aead_src_ent(%struct.aead_request* %317, %struct.ulptx_sgl* %318)
  %320 = load %struct.adapter*, %struct.adapter** %27, align 8
  %321 = getelementptr inbounds %struct.adapter, %struct.adapter* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %321, i32 0, i32 0
  %323 = call i32 @atomic_inc(i32* %322)
  %324 = load i32, i32* %16, align 4
  %325 = zext i32 %324 to i64
  %326 = add i64 4, %325
  %327 = load i32, i32* @IV, align 4
  %328 = sext i32 %327 to i64
  %329 = add i64 %326, %328
  %330 = load i32, i32* %17, align 4
  %331 = zext i32 %330 to i64
  %332 = add i64 %329, %331
  %333 = load %struct.chcr_aead_reqctx*, %struct.chcr_aead_reqctx** %10, align 8
  %334 = getelementptr inbounds %struct.chcr_aead_reqctx, %struct.chcr_aead_reqctx* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %349

337:                                              ; preds = %312
  %338 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %339 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 4
  %341 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %342 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %341, i32 0, i32 1
  %343 = load i32, i32* %342, align 4
  %344 = add i32 %340, %343
  %345 = load %struct.chcr_aead_reqctx*, %struct.chcr_aead_reqctx** %10, align 8
  %346 = getelementptr inbounds %struct.chcr_aead_reqctx, %struct.chcr_aead_reqctx* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 8
  %348 = add i32 %344, %347
  br label %350

349:                                              ; preds = %312
  br label %350

350:                                              ; preds = %349, %337
  %351 = phi i32 [ %348, %337 ], [ 0, %349 ]
  %352 = zext i32 %351 to i64
  %353 = add i64 %332, %352
  %354 = trunc i64 %353 to i32
  store i32 %354, i32* %19, align 4
  %355 = load %struct.crypto_aead*, %struct.crypto_aead** %8, align 8
  %356 = call %struct.TYPE_9__* @a_ctx(%struct.crypto_aead* %355)
  %357 = load %struct.chcr_wr*, %struct.chcr_wr** %12, align 8
  %358 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %359 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %358, i32 0, i32 2
  %360 = load %struct.chcr_aead_reqctx*, %struct.chcr_aead_reqctx** %10, align 8
  %361 = getelementptr inbounds %struct.chcr_aead_reqctx, %struct.chcr_aead_reqctx* %360, i32 0, i32 1
  %362 = load i32, i32* %361, align 4
  %363 = load i32, i32* %15, align 4
  %364 = load i32, i32* %19, align 4
  %365 = call i32 @create_wreq(%struct.TYPE_9__* %356, %struct.chcr_wr* %357, %struct.TYPE_10__* %359, i32 %362, i32 0, i32 %363, i32 %364, i32 0)
  %366 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %367 = load %struct.chcr_aead_reqctx*, %struct.chcr_aead_reqctx** %10, align 8
  %368 = getelementptr inbounds %struct.chcr_aead_reqctx, %struct.chcr_aead_reqctx* %367, i32 0, i32 2
  store %struct.sk_buff* %366, %struct.sk_buff** %368, align 8
  %369 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  store %struct.sk_buff* %369, %struct.sk_buff** %4, align 8
  br label %378

370:                                              ; preds = %311
  %371 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %372 = call i32 @kfree_skb(%struct.sk_buff* %371)
  br label %373

373:                                              ; preds = %370, %234, %97
  %374 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %375 = call i32 @chcr_aead_common_exit(%struct.aead_request* %374)
  %376 = load i32, i32* %24, align 4
  %377 = call %struct.sk_buff* @ERR_PTR(i32 %376)
  store %struct.sk_buff* %377, %struct.sk_buff** %4, align 8
  br label %378

378:                                              ; preds = %373, %350, %215, %84
  %379 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %379
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.chcr_aead_ctx* @AEAD_CTX(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_9__* @a_ctx(%struct.crypto_aead*) #1

declare dso_local %struct.chcr_aead_reqctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local i32 @crypto_aead_authsize(%struct.crypto_aead*) #1

declare dso_local %struct.adapter* @padap(i32) #1

declare dso_local i32 @get_aead_subtype(%struct.crypto_aead*) #1

declare dso_local i32 @chcr_aead_common_init(%struct.aead_request*) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local i32 @aead_ccm_validate_input(i64, %struct.aead_request*, %struct.chcr_aead_ctx*, i32) #1

declare dso_local i32 @sg_nents_xlen(i32, i32, i32, i32) #1

declare dso_local i32 @get_space_for_phys_dsgl(i32) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @CIPHER_TRANSHDR_SIZE(i32, i32) #1

declare dso_local i32 @sgl_len(i32) #1

declare dso_local i64 @chcr_aead_need_fallback(%struct.aead_request*, i32, i64, i32, i64) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @chcr_aead_common_exit(%struct.aead_request*) #1

declare dso_local i32 @chcr_aead_fallback(%struct.aead_request*, i64) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local %struct.chcr_wr* @__skb_put_zero(%struct.sk_buff*, i32) #1

declare dso_local i32 @fill_sec_cpl_for_aead(i32*, i32, %struct.aead_request*, i64) #1

declare dso_local i32 @memcpy(i64, i32, i32) #1

declare dso_local i32 @ccm_format_packet(%struct.aead_request*, i32*, i32, i64, i32) #1

declare dso_local i32 @chcr_add_aead_dst_ent(%struct.aead_request*, %struct.cpl_rx_phys_dsgl*, i16 zeroext) #1

declare dso_local i32 @chcr_add_aead_src_ent(%struct.aead_request*, %struct.ulptx_sgl*) #1

declare dso_local i32 @create_wreq(%struct.TYPE_9__*, %struct.chcr_wr*, %struct.TYPE_10__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

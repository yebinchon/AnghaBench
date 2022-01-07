; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-crypto-sha.c_ccp_do_sha_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-crypto-sha.c_ccp_do_sha_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { %struct.TYPE_17__, %struct.scatterlist* }
%struct.TYPE_17__ = type { i32 }
%struct.scatterlist = type { i32 }
%struct.crypto_ahash = type { i32 }
%struct.ccp_ctx = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i64, i32 }
%struct.ccp_sha_req_ctx = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_15__, %struct.TYPE_16__, i64, %struct.scatterlist, %struct.scatterlist, i32, i32, %struct.scatterlist* }
%struct.TYPE_15__ = type { %struct.scatterlist* }
%struct.TYPE_16__ = type { %struct.TYPE_13__, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i64, i32, i32*, %struct.scatterlist*, i32, %struct.scatterlist* }

@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CCP_ENGINE_SHA = common dso_local global i32 0, align 4
@SHA1_DIGEST_SIZE = common dso_local global i32 0, align 4
@SHA224_DIGEST_SIZE = common dso_local global i32 0, align 4
@SHA256_DIGEST_SIZE = common dso_local global i32 0, align 4
@SHA384_DIGEST_SIZE = common dso_local global i32 0, align 4
@SHA512_DIGEST_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*, i32, i32)* @ccp_do_sha_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccp_do_sha_update(%struct.ahash_request* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ahash_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.crypto_ahash*, align 8
  %9 = alloca %struct.ccp_ctx*, align 8
  %10 = alloca %struct.ccp_sha_req_ctx*, align 8
  %11 = alloca %struct.scatterlist*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ahash_request* %0, %struct.ahash_request** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %17 = load %struct.ahash_request*, %struct.ahash_request** %5, align 8
  %18 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %17)
  store %struct.crypto_ahash* %18, %struct.crypto_ahash** %8, align 8
  %19 = load %struct.crypto_ahash*, %struct.crypto_ahash** %8, align 8
  %20 = call %struct.ccp_ctx* @crypto_ahash_ctx(%struct.crypto_ahash* %19)
  store %struct.ccp_ctx* %20, %struct.ccp_ctx** %9, align 8
  %21 = load %struct.ahash_request*, %struct.ahash_request** %5, align 8
  %22 = call %struct.ccp_sha_req_ctx* @ahash_request_ctx(%struct.ahash_request* %21)
  store %struct.ccp_sha_req_ctx* %22, %struct.ccp_sha_req_ctx** %10, align 8
  %23 = load %struct.crypto_ahash*, %struct.crypto_ahash** %8, align 8
  %24 = call i32 @crypto_ahash_tfm(%struct.crypto_ahash* %23)
  %25 = call i32 @crypto_tfm_alg_blocksize(i32 %24)
  store i32 %25, i32* %12, align 4
  %26 = load %struct.ccp_sha_req_ctx*, %struct.ccp_sha_req_ctx** %10, align 8
  %27 = getelementptr inbounds %struct.ccp_sha_req_ctx, %struct.ccp_sha_req_ctx* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = add i32 %28, %29
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %55, label %33

33:                                               ; preds = %3
  %34 = load i32, i32* %15, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp ule i32 %34, %35
  br i1 %36, label %37, label %55

37:                                               ; preds = %33
  %38 = load %struct.ccp_sha_req_ctx*, %struct.ccp_sha_req_ctx** %10, align 8
  %39 = getelementptr inbounds %struct.ccp_sha_req_ctx, %struct.ccp_sha_req_ctx* %38, i32 0, i32 12
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.ccp_sha_req_ctx*, %struct.ccp_sha_req_ctx** %10, align 8
  %42 = getelementptr inbounds %struct.ccp_sha_req_ctx, %struct.ccp_sha_req_ctx* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %40, %43
  %45 = load %struct.ahash_request*, %struct.ahash_request** %5, align 8
  %46 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %45, i32 0, i32 1
  %47 = load %struct.scatterlist*, %struct.scatterlist** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @scatterwalk_map_and_copy(i32 %44, %struct.scatterlist* %47, i32 0, i32 %48, i32 0)
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.ccp_sha_req_ctx*, %struct.ccp_sha_req_ctx** %10, align 8
  %52 = getelementptr inbounds %struct.ccp_sha_req_ctx, %struct.ccp_sha_req_ctx* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = add i32 %53, %50
  store i32 %54, i32* %52, align 8
  store i32 0, i32* %4, align 4
  br label %374

55:                                               ; preds = %33, %3
  %56 = load %struct.ahash_request*, %struct.ahash_request** %5, align 8
  %57 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %56, i32 0, i32 1
  %58 = load %struct.scatterlist*, %struct.scatterlist** %57, align 8
  %59 = load %struct.ccp_sha_req_ctx*, %struct.ccp_sha_req_ctx** %10, align 8
  %60 = getelementptr inbounds %struct.ccp_sha_req_ctx, %struct.ccp_sha_req_ctx* %59, i32 0, i32 14
  store %struct.scatterlist* %58, %struct.scatterlist** %60, align 8
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.ccp_sha_req_ctx*, %struct.ccp_sha_req_ctx** %10, align 8
  %63 = getelementptr inbounds %struct.ccp_sha_req_ctx, %struct.ccp_sha_req_ctx* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.ccp_sha_req_ctx*, %struct.ccp_sha_req_ctx** %10, align 8
  %66 = getelementptr inbounds %struct.ccp_sha_req_ctx, %struct.ccp_sha_req_ctx* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %55
  br label %75

70:                                               ; preds = %55
  %71 = load i32, i32* %15, align 4
  %72 = load i32, i32* %12, align 4
  %73 = sub i32 %72, 1
  %74 = and i32 %71, %73
  br label %75

75:                                               ; preds = %70, %69
  %76 = phi i32 [ 0, %69 ], [ %74, %70 ]
  %77 = load %struct.ccp_sha_req_ctx*, %struct.ccp_sha_req_ctx** %10, align 8
  %78 = getelementptr inbounds %struct.ccp_sha_req_ctx, %struct.ccp_sha_req_ctx* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* %15, align 4
  %80 = load %struct.ccp_sha_req_ctx*, %struct.ccp_sha_req_ctx** %10, align 8
  %81 = getelementptr inbounds %struct.ccp_sha_req_ctx, %struct.ccp_sha_req_ctx* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = sub i32 %79, %82
  %84 = load %struct.ccp_sha_req_ctx*, %struct.ccp_sha_req_ctx** %10, align 8
  %85 = getelementptr inbounds %struct.ccp_sha_req_ctx, %struct.ccp_sha_req_ctx* %84, i32 0, i32 4
  store i32 %83, i32* %85, align 8
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %102, label %88

88:                                               ; preds = %75
  %89 = load %struct.ccp_sha_req_ctx*, %struct.ccp_sha_req_ctx** %10, align 8
  %90 = getelementptr inbounds %struct.ccp_sha_req_ctx, %struct.ccp_sha_req_ctx* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %102, label %93

93:                                               ; preds = %88
  %94 = load i32, i32* %12, align 4
  %95 = load %struct.ccp_sha_req_ctx*, %struct.ccp_sha_req_ctx** %10, align 8
  %96 = getelementptr inbounds %struct.ccp_sha_req_ctx, %struct.ccp_sha_req_ctx* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = sub i32 %97, %94
  store i32 %98, i32* %96, align 8
  %99 = load i32, i32* %12, align 4
  %100 = load %struct.ccp_sha_req_ctx*, %struct.ccp_sha_req_ctx** %10, align 8
  %101 = getelementptr inbounds %struct.ccp_sha_req_ctx, %struct.ccp_sha_req_ctx* %100, i32 0, i32 3
  store i32 %99, i32* %101, align 4
  br label %102

102:                                              ; preds = %93, %88, %75
  %103 = load %struct.ccp_sha_req_ctx*, %struct.ccp_sha_req_ctx** %10, align 8
  %104 = getelementptr inbounds %struct.ccp_sha_req_ctx, %struct.ccp_sha_req_ctx* %103, i32 0, i32 10
  %105 = load %struct.ccp_sha_req_ctx*, %struct.ccp_sha_req_ctx** %10, align 8
  %106 = getelementptr inbounds %struct.ccp_sha_req_ctx, %struct.ccp_sha_req_ctx* %105, i32 0, i32 13
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @sg_init_one(%struct.scatterlist* %104, i32 %107, i32 4)
  store %struct.scatterlist* null, %struct.scatterlist** %11, align 8
  %109 = load %struct.ccp_sha_req_ctx*, %struct.ccp_sha_req_ctx** %10, align 8
  %110 = getelementptr inbounds %struct.ccp_sha_req_ctx, %struct.ccp_sha_req_ctx* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %183

113:                                              ; preds = %102
  %114 = load i32, i32* %6, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %183

116:                                              ; preds = %113
  %117 = load %struct.ahash_request*, %struct.ahash_request** %5, align 8
  %118 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %116
  %125 = load i32, i32* @GFP_KERNEL, align 4
  br label %128

126:                                              ; preds = %116
  %127 = load i32, i32* @GFP_ATOMIC, align 4
  br label %128

128:                                              ; preds = %126, %124
  %129 = phi i32 [ %125, %124 ], [ %127, %126 ]
  store i32 %129, i32* %14, align 4
  %130 = load %struct.ahash_request*, %struct.ahash_request** %5, align 8
  %131 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %130, i32 0, i32 1
  %132 = load %struct.scatterlist*, %struct.scatterlist** %131, align 8
  %133 = call i32 @sg_nents(%struct.scatterlist* %132)
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %13, align 4
  %135 = load %struct.ccp_sha_req_ctx*, %struct.ccp_sha_req_ctx** %10, align 8
  %136 = getelementptr inbounds %struct.ccp_sha_req_ctx, %struct.ccp_sha_req_ctx* %135, i32 0, i32 7
  %137 = load i32, i32* %13, align 4
  %138 = load i32, i32* %14, align 4
  %139 = call i32 @sg_alloc_table(%struct.TYPE_15__* %136, i32 %137, i32 %138)
  store i32 %139, i32* %16, align 4
  %140 = load i32, i32* %16, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %128
  %143 = load i32, i32* %16, align 4
  store i32 %143, i32* %4, align 4
  br label %374

144:                                              ; preds = %128
  %145 = load %struct.ccp_sha_req_ctx*, %struct.ccp_sha_req_ctx** %10, align 8
  %146 = getelementptr inbounds %struct.ccp_sha_req_ctx, %struct.ccp_sha_req_ctx* %145, i32 0, i32 11
  %147 = load %struct.ccp_sha_req_ctx*, %struct.ccp_sha_req_ctx** %10, align 8
  %148 = getelementptr inbounds %struct.ccp_sha_req_ctx, %struct.ccp_sha_req_ctx* %147, i32 0, i32 12
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.ccp_sha_req_ctx*, %struct.ccp_sha_req_ctx** %10, align 8
  %151 = getelementptr inbounds %struct.ccp_sha_req_ctx, %struct.ccp_sha_req_ctx* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @sg_init_one(%struct.scatterlist* %146, i32 %149, i32 %152)
  %154 = load %struct.ccp_sha_req_ctx*, %struct.ccp_sha_req_ctx** %10, align 8
  %155 = getelementptr inbounds %struct.ccp_sha_req_ctx, %struct.ccp_sha_req_ctx* %154, i32 0, i32 7
  %156 = load %struct.ccp_sha_req_ctx*, %struct.ccp_sha_req_ctx** %10, align 8
  %157 = getelementptr inbounds %struct.ccp_sha_req_ctx, %struct.ccp_sha_req_ctx* %156, i32 0, i32 11
  %158 = call %struct.scatterlist* @ccp_crypto_sg_table_add(%struct.TYPE_15__* %155, %struct.scatterlist* %157)
  store %struct.scatterlist* %158, %struct.scatterlist** %11, align 8
  %159 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %160 = icmp ne %struct.scatterlist* %159, null
  br i1 %160, label %164, label %161

161:                                              ; preds = %144
  %162 = load i32, i32* @EINVAL, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %16, align 4
  br label %369

164:                                              ; preds = %144
  %165 = load %struct.ccp_sha_req_ctx*, %struct.ccp_sha_req_ctx** %10, align 8
  %166 = getelementptr inbounds %struct.ccp_sha_req_ctx, %struct.ccp_sha_req_ctx* %165, i32 0, i32 7
  %167 = load %struct.ahash_request*, %struct.ahash_request** %5, align 8
  %168 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %167, i32 0, i32 1
  %169 = load %struct.scatterlist*, %struct.scatterlist** %168, align 8
  %170 = call %struct.scatterlist* @ccp_crypto_sg_table_add(%struct.TYPE_15__* %166, %struct.scatterlist* %169)
  store %struct.scatterlist* %170, %struct.scatterlist** %11, align 8
  %171 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %172 = icmp ne %struct.scatterlist* %171, null
  br i1 %172, label %176, label %173

173:                                              ; preds = %164
  %174 = load i32, i32* @EINVAL, align 4
  %175 = sub nsw i32 0, %174
  store i32 %175, i32* %16, align 4
  br label %369

176:                                              ; preds = %164
  %177 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %178 = call i32 @sg_mark_end(%struct.scatterlist* %177)
  %179 = load %struct.ccp_sha_req_ctx*, %struct.ccp_sha_req_ctx** %10, align 8
  %180 = getelementptr inbounds %struct.ccp_sha_req_ctx, %struct.ccp_sha_req_ctx* %179, i32 0, i32 7
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 0
  %182 = load %struct.scatterlist*, %struct.scatterlist** %181, align 8
  store %struct.scatterlist* %182, %struct.scatterlist** %11, align 8
  br label %209

183:                                              ; preds = %113, %102
  %184 = load %struct.ccp_sha_req_ctx*, %struct.ccp_sha_req_ctx** %10, align 8
  %185 = getelementptr inbounds %struct.ccp_sha_req_ctx, %struct.ccp_sha_req_ctx* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %200

188:                                              ; preds = %183
  %189 = load %struct.ccp_sha_req_ctx*, %struct.ccp_sha_req_ctx** %10, align 8
  %190 = getelementptr inbounds %struct.ccp_sha_req_ctx, %struct.ccp_sha_req_ctx* %189, i32 0, i32 11
  %191 = load %struct.ccp_sha_req_ctx*, %struct.ccp_sha_req_ctx** %10, align 8
  %192 = getelementptr inbounds %struct.ccp_sha_req_ctx, %struct.ccp_sha_req_ctx* %191, i32 0, i32 12
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.ccp_sha_req_ctx*, %struct.ccp_sha_req_ctx** %10, align 8
  %195 = getelementptr inbounds %struct.ccp_sha_req_ctx, %struct.ccp_sha_req_ctx* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @sg_init_one(%struct.scatterlist* %190, i32 %193, i32 %196)
  %198 = load %struct.ccp_sha_req_ctx*, %struct.ccp_sha_req_ctx** %10, align 8
  %199 = getelementptr inbounds %struct.ccp_sha_req_ctx, %struct.ccp_sha_req_ctx* %198, i32 0, i32 11
  store %struct.scatterlist* %199, %struct.scatterlist** %11, align 8
  br label %208

200:                                              ; preds = %183
  %201 = load i32, i32* %6, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %200
  %204 = load %struct.ahash_request*, %struct.ahash_request** %5, align 8
  %205 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %204, i32 0, i32 1
  %206 = load %struct.scatterlist*, %struct.scatterlist** %205, align 8
  store %struct.scatterlist* %206, %struct.scatterlist** %11, align 8
  br label %207

207:                                              ; preds = %203, %200
  br label %208

208:                                              ; preds = %207, %188
  br label %209

209:                                              ; preds = %208, %176
  %210 = load %struct.ccp_sha_req_ctx*, %struct.ccp_sha_req_ctx** %10, align 8
  %211 = getelementptr inbounds %struct.ccp_sha_req_ctx, %struct.ccp_sha_req_ctx* %210, i32 0, i32 4
  %212 = load i32, i32* %211, align 8
  %213 = shl i32 %212, 3
  %214 = load %struct.ccp_sha_req_ctx*, %struct.ccp_sha_req_ctx** %10, align 8
  %215 = getelementptr inbounds %struct.ccp_sha_req_ctx, %struct.ccp_sha_req_ctx* %214, i32 0, i32 5
  %216 = load i32, i32* %215, align 4
  %217 = add i32 %216, %213
  store i32 %217, i32* %215, align 4
  %218 = load %struct.ccp_sha_req_ctx*, %struct.ccp_sha_req_ctx** %10, align 8
  %219 = getelementptr inbounds %struct.ccp_sha_req_ctx, %struct.ccp_sha_req_ctx* %218, i32 0, i32 8
  %220 = call i32 @memset(%struct.TYPE_16__* %219, i32 0, i32 72)
  %221 = load %struct.ccp_sha_req_ctx*, %struct.ccp_sha_req_ctx** %10, align 8
  %222 = getelementptr inbounds %struct.ccp_sha_req_ctx, %struct.ccp_sha_req_ctx* %221, i32 0, i32 8
  %223 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %222, i32 0, i32 2
  %224 = call i32 @INIT_LIST_HEAD(i32* %223)
  %225 = load i32, i32* @CCP_ENGINE_SHA, align 4
  %226 = load %struct.ccp_sha_req_ctx*, %struct.ccp_sha_req_ctx** %10, align 8
  %227 = getelementptr inbounds %struct.ccp_sha_req_ctx, %struct.ccp_sha_req_ctx* %226, i32 0, i32 8
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 1
  store i32 %225, i32* %228, align 8
  %229 = load %struct.ccp_sha_req_ctx*, %struct.ccp_sha_req_ctx** %10, align 8
  %230 = getelementptr inbounds %struct.ccp_sha_req_ctx, %struct.ccp_sha_req_ctx* %229, i32 0, i32 6
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.ccp_sha_req_ctx*, %struct.ccp_sha_req_ctx** %10, align 8
  %233 = getelementptr inbounds %struct.ccp_sha_req_ctx, %struct.ccp_sha_req_ctx* %232, i32 0, i32 8
  %234 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %235, i32 0, i32 0
  store i32 %231, i32* %236, align 8
  %237 = load %struct.ccp_sha_req_ctx*, %struct.ccp_sha_req_ctx** %10, align 8
  %238 = getelementptr inbounds %struct.ccp_sha_req_ctx, %struct.ccp_sha_req_ctx* %237, i32 0, i32 10
  %239 = load %struct.ccp_sha_req_ctx*, %struct.ccp_sha_req_ctx** %10, align 8
  %240 = getelementptr inbounds %struct.ccp_sha_req_ctx, %struct.ccp_sha_req_ctx* %239, i32 0, i32 8
  %241 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %242, i32 0, i32 9
  store %struct.scatterlist* %238, %struct.scatterlist** %243, align 8
  %244 = load %struct.ccp_sha_req_ctx*, %struct.ccp_sha_req_ctx** %10, align 8
  %245 = getelementptr inbounds %struct.ccp_sha_req_ctx, %struct.ccp_sha_req_ctx* %244, i32 0, i32 6
  %246 = load i32, i32* %245, align 8
  switch i32 %246, label %282 [
    i32 132, label %247
    i32 131, label %254
    i32 130, label %261
    i32 129, label %268
    i32 128, label %275
  ]

247:                                              ; preds = %209
  %248 = load i32, i32* @SHA1_DIGEST_SIZE, align 4
  %249 = load %struct.ccp_sha_req_ctx*, %struct.ccp_sha_req_ctx** %10, align 8
  %250 = getelementptr inbounds %struct.ccp_sha_req_ctx, %struct.ccp_sha_req_ctx* %249, i32 0, i32 8
  %251 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %252, i32 0, i32 8
  store i32 %248, i32* %253, align 8
  br label %283

254:                                              ; preds = %209
  %255 = load i32, i32* @SHA224_DIGEST_SIZE, align 4
  %256 = load %struct.ccp_sha_req_ctx*, %struct.ccp_sha_req_ctx** %10, align 8
  %257 = getelementptr inbounds %struct.ccp_sha_req_ctx, %struct.ccp_sha_req_ctx* %256, i32 0, i32 8
  %258 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %259, i32 0, i32 8
  store i32 %255, i32* %260, align 8
  br label %283

261:                                              ; preds = %209
  %262 = load i32, i32* @SHA256_DIGEST_SIZE, align 4
  %263 = load %struct.ccp_sha_req_ctx*, %struct.ccp_sha_req_ctx** %10, align 8
  %264 = getelementptr inbounds %struct.ccp_sha_req_ctx, %struct.ccp_sha_req_ctx* %263, i32 0, i32 8
  %265 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %266, i32 0, i32 8
  store i32 %262, i32* %267, align 8
  br label %283

268:                                              ; preds = %209
  %269 = load i32, i32* @SHA384_DIGEST_SIZE, align 4
  %270 = load %struct.ccp_sha_req_ctx*, %struct.ccp_sha_req_ctx** %10, align 8
  %271 = getelementptr inbounds %struct.ccp_sha_req_ctx, %struct.ccp_sha_req_ctx* %270, i32 0, i32 8
  %272 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %273, i32 0, i32 8
  store i32 %269, i32* %274, align 8
  br label %283

275:                                              ; preds = %209
  %276 = load i32, i32* @SHA512_DIGEST_SIZE, align 4
  %277 = load %struct.ccp_sha_req_ctx*, %struct.ccp_sha_req_ctx** %10, align 8
  %278 = getelementptr inbounds %struct.ccp_sha_req_ctx, %struct.ccp_sha_req_ctx* %277, i32 0, i32 8
  %279 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %280, i32 0, i32 8
  store i32 %276, i32* %281, align 8
  br label %283

282:                                              ; preds = %209
  br label %283

283:                                              ; preds = %282, %275, %268, %261, %254, %247
  %284 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %285 = load %struct.ccp_sha_req_ctx*, %struct.ccp_sha_req_ctx** %10, align 8
  %286 = getelementptr inbounds %struct.ccp_sha_req_ctx, %struct.ccp_sha_req_ctx* %285, i32 0, i32 8
  %287 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %288, i32 0, i32 7
  store %struct.scatterlist* %284, %struct.scatterlist** %289, align 8
  %290 = load %struct.ccp_sha_req_ctx*, %struct.ccp_sha_req_ctx** %10, align 8
  %291 = getelementptr inbounds %struct.ccp_sha_req_ctx, %struct.ccp_sha_req_ctx* %290, i32 0, i32 4
  %292 = load i32, i32* %291, align 8
  %293 = load %struct.ccp_sha_req_ctx*, %struct.ccp_sha_req_ctx** %10, align 8
  %294 = getelementptr inbounds %struct.ccp_sha_req_ctx, %struct.ccp_sha_req_ctx* %293, i32 0, i32 8
  %295 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %296, i32 0, i32 1
  store i32 %292, i32* %297, align 4
  %298 = load %struct.ccp_ctx*, %struct.ccp_ctx** %9, align 8
  %299 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %298, i32 0, i32 0
  %300 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %300, i32 0, i32 1
  %302 = load i64, i64* %301, align 8
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %309

304:                                              ; preds = %283
  %305 = load %struct.ccp_ctx*, %struct.ccp_ctx** %9, align 8
  %306 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %306, i32 0, i32 0
  %308 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %307, i32 0, i32 2
  br label %310

309:                                              ; preds = %283
  br label %310

310:                                              ; preds = %309, %304
  %311 = phi i32* [ %308, %304 ], [ null, %309 ]
  %312 = load %struct.ccp_sha_req_ctx*, %struct.ccp_sha_req_ctx** %10, align 8
  %313 = getelementptr inbounds %struct.ccp_sha_req_ctx, %struct.ccp_sha_req_ctx* %312, i32 0, i32 8
  %314 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %315, i32 0, i32 6
  store i32* %311, i32** %316, align 8
  %317 = load %struct.ccp_ctx*, %struct.ccp_ctx** %9, align 8
  %318 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %317, i32 0, i32 0
  %319 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %319, i32 0, i32 1
  %321 = load i64, i64* %320, align 8
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %329

323:                                              ; preds = %310
  %324 = load %struct.ccp_ctx*, %struct.ccp_ctx** %9, align 8
  %325 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %324, i32 0, i32 0
  %326 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %325, i32 0, i32 0
  %327 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 8
  br label %330

329:                                              ; preds = %310
  br label %330

330:                                              ; preds = %329, %323
  %331 = phi i32 [ %328, %323 ], [ 0, %329 ]
  %332 = load %struct.ccp_sha_req_ctx*, %struct.ccp_sha_req_ctx** %10, align 8
  %333 = getelementptr inbounds %struct.ccp_sha_req_ctx, %struct.ccp_sha_req_ctx* %332, i32 0, i32 8
  %334 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %333, i32 0, i32 0
  %335 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %335, i32 0, i32 5
  store i32 %331, i32* %336, align 8
  %337 = load %struct.ccp_sha_req_ctx*, %struct.ccp_sha_req_ctx** %10, align 8
  %338 = getelementptr inbounds %struct.ccp_sha_req_ctx, %struct.ccp_sha_req_ctx* %337, i32 0, i32 9
  %339 = load i64, i64* %338, align 8
  %340 = load %struct.ccp_sha_req_ctx*, %struct.ccp_sha_req_ctx** %10, align 8
  %341 = getelementptr inbounds %struct.ccp_sha_req_ctx, %struct.ccp_sha_req_ctx* %340, i32 0, i32 8
  %342 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %341, i32 0, i32 0
  %343 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %342, i32 0, i32 0
  %344 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %343, i32 0, i32 4
  store i64 %339, i64* %344, align 8
  %345 = load %struct.ccp_sha_req_ctx*, %struct.ccp_sha_req_ctx** %10, align 8
  %346 = getelementptr inbounds %struct.ccp_sha_req_ctx, %struct.ccp_sha_req_ctx* %345, i32 0, i32 2
  %347 = load i32, i32* %346, align 8
  %348 = load %struct.ccp_sha_req_ctx*, %struct.ccp_sha_req_ctx** %10, align 8
  %349 = getelementptr inbounds %struct.ccp_sha_req_ctx, %struct.ccp_sha_req_ctx* %348, i32 0, i32 8
  %350 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %349, i32 0, i32 0
  %351 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %350, i32 0, i32 0
  %352 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %351, i32 0, i32 2
  store i32 %347, i32* %352, align 8
  %353 = load %struct.ccp_sha_req_ctx*, %struct.ccp_sha_req_ctx** %10, align 8
  %354 = getelementptr inbounds %struct.ccp_sha_req_ctx, %struct.ccp_sha_req_ctx* %353, i32 0, i32 5
  %355 = load i32, i32* %354, align 4
  %356 = load %struct.ccp_sha_req_ctx*, %struct.ccp_sha_req_ctx** %10, align 8
  %357 = getelementptr inbounds %struct.ccp_sha_req_ctx, %struct.ccp_sha_req_ctx* %356, i32 0, i32 8
  %358 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %357, i32 0, i32 0
  %359 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %358, i32 0, i32 0
  %360 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %359, i32 0, i32 3
  store i32 %355, i32* %360, align 4
  %361 = load %struct.ccp_sha_req_ctx*, %struct.ccp_sha_req_ctx** %10, align 8
  %362 = getelementptr inbounds %struct.ccp_sha_req_ctx, %struct.ccp_sha_req_ctx* %361, i32 0, i32 9
  store i64 0, i64* %362, align 8
  %363 = load %struct.ahash_request*, %struct.ahash_request** %5, align 8
  %364 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %363, i32 0, i32 0
  %365 = load %struct.ccp_sha_req_ctx*, %struct.ccp_sha_req_ctx** %10, align 8
  %366 = getelementptr inbounds %struct.ccp_sha_req_ctx, %struct.ccp_sha_req_ctx* %365, i32 0, i32 8
  %367 = call i32 @ccp_crypto_enqueue_request(%struct.TYPE_17__* %364, %struct.TYPE_16__* %366)
  store i32 %367, i32* %16, align 4
  %368 = load i32, i32* %16, align 4
  store i32 %368, i32* %4, align 4
  br label %374

369:                                              ; preds = %173, %161
  %370 = load %struct.ccp_sha_req_ctx*, %struct.ccp_sha_req_ctx** %10, align 8
  %371 = getelementptr inbounds %struct.ccp_sha_req_ctx, %struct.ccp_sha_req_ctx* %370, i32 0, i32 7
  %372 = call i32 @sg_free_table(%struct.TYPE_15__* %371)
  %373 = load i32, i32* %16, align 4
  store i32 %373, i32* %4, align 4
  br label %374

374:                                              ; preds = %369, %330, %142, %37
  %375 = load i32, i32* %4, align 4
  ret i32 %375
}

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local %struct.ccp_ctx* @crypto_ahash_ctx(%struct.crypto_ahash*) #1

declare dso_local %struct.ccp_sha_req_ctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @crypto_tfm_alg_blocksize(i32) #1

declare dso_local i32 @crypto_ahash_tfm(%struct.crypto_ahash*) #1

declare dso_local i32 @scatterwalk_map_and_copy(i32, %struct.scatterlist*, i32, i32, i32) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i32, i32) #1

declare dso_local i32 @sg_nents(%struct.scatterlist*) #1

declare dso_local i32 @sg_alloc_table(%struct.TYPE_15__*, i32, i32) #1

declare dso_local %struct.scatterlist* @ccp_crypto_sg_table_add(%struct.TYPE_15__*, %struct.scatterlist*) #1

declare dso_local i32 @sg_mark_end(%struct.scatterlist*) #1

declare dso_local i32 @memset(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ccp_crypto_enqueue_request(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

declare dso_local i32 @sg_free_table(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

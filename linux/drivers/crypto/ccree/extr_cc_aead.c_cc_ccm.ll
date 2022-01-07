; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_aead.c_cc_ccm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_aead.c_cc_ccm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32 }
%struct.cc_hw_desc = type { i32 }
%struct.crypto_aead = type { i32 }
%struct.cc_aead_ctx = type { i32, i32, i32, i32 }
%struct.aead_req_ctx = type { i64, i32, i32, i32, i64, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@DRV_CRYPTO_DIRECTION_DECRYPT = common dso_local global i64 0, align 8
@AES_to_HASH_and_DOUT = common dso_local global i32 0, align 4
@AES_and_HASH = common dso_local global i32 0, align 4
@DRV_CIPHER_CTR = common dso_local global i32 0, align 4
@DMA_DLLI = common dso_local global i32 0, align 4
@CC_AES_KEY_SIZE_MAX = common dso_local global i32 0, align 4
@NS_BIT = common dso_local global i32 0, align 4
@SETUP_LOAD_KEY0 = common dso_local global i32 0, align 4
@DESC_DIRECTION_ENCRYPT_ENCRYPT = common dso_local global i32 0, align 4
@S_DIN_to_AES = common dso_local global i32 0, align 4
@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@SETUP_LOAD_STATE1 = common dso_local global i32 0, align 4
@DRV_CIPHER_CBC_MAC = common dso_local global i32 0, align 4
@S_DIN_to_HASH = common dso_local global i32 0, align 4
@SETUP_LOAD_STATE0 = common dso_local global i32 0, align 4
@DIN_HASH = common dso_local global i32 0, align 4
@SETUP_WRITE_STATE0 = common dso_local global i32 0, align 4
@HASH_DIGEST_RESULT_LITTLE_ENDIAN = common dso_local global i32 0, align 4
@S_HASH_to_DOUT = common dso_local global i32 0, align 4
@DRV_CRYPTO_DIRECTION_ENCRYPT = common dso_local global i32 0, align 4
@DIN_AES_DOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*, %struct.cc_hw_desc*, i32*)* @cc_ccm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cc_ccm(%struct.aead_request* %0, %struct.cc_hw_desc* %1, i32* %2) #0 {
  %4 = alloca %struct.aead_request*, align 8
  %5 = alloca %struct.cc_hw_desc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.crypto_aead*, align 8
  %8 = alloca %struct.cc_aead_ctx*, align 8
  %9 = alloca %struct.aead_req_ctx*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.aead_request* %0, %struct.aead_request** %4, align 8
  store %struct.cc_hw_desc* %1, %struct.cc_hw_desc** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %14 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %13)
  store %struct.crypto_aead* %14, %struct.crypto_aead** %7, align 8
  %15 = load %struct.crypto_aead*, %struct.crypto_aead** %7, align 8
  %16 = call %struct.cc_aead_ctx* @crypto_aead_ctx(%struct.crypto_aead* %15)
  store %struct.cc_aead_ctx* %16, %struct.cc_aead_ctx** %8, align 8
  %17 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %18 = call %struct.aead_req_ctx* @aead_request_ctx(%struct.aead_request* %17)
  store %struct.aead_req_ctx* %18, %struct.aead_req_ctx** %9, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %10, align 4
  %21 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %9, align 8
  %22 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %21, i32 0, i32 6
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @DRV_CRYPTO_DIRECTION_DECRYPT, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %3
  %28 = load i32, i32* @AES_to_HASH_and_DOUT, align 4
  store i32 %28, i32* %11, align 4
  %29 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %9, align 8
  %30 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %12, align 4
  br label %37

32:                                               ; preds = %3
  %33 = load i32, i32* @AES_and_HASH, align 4
  store i32 %33, i32* %11, align 4
  %34 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %9, align 8
  %35 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %34, i32 0, i32 7
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %12, align 4
  br label %37

37:                                               ; preds = %32, %27
  %38 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %39 = load i32, i32* %10, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %38, i64 %40
  %42 = call i32 @hw_desc_init(%struct.cc_hw_desc* %41)
  %43 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %44 = load i32, i32* %10, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %43, i64 %45
  %47 = load i32, i32* @DRV_CIPHER_CTR, align 4
  %48 = call i32 @set_cipher_mode(%struct.cc_hw_desc* %46, i32 %47)
  %49 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %50 = load i32, i32* %10, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %49, i64 %51
  %53 = load i32, i32* @DMA_DLLI, align 4
  %54 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %55 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %58 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 24
  br i1 %60, label %61, label %63

61:                                               ; preds = %37
  %62 = load i32, i32* @CC_AES_KEY_SIZE_MAX, align 4
  br label %67

63:                                               ; preds = %37
  %64 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %65 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  br label %67

67:                                               ; preds = %63, %61
  %68 = phi i32 [ %62, %61 ], [ %66, %63 ]
  %69 = load i32, i32* @NS_BIT, align 4
  %70 = call i32 @set_din_type(%struct.cc_hw_desc* %52, i32 %53, i32 %56, i32 %68, i32 %69)
  %71 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %72 = load i32, i32* %10, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %71, i64 %73
  %75 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %76 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @set_key_size_aes(%struct.cc_hw_desc* %74, i32 %77)
  %79 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %80 = load i32, i32* %10, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %79, i64 %81
  %83 = load i32, i32* @SETUP_LOAD_KEY0, align 4
  %84 = call i32 @set_setup_mode(%struct.cc_hw_desc* %82, i32 %83)
  %85 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %86 = load i32, i32* %10, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %85, i64 %87
  %89 = load i32, i32* @DESC_DIRECTION_ENCRYPT_ENCRYPT, align 4
  %90 = call i32 @set_cipher_config0(%struct.cc_hw_desc* %88, i32 %89)
  %91 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %92 = load i32, i32* %10, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %91, i64 %93
  %95 = load i32, i32* @S_DIN_to_AES, align 4
  %96 = call i32 @set_flow_mode(%struct.cc_hw_desc* %94, i32 %95)
  %97 = load i32, i32* %10, align 4
  %98 = add i32 %97, 1
  store i32 %98, i32* %10, align 4
  %99 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %100 = load i32, i32* %10, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %99, i64 %101
  %103 = call i32 @hw_desc_init(%struct.cc_hw_desc* %102)
  %104 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %105 = load i32, i32* %10, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %104, i64 %106
  %108 = load i32, i32* @DRV_CIPHER_CTR, align 4
  %109 = call i32 @set_cipher_mode(%struct.cc_hw_desc* %107, i32 %108)
  %110 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %111 = load i32, i32* %10, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %110, i64 %112
  %114 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %115 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @set_key_size_aes(%struct.cc_hw_desc* %113, i32 %116)
  %118 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %119 = load i32, i32* %10, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %118, i64 %120
  %122 = load i32, i32* @DMA_DLLI, align 4
  %123 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %9, align 8
  %124 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %123, i32 0, i32 6
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %128 = load i32, i32* @NS_BIT, align 4
  %129 = call i32 @set_din_type(%struct.cc_hw_desc* %121, i32 %122, i32 %126, i32 %127, i32 %128)
  %130 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %131 = load i32, i32* %10, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %130, i64 %132
  %134 = load i32, i32* @DESC_DIRECTION_ENCRYPT_ENCRYPT, align 4
  %135 = call i32 @set_cipher_config0(%struct.cc_hw_desc* %133, i32 %134)
  %136 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %137 = load i32, i32* %10, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %136, i64 %138
  %140 = load i32, i32* @SETUP_LOAD_STATE1, align 4
  %141 = call i32 @set_setup_mode(%struct.cc_hw_desc* %139, i32 %140)
  %142 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %143 = load i32, i32* %10, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %142, i64 %144
  %146 = load i32, i32* @S_DIN_to_AES, align 4
  %147 = call i32 @set_flow_mode(%struct.cc_hw_desc* %145, i32 %146)
  %148 = load i32, i32* %10, align 4
  %149 = add i32 %148, 1
  store i32 %149, i32* %10, align 4
  %150 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %151 = load i32, i32* %10, align 4
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %150, i64 %152
  %154 = call i32 @hw_desc_init(%struct.cc_hw_desc* %153)
  %155 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %156 = load i32, i32* %10, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %155, i64 %157
  %159 = load i32, i32* @DRV_CIPHER_CBC_MAC, align 4
  %160 = call i32 @set_cipher_mode(%struct.cc_hw_desc* %158, i32 %159)
  %161 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %162 = load i32, i32* %10, align 4
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %161, i64 %163
  %165 = load i32, i32* @DMA_DLLI, align 4
  %166 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %167 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %170 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = icmp eq i32 %171, 24
  br i1 %172, label %173, label %175

173:                                              ; preds = %67
  %174 = load i32, i32* @CC_AES_KEY_SIZE_MAX, align 4
  br label %179

175:                                              ; preds = %67
  %176 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %177 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  br label %179

179:                                              ; preds = %175, %173
  %180 = phi i32 [ %174, %173 ], [ %178, %175 ]
  %181 = load i32, i32* @NS_BIT, align 4
  %182 = call i32 @set_din_type(%struct.cc_hw_desc* %164, i32 %165, i32 %168, i32 %180, i32 %181)
  %183 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %184 = load i32, i32* %10, align 4
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %183, i64 %185
  %187 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %188 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @set_key_size_aes(%struct.cc_hw_desc* %186, i32 %189)
  %191 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %192 = load i32, i32* %10, align 4
  %193 = zext i32 %192 to i64
  %194 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %191, i64 %193
  %195 = load i32, i32* @SETUP_LOAD_KEY0, align 4
  %196 = call i32 @set_setup_mode(%struct.cc_hw_desc* %194, i32 %195)
  %197 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %198 = load i32, i32* %10, align 4
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %197, i64 %199
  %201 = load i32, i32* @DESC_DIRECTION_ENCRYPT_ENCRYPT, align 4
  %202 = call i32 @set_cipher_config0(%struct.cc_hw_desc* %200, i32 %201)
  %203 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %204 = load i32, i32* %10, align 4
  %205 = zext i32 %204 to i64
  %206 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %203, i64 %205
  %207 = load i32, i32* @S_DIN_to_HASH, align 4
  %208 = call i32 @set_flow_mode(%struct.cc_hw_desc* %206, i32 %207)
  %209 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %210 = load i32, i32* %10, align 4
  %211 = zext i32 %210 to i64
  %212 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %209, i64 %211
  %213 = call i32 @set_aes_not_hash_mode(%struct.cc_hw_desc* %212)
  %214 = load i32, i32* %10, align 4
  %215 = add i32 %214, 1
  store i32 %215, i32* %10, align 4
  %216 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %217 = load i32, i32* %10, align 4
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %216, i64 %218
  %220 = call i32 @hw_desc_init(%struct.cc_hw_desc* %219)
  %221 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %222 = load i32, i32* %10, align 4
  %223 = zext i32 %222 to i64
  %224 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %221, i64 %223
  %225 = load i32, i32* @DRV_CIPHER_CBC_MAC, align 4
  %226 = call i32 @set_cipher_mode(%struct.cc_hw_desc* %224, i32 %225)
  %227 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %228 = load i32, i32* %10, align 4
  %229 = zext i32 %228 to i64
  %230 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %227, i64 %229
  %231 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %232 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @set_key_size_aes(%struct.cc_hw_desc* %230, i32 %233)
  %235 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %236 = load i32, i32* %10, align 4
  %237 = zext i32 %236 to i64
  %238 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %235, i64 %237
  %239 = load i32, i32* @DMA_DLLI, align 4
  %240 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %9, align 8
  %241 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %244 = load i32, i32* @NS_BIT, align 4
  %245 = call i32 @set_din_type(%struct.cc_hw_desc* %238, i32 %239, i32 %242, i32 %243, i32 %244)
  %246 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %247 = load i32, i32* %10, align 4
  %248 = zext i32 %247 to i64
  %249 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %246, i64 %248
  %250 = load i32, i32* @DESC_DIRECTION_ENCRYPT_ENCRYPT, align 4
  %251 = call i32 @set_cipher_config0(%struct.cc_hw_desc* %249, i32 %250)
  %252 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %253 = load i32, i32* %10, align 4
  %254 = zext i32 %253 to i64
  %255 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %252, i64 %254
  %256 = load i32, i32* @SETUP_LOAD_STATE0, align 4
  %257 = call i32 @set_setup_mode(%struct.cc_hw_desc* %255, i32 %256)
  %258 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %259 = load i32, i32* %10, align 4
  %260 = zext i32 %259 to i64
  %261 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %258, i64 %260
  %262 = load i32, i32* @S_DIN_to_HASH, align 4
  %263 = call i32 @set_flow_mode(%struct.cc_hw_desc* %261, i32 %262)
  %264 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %265 = load i32, i32* %10, align 4
  %266 = zext i32 %265 to i64
  %267 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %264, i64 %266
  %268 = call i32 @set_aes_not_hash_mode(%struct.cc_hw_desc* %267)
  %269 = load i32, i32* %10, align 4
  %270 = add i32 %269, 1
  store i32 %270, i32* %10, align 4
  %271 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %9, align 8
  %272 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = icmp sgt i64 %273, 0
  br i1 %274, label %275, label %280

275:                                              ; preds = %179
  %276 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %277 = load i32, i32* @DIN_HASH, align 4
  %278 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %279 = call i32 @cc_set_assoc_desc(%struct.aead_request* %276, i32 %277, %struct.cc_hw_desc* %278, i32* %10)
  br label %309

280:                                              ; preds = %179
  %281 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %282 = load i32, i32* %10, align 4
  %283 = zext i32 %282 to i64
  %284 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %281, i64 %283
  %285 = call i32 @hw_desc_init(%struct.cc_hw_desc* %284)
  %286 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %287 = load i32, i32* %10, align 4
  %288 = zext i32 %287 to i64
  %289 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %286, i64 %288
  %290 = load i32, i32* @DMA_DLLI, align 4
  %291 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %9, align 8
  %292 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %291, i32 0, i32 5
  %293 = call i32 @sg_dma_address(i32* %292)
  %294 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %295 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %9, align 8
  %296 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 8
  %298 = add nsw i32 %294, %297
  %299 = load i32, i32* @NS_BIT, align 4
  %300 = call i32 @set_din_type(%struct.cc_hw_desc* %289, i32 %290, i32 %293, i32 %298, i32 %299)
  %301 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %302 = load i32, i32* %10, align 4
  %303 = zext i32 %302 to i64
  %304 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %301, i64 %303
  %305 = load i32, i32* @DIN_HASH, align 4
  %306 = call i32 @set_flow_mode(%struct.cc_hw_desc* %304, i32 %305)
  %307 = load i32, i32* %10, align 4
  %308 = add i32 %307, 1
  store i32 %308, i32* %10, align 4
  br label %309

309:                                              ; preds = %280, %275
  %310 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %9, align 8
  %311 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %310, i32 0, i32 4
  %312 = load i64, i64* %311, align 8
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %319

314:                                              ; preds = %309
  %315 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %316 = load i32, i32* %11, align 4
  %317 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %318 = call i32 @cc_proc_cipher_desc(%struct.aead_request* %315, i32 %316, %struct.cc_hw_desc* %317, i32* %10)
  br label %319

319:                                              ; preds = %314, %309
  %320 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %321 = load i32, i32* %10, align 4
  %322 = zext i32 %321 to i64
  %323 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %320, i64 %322
  %324 = call i32 @hw_desc_init(%struct.cc_hw_desc* %323)
  %325 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %326 = load i32, i32* %10, align 4
  %327 = zext i32 %326 to i64
  %328 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %325, i64 %327
  %329 = load i32, i32* @DRV_CIPHER_CBC_MAC, align 4
  %330 = call i32 @set_cipher_mode(%struct.cc_hw_desc* %328, i32 %329)
  %331 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %332 = load i32, i32* %10, align 4
  %333 = zext i32 %332 to i64
  %334 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %331, i64 %333
  %335 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %9, align 8
  %336 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %335, i32 0, i32 2
  %337 = load i32, i32* %336, align 4
  %338 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %339 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %338, i32 0, i32 1
  %340 = load i32, i32* %339, align 4
  %341 = load i32, i32* @NS_BIT, align 4
  %342 = call i32 @set_dout_dlli(%struct.cc_hw_desc* %334, i32 %337, i32 %340, i32 %341, i32 0)
  %343 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %344 = load i32, i32* %10, align 4
  %345 = zext i32 %344 to i64
  %346 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %343, i64 %345
  %347 = load i32, i32* @SETUP_WRITE_STATE0, align 4
  %348 = call i32 @set_setup_mode(%struct.cc_hw_desc* %346, i32 %347)
  %349 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %350 = load i32, i32* %10, align 4
  %351 = zext i32 %350 to i64
  %352 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %349, i64 %351
  %353 = load i32, i32* @HASH_DIGEST_RESULT_LITTLE_ENDIAN, align 4
  %354 = call i32 @set_cipher_config0(%struct.cc_hw_desc* %352, i32 %353)
  %355 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %356 = load i32, i32* %10, align 4
  %357 = zext i32 %356 to i64
  %358 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %355, i64 %357
  %359 = load i32, i32* @S_HASH_to_DOUT, align 4
  %360 = call i32 @set_flow_mode(%struct.cc_hw_desc* %358, i32 %359)
  %361 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %362 = load i32, i32* %10, align 4
  %363 = zext i32 %362 to i64
  %364 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %361, i64 %363
  %365 = call i32 @set_aes_not_hash_mode(%struct.cc_hw_desc* %364)
  %366 = load i32, i32* %10, align 4
  %367 = add i32 %366, 1
  store i32 %367, i32* %10, align 4
  %368 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %369 = load i32, i32* %10, align 4
  %370 = zext i32 %369 to i64
  %371 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %368, i64 %370
  %372 = call i32 @hw_desc_init(%struct.cc_hw_desc* %371)
  %373 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %374 = load i32, i32* %10, align 4
  %375 = zext i32 %374 to i64
  %376 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %373, i64 %375
  %377 = load i32, i32* @DRV_CIPHER_CTR, align 4
  %378 = call i32 @set_cipher_mode(%struct.cc_hw_desc* %376, i32 %377)
  %379 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %380 = load i32, i32* %10, align 4
  %381 = zext i32 %380 to i64
  %382 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %379, i64 %381
  %383 = load i32, i32* @DRV_CRYPTO_DIRECTION_ENCRYPT, align 4
  %384 = call i32 @set_cipher_config0(%struct.cc_hw_desc* %382, i32 %383)
  %385 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %386 = load i32, i32* %10, align 4
  %387 = zext i32 %386 to i64
  %388 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %385, i64 %387
  %389 = load i32, i32* @DMA_DLLI, align 4
  %390 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %9, align 8
  %391 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %390, i32 0, i32 3
  %392 = load i32, i32* %391, align 8
  %393 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %394 = load i32, i32* @NS_BIT, align 4
  %395 = call i32 @set_din_type(%struct.cc_hw_desc* %388, i32 %389, i32 %392, i32 %393, i32 %394)
  %396 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %397 = load i32, i32* %10, align 4
  %398 = zext i32 %397 to i64
  %399 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %396, i64 %398
  %400 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %401 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %400, i32 0, i32 0
  %402 = load i32, i32* %401, align 4
  %403 = call i32 @set_key_size_aes(%struct.cc_hw_desc* %399, i32 %402)
  %404 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %405 = load i32, i32* %10, align 4
  %406 = zext i32 %405 to i64
  %407 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %404, i64 %406
  %408 = load i32, i32* @SETUP_LOAD_STATE1, align 4
  %409 = call i32 @set_setup_mode(%struct.cc_hw_desc* %407, i32 %408)
  %410 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %411 = load i32, i32* %10, align 4
  %412 = zext i32 %411 to i64
  %413 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %410, i64 %412
  %414 = load i32, i32* @S_DIN_to_AES, align 4
  %415 = call i32 @set_flow_mode(%struct.cc_hw_desc* %413, i32 %414)
  %416 = load i32, i32* %10, align 4
  %417 = add i32 %416, 1
  store i32 %417, i32* %10, align 4
  %418 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %419 = load i32, i32* %10, align 4
  %420 = zext i32 %419 to i64
  %421 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %418, i64 %420
  %422 = call i32 @hw_desc_init(%struct.cc_hw_desc* %421)
  %423 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %424 = load i32, i32* %10, align 4
  %425 = zext i32 %424 to i64
  %426 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %423, i64 %425
  %427 = call i32 @set_din_no_dma(%struct.cc_hw_desc* %426, i32 0, i32 16777200)
  %428 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %429 = load i32, i32* %10, align 4
  %430 = zext i32 %429 to i64
  %431 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %428, i64 %430
  %432 = call i32 @set_dout_no_dma(%struct.cc_hw_desc* %431, i32 0, i32 0, i32 1)
  %433 = load i32, i32* %10, align 4
  %434 = add i32 %433, 1
  store i32 %434, i32* %10, align 4
  %435 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %436 = load i32, i32* %10, align 4
  %437 = zext i32 %436 to i64
  %438 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %435, i64 %437
  %439 = call i32 @hw_desc_init(%struct.cc_hw_desc* %438)
  %440 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %441 = load i32, i32* %10, align 4
  %442 = zext i32 %441 to i64
  %443 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %440, i64 %442
  %444 = load i32, i32* @DMA_DLLI, align 4
  %445 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %9, align 8
  %446 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %445, i32 0, i32 2
  %447 = load i32, i32* %446, align 4
  %448 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %449 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %448, i32 0, i32 1
  %450 = load i32, i32* %449, align 4
  %451 = load i32, i32* @NS_BIT, align 4
  %452 = call i32 @set_din_type(%struct.cc_hw_desc* %443, i32 %444, i32 %447, i32 %450, i32 %451)
  %453 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %454 = load i32, i32* %10, align 4
  %455 = zext i32 %454 to i64
  %456 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %453, i64 %455
  %457 = load i32, i32* %12, align 4
  %458 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %459 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %458, i32 0, i32 1
  %460 = load i32, i32* %459, align 4
  %461 = load i32, i32* @NS_BIT, align 4
  %462 = call i32 @set_dout_dlli(%struct.cc_hw_desc* %456, i32 %457, i32 %460, i32 %461, i32 1)
  %463 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %464 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %463, i32 0, i32 2
  %465 = load i32, i32* %464, align 4
  %466 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %467 = load i32, i32* %10, align 4
  %468 = zext i32 %467 to i64
  %469 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %466, i64 %468
  %470 = call i32 @set_queue_last_ind(i32 %465, %struct.cc_hw_desc* %469)
  %471 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %472 = load i32, i32* %10, align 4
  %473 = zext i32 %472 to i64
  %474 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %471, i64 %473
  %475 = load i32, i32* @DIN_AES_DOUT, align 4
  %476 = call i32 @set_flow_mode(%struct.cc_hw_desc* %474, i32 %475)
  %477 = load i32, i32* %10, align 4
  %478 = add i32 %477, 1
  store i32 %478, i32* %10, align 4
  %479 = load i32, i32* %10, align 4
  %480 = load i32*, i32** %6, align 8
  store i32 %479, i32* %480, align 4
  ret i32 0
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.cc_aead_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local %struct.aead_req_ctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local i32 @hw_desc_init(%struct.cc_hw_desc*) #1

declare dso_local i32 @set_cipher_mode(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_din_type(%struct.cc_hw_desc*, i32, i32, i32, i32) #1

declare dso_local i32 @set_key_size_aes(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_setup_mode(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_cipher_config0(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_flow_mode(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_aes_not_hash_mode(%struct.cc_hw_desc*) #1

declare dso_local i32 @cc_set_assoc_desc(%struct.aead_request*, i32, %struct.cc_hw_desc*, i32*) #1

declare dso_local i32 @sg_dma_address(i32*) #1

declare dso_local i32 @cc_proc_cipher_desc(%struct.aead_request*, i32, %struct.cc_hw_desc*, i32*) #1

declare dso_local i32 @set_dout_dlli(%struct.cc_hw_desc*, i32, i32, i32, i32) #1

declare dso_local i32 @set_din_no_dma(%struct.cc_hw_desc*, i32, i32) #1

declare dso_local i32 @set_dout_no_dma(%struct.cc_hw_desc*, i32, i32, i32) #1

declare dso_local i32 @set_queue_last_ind(i32, %struct.cc_hw_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_aead.c_cc_set_ghash_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_aead.c_cc_set_ghash_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32 }
%struct.cc_hw_desc = type { i32 }
%struct.crypto_aead = type { i32 }
%struct.cc_aead_ctx = type { i32, i32 }
%struct.aead_req_ctx = type { i32 }

@DRV_CIPHER_ECB = common dso_local global i32 0, align 4
@DRV_CRYPTO_DIRECTION_ENCRYPT = common dso_local global i32 0, align 4
@DMA_DLLI = common dso_local global i32 0, align 4
@NS_BIT = common dso_local global i32 0, align 4
@SETUP_LOAD_KEY0 = common dso_local global i32 0, align 4
@S_DIN_to_AES = common dso_local global i32 0, align 4
@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@DIN_AES_DOUT = common dso_local global i32 0, align 4
@S_DIN_to_HASH = common dso_local global i32 0, align 4
@DRV_HASH_HW_GHASH = common dso_local global i32 0, align 4
@HASH_PADDING_ENABLED = common dso_local global i32 0, align 4
@SETUP_LOAD_STATE0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aead_request*, %struct.cc_hw_desc*, i32*)* @cc_set_ghash_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cc_set_ghash_desc(%struct.aead_request* %0, %struct.cc_hw_desc* %1, i32* %2) #0 {
  %4 = alloca %struct.aead_request*, align 8
  %5 = alloca %struct.cc_hw_desc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.crypto_aead*, align 8
  %8 = alloca %struct.cc_aead_ctx*, align 8
  %9 = alloca %struct.aead_req_ctx*, align 8
  %10 = alloca i32, align 4
  store %struct.aead_request* %0, %struct.aead_request** %4, align 8
  store %struct.cc_hw_desc* %1, %struct.cc_hw_desc** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %12 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %11)
  store %struct.crypto_aead* %12, %struct.crypto_aead** %7, align 8
  %13 = load %struct.crypto_aead*, %struct.crypto_aead** %7, align 8
  %14 = call %struct.cc_aead_ctx* @crypto_aead_ctx(%struct.crypto_aead* %13)
  store %struct.cc_aead_ctx* %14, %struct.cc_aead_ctx** %8, align 8
  %15 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %16 = call %struct.aead_req_ctx* @aead_request_ctx(%struct.aead_request* %15)
  store %struct.aead_req_ctx* %16, %struct.aead_req_ctx** %9, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  %19 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %20 = load i32, i32* %10, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %19, i64 %21
  %23 = call i32 @hw_desc_init(%struct.cc_hw_desc* %22)
  %24 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %25 = load i32, i32* %10, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %24, i64 %26
  %28 = load i32, i32* @DRV_CIPHER_ECB, align 4
  %29 = call i32 @set_cipher_mode(%struct.cc_hw_desc* %27, i32 %28)
  %30 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %31 = load i32, i32* %10, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %30, i64 %32
  %34 = load i32, i32* @DRV_CRYPTO_DIRECTION_ENCRYPT, align 4
  %35 = call i32 @set_cipher_config0(%struct.cc_hw_desc* %33, i32 %34)
  %36 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %37 = load i32, i32* %10, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %36, i64 %38
  %40 = load i32, i32* @DMA_DLLI, align 4
  %41 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %42 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %45 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @NS_BIT, align 4
  %48 = call i32 @set_din_type(%struct.cc_hw_desc* %39, i32 %40, i32 %43, i32 %46, i32 %47)
  %49 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %50 = load i32, i32* %10, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %49, i64 %51
  %53 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %54 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @set_key_size_aes(%struct.cc_hw_desc* %52, i32 %55)
  %57 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %58 = load i32, i32* %10, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %57, i64 %59
  %61 = load i32, i32* @SETUP_LOAD_KEY0, align 4
  %62 = call i32 @set_setup_mode(%struct.cc_hw_desc* %60, i32 %61)
  %63 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %64 = load i32, i32* %10, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %63, i64 %65
  %67 = load i32, i32* @S_DIN_to_AES, align 4
  %68 = call i32 @set_flow_mode(%struct.cc_hw_desc* %66, i32 %67)
  %69 = load i32, i32* %10, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %10, align 4
  %71 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %72 = load i32, i32* %10, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %71, i64 %73
  %75 = call i32 @hw_desc_init(%struct.cc_hw_desc* %74)
  %76 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %77 = load i32, i32* %10, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %76, i64 %78
  %80 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %81 = call i32 @set_din_const(%struct.cc_hw_desc* %79, i32 0, i32 %80)
  %82 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %83 = load i32, i32* %10, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %82, i64 %84
  %86 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %9, align 8
  %87 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %90 = load i32, i32* @NS_BIT, align 4
  %91 = call i32 @set_dout_dlli(%struct.cc_hw_desc* %85, i32 %88, i32 %89, i32 %90, i32 0)
  %92 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %93 = load i32, i32* %10, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %92, i64 %94
  %96 = load i32, i32* @DIN_AES_DOUT, align 4
  %97 = call i32 @set_flow_mode(%struct.cc_hw_desc* %95, i32 %96)
  %98 = load i32, i32* %10, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %10, align 4
  %100 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %101 = load i32, i32* %10, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %100, i64 %102
  %104 = call i32 @hw_desc_init(%struct.cc_hw_desc* %103)
  %105 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %106 = load i32, i32* %10, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %105, i64 %107
  %109 = call i32 @set_din_no_dma(%struct.cc_hw_desc* %108, i32 0, i32 16777200)
  %110 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %111 = load i32, i32* %10, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %110, i64 %112
  %114 = call i32 @set_dout_no_dma(%struct.cc_hw_desc* %113, i32 0, i32 0, i32 1)
  %115 = load i32, i32* %10, align 4
  %116 = add i32 %115, 1
  store i32 %116, i32* %10, align 4
  %117 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %118 = load i32, i32* %10, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %117, i64 %119
  %121 = call i32 @hw_desc_init(%struct.cc_hw_desc* %120)
  %122 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %123 = load i32, i32* %10, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %122, i64 %124
  %126 = load i32, i32* @DMA_DLLI, align 4
  %127 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %9, align 8
  %128 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %131 = load i32, i32* @NS_BIT, align 4
  %132 = call i32 @set_din_type(%struct.cc_hw_desc* %125, i32 %126, i32 %129, i32 %130, i32 %131)
  %133 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %134 = load i32, i32* %10, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %133, i64 %135
  %137 = call i32 @set_dout_no_dma(%struct.cc_hw_desc* %136, i32 0, i32 0, i32 1)
  %138 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %139 = load i32, i32* %10, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %138, i64 %140
  %142 = load i32, i32* @S_DIN_to_HASH, align 4
  %143 = call i32 @set_flow_mode(%struct.cc_hw_desc* %141, i32 %142)
  %144 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %145 = load i32, i32* %10, align 4
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %144, i64 %146
  %148 = call i32 @set_aes_not_hash_mode(%struct.cc_hw_desc* %147)
  %149 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %150 = load i32, i32* %10, align 4
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %149, i64 %151
  %153 = load i32, i32* @DRV_HASH_HW_GHASH, align 4
  %154 = call i32 @set_cipher_mode(%struct.cc_hw_desc* %152, i32 %153)
  %155 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %156 = load i32, i32* %10, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %155, i64 %157
  %159 = load i32, i32* @HASH_PADDING_ENABLED, align 4
  %160 = call i32 @set_cipher_config1(%struct.cc_hw_desc* %158, i32 %159)
  %161 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %162 = load i32, i32* %10, align 4
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %161, i64 %163
  %165 = load i32, i32* @SETUP_LOAD_KEY0, align 4
  %166 = call i32 @set_setup_mode(%struct.cc_hw_desc* %164, i32 %165)
  %167 = load i32, i32* %10, align 4
  %168 = add i32 %167, 1
  store i32 %168, i32* %10, align 4
  %169 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %170 = load i32, i32* %10, align 4
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %169, i64 %171
  %173 = call i32 @hw_desc_init(%struct.cc_hw_desc* %172)
  %174 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %175 = load i32, i32* %10, align 4
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %174, i64 %176
  %178 = call i32 @set_din_no_dma(%struct.cc_hw_desc* %177, i32 0, i32 16777200)
  %179 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %180 = load i32, i32* %10, align 4
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %179, i64 %181
  %183 = call i32 @set_dout_no_dma(%struct.cc_hw_desc* %182, i32 0, i32 0, i32 1)
  %184 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %185 = load i32, i32* %10, align 4
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %184, i64 %186
  %188 = load i32, i32* @S_DIN_to_HASH, align 4
  %189 = call i32 @set_flow_mode(%struct.cc_hw_desc* %187, i32 %188)
  %190 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %191 = load i32, i32* %10, align 4
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %190, i64 %192
  %194 = call i32 @set_aes_not_hash_mode(%struct.cc_hw_desc* %193)
  %195 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %196 = load i32, i32* %10, align 4
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %195, i64 %197
  %199 = load i32, i32* @DRV_HASH_HW_GHASH, align 4
  %200 = call i32 @set_cipher_mode(%struct.cc_hw_desc* %198, i32 %199)
  %201 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %202 = load i32, i32* %10, align 4
  %203 = zext i32 %202 to i64
  %204 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %201, i64 %203
  %205 = call i32 @set_cipher_do(%struct.cc_hw_desc* %204, i32 1)
  %206 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %207 = load i32, i32* %10, align 4
  %208 = zext i32 %207 to i64
  %209 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %206, i64 %208
  %210 = load i32, i32* @DRV_CRYPTO_DIRECTION_ENCRYPT, align 4
  %211 = call i32 @set_cipher_config0(%struct.cc_hw_desc* %209, i32 %210)
  %212 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %213 = load i32, i32* %10, align 4
  %214 = zext i32 %213 to i64
  %215 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %212, i64 %214
  %216 = load i32, i32* @HASH_PADDING_ENABLED, align 4
  %217 = call i32 @set_cipher_config1(%struct.cc_hw_desc* %215, i32 %216)
  %218 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %219 = load i32, i32* %10, align 4
  %220 = zext i32 %219 to i64
  %221 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %218, i64 %220
  %222 = load i32, i32* @SETUP_LOAD_KEY0, align 4
  %223 = call i32 @set_setup_mode(%struct.cc_hw_desc* %221, i32 %222)
  %224 = load i32, i32* %10, align 4
  %225 = add i32 %224, 1
  store i32 %225, i32* %10, align 4
  %226 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %227 = load i32, i32* %10, align 4
  %228 = zext i32 %227 to i64
  %229 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %226, i64 %228
  %230 = call i32 @hw_desc_init(%struct.cc_hw_desc* %229)
  %231 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %232 = load i32, i32* %10, align 4
  %233 = zext i32 %232 to i64
  %234 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %231, i64 %233
  %235 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %236 = call i32 @set_din_const(%struct.cc_hw_desc* %234, i32 0, i32 %235)
  %237 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %238 = load i32, i32* %10, align 4
  %239 = zext i32 %238 to i64
  %240 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %237, i64 %239
  %241 = call i32 @set_dout_no_dma(%struct.cc_hw_desc* %240, i32 0, i32 0, i32 1)
  %242 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %243 = load i32, i32* %10, align 4
  %244 = zext i32 %243 to i64
  %245 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %242, i64 %244
  %246 = load i32, i32* @S_DIN_to_HASH, align 4
  %247 = call i32 @set_flow_mode(%struct.cc_hw_desc* %245, i32 %246)
  %248 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %249 = load i32, i32* %10, align 4
  %250 = zext i32 %249 to i64
  %251 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %248, i64 %250
  %252 = call i32 @set_aes_not_hash_mode(%struct.cc_hw_desc* %251)
  %253 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %254 = load i32, i32* %10, align 4
  %255 = zext i32 %254 to i64
  %256 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %253, i64 %255
  %257 = load i32, i32* @DRV_HASH_HW_GHASH, align 4
  %258 = call i32 @set_cipher_mode(%struct.cc_hw_desc* %256, i32 %257)
  %259 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %260 = load i32, i32* %10, align 4
  %261 = zext i32 %260 to i64
  %262 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %259, i64 %261
  %263 = load i32, i32* @HASH_PADDING_ENABLED, align 4
  %264 = call i32 @set_cipher_config1(%struct.cc_hw_desc* %262, i32 %263)
  %265 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %266 = load i32, i32* %10, align 4
  %267 = zext i32 %266 to i64
  %268 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %265, i64 %267
  %269 = load i32, i32* @SETUP_LOAD_STATE0, align 4
  %270 = call i32 @set_setup_mode(%struct.cc_hw_desc* %268, i32 %269)
  %271 = load i32, i32* %10, align 4
  %272 = add i32 %271, 1
  store i32 %272, i32* %10, align 4
  %273 = load i32, i32* %10, align 4
  %274 = load i32*, i32** %6, align 8
  store i32 %273, i32* %274, align 4
  ret void
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.cc_aead_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local %struct.aead_req_ctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local i32 @hw_desc_init(%struct.cc_hw_desc*) #1

declare dso_local i32 @set_cipher_mode(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_cipher_config0(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_din_type(%struct.cc_hw_desc*, i32, i32, i32, i32) #1

declare dso_local i32 @set_key_size_aes(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_setup_mode(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_flow_mode(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_din_const(%struct.cc_hw_desc*, i32, i32) #1

declare dso_local i32 @set_dout_dlli(%struct.cc_hw_desc*, i32, i32, i32, i32) #1

declare dso_local i32 @set_din_no_dma(%struct.cc_hw_desc*, i32, i32) #1

declare dso_local i32 @set_dout_no_dma(%struct.cc_hw_desc*, i32, i32, i32) #1

declare dso_local i32 @set_aes_not_hash_mode(%struct.cc_hw_desc*) #1

declare dso_local i32 @set_cipher_config1(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_cipher_do(%struct.cc_hw_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

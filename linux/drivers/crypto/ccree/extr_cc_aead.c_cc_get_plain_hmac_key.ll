; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_aead.c_cc_get_plain_hmac_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_aead.c_cc_get_plain_hmac_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead = type { i32 }
%struct.cc_aead_ctx = type { i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.device = type { i32 }
%struct.cc_crypto_req = type { i32 }
%struct.cc_hw_desc = type { i32 }

@MAX_AEAD_SETKEY_SEQ = common dso_local global i32 0, align 4
@SHA1_BLOCK_SIZE = common dso_local global i32 0, align 4
@SHA1_DIGEST_SIZE = common dso_local global i32 0, align 4
@DRV_HASH_HW_SHA1 = common dso_local global i32 0, align 4
@SHA256_BLOCK_SIZE = common dso_local global i32 0, align 4
@SHA256_DIGEST_SIZE = common dso_local global i32 0, align 4
@DRV_HASH_HW_SHA256 = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Mapping key va=0x%p len=%u for DMA failed\0A\00", align 1
@S_DIN_to_HASH = common dso_local global i32 0, align 4
@SETUP_LOAD_STATE0 = common dso_local global i32 0, align 4
@HASH_PADDING_ENABLED = common dso_local global i32 0, align 4
@SETUP_LOAD_KEY0 = common dso_local global i32 0, align 4
@DMA_DLLI = common dso_local global i32 0, align 4
@NS_BIT = common dso_local global i32 0, align 4
@DIN_HASH = common dso_local global i32 0, align 4
@S_HASH_to_DOUT = common dso_local global i32 0, align 4
@SETUP_WRITE_STATE0 = common dso_local global i32 0, align 4
@HASH_PADDING_DISABLED = common dso_local global i32 0, align 4
@HASH_DIGEST_RESULT_LITTLE_ENDIAN = common dso_local global i32 0, align 4
@BYPASS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"send_request() failed (rc=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_aead*, i32*, i32)* @cc_get_plain_hmac_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cc_get_plain_hmac_key(%struct.crypto_aead* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_aead*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.cc_aead_ctx*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.cc_crypto_req, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store %struct.crypto_aead* %0, %struct.crypto_aead** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %8, align 8
  %23 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %24 = call %struct.cc_aead_ctx* @crypto_aead_ctx(%struct.crypto_aead* %23)
  store %struct.cc_aead_ctx* %24, %struct.cc_aead_ctx** %9, align 8
  %25 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %9, align 8
  %26 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.device* @drvdata_to_dev(i32 %27)
  store %struct.device* %28, %struct.device** %10, align 8
  %29 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %9, align 8
  %30 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %9, align 8
  %33 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @cc_larval_digest_addr(i32 %31, i32 %34)
  store i32 %35, i32* %11, align 4
  %36 = bitcast %struct.cc_crypto_req* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %36, i8 0, i64 4, i1 false)
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32* null, i32** %18, align 8
  %37 = load i32, i32* @MAX_AEAD_SETKEY_SEQ, align 4
  %38 = zext i32 %37 to i64
  %39 = call i8* @llvm.stacksave()
  store i8* %39, i8** %19, align 8
  %40 = alloca %struct.cc_hw_desc, i64 %38, align 16
  store i64 %38, i64* %20, align 8
  %41 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %9, align 8
  %42 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %21, align 8
  %46 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %9, align 8
  %47 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  switch i32 %48, label %54 [
    i32 129, label %49
    i32 128, label %53
  ]

49:                                               ; preds = %3
  %50 = load i32, i32* @SHA1_BLOCK_SIZE, align 4
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* @SHA1_DIGEST_SIZE, align 4
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* @DRV_HASH_HW_SHA1, align 4
  store i32 %52, i32* %15, align 4
  br label %58

53:                                               ; preds = %3
  br label %54

54:                                               ; preds = %3, %53
  %55 = load i32, i32* @SHA256_BLOCK_SIZE, align 4
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* @SHA256_DIGEST_SIZE, align 4
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* @DRV_HASH_HW_SHA256, align 4
  store i32 %57, i32* %15, align 4
  br label %58

58:                                               ; preds = %54, %49
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %308

61:                                               ; preds = %58
  %62 = load i32*, i32** %6, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = call i32* @kmemdup(i32* %62, i32 %63, i32 %64)
  store i32* %65, i32** %18, align 8
  %66 = load i32*, i32** %18, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %61
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  store i32 1, i32* %22, align 4
  br label %359

71:                                               ; preds = %61
  %72 = load %struct.device*, %struct.device** %10, align 8
  %73 = load i32*, i32** %18, align 8
  %74 = bitcast i32* %73 to i8*
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @DMA_TO_DEVICE, align 4
  %77 = call i64 @dma_map_single(%struct.device* %72, i8* %74, i32 %75, i32 %76)
  store i64 %77, i64* %8, align 8
  %78 = load %struct.device*, %struct.device** %10, align 8
  %79 = load i64, i64* %8, align 8
  %80 = call i64 @dma_mapping_error(%struct.device* %78, i64 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %71
  %83 = load %struct.device*, %struct.device** %10, align 8
  %84 = load i32*, i32** %18, align 8
  %85 = ptrtoint i32* %84 to i32
  %86 = load i32, i32* %7, align 4
  %87 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %83, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %85, i32 %86)
  %88 = load i32*, i32** %18, align 8
  %89 = call i32 @kzfree(i32* %88)
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %4, align 4
  store i32 1, i32* %22, align 4
  br label %359

92:                                               ; preds = %71
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %13, align 4
  %95 = icmp ugt i32 %93, %94
  br i1 %95, label %96, label %244

96:                                               ; preds = %92
  %97 = load i32, i32* %16, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %40, i64 %98
  %100 = call i32 @hw_desc_init(%struct.cc_hw_desc* %99)
  %101 = load i32, i32* %16, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %40, i64 %102
  %104 = load i32, i32* %15, align 4
  %105 = call i32 @set_cipher_mode(%struct.cc_hw_desc* %103, i32 %104)
  %106 = load i32, i32* %16, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %40, i64 %107
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* %14, align 4
  %111 = call i32 @set_din_sram(%struct.cc_hw_desc* %108, i32 %109, i32 %110)
  %112 = load i32, i32* %16, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %40, i64 %113
  %115 = load i32, i32* @S_DIN_to_HASH, align 4
  %116 = call i32 @set_flow_mode(%struct.cc_hw_desc* %114, i32 %115)
  %117 = load i32, i32* %16, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %40, i64 %118
  %120 = load i32, i32* @SETUP_LOAD_STATE0, align 4
  %121 = call i32 @set_setup_mode(%struct.cc_hw_desc* %119, i32 %120)
  %122 = load i32, i32* %16, align 4
  %123 = add i32 %122, 1
  store i32 %123, i32* %16, align 4
  %124 = load i32, i32* %16, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %40, i64 %125
  %127 = call i32 @hw_desc_init(%struct.cc_hw_desc* %126)
  %128 = load i32, i32* %16, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %40, i64 %129
  %131 = load i32, i32* %15, align 4
  %132 = call i32 @set_cipher_mode(%struct.cc_hw_desc* %130, i32 %131)
  %133 = load i32, i32* %16, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %40, i64 %134
  %136 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %9, align 8
  %137 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @set_din_const(%struct.cc_hw_desc* %135, i32 0, i32 %138)
  %140 = load i32, i32* %16, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %40, i64 %141
  %143 = load i32, i32* @HASH_PADDING_ENABLED, align 4
  %144 = call i32 @set_cipher_config1(%struct.cc_hw_desc* %142, i32 %143)
  %145 = load i32, i32* %16, align 4
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %40, i64 %146
  %148 = load i32, i32* @S_DIN_to_HASH, align 4
  %149 = call i32 @set_flow_mode(%struct.cc_hw_desc* %147, i32 %148)
  %150 = load i32, i32* %16, align 4
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %40, i64 %151
  %153 = load i32, i32* @SETUP_LOAD_KEY0, align 4
  %154 = call i32 @set_setup_mode(%struct.cc_hw_desc* %152, i32 %153)
  %155 = load i32, i32* %16, align 4
  %156 = add i32 %155, 1
  store i32 %156, i32* %16, align 4
  %157 = load i32, i32* %16, align 4
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %40, i64 %158
  %160 = call i32 @hw_desc_init(%struct.cc_hw_desc* %159)
  %161 = load i32, i32* %16, align 4
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %40, i64 %162
  %164 = load i32, i32* @DMA_DLLI, align 4
  %165 = load i64, i64* %8, align 8
  %166 = load i32, i32* %7, align 4
  %167 = load i32, i32* @NS_BIT, align 4
  %168 = call i32 @set_din_type(%struct.cc_hw_desc* %163, i32 %164, i64 %165, i32 %166, i32 %167)
  %169 = load i32, i32* %16, align 4
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %40, i64 %170
  %172 = load i32, i32* @DIN_HASH, align 4
  %173 = call i32 @set_flow_mode(%struct.cc_hw_desc* %171, i32 %172)
  %174 = load i32, i32* %16, align 4
  %175 = add i32 %174, 1
  store i32 %175, i32* %16, align 4
  %176 = load i32, i32* %16, align 4
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %40, i64 %177
  %179 = call i32 @hw_desc_init(%struct.cc_hw_desc* %178)
  %180 = load i32, i32* %16, align 4
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %40, i64 %181
  %183 = load i32, i32* %15, align 4
  %184 = call i32 @set_cipher_mode(%struct.cc_hw_desc* %182, i32 %183)
  %185 = load i32, i32* %16, align 4
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %40, i64 %186
  %188 = load i64, i64* %21, align 8
  %189 = load i32, i32* %14, align 4
  %190 = load i32, i32* @NS_BIT, align 4
  %191 = call i32 @set_dout_dlli(%struct.cc_hw_desc* %187, i64 %188, i32 %189, i32 %190, i32 0)
  %192 = load i32, i32* %16, align 4
  %193 = zext i32 %192 to i64
  %194 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %40, i64 %193
  %195 = load i32, i32* @S_HASH_to_DOUT, align 4
  %196 = call i32 @set_flow_mode(%struct.cc_hw_desc* %194, i32 %195)
  %197 = load i32, i32* %16, align 4
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %40, i64 %198
  %200 = load i32, i32* @SETUP_WRITE_STATE0, align 4
  %201 = call i32 @set_setup_mode(%struct.cc_hw_desc* %199, i32 %200)
  %202 = load i32, i32* %16, align 4
  %203 = zext i32 %202 to i64
  %204 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %40, i64 %203
  %205 = load i32, i32* @HASH_PADDING_DISABLED, align 4
  %206 = call i32 @set_cipher_config1(%struct.cc_hw_desc* %204, i32 %205)
  %207 = load i32, i32* %16, align 4
  %208 = zext i32 %207 to i64
  %209 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %40, i64 %208
  %210 = load i32, i32* @HASH_DIGEST_RESULT_LITTLE_ENDIAN, align 4
  %211 = call i32 @set_cipher_config0(%struct.cc_hw_desc* %209, i32 %210)
  %212 = load i32, i32* %16, align 4
  %213 = add i32 %212, 1
  store i32 %213, i32* %16, align 4
  %214 = load i32, i32* %16, align 4
  %215 = zext i32 %214 to i64
  %216 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %40, i64 %215
  %217 = call i32 @hw_desc_init(%struct.cc_hw_desc* %216)
  %218 = load i32, i32* %16, align 4
  %219 = zext i32 %218 to i64
  %220 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %40, i64 %219
  %221 = load i32, i32* %13, align 4
  %222 = load i32, i32* %14, align 4
  %223 = sub i32 %221, %222
  %224 = call i32 @set_din_const(%struct.cc_hw_desc* %220, i32 0, i32 %223)
  %225 = load i32, i32* %16, align 4
  %226 = zext i32 %225 to i64
  %227 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %40, i64 %226
  %228 = load i32, i32* @BYPASS, align 4
  %229 = call i32 @set_flow_mode(%struct.cc_hw_desc* %227, i32 %228)
  %230 = load i32, i32* %16, align 4
  %231 = zext i32 %230 to i64
  %232 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %40, i64 %231
  %233 = load i64, i64* %21, align 8
  %234 = load i32, i32* %14, align 4
  %235 = zext i32 %234 to i64
  %236 = add nsw i64 %233, %235
  %237 = load i32, i32* %13, align 4
  %238 = load i32, i32* %14, align 4
  %239 = sub i32 %237, %238
  %240 = load i32, i32* @NS_BIT, align 4
  %241 = call i32 @set_dout_dlli(%struct.cc_hw_desc* %232, i64 %236, i32 %239, i32 %240, i32 0)
  %242 = load i32, i32* %16, align 4
  %243 = add i32 %242, 1
  store i32 %243, i32* %16, align 4
  br label %307

244:                                              ; preds = %92
  %245 = load i32, i32* %16, align 4
  %246 = zext i32 %245 to i64
  %247 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %40, i64 %246
  %248 = call i32 @hw_desc_init(%struct.cc_hw_desc* %247)
  %249 = load i32, i32* %16, align 4
  %250 = zext i32 %249 to i64
  %251 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %40, i64 %250
  %252 = load i32, i32* @DMA_DLLI, align 4
  %253 = load i64, i64* %8, align 8
  %254 = load i32, i32* %7, align 4
  %255 = load i32, i32* @NS_BIT, align 4
  %256 = call i32 @set_din_type(%struct.cc_hw_desc* %251, i32 %252, i64 %253, i32 %254, i32 %255)
  %257 = load i32, i32* %16, align 4
  %258 = zext i32 %257 to i64
  %259 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %40, i64 %258
  %260 = load i32, i32* @BYPASS, align 4
  %261 = call i32 @set_flow_mode(%struct.cc_hw_desc* %259, i32 %260)
  %262 = load i32, i32* %16, align 4
  %263 = zext i32 %262 to i64
  %264 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %40, i64 %263
  %265 = load i64, i64* %21, align 8
  %266 = load i32, i32* %7, align 4
  %267 = load i32, i32* @NS_BIT, align 4
  %268 = call i32 @set_dout_dlli(%struct.cc_hw_desc* %264, i64 %265, i32 %266, i32 %267, i32 0)
  %269 = load i32, i32* %16, align 4
  %270 = add i32 %269, 1
  store i32 %270, i32* %16, align 4
  %271 = load i32, i32* %13, align 4
  %272 = load i32, i32* %7, align 4
  %273 = sub i32 %271, %272
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %306

275:                                              ; preds = %244
  %276 = load i32, i32* %16, align 4
  %277 = zext i32 %276 to i64
  %278 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %40, i64 %277
  %279 = call i32 @hw_desc_init(%struct.cc_hw_desc* %278)
  %280 = load i32, i32* %16, align 4
  %281 = zext i32 %280 to i64
  %282 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %40, i64 %281
  %283 = load i32, i32* %13, align 4
  %284 = load i32, i32* %7, align 4
  %285 = sub i32 %283, %284
  %286 = call i32 @set_din_const(%struct.cc_hw_desc* %282, i32 0, i32 %285)
  %287 = load i32, i32* %16, align 4
  %288 = zext i32 %287 to i64
  %289 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %40, i64 %288
  %290 = load i32, i32* @BYPASS, align 4
  %291 = call i32 @set_flow_mode(%struct.cc_hw_desc* %289, i32 %290)
  %292 = load i32, i32* %16, align 4
  %293 = zext i32 %292 to i64
  %294 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %40, i64 %293
  %295 = load i64, i64* %21, align 8
  %296 = load i32, i32* %7, align 4
  %297 = zext i32 %296 to i64
  %298 = add nsw i64 %295, %297
  %299 = load i32, i32* %13, align 4
  %300 = load i32, i32* %7, align 4
  %301 = sub i32 %299, %300
  %302 = load i32, i32* @NS_BIT, align 4
  %303 = call i32 @set_dout_dlli(%struct.cc_hw_desc* %294, i64 %298, i32 %301, i32 %302, i32 0)
  %304 = load i32, i32* %16, align 4
  %305 = add i32 %304, 1
  store i32 %305, i32* %16, align 4
  br label %306

306:                                              ; preds = %275, %244
  br label %307

307:                                              ; preds = %306, %96
  br label %334

308:                                              ; preds = %58
  %309 = load i32, i32* %16, align 4
  %310 = zext i32 %309 to i64
  %311 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %40, i64 %310
  %312 = call i32 @hw_desc_init(%struct.cc_hw_desc* %311)
  %313 = load i32, i32* %16, align 4
  %314 = zext i32 %313 to i64
  %315 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %40, i64 %314
  %316 = load i32, i32* %13, align 4
  %317 = load i32, i32* %7, align 4
  %318 = sub i32 %316, %317
  %319 = call i32 @set_din_const(%struct.cc_hw_desc* %315, i32 0, i32 %318)
  %320 = load i32, i32* %16, align 4
  %321 = zext i32 %320 to i64
  %322 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %40, i64 %321
  %323 = load i32, i32* @BYPASS, align 4
  %324 = call i32 @set_flow_mode(%struct.cc_hw_desc* %322, i32 %323)
  %325 = load i32, i32* %16, align 4
  %326 = zext i32 %325 to i64
  %327 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %40, i64 %326
  %328 = load i64, i64* %21, align 8
  %329 = load i32, i32* %13, align 4
  %330 = load i32, i32* @NS_BIT, align 4
  %331 = call i32 @set_dout_dlli(%struct.cc_hw_desc* %327, i64 %328, i32 %329, i32 %330, i32 0)
  %332 = load i32, i32* %16, align 4
  %333 = add i32 %332, 1
  store i32 %333, i32* %16, align 4
  br label %334

334:                                              ; preds = %308, %307
  %335 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %9, align 8
  %336 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %335, i32 0, i32 2
  %337 = load i32, i32* %336, align 8
  %338 = load i32, i32* %16, align 4
  %339 = call i32 @cc_send_sync_request(i32 %337, %struct.cc_crypto_req* %12, %struct.cc_hw_desc* %40, i32 %338)
  store i32 %339, i32* %17, align 4
  %340 = load i32, i32* %17, align 4
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %346

342:                                              ; preds = %334
  %343 = load %struct.device*, %struct.device** %10, align 8
  %344 = load i32, i32* %17, align 4
  %345 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %343, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %344)
  br label %346

346:                                              ; preds = %342, %334
  %347 = load i64, i64* %8, align 8
  %348 = icmp ne i64 %347, 0
  br i1 %348, label %349, label %355

349:                                              ; preds = %346
  %350 = load %struct.device*, %struct.device** %10, align 8
  %351 = load i64, i64* %8, align 8
  %352 = load i32, i32* %7, align 4
  %353 = load i32, i32* @DMA_TO_DEVICE, align 4
  %354 = call i32 @dma_unmap_single(%struct.device* %350, i64 %351, i32 %352, i32 %353)
  br label %355

355:                                              ; preds = %349, %346
  %356 = load i32*, i32** %18, align 8
  %357 = call i32 @kzfree(i32* %356)
  %358 = load i32, i32* %17, align 4
  store i32 %358, i32* %4, align 4
  store i32 1, i32* %22, align 4
  br label %359

359:                                              ; preds = %355, %82, %68
  %360 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %360)
  %361 = load i32, i32* %4, align 4
  ret i32 %361
}

declare dso_local %struct.cc_aead_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local %struct.device* @drvdata_to_dev(i32) #1

declare dso_local i32 @cc_larval_digest_addr(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i32* @kmemdup(i32*, i32, i32) #1

declare dso_local i64 @dma_map_single(%struct.device*, i8*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @kzfree(i32*) #1

declare dso_local i32 @hw_desc_init(%struct.cc_hw_desc*) #1

declare dso_local i32 @set_cipher_mode(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_din_sram(%struct.cc_hw_desc*, i32, i32) #1

declare dso_local i32 @set_flow_mode(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_setup_mode(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_din_const(%struct.cc_hw_desc*, i32, i32) #1

declare dso_local i32 @set_cipher_config1(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_din_type(%struct.cc_hw_desc*, i32, i64, i32, i32) #1

declare dso_local i32 @set_dout_dlli(%struct.cc_hw_desc*, i64, i32, i32, i32) #1

declare dso_local i32 @set_cipher_config0(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @cc_send_sync_request(i32, %struct.cc_crypto_req*, %struct.cc_hw_desc*, i32) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i64, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

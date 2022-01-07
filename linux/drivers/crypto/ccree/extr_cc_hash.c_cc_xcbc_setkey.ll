; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_hash.c_cc_xcbc_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_hash.c_cc_xcbc_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_ahash = type { i32 }
%struct.cc_crypto_req = type { i32 }
%struct.cc_hash_ctx = type { i32, %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.device = type { i32 }
%struct.cc_hw_desc = type { i32 }

@CC_MAX_HASH_SEQ_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"===== setkey (%d) ====\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Mapping key va=0x%p len=%u for DMA failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"mapping key-buffer: key_dma_addr=%pad keylen=%u\0A\00", align 1
@DMA_DLLI = common dso_local global i32 0, align 4
@NS_BIT = common dso_local global i32 0, align 4
@DRV_CIPHER_ECB = common dso_local global i32 0, align 4
@DRV_CRYPTO_DIRECTION_ENCRYPT = common dso_local global i32 0, align 4
@S_DIN_to_AES = common dso_local global i32 0, align 4
@SETUP_LOAD_KEY0 = common dso_local global i32 0, align 4
@CC_AES_128_BIT_KEY_SIZE = common dso_local global i32 0, align 4
@DIN_AES_DOUT = common dso_local global i32 0, align 4
@XCBC_MAC_K1_OFFSET = common dso_local global i64 0, align 8
@XCBC_MAC_K2_OFFSET = common dso_local global i64 0, align 8
@XCBC_MAC_K3_OFFSET = common dso_local global i64 0, align 8
@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [50 x i8] c"Unmapped key-buffer: key_dma_addr=%pad keylen=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_ahash*, i32*, i32)* @cc_xcbc_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cc_xcbc_setkey(%struct.crypto_ahash* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_ahash*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cc_crypto_req, align 4
  %9 = alloca %struct.cc_hash_ctx*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.crypto_ahash* %0, %struct.crypto_ahash** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = bitcast %struct.cc_crypto_req* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 4, i1 false)
  %17 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %18 = call %struct.cc_hash_ctx* @crypto_ahash_ctx(%struct.crypto_ahash* %17)
  store %struct.cc_hash_ctx* %18, %struct.cc_hash_ctx** %9, align 8
  %19 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %9, align 8
  %20 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.device* @drvdata_to_dev(i32 %21)
  store %struct.device* %22, %struct.device** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %23 = load i32, i32* @CC_MAX_HASH_SEQ_LEN, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %13, align 8
  %26 = alloca %struct.cc_hw_desc, i64 %24, align 16
  store i64 %24, i64* %14, align 8
  %27 = load %struct.device*, %struct.device** %10, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %27, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %7, align 4
  switch i32 %30, label %32 [
    i32 130, label %31
    i32 129, label %31
    i32 128, label %31
  ]

31:                                               ; preds = %3, %3, %3
  br label %35

32:                                               ; preds = %3
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %261

35:                                               ; preds = %31
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %9, align 8
  %38 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 4
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call i32 @kmemdup(i32* %40, i32 %41, i32 %42)
  %44 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %9, align 8
  %45 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  store i32 %43, i32* %46, align 4
  %47 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %9, align 8
  %48 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %35
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %261

55:                                               ; preds = %35
  %56 = load %struct.device*, %struct.device** %10, align 8
  %57 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %9, align 8
  %58 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @DMA_TO_DEVICE, align 4
  %63 = call i32 @dma_map_single(%struct.device* %56, i32 %60, i32 %61, i32 %62)
  %64 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %9, align 8
  %65 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  store i32 %63, i32* %66, align 4
  %67 = load %struct.device*, %struct.device** %10, align 8
  %68 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %9, align 8
  %69 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @dma_mapping_error(%struct.device* %67, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %86

74:                                               ; preds = %55
  %75 = load %struct.device*, %struct.device** %10, align 8
  %76 = load i32*, i32** %6, align 8
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @dev_err(%struct.device* %75, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32* %76, i32 %77)
  %79 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %9, align 8
  %80 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @kzfree(i32 %82)
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %261

86:                                               ; preds = %55
  %87 = load %struct.device*, %struct.device** %10, align 8
  %88 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %9, align 8
  %89 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 2
  %91 = ptrtoint i32* %90 to i32
  %92 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %9, align 8
  %93 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %87, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %91, i32 %95)
  %97 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %9, align 8
  %98 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %97, i32 0, i32 0
  store i32 1, i32* %98, align 8
  %99 = load i32, i32* %12, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %26, i64 %100
  %102 = call i32 @hw_desc_init(%struct.cc_hw_desc* %101)
  %103 = load i32, i32* %12, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %26, i64 %104
  %106 = load i32, i32* @DMA_DLLI, align 4
  %107 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %9, align 8
  %108 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* @NS_BIT, align 4
  %113 = call i32 @set_din_type(%struct.cc_hw_desc* %105, i32 %106, i32 %110, i32 %111, i32 %112)
  %114 = load i32, i32* %12, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %26, i64 %115
  %117 = load i32, i32* @DRV_CIPHER_ECB, align 4
  %118 = call i32 @set_cipher_mode(%struct.cc_hw_desc* %116, i32 %117)
  %119 = load i32, i32* %12, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %26, i64 %120
  %122 = load i32, i32* @DRV_CRYPTO_DIRECTION_ENCRYPT, align 4
  %123 = call i32 @set_cipher_config0(%struct.cc_hw_desc* %121, i32 %122)
  %124 = load i32, i32* %12, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %26, i64 %125
  %127 = load i32, i32* %7, align 4
  %128 = call i32 @set_key_size_aes(%struct.cc_hw_desc* %126, i32 %127)
  %129 = load i32, i32* %12, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %26, i64 %130
  %132 = load i32, i32* @S_DIN_to_AES, align 4
  %133 = call i32 @set_flow_mode(%struct.cc_hw_desc* %131, i32 %132)
  %134 = load i32, i32* %12, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %26, i64 %135
  %137 = load i32, i32* @SETUP_LOAD_KEY0, align 4
  %138 = call i32 @set_setup_mode(%struct.cc_hw_desc* %136, i32 %137)
  %139 = load i32, i32* %12, align 4
  %140 = add i32 %139, 1
  store i32 %140, i32* %12, align 4
  %141 = load i32, i32* %12, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %26, i64 %142
  %144 = call i32 @hw_desc_init(%struct.cc_hw_desc* %143)
  %145 = load i32, i32* %12, align 4
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %26, i64 %146
  %148 = load i32, i32* @CC_AES_128_BIT_KEY_SIZE, align 4
  %149 = call i32 @set_din_const(%struct.cc_hw_desc* %147, i32 16843009, i32 %148)
  %150 = load i32, i32* %12, align 4
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %26, i64 %151
  %153 = load i32, i32* @DIN_AES_DOUT, align 4
  %154 = call i32 @set_flow_mode(%struct.cc_hw_desc* %152, i32 %153)
  %155 = load i32, i32* %12, align 4
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %26, i64 %156
  %158 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %9, align 8
  %159 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %158, i32 0, i32 3
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @XCBC_MAC_K1_OFFSET, align 8
  %162 = add nsw i64 %160, %161
  %163 = load i32, i32* @CC_AES_128_BIT_KEY_SIZE, align 4
  %164 = load i32, i32* @NS_BIT, align 4
  %165 = call i32 @set_dout_dlli(%struct.cc_hw_desc* %157, i64 %162, i32 %163, i32 %164, i32 0)
  %166 = load i32, i32* %12, align 4
  %167 = add i32 %166, 1
  store i32 %167, i32* %12, align 4
  %168 = load i32, i32* %12, align 4
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %26, i64 %169
  %171 = call i32 @hw_desc_init(%struct.cc_hw_desc* %170)
  %172 = load i32, i32* %12, align 4
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %26, i64 %173
  %175 = load i32, i32* @CC_AES_128_BIT_KEY_SIZE, align 4
  %176 = call i32 @set_din_const(%struct.cc_hw_desc* %174, i32 33686018, i32 %175)
  %177 = load i32, i32* %12, align 4
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %26, i64 %178
  %180 = load i32, i32* @DIN_AES_DOUT, align 4
  %181 = call i32 @set_flow_mode(%struct.cc_hw_desc* %179, i32 %180)
  %182 = load i32, i32* %12, align 4
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %26, i64 %183
  %185 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %9, align 8
  %186 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %185, i32 0, i32 3
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @XCBC_MAC_K2_OFFSET, align 8
  %189 = add nsw i64 %187, %188
  %190 = load i32, i32* @CC_AES_128_BIT_KEY_SIZE, align 4
  %191 = load i32, i32* @NS_BIT, align 4
  %192 = call i32 @set_dout_dlli(%struct.cc_hw_desc* %184, i64 %189, i32 %190, i32 %191, i32 0)
  %193 = load i32, i32* %12, align 4
  %194 = add i32 %193, 1
  store i32 %194, i32* %12, align 4
  %195 = load i32, i32* %12, align 4
  %196 = zext i32 %195 to i64
  %197 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %26, i64 %196
  %198 = call i32 @hw_desc_init(%struct.cc_hw_desc* %197)
  %199 = load i32, i32* %12, align 4
  %200 = zext i32 %199 to i64
  %201 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %26, i64 %200
  %202 = load i32, i32* @CC_AES_128_BIT_KEY_SIZE, align 4
  %203 = call i32 @set_din_const(%struct.cc_hw_desc* %201, i32 50529027, i32 %202)
  %204 = load i32, i32* %12, align 4
  %205 = zext i32 %204 to i64
  %206 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %26, i64 %205
  %207 = load i32, i32* @DIN_AES_DOUT, align 4
  %208 = call i32 @set_flow_mode(%struct.cc_hw_desc* %206, i32 %207)
  %209 = load i32, i32* %12, align 4
  %210 = zext i32 %209 to i64
  %211 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %26, i64 %210
  %212 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %9, align 8
  %213 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %212, i32 0, i32 3
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @XCBC_MAC_K3_OFFSET, align 8
  %216 = add nsw i64 %214, %215
  %217 = load i32, i32* @CC_AES_128_BIT_KEY_SIZE, align 4
  %218 = load i32, i32* @NS_BIT, align 4
  %219 = call i32 @set_dout_dlli(%struct.cc_hw_desc* %211, i64 %216, i32 %217, i32 %218, i32 0)
  %220 = load i32, i32* %12, align 4
  %221 = add i32 %220, 1
  store i32 %221, i32* %12, align 4
  %222 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %9, align 8
  %223 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* %12, align 4
  %226 = call i32 @cc_send_sync_request(i32 %224, %struct.cc_crypto_req* %8, %struct.cc_hw_desc* %26, i32 %225)
  store i32 %226, i32* %11, align 4
  %227 = load i32, i32* %11, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %233

229:                                              ; preds = %86
  %230 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %231 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %232 = call i32 @crypto_ahash_set_flags(%struct.crypto_ahash* %230, i32 %231)
  br label %233

233:                                              ; preds = %229, %86
  %234 = load %struct.device*, %struct.device** %10, align 8
  %235 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %9, align 8
  %236 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %9, align 8
  %240 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* @DMA_TO_DEVICE, align 4
  %244 = call i32 @dma_unmap_single(%struct.device* %234, i32 %238, i32 %242, i32 %243)
  %245 = load %struct.device*, %struct.device** %10, align 8
  %246 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %9, align 8
  %247 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %247, i32 0, i32 2
  %249 = ptrtoint i32* %248 to i32
  %250 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %9, align 8
  %251 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %250, i32 0, i32 1
  %252 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %245, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %249, i32 %253)
  %255 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %9, align 8
  %256 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = call i32 @kzfree(i32 %258)
  %260 = load i32, i32* %11, align 4
  store i32 %260, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %261

261:                                              ; preds = %233, %74, %52, %32
  %262 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %262)
  %263 = load i32, i32* %4, align 4
  ret i32 %263
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.cc_hash_ctx* @crypto_ahash_ctx(%struct.crypto_ahash*) #2

declare dso_local %struct.device* @drvdata_to_dev(i32) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, ...) #2

declare dso_local i32 @kmemdup(i32*, i32, i32) #2

declare dso_local i32 @dma_map_single(%struct.device*, i32, i32, i32) #2

declare dso_local i64 @dma_mapping_error(%struct.device*, i32) #2

declare dso_local i32 @dev_err(%struct.device*, i8*, i32*, i32) #2

declare dso_local i32 @kzfree(i32) #2

declare dso_local i32 @hw_desc_init(%struct.cc_hw_desc*) #2

declare dso_local i32 @set_din_type(%struct.cc_hw_desc*, i32, i32, i32, i32) #2

declare dso_local i32 @set_cipher_mode(%struct.cc_hw_desc*, i32) #2

declare dso_local i32 @set_cipher_config0(%struct.cc_hw_desc*, i32) #2

declare dso_local i32 @set_key_size_aes(%struct.cc_hw_desc*, i32) #2

declare dso_local i32 @set_flow_mode(%struct.cc_hw_desc*, i32) #2

declare dso_local i32 @set_setup_mode(%struct.cc_hw_desc*, i32) #2

declare dso_local i32 @set_din_const(%struct.cc_hw_desc*, i32, i32) #2

declare dso_local i32 @set_dout_dlli(%struct.cc_hw_desc*, i64, i32, i32, i32) #2

declare dso_local i32 @cc_send_sync_request(i32, %struct.cc_crypto_req*, %struct.cc_hw_desc*, i32) #2

declare dso_local i32 @crypto_ahash_set_flags(%struct.crypto_ahash*, i32) #2

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

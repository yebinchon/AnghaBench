; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_hash.c_cc_hash_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_hash.c_cc_hash_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_ahash = type { i32 }
%struct.cc_crypto_req = type { i32 }
%struct.cc_hash_ctx = type { i32, i32, i32, %struct.TYPE_2__, i32, i64, i64, i32, i32 }
%struct.TYPE_2__ = type { i32, i32*, i64 }
%struct.device = type { i32 }
%struct.cc_hw_desc = type { i32 }

@HMAC_IPAD_CONST = common dso_local global i32 0, align 4
@HMAC_OPAD_CONST = common dso_local global i32 0, align 4
@CC_MAX_HASH_SEQ_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"start keylen: %d\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Mapping key va=0x%p len=%u for DMA failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"mapping key-buffer: key_dma_addr=%pad keylen=%u\0A\00", align 1
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
@BYPASS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"send_request() failed (rc=%d)\0A\00", align 1
@SETUP_LOAD_STATE1 = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [50 x i8] c"Unmapped key-buffer: key_dma_addr=%pad keylen=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_ahash*, i32*, i32)* @cc_hash_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cc_hash_setkey(%struct.crypto_ahash* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_ahash*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [2 x i32], align 4
  %9 = alloca %struct.cc_crypto_req, align 4
  %10 = alloca %struct.cc_hash_ctx*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.device*, align 8
  %20 = alloca i32, align 4
  store %struct.crypto_ahash* %0, %struct.crypto_ahash** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %22 = load i32, i32* @HMAC_IPAD_CONST, align 4
  store i32 %22, i32* %21, align 4
  %23 = getelementptr inbounds i32, i32* %21, i64 1
  %24 = load i32, i32* @HMAC_OPAD_CONST, align 4
  store i32 %24, i32* %23, align 4
  %25 = bitcast %struct.cc_crypto_req* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %25, i8 0, i64 4, i1 false)
  store %struct.cc_hash_ctx* null, %struct.cc_hash_ctx** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %26 = load i32, i32* @CC_MAX_HASH_SEQ_LEN, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %16, align 8
  %29 = alloca %struct.cc_hw_desc, i64 %27, align 16
  store i64 %27, i64* %17, align 8
  %30 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %31 = call %struct.cc_hash_ctx* @crypto_ahash_ctx(%struct.crypto_ahash* %30)
  store %struct.cc_hash_ctx* %31, %struct.cc_hash_ctx** %10, align 8
  %32 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %10, align 8
  %33 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = call %struct.device* @drvdata_to_dev(i32 %34)
  store %struct.device* %35, %struct.device** %19, align 8
  %36 = load %struct.device*, %struct.device** %19, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %36, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %40 = getelementptr inbounds %struct.crypto_ahash, %struct.crypto_ahash* %39, i32 0, i32 0
  %41 = call i32 @crypto_tfm_alg_blocksize(i32* %40)
  store i32 %41, i32* %11, align 4
  %42 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %43 = call i32 @crypto_ahash_digestsize(%struct.crypto_ahash* %42)
  store i32 %43, i32* %12, align 4
  %44 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %10, align 8
  %45 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %10, align 8
  %48 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %47, i32 0, i32 8
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @cc_larval_digest_addr(i32 %46, i32 %49)
  store i32 %50, i32* %18, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %10, align 8
  %53 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 8
  %55 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %10, align 8
  %56 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  store i64 0, i64* %57, align 8
  %58 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %10, align 8
  %59 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  %60 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %10, align 8
  %61 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  store i32* null, i32** %62, align 8
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %367

65:                                               ; preds = %3
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @GFP_KERNEL, align 4
  %69 = call i32* @kmemdup(i32* %66, i32 %67, i32 %68)
  %70 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %10, align 8
  %71 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  store i32* %69, i32** %72, align 8
  %73 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %10, align 8
  %74 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %65
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %635

81:                                               ; preds = %65
  %82 = load %struct.device*, %struct.device** %19, align 8
  %83 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %10, align 8
  %84 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = bitcast i32* %86 to i8*
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @DMA_TO_DEVICE, align 4
  %90 = call i64 @dma_map_single(%struct.device* %82, i8* %87, i32 %88, i32 %89)
  %91 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %10, align 8
  %92 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 2
  store i64 %90, i64* %93, align 8
  %94 = load %struct.device*, %struct.device** %19, align 8
  %95 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %10, align 8
  %96 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = call i64 @dma_mapping_error(%struct.device* %94, i64 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %117

101:                                              ; preds = %81
  %102 = load %struct.device*, %struct.device** %19, align 8
  %103 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %10, align 8
  %104 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = ptrtoint i32* %106 to i32
  %108 = load i32, i32* %7, align 4
  %109 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %102, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %107, i32 %108)
  %110 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %10, align 8
  %111 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @kzfree(i32* %113)
  %115 = load i32, i32* @ENOMEM, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %635

117:                                              ; preds = %81
  %118 = load %struct.device*, %struct.device** %19, align 8
  %119 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %10, align 8
  %120 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 2
  %122 = ptrtoint i64* %121 to i32
  %123 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %10, align 8
  %124 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %118, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %122, i32 %126)
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* %11, align 4
  %130 = icmp ugt i32 %128, %129
  br i1 %130, label %131, label %296

131:                                              ; preds = %117
  %132 = load i32, i32* %14, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %29, i64 %133
  %135 = call i32 @hw_desc_init(%struct.cc_hw_desc* %134)
  %136 = load i32, i32* %14, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %29, i64 %137
  %139 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %10, align 8
  %140 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %139, i32 0, i32 7
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @set_cipher_mode(%struct.cc_hw_desc* %138, i32 %141)
  %143 = load i32, i32* %14, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %29, i64 %144
  %146 = load i32, i32* %18, align 4
  %147 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %10, align 8
  %148 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @set_din_sram(%struct.cc_hw_desc* %145, i32 %146, i32 %149)
  %151 = load i32, i32* %14, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %29, i64 %152
  %154 = load i32, i32* @S_DIN_to_HASH, align 4
  %155 = call i32 @set_flow_mode(%struct.cc_hw_desc* %153, i32 %154)
  %156 = load i32, i32* %14, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %29, i64 %157
  %159 = load i32, i32* @SETUP_LOAD_STATE0, align 4
  %160 = call i32 @set_setup_mode(%struct.cc_hw_desc* %158, i32 %159)
  %161 = load i32, i32* %14, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %14, align 4
  %163 = load i32, i32* %14, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %29, i64 %164
  %166 = call i32 @hw_desc_init(%struct.cc_hw_desc* %165)
  %167 = load i32, i32* %14, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %29, i64 %168
  %170 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %10, align 8
  %171 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %170, i32 0, i32 7
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @set_cipher_mode(%struct.cc_hw_desc* %169, i32 %172)
  %174 = load i32, i32* %14, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %29, i64 %175
  %177 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %10, align 8
  %178 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @set_din_const(%struct.cc_hw_desc* %176, i32 0, i32 %179)
  %181 = load i32, i32* %14, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %29, i64 %182
  %184 = load i32, i32* @HASH_PADDING_ENABLED, align 4
  %185 = call i32 @set_cipher_config1(%struct.cc_hw_desc* %183, i32 %184)
  %186 = load i32, i32* %14, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %29, i64 %187
  %189 = load i32, i32* @S_DIN_to_HASH, align 4
  %190 = call i32 @set_flow_mode(%struct.cc_hw_desc* %188, i32 %189)
  %191 = load i32, i32* %14, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %29, i64 %192
  %194 = load i32, i32* @SETUP_LOAD_KEY0, align 4
  %195 = call i32 @set_setup_mode(%struct.cc_hw_desc* %193, i32 %194)
  %196 = load i32, i32* %14, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %14, align 4
  %198 = load i32, i32* %14, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %29, i64 %199
  %201 = call i32 @hw_desc_init(%struct.cc_hw_desc* %200)
  %202 = load i32, i32* %14, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %29, i64 %203
  %205 = load i32, i32* @DMA_DLLI, align 4
  %206 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %10, align 8
  %207 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %206, i32 0, i32 3
  %208 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i32 0, i32 2
  %209 = load i64, i64* %208, align 8
  %210 = load i32, i32* %7, align 4
  %211 = load i32, i32* @NS_BIT, align 4
  %212 = call i32 @set_din_type(%struct.cc_hw_desc* %204, i32 %205, i64 %209, i32 %210, i32 %211)
  %213 = load i32, i32* %14, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %29, i64 %214
  %216 = load i32, i32* @DIN_HASH, align 4
  %217 = call i32 @set_flow_mode(%struct.cc_hw_desc* %215, i32 %216)
  %218 = load i32, i32* %14, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %14, align 4
  %220 = load i32, i32* %14, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %29, i64 %221
  %223 = call i32 @hw_desc_init(%struct.cc_hw_desc* %222)
  %224 = load i32, i32* %14, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %29, i64 %225
  %227 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %10, align 8
  %228 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %227, i32 0, i32 7
  %229 = load i32, i32* %228, align 8
  %230 = call i32 @set_cipher_mode(%struct.cc_hw_desc* %226, i32 %229)
  %231 = load i32, i32* %14, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %29, i64 %232
  %234 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %10, align 8
  %235 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %234, i32 0, i32 6
  %236 = load i64, i64* %235, align 8
  %237 = load i32, i32* %12, align 4
  %238 = load i32, i32* @NS_BIT, align 4
  %239 = call i32 @set_dout_dlli(%struct.cc_hw_desc* %233, i64 %236, i32 %237, i32 %238, i32 0)
  %240 = load i32, i32* %14, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %29, i64 %241
  %243 = load i32, i32* @S_HASH_to_DOUT, align 4
  %244 = call i32 @set_flow_mode(%struct.cc_hw_desc* %242, i32 %243)
  %245 = load i32, i32* %14, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %29, i64 %246
  %248 = load i32, i32* @SETUP_WRITE_STATE0, align 4
  %249 = call i32 @set_setup_mode(%struct.cc_hw_desc* %247, i32 %248)
  %250 = load i32, i32* %14, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %29, i64 %251
  %253 = load i32, i32* @HASH_PADDING_DISABLED, align 4
  %254 = call i32 @set_cipher_config1(%struct.cc_hw_desc* %252, i32 %253)
  %255 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %10, align 8
  %256 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %255, i32 0, i32 8
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* %14, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %29, i64 %259
  %261 = call i32 @cc_set_endianity(i32 %257, %struct.cc_hw_desc* %260)
  %262 = load i32, i32* %14, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %14, align 4
  %264 = load i32, i32* %14, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %29, i64 %265
  %267 = call i32 @hw_desc_init(%struct.cc_hw_desc* %266)
  %268 = load i32, i32* %14, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %29, i64 %269
  %271 = load i32, i32* %11, align 4
  %272 = load i32, i32* %12, align 4
  %273 = sub nsw i32 %271, %272
  %274 = call i32 @set_din_const(%struct.cc_hw_desc* %270, i32 0, i32 %273)
  %275 = load i32, i32* %14, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %29, i64 %276
  %278 = load i32, i32* @BYPASS, align 4
  %279 = call i32 @set_flow_mode(%struct.cc_hw_desc* %277, i32 %278)
  %280 = load i32, i32* %14, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %29, i64 %281
  %283 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %10, align 8
  %284 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %283, i32 0, i32 6
  %285 = load i64, i64* %284, align 8
  %286 = load i32, i32* %12, align 4
  %287 = sext i32 %286 to i64
  %288 = add nsw i64 %285, %287
  %289 = load i32, i32* %11, align 4
  %290 = load i32, i32* %12, align 4
  %291 = sub nsw i32 %289, %290
  %292 = load i32, i32* @NS_BIT, align 4
  %293 = call i32 @set_dout_dlli(%struct.cc_hw_desc* %282, i64 %288, i32 %291, i32 %292, i32 0)
  %294 = load i32, i32* %14, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %14, align 4
  br label %366

296:                                              ; preds = %117
  %297 = load i32, i32* %14, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %29, i64 %298
  %300 = call i32 @hw_desc_init(%struct.cc_hw_desc* %299)
  %301 = load i32, i32* %14, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %29, i64 %302
  %304 = load i32, i32* @DMA_DLLI, align 4
  %305 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %10, align 8
  %306 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %305, i32 0, i32 3
  %307 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %306, i32 0, i32 2
  %308 = load i64, i64* %307, align 8
  %309 = load i32, i32* %7, align 4
  %310 = load i32, i32* @NS_BIT, align 4
  %311 = call i32 @set_din_type(%struct.cc_hw_desc* %303, i32 %304, i64 %308, i32 %309, i32 %310)
  %312 = load i32, i32* %14, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %29, i64 %313
  %315 = load i32, i32* @BYPASS, align 4
  %316 = call i32 @set_flow_mode(%struct.cc_hw_desc* %314, i32 %315)
  %317 = load i32, i32* %14, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %29, i64 %318
  %320 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %10, align 8
  %321 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %320, i32 0, i32 6
  %322 = load i64, i64* %321, align 8
  %323 = load i32, i32* %7, align 4
  %324 = load i32, i32* @NS_BIT, align 4
  %325 = call i32 @set_dout_dlli(%struct.cc_hw_desc* %319, i64 %322, i32 %323, i32 %324, i32 0)
  %326 = load i32, i32* %14, align 4
  %327 = add nsw i32 %326, 1
  store i32 %327, i32* %14, align 4
  %328 = load i32, i32* %11, align 4
  %329 = load i32, i32* %7, align 4
  %330 = sub i32 %328, %329
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %365

332:                                              ; preds = %296
  %333 = load i32, i32* %14, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %29, i64 %334
  %336 = call i32 @hw_desc_init(%struct.cc_hw_desc* %335)
  %337 = load i32, i32* %14, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %29, i64 %338
  %340 = load i32, i32* %11, align 4
  %341 = load i32, i32* %7, align 4
  %342 = sub i32 %340, %341
  %343 = call i32 @set_din_const(%struct.cc_hw_desc* %339, i32 0, i32 %342)
  %344 = load i32, i32* %14, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %29, i64 %345
  %347 = load i32, i32* @BYPASS, align 4
  %348 = call i32 @set_flow_mode(%struct.cc_hw_desc* %346, i32 %347)
  %349 = load i32, i32* %14, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %29, i64 %350
  %352 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %10, align 8
  %353 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %352, i32 0, i32 6
  %354 = load i64, i64* %353, align 8
  %355 = load i32, i32* %7, align 4
  %356 = zext i32 %355 to i64
  %357 = add nsw i64 %354, %356
  %358 = load i32, i32* %11, align 4
  %359 = load i32, i32* %7, align 4
  %360 = sub i32 %358, %359
  %361 = load i32, i32* @NS_BIT, align 4
  %362 = call i32 @set_dout_dlli(%struct.cc_hw_desc* %351, i64 %357, i32 %360, i32 %361, i32 0)
  %363 = load i32, i32* %14, align 4
  %364 = add nsw i32 %363, 1
  store i32 %364, i32* %14, align 4
  br label %365

365:                                              ; preds = %332, %296
  br label %366

366:                                              ; preds = %365, %131
  br label %393

367:                                              ; preds = %3
  %368 = load i32, i32* %14, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %29, i64 %369
  %371 = call i32 @hw_desc_init(%struct.cc_hw_desc* %370)
  %372 = load i32, i32* %14, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %29, i64 %373
  %375 = load i32, i32* %11, align 4
  %376 = call i32 @set_din_const(%struct.cc_hw_desc* %374, i32 0, i32 %375)
  %377 = load i32, i32* %14, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %29, i64 %378
  %380 = load i32, i32* @BYPASS, align 4
  %381 = call i32 @set_flow_mode(%struct.cc_hw_desc* %379, i32 %380)
  %382 = load i32, i32* %14, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %29, i64 %383
  %385 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %10, align 8
  %386 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %385, i32 0, i32 6
  %387 = load i64, i64* %386, align 8
  %388 = load i32, i32* %11, align 4
  %389 = load i32, i32* @NS_BIT, align 4
  %390 = call i32 @set_dout_dlli(%struct.cc_hw_desc* %384, i64 %387, i32 %388, i32 %389, i32 0)
  %391 = load i32, i32* %14, align 4
  %392 = add nsw i32 %391, 1
  store i32 %392, i32* %14, align 4
  br label %393

393:                                              ; preds = %367, %366
  %394 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %10, align 8
  %395 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %394, i32 0, i32 4
  %396 = load i32, i32* %395, align 8
  %397 = load i32, i32* %14, align 4
  %398 = call i32 @cc_send_sync_request(i32 %396, %struct.cc_crypto_req* %9, %struct.cc_hw_desc* %29, i32 %397)
  store i32 %398, i32* %15, align 4
  %399 = load i32, i32* %15, align 4
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %405

401:                                              ; preds = %393
  %402 = load %struct.device*, %struct.device** %19, align 8
  %403 = load i32, i32* %15, align 4
  %404 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %402, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %403)
  br label %593

405:                                              ; preds = %393
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %406

406:                                              ; preds = %584, %405
  %407 = load i32, i32* %13, align 4
  %408 = icmp slt i32 %407, 2
  br i1 %408, label %409, label %587

409:                                              ; preds = %406
  %410 = load i32, i32* %14, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %29, i64 %411
  %413 = call i32 @hw_desc_init(%struct.cc_hw_desc* %412)
  %414 = load i32, i32* %14, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %29, i64 %415
  %417 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %10, align 8
  %418 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %417, i32 0, i32 7
  %419 = load i32, i32* %418, align 8
  %420 = call i32 @set_cipher_mode(%struct.cc_hw_desc* %416, i32 %419)
  %421 = load i32, i32* %14, align 4
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %29, i64 %422
  %424 = load i32, i32* %18, align 4
  %425 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %10, align 8
  %426 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %425, i32 0, i32 1
  %427 = load i32, i32* %426, align 4
  %428 = call i32 @set_din_sram(%struct.cc_hw_desc* %423, i32 %424, i32 %427)
  %429 = load i32, i32* %14, align 4
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %29, i64 %430
  %432 = load i32, i32* @S_DIN_to_HASH, align 4
  %433 = call i32 @set_flow_mode(%struct.cc_hw_desc* %431, i32 %432)
  %434 = load i32, i32* %14, align 4
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %29, i64 %435
  %437 = load i32, i32* @SETUP_LOAD_STATE0, align 4
  %438 = call i32 @set_setup_mode(%struct.cc_hw_desc* %436, i32 %437)
  %439 = load i32, i32* %14, align 4
  %440 = add nsw i32 %439, 1
  store i32 %440, i32* %14, align 4
  %441 = load i32, i32* %14, align 4
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %29, i64 %442
  %444 = call i32 @hw_desc_init(%struct.cc_hw_desc* %443)
  %445 = load i32, i32* %14, align 4
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %29, i64 %446
  %448 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %10, align 8
  %449 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %448, i32 0, i32 7
  %450 = load i32, i32* %449, align 8
  %451 = call i32 @set_cipher_mode(%struct.cc_hw_desc* %447, i32 %450)
  %452 = load i32, i32* %14, align 4
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %29, i64 %453
  %455 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %10, align 8
  %456 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %455, i32 0, i32 2
  %457 = load i32, i32* %456, align 8
  %458 = call i32 @set_din_const(%struct.cc_hw_desc* %454, i32 0, i32 %457)
  %459 = load i32, i32* %14, align 4
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %29, i64 %460
  %462 = load i32, i32* @S_DIN_to_HASH, align 4
  %463 = call i32 @set_flow_mode(%struct.cc_hw_desc* %461, i32 %462)
  %464 = load i32, i32* %14, align 4
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %29, i64 %465
  %467 = load i32, i32* @SETUP_LOAD_KEY0, align 4
  %468 = call i32 @set_setup_mode(%struct.cc_hw_desc* %466, i32 %467)
  %469 = load i32, i32* %14, align 4
  %470 = add nsw i32 %469, 1
  store i32 %470, i32* %14, align 4
  %471 = load i32, i32* %14, align 4
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %29, i64 %472
  %474 = call i32 @hw_desc_init(%struct.cc_hw_desc* %473)
  %475 = load i32, i32* %14, align 4
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %29, i64 %476
  %478 = load i32, i32* %13, align 4
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 %479
  %481 = load i32, i32* %480, align 4
  %482 = call i32 @set_xor_val(%struct.cc_hw_desc* %477, i32 %481)
  %483 = load i32, i32* %14, align 4
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %29, i64 %484
  %486 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %10, align 8
  %487 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %486, i32 0, i32 7
  %488 = load i32, i32* %487, align 8
  %489 = call i32 @set_cipher_mode(%struct.cc_hw_desc* %485, i32 %488)
  %490 = load i32, i32* %14, align 4
  %491 = sext i32 %490 to i64
  %492 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %29, i64 %491
  %493 = load i32, i32* @S_DIN_to_HASH, align 4
  %494 = call i32 @set_flow_mode(%struct.cc_hw_desc* %492, i32 %493)
  %495 = load i32, i32* %14, align 4
  %496 = sext i32 %495 to i64
  %497 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %29, i64 %496
  %498 = load i32, i32* @SETUP_LOAD_STATE1, align 4
  %499 = call i32 @set_setup_mode(%struct.cc_hw_desc* %497, i32 %498)
  %500 = load i32, i32* %14, align 4
  %501 = add nsw i32 %500, 1
  store i32 %501, i32* %14, align 4
  %502 = load i32, i32* %14, align 4
  %503 = sext i32 %502 to i64
  %504 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %29, i64 %503
  %505 = call i32 @hw_desc_init(%struct.cc_hw_desc* %504)
  %506 = load i32, i32* %14, align 4
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %29, i64 %507
  %509 = load i32, i32* @DMA_DLLI, align 4
  %510 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %10, align 8
  %511 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %510, i32 0, i32 6
  %512 = load i64, i64* %511, align 8
  %513 = load i32, i32* %11, align 4
  %514 = load i32, i32* @NS_BIT, align 4
  %515 = call i32 @set_din_type(%struct.cc_hw_desc* %508, i32 %509, i64 %512, i32 %513, i32 %514)
  %516 = load i32, i32* %14, align 4
  %517 = sext i32 %516 to i64
  %518 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %29, i64 %517
  %519 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %10, align 8
  %520 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %519, i32 0, i32 7
  %521 = load i32, i32* %520, align 8
  %522 = call i32 @set_cipher_mode(%struct.cc_hw_desc* %518, i32 %521)
  %523 = load i32, i32* %14, align 4
  %524 = sext i32 %523 to i64
  %525 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %29, i64 %524
  %526 = call i32 @set_xor_active(%struct.cc_hw_desc* %525)
  %527 = load i32, i32* %14, align 4
  %528 = sext i32 %527 to i64
  %529 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %29, i64 %528
  %530 = load i32, i32* @DIN_HASH, align 4
  %531 = call i32 @set_flow_mode(%struct.cc_hw_desc* %529, i32 %530)
  %532 = load i32, i32* %14, align 4
  %533 = add nsw i32 %532, 1
  store i32 %533, i32* %14, align 4
  %534 = load i32, i32* %14, align 4
  %535 = sext i32 %534 to i64
  %536 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %29, i64 %535
  %537 = call i32 @hw_desc_init(%struct.cc_hw_desc* %536)
  %538 = load i32, i32* %14, align 4
  %539 = sext i32 %538 to i64
  %540 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %29, i64 %539
  %541 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %10, align 8
  %542 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %541, i32 0, i32 7
  %543 = load i32, i32* %542, align 8
  %544 = call i32 @set_cipher_mode(%struct.cc_hw_desc* %540, i32 %543)
  %545 = load i32, i32* %13, align 4
  %546 = icmp sgt i32 %545, 0
  br i1 %546, label %547, label %559

547:                                              ; preds = %409
  %548 = load i32, i32* %14, align 4
  %549 = sext i32 %548 to i64
  %550 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %29, i64 %549
  %551 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %10, align 8
  %552 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %551, i32 0, i32 6
  %553 = load i64, i64* %552, align 8
  %554 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %10, align 8
  %555 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %554, i32 0, i32 1
  %556 = load i32, i32* %555, align 4
  %557 = load i32, i32* @NS_BIT, align 4
  %558 = call i32 @set_dout_dlli(%struct.cc_hw_desc* %550, i64 %553, i32 %556, i32 %557, i32 0)
  br label %571

559:                                              ; preds = %409
  %560 = load i32, i32* %14, align 4
  %561 = sext i32 %560 to i64
  %562 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %29, i64 %561
  %563 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %10, align 8
  %564 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %563, i32 0, i32 5
  %565 = load i64, i64* %564, align 8
  %566 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %10, align 8
  %567 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %566, i32 0, i32 1
  %568 = load i32, i32* %567, align 4
  %569 = load i32, i32* @NS_BIT, align 4
  %570 = call i32 @set_dout_dlli(%struct.cc_hw_desc* %562, i64 %565, i32 %568, i32 %569, i32 0)
  br label %571

571:                                              ; preds = %559, %547
  %572 = load i32, i32* %14, align 4
  %573 = sext i32 %572 to i64
  %574 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %29, i64 %573
  %575 = load i32, i32* @S_HASH_to_DOUT, align 4
  %576 = call i32 @set_flow_mode(%struct.cc_hw_desc* %574, i32 %575)
  %577 = load i32, i32* %14, align 4
  %578 = sext i32 %577 to i64
  %579 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %29, i64 %578
  %580 = load i32, i32* @SETUP_WRITE_STATE0, align 4
  %581 = call i32 @set_setup_mode(%struct.cc_hw_desc* %579, i32 %580)
  %582 = load i32, i32* %14, align 4
  %583 = add nsw i32 %582, 1
  store i32 %583, i32* %14, align 4
  br label %584

584:                                              ; preds = %571
  %585 = load i32, i32* %13, align 4
  %586 = add nsw i32 %585, 1
  store i32 %586, i32* %13, align 4
  br label %406

587:                                              ; preds = %406
  %588 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %10, align 8
  %589 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %588, i32 0, i32 4
  %590 = load i32, i32* %589, align 8
  %591 = load i32, i32* %14, align 4
  %592 = call i32 @cc_send_sync_request(i32 %590, %struct.cc_crypto_req* %9, %struct.cc_hw_desc* %29, i32 %591)
  store i32 %592, i32* %15, align 4
  br label %593

593:                                              ; preds = %587, %401
  %594 = load i32, i32* %15, align 4
  %595 = icmp ne i32 %594, 0
  br i1 %595, label %596, label %600

596:                                              ; preds = %593
  %597 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %598 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %599 = call i32 @crypto_ahash_set_flags(%struct.crypto_ahash* %597, i32 %598)
  br label %600

600:                                              ; preds = %596, %593
  %601 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %10, align 8
  %602 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %601, i32 0, i32 3
  %603 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %602, i32 0, i32 2
  %604 = load i64, i64* %603, align 8
  %605 = icmp ne i64 %604, 0
  br i1 %605, label %606, label %628

606:                                              ; preds = %600
  %607 = load %struct.device*, %struct.device** %19, align 8
  %608 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %10, align 8
  %609 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %608, i32 0, i32 3
  %610 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %609, i32 0, i32 2
  %611 = load i64, i64* %610, align 8
  %612 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %10, align 8
  %613 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %612, i32 0, i32 3
  %614 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %613, i32 0, i32 0
  %615 = load i32, i32* %614, align 8
  %616 = load i32, i32* @DMA_TO_DEVICE, align 4
  %617 = call i32 @dma_unmap_single(%struct.device* %607, i64 %611, i32 %615, i32 %616)
  %618 = load %struct.device*, %struct.device** %19, align 8
  %619 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %10, align 8
  %620 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %619, i32 0, i32 3
  %621 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %620, i32 0, i32 2
  %622 = ptrtoint i64* %621 to i32
  %623 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %10, align 8
  %624 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %623, i32 0, i32 3
  %625 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %624, i32 0, i32 0
  %626 = load i32, i32* %625, align 8
  %627 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %618, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i32 %622, i32 %626)
  br label %628

628:                                              ; preds = %606, %600
  %629 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %10, align 8
  %630 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %629, i32 0, i32 3
  %631 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %630, i32 0, i32 1
  %632 = load i32*, i32** %631, align 8
  %633 = call i32 @kzfree(i32* %632)
  %634 = load i32, i32* %15, align 4
  store i32 %634, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %635

635:                                              ; preds = %628, %101, %78
  %636 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %636)
  %637 = load i32, i32* %4, align 4
  ret i32 %637
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.cc_hash_ctx* @crypto_ahash_ctx(%struct.crypto_ahash*) #3

declare dso_local %struct.device* @drvdata_to_dev(i32) #3

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, ...) #3

declare dso_local i32 @crypto_tfm_alg_blocksize(i32*) #3

declare dso_local i32 @crypto_ahash_digestsize(%struct.crypto_ahash*) #3

declare dso_local i32 @cc_larval_digest_addr(i32, i32) #3

declare dso_local i32* @kmemdup(i32*, i32, i32) #3

declare dso_local i64 @dma_map_single(%struct.device*, i8*, i32, i32) #3

declare dso_local i64 @dma_mapping_error(%struct.device*, i64) #3

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #3

declare dso_local i32 @kzfree(i32*) #3

declare dso_local i32 @hw_desc_init(%struct.cc_hw_desc*) #3

declare dso_local i32 @set_cipher_mode(%struct.cc_hw_desc*, i32) #3

declare dso_local i32 @set_din_sram(%struct.cc_hw_desc*, i32, i32) #3

declare dso_local i32 @set_flow_mode(%struct.cc_hw_desc*, i32) #3

declare dso_local i32 @set_setup_mode(%struct.cc_hw_desc*, i32) #3

declare dso_local i32 @set_din_const(%struct.cc_hw_desc*, i32, i32) #3

declare dso_local i32 @set_cipher_config1(%struct.cc_hw_desc*, i32) #3

declare dso_local i32 @set_din_type(%struct.cc_hw_desc*, i32, i64, i32, i32) #3

declare dso_local i32 @set_dout_dlli(%struct.cc_hw_desc*, i64, i32, i32, i32) #3

declare dso_local i32 @cc_set_endianity(i32, %struct.cc_hw_desc*) #3

declare dso_local i32 @cc_send_sync_request(i32, %struct.cc_crypto_req*, %struct.cc_hw_desc*, i32) #3

declare dso_local i32 @set_xor_val(%struct.cc_hw_desc*, i32) #3

declare dso_local i32 @set_xor_active(%struct.cc_hw_desc*) #3

declare dso_local i32 @crypto_ahash_set_flags(%struct.crypto_ahash*, i32) #3

declare dso_local i32 @dma_unmap_single(%struct.device*, i64, i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

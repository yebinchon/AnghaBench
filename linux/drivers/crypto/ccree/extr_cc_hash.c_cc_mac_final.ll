; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_hash.c_cc_mac_final.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_hash.c_cc_mac_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32, i32, i32, i32 }
%struct.ahash_req_ctx = type { i64, i64, i64 }
%struct.crypto_ahash = type { i32 }
%struct.cc_hash_ctx = type { i64, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }
%struct.cc_crypto_req = type { i8*, i8* }
%struct.cc_hw_desc = type { i32 }

@CC_MAX_HASH_SEQ_LEN = common dso_local global i32 0, align 4
@DRV_CIPHER_XCBC_MAC = common dso_local global i64 0, align 8
@CC_AES_128_BIT_KEY_SIZE = common dso_local global i64 0, align 8
@AES_MAX_KEY_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"===== final  xcbc reminder (%d) ====\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"map_ahash_source() failed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"map_ahash_request_final() failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"map_ahash_digest() failed\0A\00", align 1
@cc_hash_complete = common dso_local global i64 0, align 8
@DRV_CIPHER_ECB = common dso_local global i64 0, align 8
@DRV_CRYPTO_DIRECTION_DECRYPT = common dso_local global i32 0, align 4
@DMA_DLLI = common dso_local global i32 0, align 4
@XCBC_MAC_K1_OFFSET = common dso_local global i64 0, align 8
@NS_BIT = common dso_local global i32 0, align 4
@S_DIN_to_AES = common dso_local global i32 0, align 4
@SETUP_LOAD_KEY0 = common dso_local global i32 0, align 4
@CC_AES_BLOCK_SIZE = common dso_local global i64 0, align 8
@DIN_AES_DOUT = common dso_local global i32 0, align 4
@S_AES_to_DOUT = common dso_local global i32 0, align 4
@SETUP_WRITE_STATE0 = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"send_request() failed (rc=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @cc_mac_final to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cc_mac_final(%struct.ahash_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca %struct.ahash_req_ctx*, align 8
  %5 = alloca %struct.crypto_ahash*, align 8
  %6 = alloca %struct.cc_hash_ctx*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.cc_crypto_req, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  %19 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %20 = call %struct.ahash_req_ctx* @ahash_request_ctx(%struct.ahash_request* %19)
  store %struct.ahash_req_ctx* %20, %struct.ahash_req_ctx** %4, align 8
  %21 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %22 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %21)
  store %struct.crypto_ahash* %22, %struct.crypto_ahash** %5, align 8
  %23 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %24 = call %struct.cc_hash_ctx* @crypto_ahash_ctx(%struct.crypto_ahash* %23)
  store %struct.cc_hash_ctx* %24, %struct.cc_hash_ctx** %6, align 8
  %25 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %26 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.device* @drvdata_to_dev(i32 %27)
  store %struct.device* %28, %struct.device** %7, align 8
  %29 = bitcast %struct.cc_crypto_req* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %29, i8 0, i64 16, i1 false)
  %30 = load i32, i32* @CC_MAX_HASH_SEQ_LEN, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %9, align 8
  %33 = alloca %struct.cc_hw_desc, i64 %31, align 16
  store i64 %31, i64* %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %34 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %35 = call i64 @crypto_ahash_digestsize(%struct.crypto_ahash* %34)
  store i64 %35, i64* %15, align 8
  %36 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %37 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %36, i32 0, i32 2
  %38 = call i32 @cc_gfp_flags(i32* %37)
  store i32 %38, i32* %16, align 4
  %39 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %4, align 8
  %40 = call i64* @cc_hash_buf_cnt(%struct.ahash_req_ctx* %39)
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %17, align 8
  %42 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %43 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @DRV_CIPHER_XCBC_MAC, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %1
  %48 = load i64, i64* @CC_AES_128_BIT_KEY_SIZE, align 8
  store i64 %48, i64* %13, align 8
  %49 = load i64, i64* @CC_AES_128_BIT_KEY_SIZE, align 8
  store i64 %49, i64* %14, align 8
  br label %71

50:                                               ; preds = %1
  %51 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %52 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, 24
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i64, i64* @AES_MAX_KEY_SIZE, align 8
  br label %64

58:                                               ; preds = %50
  %59 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %60 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  br label %64

64:                                               ; preds = %58, %56
  %65 = phi i64 [ %57, %56 ], [ %63, %58 ]
  store i64 %65, i64* %13, align 8
  %66 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %67 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  store i64 %70, i64* %14, align 8
  br label %71

71:                                               ; preds = %64, %47
  %72 = load %struct.device*, %struct.device** %7, align 8
  %73 = load i64, i64* %17, align 8
  %74 = call i32 @dev_dbg(%struct.device* %72, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %73)
  %75 = load %struct.device*, %struct.device** %7, align 8
  %76 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %4, align 8
  %77 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %78 = call i64 @cc_map_req(%struct.device* %75, %struct.ahash_req_ctx* %76, %struct.cc_hash_ctx* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %71
  %81 = load %struct.device*, %struct.device** %7, align 8
  %82 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %81, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %2, align 4
  store i32 1, i32* %18, align 4
  br label %381

85:                                               ; preds = %71
  %86 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %87 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %4, align 8
  %90 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %91 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %94 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %16, align 4
  %97 = call i64 @cc_map_hash_request_final(i32 %88, %struct.ahash_req_ctx* %89, i32 %92, i32 %95, i32 0, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %85
  %100 = load %struct.device*, %struct.device** %7, align 8
  %101 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %100, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %102 = load %struct.device*, %struct.device** %7, align 8
  %103 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %4, align 8
  %104 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %105 = call i32 @cc_unmap_req(%struct.device* %102, %struct.ahash_req_ctx* %103, %struct.cc_hash_ctx* %104)
  %106 = load i32, i32* @ENOMEM, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %2, align 4
  store i32 1, i32* %18, align 4
  br label %381

108:                                              ; preds = %85
  %109 = load %struct.device*, %struct.device** %7, align 8
  %110 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %4, align 8
  %111 = load i64, i64* %15, align 8
  %112 = call i64 @cc_map_result(%struct.device* %109, %struct.ahash_req_ctx* %110, i64 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %129

114:                                              ; preds = %108
  %115 = load %struct.device*, %struct.device** %7, align 8
  %116 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %115, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %117 = load %struct.device*, %struct.device** %7, align 8
  %118 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %4, align 8
  %119 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %120 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @cc_unmap_hash_request(%struct.device* %117, %struct.ahash_req_ctx* %118, i32 %121, i32 1)
  %123 = load %struct.device*, %struct.device** %7, align 8
  %124 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %4, align 8
  %125 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %126 = call i32 @cc_unmap_req(%struct.device* %123, %struct.ahash_req_ctx* %124, %struct.cc_hash_ctx* %125)
  %127 = load i32, i32* @ENOMEM, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %2, align 4
  store i32 1, i32* %18, align 4
  br label %381

129:                                              ; preds = %108
  %130 = load i64, i64* @cc_hash_complete, align 8
  %131 = inttoptr i64 %130 to i8*
  %132 = getelementptr inbounds %struct.cc_crypto_req, %struct.cc_crypto_req* %8, i32 0, i32 1
  store i8* %131, i8** %132, align 8
  %133 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %134 = bitcast %struct.ahash_request* %133 to i8*
  %135 = getelementptr inbounds %struct.cc_crypto_req, %struct.cc_crypto_req* %8, i32 0, i32 0
  store i8* %134, i8** %135, align 8
  %136 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %4, align 8
  %137 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %231

140:                                              ; preds = %129
  %141 = load i64, i64* %17, align 8
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %231

143:                                              ; preds = %140
  %144 = load i32, i32* %11, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %33, i64 %145
  %147 = call i32 @hw_desc_init(%struct.cc_hw_desc* %146)
  %148 = load i32, i32* %11, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %33, i64 %149
  %151 = load i64, i64* @DRV_CIPHER_ECB, align 8
  %152 = call i32 @set_cipher_mode(%struct.cc_hw_desc* %150, i64 %151)
  %153 = load i32, i32* %11, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %33, i64 %154
  %156 = load i32, i32* @DRV_CRYPTO_DIRECTION_DECRYPT, align 4
  %157 = call i32 @set_cipher_config0(%struct.cc_hw_desc* %155, i32 %156)
  %158 = load i32, i32* %11, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %33, i64 %159
  %161 = load i32, i32* @DMA_DLLI, align 4
  %162 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %163 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @XCBC_MAC_K1_OFFSET, align 8
  %166 = add nsw i64 %164, %165
  %167 = load i64, i64* %13, align 8
  %168 = load i32, i32* @NS_BIT, align 4
  %169 = call i32 @set_din_type(%struct.cc_hw_desc* %160, i32 %161, i64 %166, i64 %167, i32 %168)
  %170 = load i32, i32* %11, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %33, i64 %171
  %173 = load i64, i64* %14, align 8
  %174 = call i32 @set_key_size_aes(%struct.cc_hw_desc* %172, i64 %173)
  %175 = load i32, i32* %11, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %33, i64 %176
  %178 = load i32, i32* @S_DIN_to_AES, align 4
  %179 = call i32 @set_flow_mode(%struct.cc_hw_desc* %177, i32 %178)
  %180 = load i32, i32* %11, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %33, i64 %181
  %183 = load i32, i32* @SETUP_LOAD_KEY0, align 4
  %184 = call i32 @set_setup_mode(%struct.cc_hw_desc* %182, i32 %183)
  %185 = load i32, i32* %11, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %11, align 4
  %187 = load i32, i32* %11, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %33, i64 %188
  %190 = call i32 @hw_desc_init(%struct.cc_hw_desc* %189)
  %191 = load i32, i32* %11, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %33, i64 %192
  %194 = load i32, i32* @DMA_DLLI, align 4
  %195 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %4, align 8
  %196 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %195, i32 0, i32 2
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @CC_AES_BLOCK_SIZE, align 8
  %199 = load i32, i32* @NS_BIT, align 4
  %200 = call i32 @set_din_type(%struct.cc_hw_desc* %193, i32 %194, i64 %197, i64 %198, i32 %199)
  %201 = load i32, i32* %11, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %33, i64 %202
  %204 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %4, align 8
  %205 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %204, i32 0, i32 2
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @CC_AES_BLOCK_SIZE, align 8
  %208 = load i32, i32* @NS_BIT, align 4
  %209 = call i32 @set_dout_dlli(%struct.cc_hw_desc* %203, i64 %206, i64 %207, i32 %208, i32 0)
  %210 = load i32, i32* %11, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %33, i64 %211
  %213 = load i32, i32* @DIN_AES_DOUT, align 4
  %214 = call i32 @set_flow_mode(%struct.cc_hw_desc* %212, i32 %213)
  %215 = load i32, i32* %11, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %11, align 4
  %217 = load i32, i32* %11, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %33, i64 %218
  %220 = call i32 @hw_desc_init(%struct.cc_hw_desc* %219)
  %221 = load i32, i32* %11, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %33, i64 %222
  %224 = call i32 @set_din_no_dma(%struct.cc_hw_desc* %223, i32 0, i32 16777200)
  %225 = load i32, i32* %11, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %33, i64 %226
  %228 = call i32 @set_dout_no_dma(%struct.cc_hw_desc* %227, i32 0, i32 0, i32 1)
  %229 = load i32, i32* %11, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %11, align 4
  br label %231

231:                                              ; preds = %143, %140, %129
  %232 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %233 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = load i64, i64* @DRV_CIPHER_XCBC_MAC, align 8
  %236 = icmp eq i64 %234, %235
  br i1 %236, label %237, label %240

237:                                              ; preds = %231
  %238 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %239 = call i32 @cc_setup_xcbc(%struct.ahash_request* %238, %struct.cc_hw_desc* %33, i32* %11)
  br label %243

240:                                              ; preds = %231
  %241 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %242 = call i32 @cc_setup_cmac(%struct.ahash_request* %241, %struct.cc_hw_desc* %33, i32* %11)
  br label %243

243:                                              ; preds = %240, %237
  %244 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %4, align 8
  %245 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = icmp eq i64 %246, 0
  br i1 %247, label %248, label %276

248:                                              ; preds = %243
  %249 = load i32, i32* %11, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %33, i64 %250
  %252 = call i32 @hw_desc_init(%struct.cc_hw_desc* %251)
  %253 = load i32, i32* %11, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %33, i64 %254
  %256 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %257 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = call i32 @set_cipher_mode(%struct.cc_hw_desc* %255, i64 %258)
  %260 = load i32, i32* %11, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %33, i64 %261
  %263 = load i64, i64* %14, align 8
  %264 = call i32 @set_key_size_aes(%struct.cc_hw_desc* %262, i64 %263)
  %265 = load i32, i32* %11, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %33, i64 %266
  %268 = call i32 @set_cmac_size0_mode(%struct.cc_hw_desc* %267)
  %269 = load i32, i32* %11, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %33, i64 %270
  %272 = load i32, i32* @S_DIN_to_AES, align 4
  %273 = call i32 @set_flow_mode(%struct.cc_hw_desc* %271, i32 %272)
  %274 = load i32, i32* %11, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %11, align 4
  br label %302

276:                                              ; preds = %243
  %277 = load i64, i64* %17, align 8
  %278 = icmp sgt i64 %277, 0
  br i1 %278, label %279, label %284

279:                                              ; preds = %276
  %280 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %4, align 8
  %281 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %282 = load i32, i32* @DIN_AES_DOUT, align 4
  %283 = call i32 @cc_set_desc(%struct.ahash_req_ctx* %280, %struct.cc_hash_ctx* %281, i32 %282, %struct.cc_hw_desc* %33, i32 0, i32* %11)
  br label %301

284:                                              ; preds = %276
  %285 = load i32, i32* %11, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %33, i64 %286
  %288 = call i32 @hw_desc_init(%struct.cc_hw_desc* %287)
  %289 = load i32, i32* %11, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %33, i64 %290
  %292 = load i64, i64* @CC_AES_BLOCK_SIZE, align 8
  %293 = call i32 @set_din_const(%struct.cc_hw_desc* %291, i32 0, i64 %292)
  %294 = load i32, i32* %11, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %33, i64 %295
  %297 = load i32, i32* @DIN_AES_DOUT, align 4
  %298 = call i32 @set_flow_mode(%struct.cc_hw_desc* %296, i32 %297)
  %299 = load i32, i32* %11, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %11, align 4
  br label %301

301:                                              ; preds = %284, %279
  br label %302

302:                                              ; preds = %301, %248
  %303 = load i32, i32* %11, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %33, i64 %304
  %306 = call i32 @hw_desc_init(%struct.cc_hw_desc* %305)
  %307 = load i32, i32* %11, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %33, i64 %308
  %310 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %4, align 8
  %311 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %310, i32 0, i32 1
  %312 = load i64, i64* %311, align 8
  %313 = load i64, i64* %15, align 8
  %314 = load i32, i32* @NS_BIT, align 4
  %315 = call i32 @set_dout_dlli(%struct.cc_hw_desc* %309, i64 %312, i64 %313, i32 %314, i32 1)
  %316 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %317 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 8
  %319 = load i32, i32* %11, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %33, i64 %320
  %322 = call i32 @set_queue_last_ind(i32 %318, %struct.cc_hw_desc* %321)
  %323 = load i32, i32* %11, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %33, i64 %324
  %326 = load i32, i32* @S_AES_to_DOUT, align 4
  %327 = call i32 @set_flow_mode(%struct.cc_hw_desc* %325, i32 %326)
  %328 = load i32, i32* %11, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %33, i64 %329
  %331 = load i32, i32* @SETUP_WRITE_STATE0, align 4
  %332 = call i32 @set_setup_mode(%struct.cc_hw_desc* %330, i32 %331)
  %333 = load i32, i32* %11, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %33, i64 %334
  %336 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %337 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %336, i32 0, i32 0
  %338 = load i64, i64* %337, align 8
  %339 = call i32 @set_cipher_mode(%struct.cc_hw_desc* %335, i64 %338)
  %340 = load i32, i32* %11, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %11, align 4
  %342 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %343 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %342, i32 0, i32 1
  %344 = load i32, i32* %343, align 8
  %345 = load i32, i32* %11, align 4
  %346 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %347 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %346, i32 0, i32 2
  %348 = call i32 @cc_send_request(i32 %344, %struct.cc_crypto_req* %8, %struct.cc_hw_desc* %33, i32 %345, i32* %347)
  store i32 %348, i32* %12, align 4
  %349 = load i32, i32* %12, align 4
  %350 = load i32, i32* @EINPROGRESS, align 4
  %351 = sub nsw i32 0, %350
  %352 = icmp ne i32 %349, %351
  br i1 %352, label %353, label %379

353:                                              ; preds = %302
  %354 = load i32, i32* %12, align 4
  %355 = load i32, i32* @EBUSY, align 4
  %356 = sub nsw i32 0, %355
  %357 = icmp ne i32 %354, %356
  br i1 %357, label %358, label %379

358:                                              ; preds = %353
  %359 = load %struct.device*, %struct.device** %7, align 8
  %360 = load i32, i32* %12, align 4
  %361 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %359, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %360)
  %362 = load %struct.device*, %struct.device** %7, align 8
  %363 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %4, align 8
  %364 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %365 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %364, i32 0, i32 1
  %366 = load i32, i32* %365, align 4
  %367 = call i32 @cc_unmap_hash_request(%struct.device* %362, %struct.ahash_req_ctx* %363, i32 %366, i32 1)
  %368 = load %struct.device*, %struct.device** %7, align 8
  %369 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %4, align 8
  %370 = load i64, i64* %15, align 8
  %371 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %372 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 4
  %374 = call i32 @cc_unmap_result(%struct.device* %368, %struct.ahash_req_ctx* %369, i64 %370, i32 %373)
  %375 = load %struct.device*, %struct.device** %7, align 8
  %376 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %4, align 8
  %377 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %378 = call i32 @cc_unmap_req(%struct.device* %375, %struct.ahash_req_ctx* %376, %struct.cc_hash_ctx* %377)
  br label %379

379:                                              ; preds = %358, %353, %302
  %380 = load i32, i32* %12, align 4
  store i32 %380, i32* %2, align 4
  store i32 1, i32* %18, align 4
  br label %381

381:                                              ; preds = %379, %114, %99, %80
  %382 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %382)
  %383 = load i32, i32* %2, align 4
  ret i32 %383
}

declare dso_local %struct.ahash_req_ctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local %struct.cc_hash_ctx* @crypto_ahash_ctx(%struct.crypto_ahash*) #1

declare dso_local %struct.device* @drvdata_to_dev(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i64 @crypto_ahash_digestsize(%struct.crypto_ahash*) #1

declare dso_local i32 @cc_gfp_flags(i32*) #1

declare dso_local i64* @cc_hash_buf_cnt(%struct.ahash_req_ctx*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i64) #1

declare dso_local i64 @cc_map_req(%struct.device*, %struct.ahash_req_ctx*, %struct.cc_hash_ctx*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i64 @cc_map_hash_request_final(i32, %struct.ahash_req_ctx*, i32, i32, i32, i32) #1

declare dso_local i32 @cc_unmap_req(%struct.device*, %struct.ahash_req_ctx*, %struct.cc_hash_ctx*) #1

declare dso_local i64 @cc_map_result(%struct.device*, %struct.ahash_req_ctx*, i64) #1

declare dso_local i32 @cc_unmap_hash_request(%struct.device*, %struct.ahash_req_ctx*, i32, i32) #1

declare dso_local i32 @hw_desc_init(%struct.cc_hw_desc*) #1

declare dso_local i32 @set_cipher_mode(%struct.cc_hw_desc*, i64) #1

declare dso_local i32 @set_cipher_config0(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_din_type(%struct.cc_hw_desc*, i32, i64, i64, i32) #1

declare dso_local i32 @set_key_size_aes(%struct.cc_hw_desc*, i64) #1

declare dso_local i32 @set_flow_mode(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_setup_mode(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_dout_dlli(%struct.cc_hw_desc*, i64, i64, i32, i32) #1

declare dso_local i32 @set_din_no_dma(%struct.cc_hw_desc*, i32, i32) #1

declare dso_local i32 @set_dout_no_dma(%struct.cc_hw_desc*, i32, i32, i32) #1

declare dso_local i32 @cc_setup_xcbc(%struct.ahash_request*, %struct.cc_hw_desc*, i32*) #1

declare dso_local i32 @cc_setup_cmac(%struct.ahash_request*, %struct.cc_hw_desc*, i32*) #1

declare dso_local i32 @set_cmac_size0_mode(%struct.cc_hw_desc*) #1

declare dso_local i32 @cc_set_desc(%struct.ahash_req_ctx*, %struct.cc_hash_ctx*, i32, %struct.cc_hw_desc*, i32, i32*) #1

declare dso_local i32 @set_din_const(%struct.cc_hw_desc*, i32, i64) #1

declare dso_local i32 @set_queue_last_ind(i32, %struct.cc_hw_desc*) #1

declare dso_local i32 @cc_send_request(i32, %struct.cc_crypto_req*, %struct.cc_hw_desc*, i32, i32*) #1

declare dso_local i32 @cc_unmap_result(%struct.device*, %struct.ahash_req_ctx*, i64, i32) #1

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

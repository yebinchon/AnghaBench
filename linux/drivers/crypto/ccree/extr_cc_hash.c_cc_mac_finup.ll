; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_hash.c_cc_mac_finup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_hash.c_cc_mac_finup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i64, i32, i32, i32 }
%struct.ahash_req_ctx = type { i64, i32 }
%struct.crypto_ahash = type { i32 }
%struct.cc_hash_ctx = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }
%struct.cc_crypto_req = type { i8*, i8* }
%struct.cc_hw_desc = type { i32 }

@CC_MAX_HASH_SEQ_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"===== finup xcbc(%d) ====\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"No data to update. Call to fdx_mac_final\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"map_ahash_source() failed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"map_ahash_request_final() failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"map_ahash_digest() failed\0A\00", align 1
@cc_hash_complete = common dso_local global i64 0, align 8
@DRV_CIPHER_XCBC_MAC = common dso_local global i64 0, align 8
@CC_AES_128_BIT_KEY_SIZE = common dso_local global i32 0, align 4
@S_DIN_to_AES = common dso_local global i32 0, align 4
@DIN_AES_DOUT = common dso_local global i32 0, align 4
@NS_BIT = common dso_local global i32 0, align 4
@S_AES_to_DOUT = common dso_local global i32 0, align 4
@SETUP_WRITE_STATE0 = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"send_request() failed (rc=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @cc_mac_finup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cc_mac_finup(%struct.ahash_request* %0) #0 {
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
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  %17 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %18 = call %struct.ahash_req_ctx* @ahash_request_ctx(%struct.ahash_request* %17)
  store %struct.ahash_req_ctx* %18, %struct.ahash_req_ctx** %4, align 8
  %19 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %20 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %19)
  store %struct.crypto_ahash* %20, %struct.crypto_ahash** %5, align 8
  %21 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %22 = call %struct.cc_hash_ctx* @crypto_ahash_ctx(%struct.crypto_ahash* %21)
  store %struct.cc_hash_ctx* %22, %struct.cc_hash_ctx** %6, align 8
  %23 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %24 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call %struct.device* @drvdata_to_dev(i32 %25)
  store %struct.device* %26, %struct.device** %7, align 8
  %27 = bitcast %struct.cc_crypto_req* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %27, i8 0, i64 16, i1 false)
  %28 = load i32, i32* @CC_MAX_HASH_SEQ_LEN, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %9, align 8
  %31 = alloca %struct.cc_hw_desc, i64 %29, align 16
  store i64 %29, i64* %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %32 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %33 = call i32 @crypto_ahash_digestsize(%struct.crypto_ahash* %32)
  store i32 %33, i32* %14, align 4
  %34 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %35 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %34, i32 0, i32 3
  %36 = call i32 @cc_gfp_flags(i32* %35)
  store i32 %36, i32* %15, align 4
  %37 = load %struct.device*, %struct.device** %7, align 8
  %38 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %39 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %37, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %40)
  %42 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %4, align 8
  %43 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %1
  %47 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %48 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load %struct.device*, %struct.device** %7, align 8
  %53 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %52, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %54 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %55 = call i32 @cc_mac_final(%struct.ahash_request* %54)
  store i32 %55, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %251

56:                                               ; preds = %46, %1
  %57 = load %struct.device*, %struct.device** %7, align 8
  %58 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %4, align 8
  %59 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %60 = call i64 @cc_map_req(%struct.device* %57, %struct.ahash_req_ctx* %58, %struct.cc_hash_ctx* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = load %struct.device*, %struct.device** %7, align 8
  %64 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %63, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %251

67:                                               ; preds = %56
  %68 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %69 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %4, align 8
  %72 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %73 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %76 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* %15, align 4
  %79 = call i64 @cc_map_hash_request_final(i32 %70, %struct.ahash_req_ctx* %71, i32 %74, i64 %77, i32 1, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %67
  %82 = load %struct.device*, %struct.device** %7, align 8
  %83 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %82, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %84 = load %struct.device*, %struct.device** %7, align 8
  %85 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %4, align 8
  %86 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %87 = call i32 @cc_unmap_req(%struct.device* %84, %struct.ahash_req_ctx* %85, %struct.cc_hash_ctx* %86)
  %88 = load i32, i32* @ENOMEM, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %251

90:                                               ; preds = %67
  %91 = load %struct.device*, %struct.device** %7, align 8
  %92 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %4, align 8
  %93 = load i32, i32* %14, align 4
  %94 = call i64 @cc_map_result(%struct.device* %91, %struct.ahash_req_ctx* %92, i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %111

96:                                               ; preds = %90
  %97 = load %struct.device*, %struct.device** %7, align 8
  %98 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %97, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %99 = load %struct.device*, %struct.device** %7, align 8
  %100 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %4, align 8
  %101 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %102 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @cc_unmap_hash_request(%struct.device* %99, %struct.ahash_req_ctx* %100, i32 %103, i32 1)
  %105 = load %struct.device*, %struct.device** %7, align 8
  %106 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %4, align 8
  %107 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %108 = call i32 @cc_unmap_req(%struct.device* %105, %struct.ahash_req_ctx* %106, %struct.cc_hash_ctx* %107)
  %109 = load i32, i32* @ENOMEM, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %251

111:                                              ; preds = %90
  %112 = load i64, i64* @cc_hash_complete, align 8
  %113 = inttoptr i64 %112 to i8*
  %114 = getelementptr inbounds %struct.cc_crypto_req, %struct.cc_crypto_req* %8, i32 0, i32 1
  store i8* %113, i8** %114, align 8
  %115 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %116 = bitcast %struct.ahash_request* %115 to i8*
  %117 = getelementptr inbounds %struct.cc_crypto_req, %struct.cc_crypto_req* %8, i32 0, i32 0
  store i8* %116, i8** %117, align 8
  %118 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %119 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @DRV_CIPHER_XCBC_MAC, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %111
  %124 = load i32, i32* @CC_AES_128_BIT_KEY_SIZE, align 4
  store i32 %124, i32* %13, align 4
  %125 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %126 = call i32 @cc_setup_xcbc(%struct.ahash_request* %125, %struct.cc_hw_desc* %31, i32* %11)
  br label %134

127:                                              ; preds = %111
  %128 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %129 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %13, align 4
  %132 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %133 = call i32 @cc_setup_cmac(%struct.ahash_request* %132, %struct.cc_hw_desc* %31, i32* %11)
  br label %134

134:                                              ; preds = %127, %123
  %135 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %136 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %167

139:                                              ; preds = %134
  %140 = load i32, i32* %11, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %31, i64 %141
  %143 = call i32 @hw_desc_init(%struct.cc_hw_desc* %142)
  %144 = load i32, i32* %11, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %31, i64 %145
  %147 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %148 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = call i32 @set_cipher_mode(%struct.cc_hw_desc* %146, i64 %149)
  %151 = load i32, i32* %11, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %31, i64 %152
  %154 = load i32, i32* %13, align 4
  %155 = call i32 @set_key_size_aes(%struct.cc_hw_desc* %153, i32 %154)
  %156 = load i32, i32* %11, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %31, i64 %157
  %159 = call i32 @set_cmac_size0_mode(%struct.cc_hw_desc* %158)
  %160 = load i32, i32* %11, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %31, i64 %161
  %163 = load i32, i32* @S_DIN_to_AES, align 4
  %164 = call i32 @set_flow_mode(%struct.cc_hw_desc* %162, i32 %163)
  %165 = load i32, i32* %11, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %11, align 4
  br label %172

167:                                              ; preds = %134
  %168 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %4, align 8
  %169 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %170 = load i32, i32* @DIN_AES_DOUT, align 4
  %171 = call i32 @cc_set_desc(%struct.ahash_req_ctx* %168, %struct.cc_hash_ctx* %169, i32 %170, %struct.cc_hw_desc* %31, i32 0, i32* %11)
  br label %172

172:                                              ; preds = %167, %139
  %173 = load i32, i32* %11, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %31, i64 %174
  %176 = call i32 @hw_desc_init(%struct.cc_hw_desc* %175)
  %177 = load i32, i32* %11, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %31, i64 %178
  %180 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %4, align 8
  %181 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* %14, align 4
  %184 = load i32, i32* @NS_BIT, align 4
  %185 = call i32 @set_dout_dlli(%struct.cc_hw_desc* %179, i32 %182, i32 %183, i32 %184, i32 1)
  %186 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %187 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* %11, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %31, i64 %190
  %192 = call i32 @set_queue_last_ind(i32 %188, %struct.cc_hw_desc* %191)
  %193 = load i32, i32* %11, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %31, i64 %194
  %196 = load i32, i32* @S_AES_to_DOUT, align 4
  %197 = call i32 @set_flow_mode(%struct.cc_hw_desc* %195, i32 %196)
  %198 = load i32, i32* %11, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %31, i64 %199
  %201 = load i32, i32* @SETUP_WRITE_STATE0, align 4
  %202 = call i32 @set_setup_mode(%struct.cc_hw_desc* %200, i32 %201)
  %203 = load i32, i32* %11, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %31, i64 %204
  %206 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %207 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = call i32 @set_cipher_mode(%struct.cc_hw_desc* %205, i64 %208)
  %210 = load i32, i32* %11, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %11, align 4
  %212 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %213 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* %11, align 4
  %216 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %217 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %216, i32 0, i32 3
  %218 = call i32 @cc_send_request(i32 %214, %struct.cc_crypto_req* %8, %struct.cc_hw_desc* %31, i32 %215, i32* %217)
  store i32 %218, i32* %12, align 4
  %219 = load i32, i32* %12, align 4
  %220 = load i32, i32* @EINPROGRESS, align 4
  %221 = sub nsw i32 0, %220
  %222 = icmp ne i32 %219, %221
  br i1 %222, label %223, label %249

223:                                              ; preds = %172
  %224 = load i32, i32* %12, align 4
  %225 = load i32, i32* @EBUSY, align 4
  %226 = sub nsw i32 0, %225
  %227 = icmp ne i32 %224, %226
  br i1 %227, label %228, label %249

228:                                              ; preds = %223
  %229 = load %struct.device*, %struct.device** %7, align 8
  %230 = load i32, i32* %12, align 4
  %231 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %229, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %230)
  %232 = load %struct.device*, %struct.device** %7, align 8
  %233 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %4, align 8
  %234 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %235 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @cc_unmap_hash_request(%struct.device* %232, %struct.ahash_req_ctx* %233, i32 %236, i32 1)
  %238 = load %struct.device*, %struct.device** %7, align 8
  %239 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %4, align 8
  %240 = load i32, i32* %14, align 4
  %241 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %242 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 8
  %244 = call i32 @cc_unmap_result(%struct.device* %238, %struct.ahash_req_ctx* %239, i32 %240, i32 %243)
  %245 = load %struct.device*, %struct.device** %7, align 8
  %246 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %4, align 8
  %247 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %248 = call i32 @cc_unmap_req(%struct.device* %245, %struct.ahash_req_ctx* %246, %struct.cc_hash_ctx* %247)
  br label %249

249:                                              ; preds = %228, %223, %172
  %250 = load i32, i32* %12, align 4
  store i32 %250, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %251

251:                                              ; preds = %249, %96, %81, %62, %51
  %252 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %252)
  %253 = load i32, i32* %2, align 4
  ret i32 %253
}

declare dso_local %struct.ahash_req_ctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local %struct.cc_hash_ctx* @crypto_ahash_ctx(%struct.crypto_ahash*) #1

declare dso_local %struct.device* @drvdata_to_dev(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i32 @crypto_ahash_digestsize(%struct.crypto_ahash*) #1

declare dso_local i32 @cc_gfp_flags(i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i32 @cc_mac_final(%struct.ahash_request*) #1

declare dso_local i64 @cc_map_req(%struct.device*, %struct.ahash_req_ctx*, %struct.cc_hash_ctx*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i64 @cc_map_hash_request_final(i32, %struct.ahash_req_ctx*, i32, i64, i32, i32) #1

declare dso_local i32 @cc_unmap_req(%struct.device*, %struct.ahash_req_ctx*, %struct.cc_hash_ctx*) #1

declare dso_local i64 @cc_map_result(%struct.device*, %struct.ahash_req_ctx*, i32) #1

declare dso_local i32 @cc_unmap_hash_request(%struct.device*, %struct.ahash_req_ctx*, i32, i32) #1

declare dso_local i32 @cc_setup_xcbc(%struct.ahash_request*, %struct.cc_hw_desc*, i32*) #1

declare dso_local i32 @cc_setup_cmac(%struct.ahash_request*, %struct.cc_hw_desc*, i32*) #1

declare dso_local i32 @hw_desc_init(%struct.cc_hw_desc*) #1

declare dso_local i32 @set_cipher_mode(%struct.cc_hw_desc*, i64) #1

declare dso_local i32 @set_key_size_aes(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_cmac_size0_mode(%struct.cc_hw_desc*) #1

declare dso_local i32 @set_flow_mode(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @cc_set_desc(%struct.ahash_req_ctx*, %struct.cc_hash_ctx*, i32, %struct.cc_hw_desc*, i32, i32*) #1

declare dso_local i32 @set_dout_dlli(%struct.cc_hw_desc*, i32, i32, i32, i32) #1

declare dso_local i32 @set_queue_last_ind(i32, %struct.cc_hw_desc*) #1

declare dso_local i32 @set_setup_mode(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @cc_send_request(i32, %struct.cc_crypto_req*, %struct.cc_hw_desc*, i32, i32*) #1

declare dso_local i32 @cc_unmap_result(%struct.device*, %struct.ahash_req_ctx*, i32, i32) #1

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

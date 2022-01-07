; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_hash.c_cc_mac_digest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_hash.c_cc_mac_digest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32, i32, i32, i32 }
%struct.ahash_req_ctx = type { i32 }
%struct.crypto_ahash = type { i32 }
%struct.cc_hash_ctx = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }
%struct.cc_crypto_req = type { i8*, i8* }
%struct.cc_hw_desc = type { i32 }

@CC_MAX_HASH_SEQ_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"===== -digest mac (%d) ====\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"map_ahash_source() failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"map_ahash_digest() failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"map_ahash_request_final() failed\0A\00", align 1
@cc_digest_complete = common dso_local global i64 0, align 8
@DRV_CIPHER_XCBC_MAC = common dso_local global i64 0, align 8
@CC_AES_128_BIT_KEY_SIZE = common dso_local global i32 0, align 4
@S_DIN_to_AES = common dso_local global i32 0, align 4
@DIN_AES_DOUT = common dso_local global i32 0, align 4
@CC_AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@NS_BIT = common dso_local global i32 0, align 4
@S_AES_to_DOUT = common dso_local global i32 0, align 4
@SETUP_WRITE_STATE0 = common dso_local global i32 0, align 4
@DESC_DIRECTION_ENCRYPT_ENCRYPT = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"send_request() failed (rc=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @cc_mac_digest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cc_mac_digest(%struct.ahash_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca %struct.ahash_req_ctx*, align 8
  %5 = alloca %struct.crypto_ahash*, align 8
  %6 = alloca %struct.cc_hash_ctx*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.cc_crypto_req, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
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
  %27 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %28 = call i32 @crypto_ahash_digestsize(%struct.crypto_ahash* %27)
  store i32 %28, i32* %8, align 4
  %29 = bitcast %struct.cc_crypto_req* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %29, i8 0, i64 16, i1 false)
  %30 = load i32, i32* @CC_MAX_HASH_SEQ_LEN, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %10, align 8
  %33 = alloca %struct.cc_hw_desc, i64 %31, align 16
  store i64 %31, i64* %11, align 8
  store i32 0, i32* %13, align 4
  %34 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %35 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %34, i32 0, i32 2
  %36 = call i32 @cc_gfp_flags(i32* %35)
  store i32 %36, i32* %15, align 4
  %37 = load %struct.device*, %struct.device** %7, align 8
  %38 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %39 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dev_dbg(%struct.device* %37, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load %struct.device*, %struct.device** %7, align 8
  %43 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %4, align 8
  %44 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %45 = call i32 @cc_init_req(%struct.device* %42, %struct.ahash_req_ctx* %43, %struct.cc_hash_ctx* %44)
  %46 = load %struct.device*, %struct.device** %7, align 8
  %47 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %4, align 8
  %48 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %49 = call i64 @cc_map_req(%struct.device* %46, %struct.ahash_req_ctx* %47, %struct.cc_hash_ctx* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %1
  %52 = load %struct.device*, %struct.device** %7, align 8
  %53 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %52, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %239

56:                                               ; preds = %1
  %57 = load %struct.device*, %struct.device** %7, align 8
  %58 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %4, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i64 @cc_map_result(%struct.device* %57, %struct.ahash_req_ctx* %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %56
  %63 = load %struct.device*, %struct.device** %7, align 8
  %64 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %63, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %65 = load %struct.device*, %struct.device** %7, align 8
  %66 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %4, align 8
  %67 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %68 = call i32 @cc_unmap_req(%struct.device* %65, %struct.ahash_req_ctx* %66, %struct.cc_hash_ctx* %67)
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %239

71:                                               ; preds = %56
  %72 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %73 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %4, align 8
  %76 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %77 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %80 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %15, align 4
  %83 = call i64 @cc_map_hash_request_final(i32 %74, %struct.ahash_req_ctx* %75, i32 %78, i32 %81, i32 1, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %71
  %86 = load %struct.device*, %struct.device** %7, align 8
  %87 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %86, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %88 = load %struct.device*, %struct.device** %7, align 8
  %89 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %4, align 8
  %90 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %91 = call i32 @cc_unmap_req(%struct.device* %88, %struct.ahash_req_ctx* %89, %struct.cc_hash_ctx* %90)
  %92 = load i32, i32* @ENOMEM, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %239

94:                                               ; preds = %71
  %95 = load i64, i64* @cc_digest_complete, align 8
  %96 = inttoptr i64 %95 to i8*
  %97 = getelementptr inbounds %struct.cc_crypto_req, %struct.cc_crypto_req* %9, i32 0, i32 1
  store i8* %96, i8** %97, align 8
  %98 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %99 = bitcast %struct.ahash_request* %98 to i8*
  %100 = getelementptr inbounds %struct.cc_crypto_req, %struct.cc_crypto_req* %9, i32 0, i32 0
  store i8* %99, i8** %100, align 8
  %101 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %102 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @DRV_CIPHER_XCBC_MAC, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %94
  %107 = load i32, i32* @CC_AES_128_BIT_KEY_SIZE, align 4
  store i32 %107, i32* %12, align 4
  %108 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %109 = call i32 @cc_setup_xcbc(%struct.ahash_request* %108, %struct.cc_hw_desc* %33, i32* %13)
  br label %117

110:                                              ; preds = %94
  %111 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %112 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %12, align 4
  %115 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %116 = call i32 @cc_setup_cmac(%struct.ahash_request* %115, %struct.cc_hw_desc* %33, i32* %13)
  br label %117

117:                                              ; preds = %110, %106
  %118 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %119 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %150

122:                                              ; preds = %117
  %123 = load i32, i32* %13, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %33, i64 %124
  %126 = call i32 @hw_desc_init(%struct.cc_hw_desc* %125)
  %127 = load i32, i32* %13, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %33, i64 %128
  %130 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %131 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @set_cipher_mode(%struct.cc_hw_desc* %129, i64 %132)
  %134 = load i32, i32* %13, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %33, i64 %135
  %137 = load i32, i32* %12, align 4
  %138 = call i32 @set_key_size_aes(%struct.cc_hw_desc* %136, i32 %137)
  %139 = load i32, i32* %13, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %33, i64 %140
  %142 = call i32 @set_cmac_size0_mode(%struct.cc_hw_desc* %141)
  %143 = load i32, i32* %13, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %33, i64 %144
  %146 = load i32, i32* @S_DIN_to_AES, align 4
  %147 = call i32 @set_flow_mode(%struct.cc_hw_desc* %145, i32 %146)
  %148 = load i32, i32* %13, align 4
  %149 = add i32 %148, 1
  store i32 %149, i32* %13, align 4
  br label %155

150:                                              ; preds = %117
  %151 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %4, align 8
  %152 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %153 = load i32, i32* @DIN_AES_DOUT, align 4
  %154 = call i32 @cc_set_desc(%struct.ahash_req_ctx* %151, %struct.cc_hash_ctx* %152, i32 %153, %struct.cc_hw_desc* %33, i32 0, i32* %13)
  br label %155

155:                                              ; preds = %150, %122
  %156 = load i32, i32* %13, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %33, i64 %157
  %159 = call i32 @hw_desc_init(%struct.cc_hw_desc* %158)
  %160 = load i32, i32* %13, align 4
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %33, i64 %161
  %163 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %4, align 8
  %164 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @CC_AES_BLOCK_SIZE, align 4
  %167 = load i32, i32* @NS_BIT, align 4
  %168 = call i32 @set_dout_dlli(%struct.cc_hw_desc* %162, i32 %165, i32 %166, i32 %167, i32 1)
  %169 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %170 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* %13, align 4
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %33, i64 %173
  %175 = call i32 @set_queue_last_ind(i32 %171, %struct.cc_hw_desc* %174)
  %176 = load i32, i32* %13, align 4
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %33, i64 %177
  %179 = load i32, i32* @S_AES_to_DOUT, align 4
  %180 = call i32 @set_flow_mode(%struct.cc_hw_desc* %178, i32 %179)
  %181 = load i32, i32* %13, align 4
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %33, i64 %182
  %184 = load i32, i32* @SETUP_WRITE_STATE0, align 4
  %185 = call i32 @set_setup_mode(%struct.cc_hw_desc* %183, i32 %184)
  %186 = load i32, i32* %13, align 4
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %33, i64 %187
  %189 = load i32, i32* @DESC_DIRECTION_ENCRYPT_ENCRYPT, align 4
  %190 = call i32 @set_cipher_config0(%struct.cc_hw_desc* %188, i32 %189)
  %191 = load i32, i32* %13, align 4
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %33, i64 %192
  %194 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %195 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = call i32 @set_cipher_mode(%struct.cc_hw_desc* %193, i64 %196)
  %198 = load i32, i32* %13, align 4
  %199 = add i32 %198, 1
  store i32 %199, i32* %13, align 4
  %200 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %201 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* %13, align 4
  %204 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %205 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %204, i32 0, i32 2
  %206 = call i32 @cc_send_request(i32 %202, %struct.cc_crypto_req* %9, %struct.cc_hw_desc* %33, i32 %203, i32* %205)
  store i32 %206, i32* %14, align 4
  %207 = load i32, i32* %14, align 4
  %208 = load i32, i32* @EINPROGRESS, align 4
  %209 = sub nsw i32 0, %208
  %210 = icmp ne i32 %207, %209
  br i1 %210, label %211, label %237

211:                                              ; preds = %155
  %212 = load i32, i32* %14, align 4
  %213 = load i32, i32* @EBUSY, align 4
  %214 = sub nsw i32 0, %213
  %215 = icmp ne i32 %212, %214
  br i1 %215, label %216, label %237

216:                                              ; preds = %211
  %217 = load %struct.device*, %struct.device** %7, align 8
  %218 = load i32, i32* %14, align 4
  %219 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %217, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %218)
  %220 = load %struct.device*, %struct.device** %7, align 8
  %221 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %4, align 8
  %222 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %223 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @cc_unmap_hash_request(%struct.device* %220, %struct.ahash_req_ctx* %221, i32 %224, i32 1)
  %226 = load %struct.device*, %struct.device** %7, align 8
  %227 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %4, align 8
  %228 = load i32, i32* %8, align 4
  %229 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %230 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @cc_unmap_result(%struct.device* %226, %struct.ahash_req_ctx* %227, i32 %228, i32 %231)
  %233 = load %struct.device*, %struct.device** %7, align 8
  %234 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %4, align 8
  %235 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %236 = call i32 @cc_unmap_req(%struct.device* %233, %struct.ahash_req_ctx* %234, %struct.cc_hash_ctx* %235)
  br label %237

237:                                              ; preds = %216, %211, %155
  %238 = load i32, i32* %14, align 4
  store i32 %238, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %239

239:                                              ; preds = %237, %85, %62, %51
  %240 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %240)
  %241 = load i32, i32* %2, align 4
  ret i32 %241
}

declare dso_local %struct.ahash_req_ctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local %struct.cc_hash_ctx* @crypto_ahash_ctx(%struct.crypto_ahash*) #1

declare dso_local %struct.device* @drvdata_to_dev(i32) #1

declare dso_local i32 @crypto_ahash_digestsize(%struct.crypto_ahash*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i32 @cc_gfp_flags(i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @cc_init_req(%struct.device*, %struct.ahash_req_ctx*, %struct.cc_hash_ctx*) #1

declare dso_local i64 @cc_map_req(%struct.device*, %struct.ahash_req_ctx*, %struct.cc_hash_ctx*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i64 @cc_map_result(%struct.device*, %struct.ahash_req_ctx*, i32) #1

declare dso_local i32 @cc_unmap_req(%struct.device*, %struct.ahash_req_ctx*, %struct.cc_hash_ctx*) #1

declare dso_local i64 @cc_map_hash_request_final(i32, %struct.ahash_req_ctx*, i32, i32, i32, i32) #1

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

declare dso_local i32 @set_cipher_config0(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @cc_send_request(i32, %struct.cc_crypto_req*, %struct.cc_hw_desc*, i32, i32*) #1

declare dso_local i32 @cc_unmap_hash_request(%struct.device*, %struct.ahash_req_ctx*, i32, i32) #1

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

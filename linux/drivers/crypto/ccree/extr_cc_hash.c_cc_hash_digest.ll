; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_hash.c_cc_hash_digest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_hash.c_cc_hash_digest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32, i32, i32*, %struct.scatterlist* }
%struct.scatterlist = type { i32 }
%struct.ahash_req_ctx = type { i32, i32 }
%struct.crypto_ahash = type { i32 }
%struct.cc_hash_ctx = type { i32, i32, i32, i32, i32, i32 }
%struct.device = type { i32 }
%struct.cc_crypto_req = type { %struct.ahash_request*, i32 }
%struct.cc_hw_desc = type { i32 }

@CC_MAX_HASH_SEQ_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"===== %s-digest (%d) ====\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"hmac\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"hash\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"map_ahash_source() failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"map_ahash_digest() failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"map_ahash_request_final() failed\0A\00", align 1
@cc_digest_complete = common dso_local global i32 0, align 4
@DMA_DLLI = common dso_local global i32 0, align 4
@NS_BIT = common dso_local global i32 0, align 4
@S_DIN_to_HASH = common dso_local global i32 0, align 4
@SETUP_LOAD_STATE0 = common dso_local global i32 0, align 4
@HASH_PADDING_ENABLED = common dso_local global i32 0, align 4
@DO_PAD = common dso_local global i32 0, align 4
@SETUP_LOAD_KEY0 = common dso_local global i32 0, align 4
@DIN_HASH = common dso_local global i32 0, align 4
@S_HASH_to_DOUT = common dso_local global i32 0, align 4
@SETUP_WRITE_STATE1 = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"send_request() failed (rc=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @cc_hash_digest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cc_hash_digest(%struct.ahash_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca %struct.ahash_req_ctx*, align 8
  %5 = alloca %struct.crypto_ahash*, align 8
  %6 = alloca %struct.cc_hash_ctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.cc_crypto_req, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  %21 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %22 = call %struct.ahash_req_ctx* @ahash_request_ctx(%struct.ahash_request* %21)
  store %struct.ahash_req_ctx* %22, %struct.ahash_req_ctx** %4, align 8
  %23 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %24 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %23)
  store %struct.crypto_ahash* %24, %struct.crypto_ahash** %5, align 8
  %25 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %26 = call %struct.cc_hash_ctx* @crypto_ahash_ctx(%struct.crypto_ahash* %25)
  store %struct.cc_hash_ctx* %26, %struct.cc_hash_ctx** %6, align 8
  %27 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %28 = call i32 @crypto_ahash_digestsize(%struct.crypto_ahash* %27)
  store i32 %28, i32* %7, align 4
  %29 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %30 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %29, i32 0, i32 3
  %31 = load %struct.scatterlist*, %struct.scatterlist** %30, align 8
  store %struct.scatterlist* %31, %struct.scatterlist** %8, align 8
  %32 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %33 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %9, align 4
  %35 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %36 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %10, align 8
  %38 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %39 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.device* @drvdata_to_dev(i32 %40)
  store %struct.device* %41, %struct.device** %11, align 8
  %42 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %43 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %12, align 4
  %45 = bitcast %struct.cc_crypto_req* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %45, i8 0, i64 16, i1 false)
  %46 = load i32, i32* @CC_MAX_HASH_SEQ_LEN, align 4
  %47 = zext i32 %46 to i64
  %48 = call i8* @llvm.stacksave()
  store i8* %48, i8** %14, align 8
  %49 = alloca %struct.cc_hw_desc, i64 %47, align 16
  store i64 %47, i64* %15, align 8
  %50 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %51 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %54 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @cc_larval_digest_addr(i32 %52, i32 %55)
  store i32 %56, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %57 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %58 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %57, i32 0, i32 1
  %59 = call i32 @cc_gfp_flags(i32* %58)
  store i32 %59, i32* %19, align 4
  %60 = load %struct.device*, %struct.device** %11, align 8
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @dev_dbg(%struct.device* %60, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %64, i32 %65)
  %67 = load %struct.device*, %struct.device** %11, align 8
  %68 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %4, align 8
  %69 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %70 = call i32 @cc_init_req(%struct.device* %67, %struct.ahash_req_ctx* %68, %struct.cc_hash_ctx* %69)
  %71 = load %struct.device*, %struct.device** %11, align 8
  %72 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %4, align 8
  %73 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %74 = call i64 @cc_map_req(%struct.device* %71, %struct.ahash_req_ctx* %72, %struct.cc_hash_ctx* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %1
  %77 = load %struct.device*, %struct.device** %11, align 8
  %78 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %77, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %2, align 4
  store i32 1, i32* %20, align 4
  br label %329

81:                                               ; preds = %1
  %82 = load %struct.device*, %struct.device** %11, align 8
  %83 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %4, align 8
  %84 = load i32, i32* %7, align 4
  %85 = call i64 @cc_map_result(%struct.device* %82, %struct.ahash_req_ctx* %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %81
  %88 = load %struct.device*, %struct.device** %11, align 8
  %89 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %88, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %90 = load %struct.device*, %struct.device** %11, align 8
  %91 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %4, align 8
  %92 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %93 = call i32 @cc_unmap_req(%struct.device* %90, %struct.ahash_req_ctx* %91, %struct.cc_hash_ctx* %92)
  %94 = load i32, i32* @ENOMEM, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %2, align 4
  store i32 1, i32* %20, align 4
  br label %329

96:                                               ; preds = %81
  %97 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %98 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %4, align 8
  %101 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* %19, align 4
  %104 = call i64 @cc_map_hash_request_final(i32 %99, %struct.ahash_req_ctx* %100, %struct.scatterlist* %101, i32 %102, i32 1, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %120

106:                                              ; preds = %96
  %107 = load %struct.device*, %struct.device** %11, align 8
  %108 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %107, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %109 = load %struct.device*, %struct.device** %11, align 8
  %110 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %4, align 8
  %111 = load i32, i32* %7, align 4
  %112 = load i32*, i32** %10, align 8
  %113 = call i32 @cc_unmap_result(%struct.device* %109, %struct.ahash_req_ctx* %110, i32 %111, i32* %112)
  %114 = load %struct.device*, %struct.device** %11, align 8
  %115 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %4, align 8
  %116 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %117 = call i32 @cc_unmap_req(%struct.device* %114, %struct.ahash_req_ctx* %115, %struct.cc_hash_ctx* %116)
  %118 = load i32, i32* @ENOMEM, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %2, align 4
  store i32 1, i32* %20, align 4
  br label %329

120:                                              ; preds = %96
  %121 = load i32, i32* @cc_digest_complete, align 4
  %122 = getelementptr inbounds %struct.cc_crypto_req, %struct.cc_crypto_req* %13, i32 0, i32 1
  store i32 %121, i32* %122, align 8
  %123 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %124 = getelementptr inbounds %struct.cc_crypto_req, %struct.cc_crypto_req* %13, i32 0, i32 0
  store %struct.ahash_request* %123, %struct.ahash_request** %124, align 8
  %125 = load i32, i32* %17, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %49, i64 %126
  %128 = call i32 @hw_desc_init(%struct.cc_hw_desc* %127)
  %129 = load i32, i32* %17, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %49, i64 %130
  %132 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %133 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %136 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @set_hash_cipher_mode(%struct.cc_hw_desc* %131, i32 %134, i32 %137)
  %139 = load i32, i32* %12, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %154

141:                                              ; preds = %120
  %142 = load i32, i32* %17, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %49, i64 %143
  %145 = load i32, i32* @DMA_DLLI, align 4
  %146 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %4, align 8
  %147 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %150 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @NS_BIT, align 4
  %153 = call i32 @set_din_type(%struct.cc_hw_desc* %144, i32 %145, i32 %148, i32 %151, i32 %152)
  br label %163

154:                                              ; preds = %120
  %155 = load i32, i32* %17, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %49, i64 %156
  %158 = load i32, i32* %16, align 4
  %159 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %160 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %159, i32 0, i32 5
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @set_din_sram(%struct.cc_hw_desc* %157, i32 %158, i32 %161)
  br label %163

163:                                              ; preds = %154, %141
  %164 = load i32, i32* %17, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %49, i64 %165
  %167 = load i32, i32* @S_DIN_to_HASH, align 4
  %168 = call i32 @set_flow_mode(%struct.cc_hw_desc* %166, i32 %167)
  %169 = load i32, i32* %17, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %49, i64 %170
  %172 = load i32, i32* @SETUP_LOAD_STATE0, align 4
  %173 = call i32 @set_setup_mode(%struct.cc_hw_desc* %171, i32 %172)
  %174 = load i32, i32* %17, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %17, align 4
  %176 = load i32, i32* %17, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %49, i64 %177
  %179 = call i32 @hw_desc_init(%struct.cc_hw_desc* %178)
  %180 = load i32, i32* %17, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %49, i64 %181
  %183 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %184 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %187 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @set_hash_cipher_mode(%struct.cc_hw_desc* %182, i32 %185, i32 %188)
  %190 = load i32, i32* %12, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %205

192:                                              ; preds = %163
  %193 = load i32, i32* %17, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %49, i64 %194
  %196 = load i32, i32* @DMA_DLLI, align 4
  %197 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %4, align 8
  %198 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %201 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @NS_BIT, align 4
  %204 = call i32 @set_din_type(%struct.cc_hw_desc* %195, i32 %196, i32 %199, i32 %202, i32 %203)
  br label %228

205:                                              ; preds = %163
  %206 = load i32, i32* %17, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %49, i64 %207
  %209 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %210 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @set_din_const(%struct.cc_hw_desc* %208, i32 0, i32 %211)
  %213 = load i32, i32* %9, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %221

215:                                              ; preds = %205
  %216 = load i32, i32* %17, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %49, i64 %217
  %219 = load i32, i32* @HASH_PADDING_ENABLED, align 4
  %220 = call i32 @set_cipher_config1(%struct.cc_hw_desc* %218, i32 %219)
  br label %227

221:                                              ; preds = %205
  %222 = load i32, i32* %17, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %49, i64 %223
  %225 = load i32, i32* @DO_PAD, align 4
  %226 = call i32 @set_cipher_do(%struct.cc_hw_desc* %224, i32 %225)
  br label %227

227:                                              ; preds = %221, %215
  br label %228

228:                                              ; preds = %227, %192
  %229 = load i32, i32* %17, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %49, i64 %230
  %232 = load i32, i32* @S_DIN_to_HASH, align 4
  %233 = call i32 @set_flow_mode(%struct.cc_hw_desc* %231, i32 %232)
  %234 = load i32, i32* %17, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %49, i64 %235
  %237 = load i32, i32* @SETUP_LOAD_KEY0, align 4
  %238 = call i32 @set_setup_mode(%struct.cc_hw_desc* %236, i32 %237)
  %239 = load i32, i32* %17, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %17, align 4
  %241 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %4, align 8
  %242 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %243 = load i32, i32* @DIN_HASH, align 4
  %244 = call i32 @cc_set_desc(%struct.ahash_req_ctx* %241, %struct.cc_hash_ctx* %242, i32 %243, %struct.cc_hw_desc* %49, i32 0, i32* %17)
  %245 = load i32, i32* %12, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %290

247:                                              ; preds = %228
  %248 = load i32, i32* %17, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %49, i64 %249
  %251 = call i32 @hw_desc_init(%struct.cc_hw_desc* %250)
  %252 = load i32, i32* %17, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %49, i64 %253
  %255 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %256 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %255, i32 0, i32 3
  %257 = load i32, i32* %256, align 4
  %258 = call i32 @set_cipher_mode(%struct.cc_hw_desc* %254, i32 %257)
  %259 = load i32, i32* %17, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %49, i64 %260
  %262 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %4, align 8
  %263 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %266 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 4
  %268 = load i32, i32* @NS_BIT, align 4
  %269 = call i32 @set_dout_dlli(%struct.cc_hw_desc* %261, i32 %264, i32 %267, i32 %268, i32 0)
  %270 = load i32, i32* %17, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %49, i64 %271
  %273 = load i32, i32* @S_HASH_to_DOUT, align 4
  %274 = call i32 @set_flow_mode(%struct.cc_hw_desc* %272, i32 %273)
  %275 = load i32, i32* %17, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %49, i64 %276
  %278 = load i32, i32* @SETUP_WRITE_STATE1, align 4
  %279 = call i32 @set_setup_mode(%struct.cc_hw_desc* %277, i32 %278)
  %280 = load i32, i32* %17, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %49, i64 %281
  %283 = load i32, i32* @DO_PAD, align 4
  %284 = call i32 @set_cipher_do(%struct.cc_hw_desc* %282, i32 %283)
  %285 = load i32, i32* %17, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %17, align 4
  %287 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %288 = load i32, i32* %17, align 4
  %289 = call i32 @cc_fin_hmac(%struct.cc_hw_desc* %49, %struct.ahash_request* %287, i32 %288)
  store i32 %289, i32* %17, align 4
  br label %290

290:                                              ; preds = %247, %228
  %291 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %292 = load i32, i32* %17, align 4
  %293 = call i32 @cc_fin_result(%struct.cc_hw_desc* %49, %struct.ahash_request* %291, i32 %292)
  store i32 %293, i32* %17, align 4
  %294 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %295 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = load i32, i32* %17, align 4
  %298 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %299 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %298, i32 0, i32 1
  %300 = call i32 @cc_send_request(i32 %296, %struct.cc_crypto_req* %13, %struct.cc_hw_desc* %49, i32 %297, i32* %299)
  store i32 %300, i32* %18, align 4
  %301 = load i32, i32* %18, align 4
  %302 = load i32, i32* @EINPROGRESS, align 4
  %303 = sub nsw i32 0, %302
  %304 = icmp ne i32 %301, %303
  br i1 %304, label %305, label %327

305:                                              ; preds = %290
  %306 = load i32, i32* %18, align 4
  %307 = load i32, i32* @EBUSY, align 4
  %308 = sub nsw i32 0, %307
  %309 = icmp ne i32 %306, %308
  br i1 %309, label %310, label %327

310:                                              ; preds = %305
  %311 = load %struct.device*, %struct.device** %11, align 8
  %312 = load i32, i32* %18, align 4
  %313 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %311, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %312)
  %314 = load %struct.device*, %struct.device** %11, align 8
  %315 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %4, align 8
  %316 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %317 = call i32 @cc_unmap_hash_request(%struct.device* %314, %struct.ahash_req_ctx* %315, %struct.scatterlist* %316, i32 1)
  %318 = load %struct.device*, %struct.device** %11, align 8
  %319 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %4, align 8
  %320 = load i32, i32* %7, align 4
  %321 = load i32*, i32** %10, align 8
  %322 = call i32 @cc_unmap_result(%struct.device* %318, %struct.ahash_req_ctx* %319, i32 %320, i32* %321)
  %323 = load %struct.device*, %struct.device** %11, align 8
  %324 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %4, align 8
  %325 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %326 = call i32 @cc_unmap_req(%struct.device* %323, %struct.ahash_req_ctx* %324, %struct.cc_hash_ctx* %325)
  br label %327

327:                                              ; preds = %310, %305, %290
  %328 = load i32, i32* %18, align 4
  store i32 %328, i32* %2, align 4
  store i32 1, i32* %20, align 4
  br label %329

329:                                              ; preds = %327, %106, %87, %76
  %330 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %330)
  %331 = load i32, i32* %2, align 4
  ret i32 %331
}

declare dso_local %struct.ahash_req_ctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local %struct.cc_hash_ctx* @crypto_ahash_ctx(%struct.crypto_ahash*) #1

declare dso_local i32 @crypto_ahash_digestsize(%struct.crypto_ahash*) #1

declare dso_local %struct.device* @drvdata_to_dev(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i32 @cc_larval_digest_addr(i32, i32) #1

declare dso_local i32 @cc_gfp_flags(i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i8*, i32) #1

declare dso_local i32 @cc_init_req(%struct.device*, %struct.ahash_req_ctx*, %struct.cc_hash_ctx*) #1

declare dso_local i64 @cc_map_req(%struct.device*, %struct.ahash_req_ctx*, %struct.cc_hash_ctx*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i64 @cc_map_result(%struct.device*, %struct.ahash_req_ctx*, i32) #1

declare dso_local i32 @cc_unmap_req(%struct.device*, %struct.ahash_req_ctx*, %struct.cc_hash_ctx*) #1

declare dso_local i64 @cc_map_hash_request_final(i32, %struct.ahash_req_ctx*, %struct.scatterlist*, i32, i32, i32) #1

declare dso_local i32 @cc_unmap_result(%struct.device*, %struct.ahash_req_ctx*, i32, i32*) #1

declare dso_local i32 @hw_desc_init(%struct.cc_hw_desc*) #1

declare dso_local i32 @set_hash_cipher_mode(%struct.cc_hw_desc*, i32, i32) #1

declare dso_local i32 @set_din_type(%struct.cc_hw_desc*, i32, i32, i32, i32) #1

declare dso_local i32 @set_din_sram(%struct.cc_hw_desc*, i32, i32) #1

declare dso_local i32 @set_flow_mode(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_setup_mode(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_din_const(%struct.cc_hw_desc*, i32, i32) #1

declare dso_local i32 @set_cipher_config1(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_cipher_do(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @cc_set_desc(%struct.ahash_req_ctx*, %struct.cc_hash_ctx*, i32, %struct.cc_hw_desc*, i32, i32*) #1

declare dso_local i32 @set_cipher_mode(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_dout_dlli(%struct.cc_hw_desc*, i32, i32, i32, i32) #1

declare dso_local i32 @cc_fin_hmac(%struct.cc_hw_desc*, %struct.ahash_request*, i32) #1

declare dso_local i32 @cc_fin_result(%struct.cc_hw_desc*, %struct.ahash_request*, i32) #1

declare dso_local i32 @cc_send_request(i32, %struct.cc_crypto_req*, %struct.cc_hw_desc*, i32, i32*) #1

declare dso_local i32 @cc_unmap_hash_request(%struct.device*, %struct.ahash_req_ctx*, %struct.scatterlist*, i32) #1

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

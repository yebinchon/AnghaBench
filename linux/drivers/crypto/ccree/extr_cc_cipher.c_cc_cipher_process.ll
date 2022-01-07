; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_cipher.c_cc_cipher_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_cipher.c_cc_cipher_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_request = type { i32, i32, i8*, %struct.scatterlist*, %struct.scatterlist* }
%struct.scatterlist = type { i32 }
%struct.crypto_skcipher = type { i32 }
%struct.crypto_tfm = type { i32 }
%struct.cipher_req_ctx = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.cc_cipher_ctx = type { i64, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.device = type { i32 }
%struct.cc_crypto_req = type { %struct.TYPE_4__, i8*, i8* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.cc_hw_desc = type { i32 }

@MAX_ABLKCIPHER_SEQ_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"%s req=%p iv=%p nbytes=%d\0A\00", align 1
@DRV_CRYPTO_DIRECTION_ENCRYPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"Encrypt\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Decrypt\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Unsupported data size %d.\0A\00", align 1
@CRYPTO_TFM_RES_BAD_BLOCK_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cc_cipher_complete = common dso_local global i64 0, align 8
@CC_POLICY_PROTECTED_KEY = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"map_request() failed\0A\00", align 1
@EINPROGRESS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_request*, i32)* @cc_cipher_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cc_cipher_process(%struct.skcipher_request* %0, i32 %1) #0 {
  %3 = alloca %struct.skcipher_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_skcipher*, align 8
  %6 = alloca %struct.crypto_tfm*, align 8
  %7 = alloca %struct.cipher_req_ctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.scatterlist*, align 8
  %10 = alloca %struct.scatterlist*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.cc_cipher_ctx*, align 8
  %14 = alloca %struct.device*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.cc_crypto_req, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.skcipher_request* %0, %struct.skcipher_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %21 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %22 = call %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request* %21)
  store %struct.crypto_skcipher* %22, %struct.crypto_skcipher** %5, align 8
  %23 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %24 = call %struct.crypto_tfm* @crypto_skcipher_tfm(%struct.crypto_skcipher* %23)
  store %struct.crypto_tfm* %24, %struct.crypto_tfm** %6, align 8
  %25 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %26 = call %struct.cipher_req_ctx* @skcipher_request_ctx(%struct.skcipher_request* %25)
  store %struct.cipher_req_ctx* %26, %struct.cipher_req_ctx** %7, align 8
  %27 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %28 = call i32 @crypto_skcipher_ivsize(%struct.crypto_skcipher* %27)
  store i32 %28, i32* %8, align 4
  %29 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %30 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %29, i32 0, i32 4
  %31 = load %struct.scatterlist*, %struct.scatterlist** %30, align 8
  store %struct.scatterlist* %31, %struct.scatterlist** %9, align 8
  %32 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %33 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %32, i32 0, i32 3
  %34 = load %struct.scatterlist*, %struct.scatterlist** %33, align 8
  store %struct.scatterlist* %34, %struct.scatterlist** %10, align 8
  %35 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %36 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %11, align 4
  %38 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %39 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %38, i32 0, i32 2
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %12, align 8
  %41 = load %struct.crypto_tfm*, %struct.crypto_tfm** %6, align 8
  %42 = call %struct.cc_cipher_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %41)
  store %struct.cc_cipher_ctx* %42, %struct.cc_cipher_ctx** %13, align 8
  %43 = load %struct.cc_cipher_ctx*, %struct.cc_cipher_ctx** %13, align 8
  %44 = getelementptr inbounds %struct.cc_cipher_ctx, %struct.cc_cipher_ctx* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call %struct.device* @drvdata_to_dev(i32 %45)
  store %struct.device* %46, %struct.device** %14, align 8
  %47 = load i32, i32* @MAX_ABLKCIPHER_SEQ_LEN, align 4
  %48 = zext i32 %47 to i64
  %49 = call i8* @llvm.stacksave()
  store i8* %49, i8** %15, align 8
  %50 = alloca %struct.cc_hw_desc, i64 %48, align 16
  store i64 %48, i64* %16, align 8
  %51 = bitcast %struct.cc_crypto_req* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %51, i8 0, i64 32, i1 false)
  store i32 0, i32* %19, align 4
  %52 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %53 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %52, i32 0, i32 1
  %54 = call i32 @cc_gfp_flags(i32* %53)
  store i32 %54, i32* %20, align 4
  %55 = load %struct.device*, %struct.device** %14, align 8
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @DRV_CRYPTO_DIRECTION_ENCRYPT, align 4
  %58 = icmp eq i32 %56, %57
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %61 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %62 = load i8*, i8** %12, align 8
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @dev_dbg(%struct.device* %55, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %60, %struct.skcipher_request* %61, i8* %62, i32 %63)
  %65 = load %struct.cc_cipher_ctx*, %struct.cc_cipher_ctx** %13, align 8
  %66 = load i32, i32* %11, align 4
  %67 = call i64 @validate_data_size(%struct.cc_cipher_ctx* %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %2
  %70 = load %struct.device*, %struct.device** %14, align 8
  %71 = load i32, i32* %11, align 4
  %72 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %70, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %71)
  %73 = load %struct.crypto_tfm*, %struct.crypto_tfm** %6, align 8
  %74 = load i32, i32* @CRYPTO_TFM_RES_BAD_BLOCK_LEN, align 4
  %75 = call i32 @crypto_tfm_set_flags(%struct.crypto_tfm* %73, i32 %74)
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %18, align 4
  br label %197

78:                                               ; preds = %2
  %79 = load i32, i32* %11, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  store i32 0, i32* %18, align 4
  br label %197

82:                                               ; preds = %78
  %83 = load i8*, i8** %12, align 8
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %20, align 4
  %86 = call i32 @kmemdup(i8* %83, i32 %84, i32 %85)
  %87 = load %struct.cipher_req_ctx*, %struct.cipher_req_ctx** %7, align 8
  %88 = getelementptr inbounds %struct.cipher_req_ctx, %struct.cipher_req_ctx* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  %89 = load %struct.cipher_req_ctx*, %struct.cipher_req_ctx** %7, align 8
  %90 = getelementptr inbounds %struct.cipher_req_ctx, %struct.cipher_req_ctx* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %82
  %94 = load i32, i32* @ENOMEM, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %18, align 4
  br label %197

96:                                               ; preds = %82
  %97 = load i64, i64* @cc_cipher_complete, align 8
  %98 = inttoptr i64 %97 to i8*
  %99 = getelementptr inbounds %struct.cc_crypto_req, %struct.cc_crypto_req* %17, i32 0, i32 2
  store i8* %98, i8** %99, align 8
  %100 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %101 = bitcast %struct.skcipher_request* %100 to i8*
  %102 = getelementptr inbounds %struct.cc_crypto_req, %struct.cc_crypto_req* %17, i32 0, i32 1
  store i8* %101, i8** %102, align 8
  %103 = load %struct.cc_cipher_ctx*, %struct.cc_cipher_ctx** %13, align 8
  %104 = getelementptr inbounds %struct.cc_cipher_ctx, %struct.cc_cipher_ctx* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @CC_POLICY_PROTECTED_KEY, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %123

108:                                              ; preds = %96
  %109 = getelementptr inbounds %struct.cc_crypto_req, %struct.cc_crypto_req* %17, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  store i32 1, i32* %110, align 8
  %111 = load %struct.cc_cipher_ctx*, %struct.cc_cipher_ctx** %13, align 8
  %112 = getelementptr inbounds %struct.cc_cipher_ctx, %struct.cc_cipher_ctx* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = getelementptr inbounds %struct.cc_crypto_req, %struct.cc_crypto_req* %17, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 8
  %117 = load %struct.cc_cipher_ctx*, %struct.cc_cipher_ctx** %13, align 8
  %118 = getelementptr inbounds %struct.cc_cipher_ctx, %struct.cc_cipher_ctx* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = getelementptr inbounds %struct.cc_crypto_req, %struct.cc_crypto_req* %17, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  br label %123

123:                                              ; preds = %108, %96
  %124 = load i32, i32* %4, align 4
  %125 = load %struct.cipher_req_ctx*, %struct.cipher_req_ctx** %7, align 8
  %126 = getelementptr inbounds %struct.cipher_req_ctx, %struct.cipher_req_ctx* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  store i32 %124, i32* %127, align 4
  %128 = load %struct.cc_cipher_ctx*, %struct.cc_cipher_ctx** %13, align 8
  %129 = getelementptr inbounds %struct.cc_cipher_ctx, %struct.cc_cipher_ctx* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.cipher_req_ctx*, %struct.cipher_req_ctx** %7, align 8
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* %11, align 4
  %134 = load %struct.cipher_req_ctx*, %struct.cipher_req_ctx** %7, align 8
  %135 = getelementptr inbounds %struct.cipher_req_ctx, %struct.cipher_req_ctx* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %138 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %139 = load i32, i32* %20, align 4
  %140 = call i32 @cc_map_cipher_request(i32 %130, %struct.cipher_req_ctx* %131, i32 %132, i32 %133, i32 %136, %struct.scatterlist* %137, %struct.scatterlist* %138, i32 %139)
  store i32 %140, i32* %18, align 4
  %141 = load i32, i32* %18, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %123
  %144 = load %struct.device*, %struct.device** %14, align 8
  %145 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %144, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %197

146:                                              ; preds = %123
  %147 = load %struct.crypto_tfm*, %struct.crypto_tfm** %6, align 8
  %148 = load %struct.cipher_req_ctx*, %struct.cipher_req_ctx** %7, align 8
  %149 = load i32, i32* %8, align 4
  %150 = load i32, i32* %11, align 4
  %151 = call i32 @cc_setup_state_desc(%struct.crypto_tfm* %147, %struct.cipher_req_ctx* %148, i32 %149, i32 %150, %struct.cc_hw_desc* %50, i32* %19)
  %152 = load %struct.crypto_tfm*, %struct.crypto_tfm** %6, align 8
  %153 = load %struct.cipher_req_ctx*, %struct.cipher_req_ctx** %7, align 8
  %154 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %155 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %156 = load i32, i32* %11, align 4
  %157 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %158 = call i32 @cc_setup_mlli_desc(%struct.crypto_tfm* %152, %struct.cipher_req_ctx* %153, %struct.scatterlist* %154, %struct.scatterlist* %155, i32 %156, %struct.skcipher_request* %157, %struct.cc_hw_desc* %50, i32* %19)
  %159 = load %struct.crypto_tfm*, %struct.crypto_tfm** %6, align 8
  %160 = load %struct.cipher_req_ctx*, %struct.cipher_req_ctx** %7, align 8
  %161 = load i32, i32* %11, align 4
  %162 = call i32 @cc_setup_key_desc(%struct.crypto_tfm* %159, %struct.cipher_req_ctx* %160, i32 %161, %struct.cc_hw_desc* %50, i32* %19)
  %163 = load %struct.crypto_tfm*, %struct.crypto_tfm** %6, align 8
  %164 = load %struct.cipher_req_ctx*, %struct.cipher_req_ctx** %7, align 8
  %165 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %166 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %167 = load i32, i32* %11, align 4
  %168 = call i32 @cc_setup_flow_desc(%struct.crypto_tfm* %163, %struct.cipher_req_ctx* %164, %struct.scatterlist* %165, %struct.scatterlist* %166, i32 %167, %struct.cc_hw_desc* %50, i32* %19)
  %169 = load %struct.crypto_tfm*, %struct.crypto_tfm** %6, align 8
  %170 = load %struct.cipher_req_ctx*, %struct.cipher_req_ctx** %7, align 8
  %171 = load i32, i32* %8, align 4
  %172 = call i32 @cc_setup_readiv_desc(%struct.crypto_tfm* %169, %struct.cipher_req_ctx* %170, i32 %171, %struct.cc_hw_desc* %50, i32* %19)
  %173 = load %struct.cc_cipher_ctx*, %struct.cc_cipher_ctx** %13, align 8
  %174 = getelementptr inbounds %struct.cc_cipher_ctx, %struct.cc_cipher_ctx* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* %19, align 4
  %177 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %178 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %177, i32 0, i32 1
  %179 = call i32 @cc_send_request(i32 %175, %struct.cc_crypto_req* %17, %struct.cc_hw_desc* %50, i32 %176, i32* %178)
  store i32 %179, i32* %18, align 4
  %180 = load i32, i32* %18, align 4
  %181 = load i32, i32* @EINPROGRESS, align 4
  %182 = sub nsw i32 0, %181
  %183 = icmp ne i32 %180, %182
  br i1 %183, label %184, label %196

184:                                              ; preds = %146
  %185 = load i32, i32* %18, align 4
  %186 = load i32, i32* @EBUSY, align 4
  %187 = sub nsw i32 0, %186
  %188 = icmp ne i32 %185, %187
  br i1 %188, label %189, label %196

189:                                              ; preds = %184
  %190 = load %struct.device*, %struct.device** %14, align 8
  %191 = load %struct.cipher_req_ctx*, %struct.cipher_req_ctx** %7, align 8
  %192 = load i32, i32* %8, align 4
  %193 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %194 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %195 = call i32 @cc_unmap_cipher_request(%struct.device* %190, %struct.cipher_req_ctx* %191, i32 %192, %struct.scatterlist* %193, %struct.scatterlist* %194)
  br label %196

196:                                              ; preds = %189, %184, %146
  br label %197

197:                                              ; preds = %196, %143, %93, %81, %69
  %198 = load i32, i32* %18, align 4
  %199 = load i32, i32* @EINPROGRESS, align 4
  %200 = sub nsw i32 0, %199
  %201 = icmp ne i32 %198, %200
  br i1 %201, label %202, label %212

202:                                              ; preds = %197
  %203 = load i32, i32* %18, align 4
  %204 = load i32, i32* @EBUSY, align 4
  %205 = sub nsw i32 0, %204
  %206 = icmp ne i32 %203, %205
  br i1 %206, label %207, label %212

207:                                              ; preds = %202
  %208 = load %struct.cipher_req_ctx*, %struct.cipher_req_ctx** %7, align 8
  %209 = getelementptr inbounds %struct.cipher_req_ctx, %struct.cipher_req_ctx* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @kzfree(i32 %210)
  br label %212

212:                                              ; preds = %207, %202, %197
  %213 = load i32, i32* %18, align 4
  %214 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %214)
  ret i32 %213
}

declare dso_local %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request*) #1

declare dso_local %struct.crypto_tfm* @crypto_skcipher_tfm(%struct.crypto_skcipher*) #1

declare dso_local %struct.cipher_req_ctx* @skcipher_request_ctx(%struct.skcipher_request*) #1

declare dso_local i32 @crypto_skcipher_ivsize(%struct.crypto_skcipher*) #1

declare dso_local %struct.cc_cipher_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local %struct.device* @drvdata_to_dev(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local i32 @cc_gfp_flags(i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i8*, %struct.skcipher_request*, i8*, i32) #1

declare dso_local i64 @validate_data_size(%struct.cc_cipher_ctx*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @crypto_tfm_set_flags(%struct.crypto_tfm*, i32) #1

declare dso_local i32 @kmemdup(i8*, i32, i32) #1

declare dso_local i32 @cc_map_cipher_request(i32, %struct.cipher_req_ctx*, i32, i32, i32, %struct.scatterlist*, %struct.scatterlist*, i32) #1

declare dso_local i32 @cc_setup_state_desc(%struct.crypto_tfm*, %struct.cipher_req_ctx*, i32, i32, %struct.cc_hw_desc*, i32*) #1

declare dso_local i32 @cc_setup_mlli_desc(%struct.crypto_tfm*, %struct.cipher_req_ctx*, %struct.scatterlist*, %struct.scatterlist*, i32, %struct.skcipher_request*, %struct.cc_hw_desc*, i32*) #1

declare dso_local i32 @cc_setup_key_desc(%struct.crypto_tfm*, %struct.cipher_req_ctx*, i32, %struct.cc_hw_desc*, i32*) #1

declare dso_local i32 @cc_setup_flow_desc(%struct.crypto_tfm*, %struct.cipher_req_ctx*, %struct.scatterlist*, %struct.scatterlist*, i32, %struct.cc_hw_desc*, i32*) #1

declare dso_local i32 @cc_setup_readiv_desc(%struct.crypto_tfm*, %struct.cipher_req_ctx*, i32, %struct.cc_hw_desc*, i32*) #1

declare dso_local i32 @cc_send_request(i32, %struct.cc_crypto_req*, %struct.cc_hw_desc*, i32, i32*) #1

declare dso_local i32 @cc_unmap_cipher_request(%struct.device*, %struct.cipher_req_ctx*, i32, %struct.scatterlist*, %struct.scatterlist*) #1

declare dso_local i32 @kzfree(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

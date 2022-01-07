; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_aead.c_cc_proc_aead.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_aead.c_cc_proc_aead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i64, i32, i32, %struct.TYPE_4__*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.crypto_aead = type { i32 }
%struct.cc_aead_ctx = type { i64, i64, i32, i32, i32 }
%struct.aead_req_ctx = type { i64, i64, i64, i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.device = type { i32 }
%struct.cc_crypto_req = type { i8*, i8* }
%struct.cc_hw_desc = type { i32 }

@MAX_AEAD_PROCESS_SEQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"%s context=%p req=%p iv=%p src=%p src_ofs=%d dst=%p dst_ofs=%d cryptolen=%d\0A\00", align 1
@DRV_CRYPTO_DIRECTION_ENCRYPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"Enc\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"Dec\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Unsupported crypt/assoc len %d/%d.\0A\00", align 1
@CRYPTO_TFM_RES_BAD_BLOCK_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@cc_aead_complete = common dso_local global i64 0, align 8
@DRV_CIPHER_CTR = common dso_local global i64 0, align 8
@CTR_RFC3686_NONCE_SIZE = common dso_local global i64 0, align 8
@CTR_RFC3686_IV_SIZE = common dso_local global i64 0, align 8
@CTR_RFC3686_BLOCK_SIZE = common dso_local global i64 0, align 8
@DRV_CIPHER_CCM = common dso_local global i64 0, align 8
@DRV_CIPHER_GCTR = common dso_local global i64 0, align 8
@AES_BLOCK_SIZE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [47 x i8] c"config_ccm_adata() returned with a failure %d!\00", align 1
@ccm_header_size_null = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [49 x i8] c"config_gcm_context() returned with a failure %d!\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"map_request() failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Unsupported authenc (%d)\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [31 x i8] c"send_request() failed (rc=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*, i32)* @cc_proc_aead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cc_proc_aead(%struct.aead_request* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.aead_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.crypto_aead*, align 8
  %11 = alloca %struct.cc_aead_ctx*, align 8
  %12 = alloca %struct.aead_req_ctx*, align 8
  %13 = alloca %struct.device*, align 8
  %14 = alloca %struct.cc_crypto_req, align 8
  %15 = alloca i32, align 4
  store %struct.aead_request* %0, %struct.aead_request** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %16 = load i32, i32* @MAX_AEAD_PROCESS_SEQ, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %8, align 8
  %19 = alloca %struct.cc_hw_desc, i64 %17, align 16
  store i64 %17, i64* %9, align 8
  %20 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %21 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %20)
  store %struct.crypto_aead* %21, %struct.crypto_aead** %10, align 8
  %22 = load %struct.crypto_aead*, %struct.crypto_aead** %10, align 8
  %23 = call %struct.cc_aead_ctx* @crypto_aead_ctx(%struct.crypto_aead* %22)
  store %struct.cc_aead_ctx* %23, %struct.cc_aead_ctx** %11, align 8
  %24 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %25 = call %struct.aead_req_ctx* @aead_request_ctx(%struct.aead_request* %24)
  store %struct.aead_req_ctx* %25, %struct.aead_req_ctx** %12, align 8
  %26 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %11, align 8
  %27 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.device* @drvdata_to_dev(i32 %28)
  store %struct.device* %29, %struct.device** %13, align 8
  %30 = bitcast %struct.cc_crypto_req* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 16, i1 false)
  %31 = load %struct.device*, %struct.device** %13, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @DRV_CRYPTO_DIRECTION_ENCRYPT, align 4
  %34 = icmp eq i32 %32, %33
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %37 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %11, align 8
  %38 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %39 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %40 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %43 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %42, i32 0, i32 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = call i32 @sg_virt(%struct.TYPE_4__* %44)
  %46 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %47 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %46, i32 0, i32 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %52 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %51, i32 0, i32 3
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = call i32 @sg_virt(%struct.TYPE_4__* %53)
  %55 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %56 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %55, i32 0, i32 3
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %61 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %31, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i8* %36, %struct.cc_aead_ctx* %37, %struct.aead_request* %38, i64 %41, i32 %45, i32 %50, i32 %54, i32 %59, i32 %62)
  %64 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %11, align 8
  %65 = load i32, i32* %5, align 4
  %66 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %67 = call i64 @validate_data_size(%struct.cc_aead_ctx* %64, i32 %65, %struct.aead_request* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %83

69:                                               ; preds = %2
  %70 = load %struct.device*, %struct.device** %13, align 8
  %71 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %72 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %12, align 8
  %75 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 4
  %77 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %70, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %73, i32 %76)
  %78 = load %struct.crypto_aead*, %struct.crypto_aead** %10, align 8
  %79 = load i32, i32* @CRYPTO_TFM_RES_BAD_BLOCK_LEN, align 4
  %80 = call i32 @crypto_aead_set_flags(%struct.crypto_aead* %78, i32 %79)
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %306

83:                                               ; preds = %2
  %84 = load i64, i64* @cc_aead_complete, align 8
  %85 = inttoptr i64 %84 to i8*
  %86 = getelementptr inbounds %struct.cc_crypto_req, %struct.cc_crypto_req* %14, i32 0, i32 1
  store i8* %85, i8** %86, align 8
  %87 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %88 = bitcast %struct.aead_request* %87 to i8*
  %89 = getelementptr inbounds %struct.cc_crypto_req, %struct.cc_crypto_req* %14, i32 0, i32 0
  store i8* %88, i8** %89, align 8
  %90 = load i32, i32* %5, align 4
  %91 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %12, align 8
  %92 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %91, i32 0, i32 5
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  store i32 %90, i32* %93, align 8
  %94 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %11, align 8
  %95 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %12, align 8
  %98 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %97, i32 0, i32 4
  store i32 %96, i32* %98, align 4
  %99 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %11, align 8
  %100 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %12, align 8
  %103 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %102, i32 0, i32 0
  store i64 %101, i64* %103, align 8
  %104 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %11, align 8
  %105 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @DRV_CIPHER_CTR, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %145

109:                                              ; preds = %83
  %110 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %12, align 8
  %111 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %11, align 8
  %114 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @CTR_RFC3686_NONCE_SIZE, align 8
  %117 = call i32 @memcpy(i64 %112, i64 %115, i64 %116)
  %118 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %12, align 8
  %119 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @CTR_RFC3686_NONCE_SIZE, align 8
  %122 = add nsw i64 %120, %121
  %123 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %124 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @CTR_RFC3686_IV_SIZE, align 8
  %127 = call i32 @memcpy(i64 %122, i64 %125, i64 %126)
  %128 = call i32 @cpu_to_be32(i32 1)
  %129 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %12, align 8
  %130 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @CTR_RFC3686_NONCE_SIZE, align 8
  %133 = add nsw i64 %131, %132
  %134 = load i64, i64* @CTR_RFC3686_IV_SIZE, align 8
  %135 = add nsw i64 %133, %134
  %136 = inttoptr i64 %135 to i32*
  store i32 %128, i32* %136, align 4
  %137 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %12, align 8
  %138 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %141 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %140, i32 0, i32 0
  store i64 %139, i64* %141, align 8
  %142 = load i64, i64* @CTR_RFC3686_BLOCK_SIZE, align 8
  %143 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %12, align 8
  %144 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %143, i32 0, i32 2
  store i64 %142, i64* %144, align 8
  br label %190

145:                                              ; preds = %83
  %146 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %11, align 8
  %147 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @DRV_CIPHER_CCM, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %157, label %151

151:                                              ; preds = %145
  %152 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %11, align 8
  %153 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @DRV_CIPHER_GCTR, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %184

157:                                              ; preds = %151, %145
  %158 = load i64, i64* @AES_BLOCK_SIZE, align 8
  %159 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %12, align 8
  %160 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %159, i32 0, i32 2
  store i64 %158, i64* %160, align 8
  %161 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %12, align 8
  %162 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %165 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %163, %166
  br i1 %167, label %168, label %183

168:                                              ; preds = %157
  %169 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %12, align 8
  %170 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %173 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.crypto_aead*, %struct.crypto_aead** %10, align 8
  %176 = call i64 @crypto_aead_ivsize(%struct.crypto_aead* %175)
  %177 = call i32 @memcpy(i64 %171, i64 %174, i64 %176)
  %178 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %12, align 8
  %179 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %182 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %181, i32 0, i32 0
  store i64 %180, i64* %182, align 8
  br label %183

183:                                              ; preds = %168, %157
  br label %189

184:                                              ; preds = %151
  %185 = load %struct.crypto_aead*, %struct.crypto_aead** %10, align 8
  %186 = call i64 @crypto_aead_ivsize(%struct.crypto_aead* %185)
  %187 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %12, align 8
  %188 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %187, i32 0, i32 2
  store i64 %186, i64* %188, align 8
  br label %189

189:                                              ; preds = %184, %183
  br label %190

190:                                              ; preds = %189, %109
  %191 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %11, align 8
  %192 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @DRV_CIPHER_CCM, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %206

196:                                              ; preds = %190
  %197 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %198 = call i32 @config_ccm_adata(%struct.aead_request* %197)
  store i32 %198, i32* %6, align 4
  %199 = load i32, i32* %6, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %205

201:                                              ; preds = %196
  %202 = load %struct.device*, %struct.device** %13, align 8
  %203 = load i32, i32* %6, align 4
  %204 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %202, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 %203)
  br label %304

205:                                              ; preds = %196
  br label %210

206:                                              ; preds = %190
  %207 = load i32, i32* @ccm_header_size_null, align 4
  %208 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %12, align 8
  %209 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %208, i32 0, i32 3
  store i32 %207, i32* %209, align 8
  br label %210

210:                                              ; preds = %206, %205
  %211 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %11, align 8
  %212 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @DRV_CIPHER_GCTR, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %216, label %226

216:                                              ; preds = %210
  %217 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %218 = call i32 @config_gcm_context(%struct.aead_request* %217)
  store i32 %218, i32* %6, align 4
  %219 = load i32, i32* %6, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %225

221:                                              ; preds = %216
  %222 = load %struct.device*, %struct.device** %13, align 8
  %223 = load i32, i32* %6, align 4
  %224 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %222, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i32 %223)
  br label %304

225:                                              ; preds = %216
  br label %226

226:                                              ; preds = %225, %210
  %227 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %11, align 8
  %228 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %227, i32 0, i32 3
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %231 = call i32 @cc_map_aead_request(i32 %229, %struct.aead_request* %230)
  store i32 %231, i32* %6, align 4
  %232 = load i32, i32* %6, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %237

234:                                              ; preds = %226
  %235 = load %struct.device*, %struct.device** %13, align 8
  %236 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %235, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  br label %304

237:                                              ; preds = %226
  %238 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %239 = call i32 @cc_mlli_to_sram(%struct.aead_request* %238, %struct.cc_hw_desc* %19, i32* %7)
  %240 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %11, align 8
  %241 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 8
  switch i32 %242, label %268 [
    i32 130, label %243
    i32 129, label %243
    i32 128, label %246
    i32 131, label %249
  ]

243:                                              ; preds = %237, %237
  %244 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %245 = call i32 @cc_hmac_authenc(%struct.aead_request* %244, %struct.cc_hw_desc* %19, i32* %7)
  br label %279

246:                                              ; preds = %237
  %247 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %248 = call i32 @cc_xcbc_authenc(%struct.aead_request* %247, %struct.cc_hw_desc* %19, i32* %7)
  br label %279

249:                                              ; preds = %237
  %250 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %11, align 8
  %251 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = load i64, i64* @DRV_CIPHER_CCM, align 8
  %254 = icmp eq i64 %252, %253
  br i1 %254, label %255, label %258

255:                                              ; preds = %249
  %256 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %257 = call i32 @cc_ccm(%struct.aead_request* %256, %struct.cc_hw_desc* %19, i32* %7)
  br label %258

258:                                              ; preds = %255, %249
  %259 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %11, align 8
  %260 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = load i64, i64* @DRV_CIPHER_GCTR, align 8
  %263 = icmp eq i64 %261, %262
  br i1 %263, label %264, label %267

264:                                              ; preds = %258
  %265 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %266 = call i32 @cc_gcm(%struct.aead_request* %265, %struct.cc_hw_desc* %19, i32* %7)
  br label %267

267:                                              ; preds = %264, %258
  br label %279

268:                                              ; preds = %237
  %269 = load %struct.device*, %struct.device** %13, align 8
  %270 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %11, align 8
  %271 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 8
  %273 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %269, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %272)
  %274 = load %struct.device*, %struct.device** %13, align 8
  %275 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %276 = call i32 @cc_unmap_aead_request(%struct.device* %274, %struct.aead_request* %275)
  %277 = load i32, i32* @ENOTSUPP, align 4
  %278 = sub nsw i32 0, %277
  store i32 %278, i32* %6, align 4
  br label %304

279:                                              ; preds = %267, %246, %243
  %280 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %11, align 8
  %281 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %280, i32 0, i32 3
  %282 = load i32, i32* %281, align 4
  %283 = load i32, i32* %7, align 4
  %284 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %285 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %284, i32 0, i32 1
  %286 = call i32 @cc_send_request(i32 %282, %struct.cc_crypto_req* %14, %struct.cc_hw_desc* %19, i32 %283, i32* %285)
  store i32 %286, i32* %6, align 4
  %287 = load i32, i32* %6, align 4
  %288 = load i32, i32* @EINPROGRESS, align 4
  %289 = sub nsw i32 0, %288
  %290 = icmp ne i32 %287, %289
  br i1 %290, label %291, label %303

291:                                              ; preds = %279
  %292 = load i32, i32* %6, align 4
  %293 = load i32, i32* @EBUSY, align 4
  %294 = sub nsw i32 0, %293
  %295 = icmp ne i32 %292, %294
  br i1 %295, label %296, label %303

296:                                              ; preds = %291
  %297 = load %struct.device*, %struct.device** %13, align 8
  %298 = load i32, i32* %6, align 4
  %299 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %297, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32 %298)
  %300 = load %struct.device*, %struct.device** %13, align 8
  %301 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %302 = call i32 @cc_unmap_aead_request(%struct.device* %300, %struct.aead_request* %301)
  br label %303

303:                                              ; preds = %296, %291, %279
  br label %304

304:                                              ; preds = %303, %268, %234, %221, %201
  %305 = load i32, i32* %6, align 4
  store i32 %305, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %306

306:                                              ; preds = %304, %69
  %307 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %307)
  %308 = load i32, i32* %3, align 4
  ret i32 %308
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #2

declare dso_local %struct.cc_aead_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #2

declare dso_local %struct.aead_req_ctx* @aead_request_ctx(%struct.aead_request*) #2

declare dso_local %struct.device* @drvdata_to_dev(i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #2

declare dso_local i32 @sg_virt(%struct.TYPE_4__*) #2

declare dso_local i64 @validate_data_size(%struct.cc_aead_ctx*, i32, %struct.aead_request*) #2

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #2

declare dso_local i32 @crypto_aead_set_flags(%struct.crypto_aead*, i32) #2

declare dso_local i32 @memcpy(i64, i64, i64) #2

declare dso_local i32 @cpu_to_be32(i32) #2

declare dso_local i64 @crypto_aead_ivsize(%struct.crypto_aead*) #2

declare dso_local i32 @config_ccm_adata(%struct.aead_request*) #2

declare dso_local i32 @config_gcm_context(%struct.aead_request*) #2

declare dso_local i32 @cc_map_aead_request(i32, %struct.aead_request*) #2

declare dso_local i32 @cc_mlli_to_sram(%struct.aead_request*, %struct.cc_hw_desc*, i32*) #2

declare dso_local i32 @cc_hmac_authenc(%struct.aead_request*, %struct.cc_hw_desc*, i32*) #2

declare dso_local i32 @cc_xcbc_authenc(%struct.aead_request*, %struct.cc_hw_desc*, i32*) #2

declare dso_local i32 @cc_ccm(%struct.aead_request*, %struct.cc_hw_desc*, i32*) #2

declare dso_local i32 @cc_gcm(%struct.aead_request*, %struct.cc_hw_desc*, i32*) #2

declare dso_local i32 @cc_unmap_aead_request(%struct.device*, %struct.aead_request*) #2

declare dso_local i32 @cc_send_request(i32, %struct.cc_crypto_req*, %struct.cc_hw_desc*, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

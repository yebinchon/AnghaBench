; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_hash.c_cc_do_finup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_hash.c_cc_do_finup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32, i32, i32*, %struct.scatterlist* }
%struct.scatterlist = type { i32 }
%struct.ahash_req_ctx = type { i32 }
%struct.crypto_ahash = type { i32 }
%struct.cc_hash_ctx = type { i32, i32, i32, i32, i32 }
%struct.device = type { i32 }
%struct.cc_crypto_req = type { %struct.ahash_request*, i32 }
%struct.cc_hw_desc = type { i32 }

@CC_MAX_HASH_SEQ_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"===== %s-%s (%d) ====\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"hmac\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"hash\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"finup\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"final\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"map_ahash_source() failed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"map_ahash_request_final() failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"map_ahash_digest() failed\0A\00", align 1
@cc_hash_complete = common dso_local global i32 0, align 4
@DO_PAD = common dso_local global i32 0, align 4
@NS_BIT = common dso_local global i32 0, align 4
@SETUP_WRITE_STATE1 = common dso_local global i32 0, align 4
@S_HASH_to_DOUT = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [31 x i8] c"send_request() failed (rc=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*, i32)* @cc_do_finup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cc_do_finup(%struct.ahash_request* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ahash_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ahash_req_ctx*, align 8
  %7 = alloca %struct.crypto_ahash*, align 8
  %8 = alloca %struct.cc_hash_ctx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.scatterlist*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.device*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.cc_crypto_req, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.ahash_request* %0, %struct.ahash_request** %4, align 8
  store i32 %1, i32* %5, align 4
  %22 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %23 = call %struct.ahash_req_ctx* @ahash_request_ctx(%struct.ahash_request* %22)
  store %struct.ahash_req_ctx* %23, %struct.ahash_req_ctx** %6, align 8
  %24 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %25 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %24)
  store %struct.crypto_ahash* %25, %struct.crypto_ahash** %7, align 8
  %26 = load %struct.crypto_ahash*, %struct.crypto_ahash** %7, align 8
  %27 = call %struct.cc_hash_ctx* @crypto_ahash_ctx(%struct.crypto_ahash* %26)
  store %struct.cc_hash_ctx* %27, %struct.cc_hash_ctx** %8, align 8
  %28 = load %struct.crypto_ahash*, %struct.crypto_ahash** %7, align 8
  %29 = call i32 @crypto_ahash_digestsize(%struct.crypto_ahash* %28)
  store i32 %29, i32* %9, align 4
  %30 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %31 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %30, i32 0, i32 3
  %32 = load %struct.scatterlist*, %struct.scatterlist** %31, align 8
  store %struct.scatterlist* %32, %struct.scatterlist** %10, align 8
  %33 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %34 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %11, align 4
  %36 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %37 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %12, align 8
  %39 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %8, align 8
  %40 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.device* @drvdata_to_dev(i32 %41)
  store %struct.device* %42, %struct.device** %13, align 8
  %43 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %8, align 8
  %44 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %14, align 4
  %46 = bitcast %struct.cc_crypto_req* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %46, i8 0, i64 16, i1 false)
  %47 = load i32, i32* @CC_MAX_HASH_SEQ_LEN, align 4
  %48 = zext i32 %47 to i64
  %49 = call i8* @llvm.stacksave()
  store i8* %49, i8** %16, align 8
  %50 = alloca %struct.cc_hw_desc, i64 %48, align 16
  store i64 %48, i64* %17, align 8
  store i32 0, i32* %18, align 4
  %51 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %52 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %51, i32 0, i32 1
  %53 = call i32 @cc_gfp_flags(i32* %52)
  store i32 %53, i32* %20, align 4
  %54 = load %struct.device*, %struct.device** %13, align 8
  %55 = load i32, i32* %14, align 4
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @dev_dbg(%struct.device* %54, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %58, i8* %62, i32 %63)
  %65 = load %struct.device*, %struct.device** %13, align 8
  %66 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %6, align 8
  %67 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %8, align 8
  %68 = call i64 @cc_map_req(%struct.device* %65, %struct.ahash_req_ctx* %66, %struct.cc_hash_ctx* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %2
  %71 = load %struct.device*, %struct.device** %13, align 8
  %72 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %71, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %210

75:                                               ; preds = %2
  %76 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %8, align 8
  %77 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %6, align 8
  %80 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* %20, align 4
  %84 = call i64 @cc_map_hash_request_final(i32 %78, %struct.ahash_req_ctx* %79, %struct.scatterlist* %80, i32 %81, i32 %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %75
  %87 = load %struct.device*, %struct.device** %13, align 8
  %88 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %87, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  %89 = load %struct.device*, %struct.device** %13, align 8
  %90 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %6, align 8
  %91 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %8, align 8
  %92 = call i32 @cc_unmap_req(%struct.device* %89, %struct.ahash_req_ctx* %90, %struct.cc_hash_ctx* %91)
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %210

95:                                               ; preds = %75
  %96 = load %struct.device*, %struct.device** %13, align 8
  %97 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %6, align 8
  %98 = load i32, i32* %9, align 4
  %99 = call i64 @cc_map_result(%struct.device* %96, %struct.ahash_req_ctx* %97, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %114

101:                                              ; preds = %95
  %102 = load %struct.device*, %struct.device** %13, align 8
  %103 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %102, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %104 = load %struct.device*, %struct.device** %13, align 8
  %105 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %6, align 8
  %106 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %107 = call i32 @cc_unmap_hash_request(%struct.device* %104, %struct.ahash_req_ctx* %105, %struct.scatterlist* %106, i32 1)
  %108 = load %struct.device*, %struct.device** %13, align 8
  %109 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %6, align 8
  %110 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %8, align 8
  %111 = call i32 @cc_unmap_req(%struct.device* %108, %struct.ahash_req_ctx* %109, %struct.cc_hash_ctx* %110)
  %112 = load i32, i32* @ENOMEM, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %210

114:                                              ; preds = %95
  %115 = load i32, i32* @cc_hash_complete, align 4
  %116 = getelementptr inbounds %struct.cc_crypto_req, %struct.cc_crypto_req* %15, i32 0, i32 1
  store i32 %115, i32* %116, align 8
  %117 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %118 = getelementptr inbounds %struct.cc_crypto_req, %struct.cc_crypto_req* %15, i32 0, i32 0
  store %struct.ahash_request* %117, %struct.ahash_request** %118, align 8
  %119 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %8, align 8
  %120 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %6, align 8
  %121 = load i32, i32* %18, align 4
  %122 = call i32 @cc_restore_hash(%struct.cc_hw_desc* %50, %struct.cc_hash_ctx* %119, %struct.ahash_req_ctx* %120, i32 %121)
  store i32 %122, i32* %18, align 4
  %123 = load i32, i32* %18, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %50, i64 %124
  %126 = call i32 @hw_desc_init(%struct.cc_hw_desc* %125)
  %127 = load i32, i32* %18, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %50, i64 %128
  %130 = load i32, i32* @DO_PAD, align 4
  %131 = call i32 @set_cipher_do(%struct.cc_hw_desc* %129, i32 %130)
  %132 = load i32, i32* %18, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %50, i64 %133
  %135 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %8, align 8
  %136 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %8, align 8
  %139 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @set_hash_cipher_mode(%struct.cc_hw_desc* %134, i32 %137, i32 %140)
  %142 = load i32, i32* %18, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %50, i64 %143
  %145 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %6, align 8
  %146 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %8, align 8
  %149 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @NS_BIT, align 4
  %152 = call i32 @set_dout_dlli(%struct.cc_hw_desc* %144, i32 %147, i32 %150, i32 %151, i32 0)
  %153 = load i32, i32* %18, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %50, i64 %154
  %156 = load i32, i32* @SETUP_WRITE_STATE1, align 4
  %157 = call i32 @set_setup_mode(%struct.cc_hw_desc* %155, i32 %156)
  %158 = load i32, i32* %18, align 4
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %50, i64 %159
  %161 = load i32, i32* @S_HASH_to_DOUT, align 4
  %162 = call i32 @set_flow_mode(%struct.cc_hw_desc* %160, i32 %161)
  %163 = load i32, i32* %18, align 4
  %164 = add i32 %163, 1
  store i32 %164, i32* %18, align 4
  %165 = load i32, i32* %14, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %114
  %168 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %169 = load i32, i32* %18, align 4
  %170 = call i32 @cc_fin_hmac(%struct.cc_hw_desc* %50, %struct.ahash_request* %168, i32 %169)
  store i32 %170, i32* %18, align 4
  br label %171

171:                                              ; preds = %167, %114
  %172 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %173 = load i32, i32* %18, align 4
  %174 = call i32 @cc_fin_result(%struct.cc_hw_desc* %50, %struct.ahash_request* %172, i32 %173)
  store i32 %174, i32* %18, align 4
  %175 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %8, align 8
  %176 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* %18, align 4
  %179 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %180 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %179, i32 0, i32 1
  %181 = call i32 @cc_send_request(i32 %177, %struct.cc_crypto_req* %15, %struct.cc_hw_desc* %50, i32 %178, i32* %180)
  store i32 %181, i32* %19, align 4
  %182 = load i32, i32* %19, align 4
  %183 = load i32, i32* @EINPROGRESS, align 4
  %184 = sub nsw i32 0, %183
  %185 = icmp ne i32 %182, %184
  br i1 %185, label %186, label %208

186:                                              ; preds = %171
  %187 = load i32, i32* %19, align 4
  %188 = load i32, i32* @EBUSY, align 4
  %189 = sub nsw i32 0, %188
  %190 = icmp ne i32 %187, %189
  br i1 %190, label %191, label %208

191:                                              ; preds = %186
  %192 = load %struct.device*, %struct.device** %13, align 8
  %193 = load i32, i32* %19, align 4
  %194 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %192, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32 %193)
  %195 = load %struct.device*, %struct.device** %13, align 8
  %196 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %6, align 8
  %197 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %198 = call i32 @cc_unmap_hash_request(%struct.device* %195, %struct.ahash_req_ctx* %196, %struct.scatterlist* %197, i32 1)
  %199 = load %struct.device*, %struct.device** %13, align 8
  %200 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %6, align 8
  %201 = load i32, i32* %9, align 4
  %202 = load i32*, i32** %12, align 8
  %203 = call i32 @cc_unmap_result(%struct.device* %199, %struct.ahash_req_ctx* %200, i32 %201, i32* %202)
  %204 = load %struct.device*, %struct.device** %13, align 8
  %205 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %6, align 8
  %206 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %8, align 8
  %207 = call i32 @cc_unmap_req(%struct.device* %204, %struct.ahash_req_ctx* %205, %struct.cc_hash_ctx* %206)
  br label %208

208:                                              ; preds = %191, %186, %171
  %209 = load i32, i32* %19, align 4
  store i32 %209, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %210

210:                                              ; preds = %208, %101, %86, %70
  %211 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %211)
  %212 = load i32, i32* %3, align 4
  ret i32 %212
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

declare dso_local i32 @cc_gfp_flags(i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i8*, i8*, i32) #1

declare dso_local i64 @cc_map_req(%struct.device*, %struct.ahash_req_ctx*, %struct.cc_hash_ctx*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i64 @cc_map_hash_request_final(i32, %struct.ahash_req_ctx*, %struct.scatterlist*, i32, i32, i32) #1

declare dso_local i32 @cc_unmap_req(%struct.device*, %struct.ahash_req_ctx*, %struct.cc_hash_ctx*) #1

declare dso_local i64 @cc_map_result(%struct.device*, %struct.ahash_req_ctx*, i32) #1

declare dso_local i32 @cc_unmap_hash_request(%struct.device*, %struct.ahash_req_ctx*, %struct.scatterlist*, i32) #1

declare dso_local i32 @cc_restore_hash(%struct.cc_hw_desc*, %struct.cc_hash_ctx*, %struct.ahash_req_ctx*, i32) #1

declare dso_local i32 @hw_desc_init(%struct.cc_hw_desc*) #1

declare dso_local i32 @set_cipher_do(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_hash_cipher_mode(%struct.cc_hw_desc*, i32, i32) #1

declare dso_local i32 @set_dout_dlli(%struct.cc_hw_desc*, i32, i32, i32, i32) #1

declare dso_local i32 @set_setup_mode(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_flow_mode(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @cc_fin_hmac(%struct.cc_hw_desc*, %struct.ahash_request*, i32) #1

declare dso_local i32 @cc_fin_result(%struct.cc_hw_desc*, %struct.ahash_request*, i32) #1

declare dso_local i32 @cc_send_request(i32, %struct.cc_crypto_req*, %struct.cc_hw_desc*, i32, i32*) #1

declare dso_local i32 @cc_unmap_result(%struct.device*, %struct.ahash_req_ctx*, i32, i32*) #1

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

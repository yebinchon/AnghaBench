; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_hash.c_cc_hash_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_hash.c_cc_hash_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32, i32, %struct.scatterlist* }
%struct.scatterlist = type { i32 }
%struct.ahash_req_ctx = type { i32, i32 }
%struct.crypto_ahash = type { i32 }
%struct.cc_hash_ctx = type { i32, i32, i32, i32, i32, i64 }
%struct.device = type { i32 }
%struct.cc_crypto_req = type { %struct.ahash_request*, i32 }
%struct.cc_hw_desc = type { i32 }

@CC_MAX_HASH_SEQ_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"===== %s-update (%d) ====\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"hmac\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"hash\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c" data size not require HW update %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"map_ahash_request_update() failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"map_ahash_source() failed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@cc_update_complete = common dso_local global i32 0, align 4
@NS_BIT = common dso_local global i32 0, align 4
@S_HASH_to_DOUT = common dso_local global i32 0, align 4
@SETUP_WRITE_STATE0 = common dso_local global i32 0, align 4
@SETUP_WRITE_STATE1 = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"send_request() failed (rc=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @cc_hash_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cc_hash_update(%struct.ahash_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca %struct.ahash_req_ctx*, align 8
  %5 = alloca %struct.crypto_ahash*, align 8
  %6 = alloca %struct.cc_hash_ctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.device*, align 8
  %11 = alloca %struct.cc_crypto_req, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  %18 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %19 = call %struct.ahash_req_ctx* @ahash_request_ctx(%struct.ahash_request* %18)
  store %struct.ahash_req_ctx* %19, %struct.ahash_req_ctx** %4, align 8
  %20 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %21 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %20)
  store %struct.crypto_ahash* %21, %struct.crypto_ahash** %5, align 8
  %22 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %23 = call %struct.cc_hash_ctx* @crypto_ahash_ctx(%struct.crypto_ahash* %22)
  store %struct.cc_hash_ctx* %23, %struct.cc_hash_ctx** %6, align 8
  %24 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %25 = getelementptr inbounds %struct.crypto_ahash, %struct.crypto_ahash* %24, i32 0, i32 0
  %26 = call i32 @crypto_tfm_alg_blocksize(i32* %25)
  store i32 %26, i32* %7, align 4
  %27 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %28 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %27, i32 0, i32 2
  %29 = load %struct.scatterlist*, %struct.scatterlist** %28, align 8
  store %struct.scatterlist* %29, %struct.scatterlist** %8, align 8
  %30 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %31 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %9, align 4
  %33 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %34 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call %struct.device* @drvdata_to_dev(i32 %35)
  store %struct.device* %36, %struct.device** %10, align 8
  %37 = bitcast %struct.cc_crypto_req* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %37, i8 0, i64 16, i1 false)
  %38 = load i32, i32* @CC_MAX_HASH_SEQ_LEN, align 4
  %39 = zext i32 %38 to i64
  %40 = call i8* @llvm.stacksave()
  store i8* %40, i8** %12, align 8
  %41 = alloca %struct.cc_hw_desc, i64 %39, align 16
  store i64 %39, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %42 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %43 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %42, i32 0, i32 1
  %44 = call i32 @cc_gfp_flags(i32* %43)
  store i32 %44, i32* %16, align 4
  %45 = load %struct.device*, %struct.device** %10, align 8
  %46 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %47 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %46, i32 0, i32 5
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %52 = load i32, i32* %9, align 4
  %53 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %45, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %51, i32 %52)
  %54 = load i32, i32* %9, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %17, align 4
  br label %205

57:                                               ; preds = %1
  %58 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %59 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %4, align 8
  %62 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %16, align 4
  %66 = call i32 @cc_map_hash_request_update(i32 %60, %struct.ahash_req_ctx* %61, %struct.scatterlist* %62, i32 %63, i32 %64, i32 %65)
  store i32 %66, i32* %15, align 4
  %67 = load i32, i32* %15, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %57
  %70 = load i32, i32* %15, align 4
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load %struct.device*, %struct.device** %10, align 8
  %74 = load i32, i32* %9, align 4
  %75 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %73, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %74)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %17, align 4
  br label %205

76:                                               ; preds = %69
  %77 = load %struct.device*, %struct.device** %10, align 8
  %78 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %77, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %2, align 4
  store i32 1, i32* %17, align 4
  br label %205

81:                                               ; preds = %57
  %82 = load %struct.device*, %struct.device** %10, align 8
  %83 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %4, align 8
  %84 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %85 = call i64 @cc_map_req(%struct.device* %82, %struct.ahash_req_ctx* %83, %struct.cc_hash_ctx* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %81
  %88 = load %struct.device*, %struct.device** %10, align 8
  %89 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %88, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %90 = load %struct.device*, %struct.device** %10, align 8
  %91 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %4, align 8
  %92 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %93 = call i32 @cc_unmap_hash_request(%struct.device* %90, %struct.ahash_req_ctx* %91, %struct.scatterlist* %92, i32 1)
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %2, align 4
  store i32 1, i32* %17, align 4
  br label %205

96:                                               ; preds = %81
  %97 = load i32, i32* @cc_update_complete, align 4
  %98 = getelementptr inbounds %struct.cc_crypto_req, %struct.cc_crypto_req* %11, i32 0, i32 1
  store i32 %97, i32* %98, align 8
  %99 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %100 = getelementptr inbounds %struct.cc_crypto_req, %struct.cc_crypto_req* %11, i32 0, i32 0
  store %struct.ahash_request* %99, %struct.ahash_request** %100, align 8
  %101 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %102 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %4, align 8
  %103 = load i64, i64* %14, align 8
  %104 = call i64 @cc_restore_hash(%struct.cc_hw_desc* %41, %struct.cc_hash_ctx* %101, %struct.ahash_req_ctx* %102, i64 %103)
  store i64 %104, i64* %14, align 8
  %105 = load i64, i64* %14, align 8
  %106 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %41, i64 %105
  %107 = call i32 @hw_desc_init(%struct.cc_hw_desc* %106)
  %108 = load i64, i64* %14, align 8
  %109 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %41, i64 %108
  %110 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %111 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %114 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @set_hash_cipher_mode(%struct.cc_hw_desc* %109, i32 %112, i32 %115)
  %117 = load i64, i64* %14, align 8
  %118 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %41, i64 %117
  %119 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %4, align 8
  %120 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %123 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @NS_BIT, align 4
  %126 = call i32 @set_dout_dlli(%struct.cc_hw_desc* %118, i32 %121, i32 %124, i32 %125, i32 0)
  %127 = load i64, i64* %14, align 8
  %128 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %41, i64 %127
  %129 = load i32, i32* @S_HASH_to_DOUT, align 4
  %130 = call i32 @set_flow_mode(%struct.cc_hw_desc* %128, i32 %129)
  %131 = load i64, i64* %14, align 8
  %132 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %41, i64 %131
  %133 = load i32, i32* @SETUP_WRITE_STATE0, align 4
  %134 = call i32 @set_setup_mode(%struct.cc_hw_desc* %132, i32 %133)
  %135 = load i64, i64* %14, align 8
  %136 = add i64 %135, 1
  store i64 %136, i64* %14, align 8
  %137 = load i64, i64* %14, align 8
  %138 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %41, i64 %137
  %139 = call i32 @hw_desc_init(%struct.cc_hw_desc* %138)
  %140 = load i64, i64* %14, align 8
  %141 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %41, i64 %140
  %142 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %143 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %146 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @set_hash_cipher_mode(%struct.cc_hw_desc* %141, i32 %144, i32 %147)
  %149 = load i64, i64* %14, align 8
  %150 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %41, i64 %149
  %151 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %4, align 8
  %152 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %155 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @NS_BIT, align 4
  %158 = call i32 @set_dout_dlli(%struct.cc_hw_desc* %150, i32 %153, i32 %156, i32 %157, i32 1)
  %159 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %160 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i64, i64* %14, align 8
  %163 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %41, i64 %162
  %164 = call i32 @set_queue_last_ind(i32 %161, %struct.cc_hw_desc* %163)
  %165 = load i64, i64* %14, align 8
  %166 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %41, i64 %165
  %167 = load i32, i32* @S_HASH_to_DOUT, align 4
  %168 = call i32 @set_flow_mode(%struct.cc_hw_desc* %166, i32 %167)
  %169 = load i64, i64* %14, align 8
  %170 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %41, i64 %169
  %171 = load i32, i32* @SETUP_WRITE_STATE1, align 4
  %172 = call i32 @set_setup_mode(%struct.cc_hw_desc* %170, i32 %171)
  %173 = load i64, i64* %14, align 8
  %174 = add i64 %173, 1
  store i64 %174, i64* %14, align 8
  %175 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %176 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i64, i64* %14, align 8
  %179 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %180 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %179, i32 0, i32 1
  %181 = call i32 @cc_send_request(i32 %177, %struct.cc_crypto_req* %11, %struct.cc_hw_desc* %41, i64 %178, i32* %180)
  store i32 %181, i32* %15, align 4
  %182 = load i32, i32* %15, align 4
  %183 = load i32, i32* @EINPROGRESS, align 4
  %184 = sub nsw i32 0, %183
  %185 = icmp ne i32 %182, %184
  br i1 %185, label %186, label %203

186:                                              ; preds = %96
  %187 = load i32, i32* %15, align 4
  %188 = load i32, i32* @EBUSY, align 4
  %189 = sub nsw i32 0, %188
  %190 = icmp ne i32 %187, %189
  br i1 %190, label %191, label %203

191:                                              ; preds = %186
  %192 = load %struct.device*, %struct.device** %10, align 8
  %193 = load i32, i32* %15, align 4
  %194 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %192, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %193)
  %195 = load %struct.device*, %struct.device** %10, align 8
  %196 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %4, align 8
  %197 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %198 = call i32 @cc_unmap_hash_request(%struct.device* %195, %struct.ahash_req_ctx* %196, %struct.scatterlist* %197, i32 1)
  %199 = load %struct.device*, %struct.device** %10, align 8
  %200 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %4, align 8
  %201 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %202 = call i32 @cc_unmap_req(%struct.device* %199, %struct.ahash_req_ctx* %200, %struct.cc_hash_ctx* %201)
  br label %203

203:                                              ; preds = %191, %186, %96
  %204 = load i32, i32* %15, align 4
  store i32 %204, i32* %2, align 4
  store i32 1, i32* %17, align 4
  br label %205

205:                                              ; preds = %203, %87, %76, %72, %56
  %206 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %206)
  %207 = load i32, i32* %2, align 4
  ret i32 %207
}

declare dso_local %struct.ahash_req_ctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local %struct.cc_hash_ctx* @crypto_ahash_ctx(%struct.crypto_ahash*) #1

declare dso_local i32 @crypto_tfm_alg_blocksize(i32*) #1

declare dso_local %struct.device* @drvdata_to_dev(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i32 @cc_gfp_flags(i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i32 @cc_map_hash_request_update(i32, %struct.ahash_req_ctx*, %struct.scatterlist*, i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i64 @cc_map_req(%struct.device*, %struct.ahash_req_ctx*, %struct.cc_hash_ctx*) #1

declare dso_local i32 @cc_unmap_hash_request(%struct.device*, %struct.ahash_req_ctx*, %struct.scatterlist*, i32) #1

declare dso_local i64 @cc_restore_hash(%struct.cc_hw_desc*, %struct.cc_hash_ctx*, %struct.ahash_req_ctx*, i64) #1

declare dso_local i32 @hw_desc_init(%struct.cc_hw_desc*) #1

declare dso_local i32 @set_hash_cipher_mode(%struct.cc_hw_desc*, i32, i32) #1

declare dso_local i32 @set_dout_dlli(%struct.cc_hw_desc*, i32, i32, i32, i32) #1

declare dso_local i32 @set_flow_mode(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_setup_mode(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_queue_last_ind(i32, %struct.cc_hw_desc*) #1

declare dso_local i32 @cc_send_request(i32, %struct.cc_crypto_req*, %struct.cc_hw_desc*, i64, i32*) #1

declare dso_local i32 @cc_unmap_req(%struct.device*, %struct.ahash_req_ctx*, %struct.cc_hash_ctx*) #1

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

; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_hash.c_cc_mac_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_hash.c_cc_mac_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32, i32, i32 }
%struct.ahash_req_ctx = type { i32, i32 }
%struct.crypto_ahash = type { i32 }
%struct.cc_hash_ctx = type { i64, i32, i32 }
%struct.device = type { i32 }
%struct.cc_crypto_req = type { i8*, i8* }
%struct.cc_hw_desc = type { i32 }

@CC_MAX_HASH_SEQ_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c" data size not require HW update %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"map_ahash_request_update() failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"map_ahash_source() failed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DRV_CIPHER_XCBC_MAC = common dso_local global i64 0, align 8
@DIN_AES_DOUT = common dso_local global i32 0, align 4
@NS_BIT = common dso_local global i32 0, align 4
@S_AES_to_DOUT = common dso_local global i32 0, align 4
@SETUP_WRITE_STATE0 = common dso_local global i32 0, align 4
@cc_update_complete = common dso_local global i64 0, align 8
@EINPROGRESS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"send_request() failed (rc=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @cc_mac_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cc_mac_update(%struct.ahash_request* %0) #0 {
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
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  %16 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %17 = call %struct.ahash_req_ctx* @ahash_request_ctx(%struct.ahash_request* %16)
  store %struct.ahash_req_ctx* %17, %struct.ahash_req_ctx** %4, align 8
  %18 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %19 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %18)
  store %struct.crypto_ahash* %19, %struct.crypto_ahash** %5, align 8
  %20 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %21 = call %struct.cc_hash_ctx* @crypto_ahash_ctx(%struct.crypto_ahash* %20)
  store %struct.cc_hash_ctx* %21, %struct.cc_hash_ctx** %6, align 8
  %22 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %23 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.device* @drvdata_to_dev(i32 %24)
  store %struct.device* %25, %struct.device** %7, align 8
  %26 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %27 = getelementptr inbounds %struct.crypto_ahash, %struct.crypto_ahash* %26, i32 0, i32 0
  %28 = call i32 @crypto_tfm_alg_blocksize(i32* %27)
  store i32 %28, i32* %8, align 4
  %29 = bitcast %struct.cc_crypto_req* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %29, i8 0, i64 16, i1 false)
  %30 = load i32, i32* @CC_MAX_HASH_SEQ_LEN, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %10, align 8
  %33 = alloca %struct.cc_hw_desc, i64 %31, align 16
  store i64 %31, i64* %11, align 8
  store i64 0, i64* %13, align 8
  %34 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %35 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %34, i32 0, i32 1
  %36 = call i32 @cc_gfp_flags(i32* %35)
  store i32 %36, i32* %14, align 4
  %37 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %38 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %177

42:                                               ; preds = %1
  %43 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %4, align 8
  %44 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  %47 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %48 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %4, align 8
  %51 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %52 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %55 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %14, align 4
  %59 = call i32 @cc_map_hash_request_update(i32 %49, %struct.ahash_req_ctx* %50, i32 %53, i32 %56, i32 %57, i32 %58)
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %42
  %63 = load i32, i32* %12, align 4
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = load %struct.device*, %struct.device** %7, align 8
  %67 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %68 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @dev_dbg(%struct.device* %66, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %69)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %177

71:                                               ; preds = %62
  %72 = load %struct.device*, %struct.device** %7, align 8
  %73 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %72, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %177

76:                                               ; preds = %42
  %77 = load %struct.device*, %struct.device** %7, align 8
  %78 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %4, align 8
  %79 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %80 = call i64 @cc_map_req(%struct.device* %77, %struct.ahash_req_ctx* %78, %struct.cc_hash_ctx* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %76
  %83 = load %struct.device*, %struct.device** %7, align 8
  %84 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %83, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %177

87:                                               ; preds = %76
  %88 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %89 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @DRV_CIPHER_XCBC_MAC, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %95 = call i32 @cc_setup_xcbc(%struct.ahash_request* %94, %struct.cc_hw_desc* %33, i64* %13)
  br label %99

96:                                               ; preds = %87
  %97 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %98 = call i32 @cc_setup_cmac(%struct.ahash_request* %97, %struct.cc_hw_desc* %33, i64* %13)
  br label %99

99:                                               ; preds = %96, %93
  %100 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %4, align 8
  %101 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %102 = load i32, i32* @DIN_AES_DOUT, align 4
  %103 = call i32 @cc_set_desc(%struct.ahash_req_ctx* %100, %struct.cc_hash_ctx* %101, i32 %102, %struct.cc_hw_desc* %33, i32 1, i64* %13)
  %104 = load i64, i64* %13, align 8
  %105 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %33, i64 %104
  %106 = call i32 @hw_desc_init(%struct.cc_hw_desc* %105)
  %107 = load i64, i64* %13, align 8
  %108 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %33, i64 %107
  %109 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %110 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @set_cipher_mode(%struct.cc_hw_desc* %108, i64 %111)
  %113 = load i64, i64* %13, align 8
  %114 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %33, i64 %113
  %115 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %4, align 8
  %116 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %119 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @NS_BIT, align 4
  %122 = call i32 @set_dout_dlli(%struct.cc_hw_desc* %114, i32 %117, i32 %120, i32 %121, i32 1)
  %123 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %124 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = load i64, i64* %13, align 8
  %127 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %33, i64 %126
  %128 = call i32 @set_queue_last_ind(i32 %125, %struct.cc_hw_desc* %127)
  %129 = load i64, i64* %13, align 8
  %130 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %33, i64 %129
  %131 = load i32, i32* @S_AES_to_DOUT, align 4
  %132 = call i32 @set_flow_mode(%struct.cc_hw_desc* %130, i32 %131)
  %133 = load i64, i64* %13, align 8
  %134 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %33, i64 %133
  %135 = load i32, i32* @SETUP_WRITE_STATE0, align 4
  %136 = call i32 @set_setup_mode(%struct.cc_hw_desc* %134, i32 %135)
  %137 = load i64, i64* %13, align 8
  %138 = add i64 %137, 1
  store i64 %138, i64* %13, align 8
  %139 = load i64, i64* @cc_update_complete, align 8
  %140 = inttoptr i64 %139 to i8*
  %141 = getelementptr inbounds %struct.cc_crypto_req, %struct.cc_crypto_req* %9, i32 0, i32 1
  store i8* %140, i8** %141, align 8
  %142 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %143 = bitcast %struct.ahash_request* %142 to i8*
  %144 = getelementptr inbounds %struct.cc_crypto_req, %struct.cc_crypto_req* %9, i32 0, i32 0
  store i8* %143, i8** %144, align 8
  %145 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %146 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = load i64, i64* %13, align 8
  %149 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %150 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %149, i32 0, i32 1
  %151 = call i32 @cc_send_request(i32 %147, %struct.cc_crypto_req* %9, %struct.cc_hw_desc* %33, i64 %148, i32* %150)
  store i32 %151, i32* %12, align 4
  %152 = load i32, i32* %12, align 4
  %153 = load i32, i32* @EINPROGRESS, align 4
  %154 = sub nsw i32 0, %153
  %155 = icmp ne i32 %152, %154
  br i1 %155, label %156, label %175

156:                                              ; preds = %99
  %157 = load i32, i32* %12, align 4
  %158 = load i32, i32* @EBUSY, align 4
  %159 = sub nsw i32 0, %158
  %160 = icmp ne i32 %157, %159
  br i1 %160, label %161, label %175

161:                                              ; preds = %156
  %162 = load %struct.device*, %struct.device** %7, align 8
  %163 = load i32, i32* %12, align 4
  %164 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %162, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %163)
  %165 = load %struct.device*, %struct.device** %7, align 8
  %166 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %4, align 8
  %167 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %168 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @cc_unmap_hash_request(%struct.device* %165, %struct.ahash_req_ctx* %166, i32 %169, i32 1)
  %171 = load %struct.device*, %struct.device** %7, align 8
  %172 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %4, align 8
  %173 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %174 = call i32 @cc_unmap_req(%struct.device* %171, %struct.ahash_req_ctx* %172, %struct.cc_hash_ctx* %173)
  br label %175

175:                                              ; preds = %161, %156, %99
  %176 = load i32, i32* %12, align 4
  store i32 %176, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %177

177:                                              ; preds = %175, %82, %71, %65, %41
  %178 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %178)
  %179 = load i32, i32* %2, align 4
  ret i32 %179
}

declare dso_local %struct.ahash_req_ctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local %struct.cc_hash_ctx* @crypto_ahash_ctx(%struct.crypto_ahash*) #1

declare dso_local %struct.device* @drvdata_to_dev(i32) #1

declare dso_local i32 @crypto_tfm_alg_blocksize(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i32 @cc_gfp_flags(i32*) #1

declare dso_local i32 @cc_map_hash_request_update(i32, %struct.ahash_req_ctx*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i64 @cc_map_req(%struct.device*, %struct.ahash_req_ctx*, %struct.cc_hash_ctx*) #1

declare dso_local i32 @cc_setup_xcbc(%struct.ahash_request*, %struct.cc_hw_desc*, i64*) #1

declare dso_local i32 @cc_setup_cmac(%struct.ahash_request*, %struct.cc_hw_desc*, i64*) #1

declare dso_local i32 @cc_set_desc(%struct.ahash_req_ctx*, %struct.cc_hash_ctx*, i32, %struct.cc_hw_desc*, i32, i64*) #1

declare dso_local i32 @hw_desc_init(%struct.cc_hw_desc*) #1

declare dso_local i32 @set_cipher_mode(%struct.cc_hw_desc*, i64) #1

declare dso_local i32 @set_dout_dlli(%struct.cc_hw_desc*, i32, i32, i32, i32) #1

declare dso_local i32 @set_queue_last_ind(i32, %struct.cc_hw_desc*) #1

declare dso_local i32 @set_flow_mode(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_setup_mode(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @cc_send_request(i32, %struct.cc_crypto_req*, %struct.cc_hw_desc*, i64, i32*) #1

declare dso_local i32 @cc_unmap_hash_request(%struct.device*, %struct.ahash_req_ctx*, i32, i32) #1

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

; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qce/extr_sha.c_qce_ahash_hmac_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qce/extr_sha.c_qce_ahash_hmac_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_ahash = type { i32 }
%struct.qce_sha_ctx = type { i32* }
%struct.crypto_wait = type { i32 }
%struct.ahash_request = type { i32 }
%struct.scatterlist = type { i32 }

@SHA1_DIGEST_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"sha1-qce\00", align 1
@SHA256_DIGEST_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"sha256-qce\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MAY_BACKLOG = common dso_local global i32 0, align 4
@crypto_req_done = common dso_local global i32 0, align 4
@QCE_MAX_ALIGN_SIZE = common dso_local global i64 0, align 8
@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_ahash*, i32*, i32)* @qce_ahash_hmac_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qce_ahash_hmac_setkey(%struct.crypto_ahash* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_ahash*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.qce_sha_ctx*, align 8
  %10 = alloca %struct.crypto_wait, align 4
  %11 = alloca %struct.ahash_request*, align 8
  %12 = alloca %struct.scatterlist, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.crypto_ahash*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  store %struct.crypto_ahash* %0, %struct.crypto_ahash** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %19 = call i32 @crypto_ahash_digestsize(%struct.crypto_ahash* %18)
  store i32 %19, i32* %8, align 4
  %20 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %21 = getelementptr inbounds %struct.crypto_ahash, %struct.crypto_ahash* %20, i32 0, i32 0
  %22 = call %struct.qce_sha_ctx* @crypto_tfm_ctx(i32* %21)
  store %struct.qce_sha_ctx* %22, %struct.qce_sha_ctx** %9, align 8
  %23 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %24 = call i32 @crypto_ahash_tfm(%struct.crypto_ahash* %23)
  %25 = call i32 @crypto_tfm_alg_blocksize(i32 %24)
  store i32 %25, i32* %13, align 4
  %26 = load %struct.qce_sha_ctx*, %struct.qce_sha_ctx** %9, align 8
  %27 = getelementptr inbounds %struct.qce_sha_ctx, %struct.qce_sha_ctx* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @memset(i32* %28, i32 0, i32 8)
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp ule i32 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %3
  %34 = load %struct.qce_sha_ctx*, %struct.qce_sha_ctx** %9, align 8
  %35 = getelementptr inbounds %struct.qce_sha_ctx, %struct.qce_sha_ctx* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @memcpy(i32* %36, i32* %37, i32 %38)
  store i32 0, i32* %4, align 4
  br label %124

40:                                               ; preds = %3
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @SHA1_DIGEST_SIZE, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %17, align 8
  br label %54

45:                                               ; preds = %40
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @SHA256_DIGEST_SIZE, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %17, align 8
  br label %53

50:                                               ; preds = %45
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %124

53:                                               ; preds = %49
  br label %54

54:                                               ; preds = %53, %44
  %55 = load i8*, i8** %17, align 8
  %56 = call %struct.crypto_ahash* @crypto_alloc_ahash(i8* %55, i32 0, i32 0)
  store %struct.crypto_ahash* %56, %struct.crypto_ahash** %14, align 8
  %57 = load %struct.crypto_ahash*, %struct.crypto_ahash** %14, align 8
  %58 = call i64 @IS_ERR(%struct.crypto_ahash* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load %struct.crypto_ahash*, %struct.crypto_ahash** %14, align 8
  %62 = call i32 @PTR_ERR(%struct.crypto_ahash* %61)
  store i32 %62, i32* %4, align 4
  br label %124

63:                                               ; preds = %54
  %64 = load %struct.crypto_ahash*, %struct.crypto_ahash** %14, align 8
  %65 = load i32, i32* @GFP_KERNEL, align 4
  %66 = call %struct.ahash_request* @ahash_request_alloc(%struct.crypto_ahash* %64, i32 %65)
  store %struct.ahash_request* %66, %struct.ahash_request** %11, align 8
  %67 = load %struct.ahash_request*, %struct.ahash_request** %11, align 8
  %68 = icmp ne %struct.ahash_request* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %63
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %16, align 4
  br label %120

72:                                               ; preds = %63
  %73 = call i32 @crypto_init_wait(%struct.crypto_wait* %10)
  %74 = load %struct.ahash_request*, %struct.ahash_request** %11, align 8
  %75 = load i32, i32* @CRYPTO_TFM_REQ_MAY_BACKLOG, align 4
  %76 = load i32, i32* @crypto_req_done, align 4
  %77 = call i32 @ahash_request_set_callback(%struct.ahash_request* %74, i32 %75, i32 %76, %struct.crypto_wait* %10)
  %78 = load %struct.crypto_ahash*, %struct.crypto_ahash** %14, align 8
  %79 = call i32 @crypto_ahash_clear_flags(%struct.crypto_ahash* %78, i32 -1)
  %80 = load i32, i32* %7, align 4
  %81 = zext i32 %80 to i64
  %82 = load i64, i64* @QCE_MAX_ALIGN_SIZE, align 8
  %83 = add nsw i64 %81, %82
  %84 = load i32, i32* @GFP_KERNEL, align 4
  %85 = call i32* @kzalloc(i64 %83, i32 %84)
  store i32* %85, i32** %15, align 8
  %86 = load i32*, i32** %15, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %72
  %89 = load i32, i32* @ENOMEM, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %16, align 4
  br label %117

91:                                               ; preds = %72
  %92 = load i32*, i32** %15, align 8
  %93 = load i32*, i32** %6, align 8
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @memcpy(i32* %92, i32* %93, i32 %94)
  %96 = load i32*, i32** %15, align 8
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @sg_init_one(%struct.scatterlist* %12, i32* %96, i32 %97)
  %99 = load %struct.ahash_request*, %struct.ahash_request** %11, align 8
  %100 = load %struct.qce_sha_ctx*, %struct.qce_sha_ctx** %9, align 8
  %101 = getelementptr inbounds %struct.qce_sha_ctx, %struct.qce_sha_ctx* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @ahash_request_set_crypt(%struct.ahash_request* %99, %struct.scatterlist* %12, i32* %102, i32 %103)
  %105 = load %struct.ahash_request*, %struct.ahash_request** %11, align 8
  %106 = call i32 @crypto_ahash_digest(%struct.ahash_request* %105)
  %107 = call i32 @crypto_wait_req(i32 %106, %struct.crypto_wait* %10)
  store i32 %107, i32* %16, align 4
  %108 = load i32, i32* %16, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %91
  %111 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %112 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %113 = call i32 @crypto_ahash_set_flags(%struct.crypto_ahash* %111, i32 %112)
  br label %114

114:                                              ; preds = %110, %91
  %115 = load i32*, i32** %15, align 8
  %116 = call i32 @kfree(i32* %115)
  br label %117

117:                                              ; preds = %114, %88
  %118 = load %struct.ahash_request*, %struct.ahash_request** %11, align 8
  %119 = call i32 @ahash_request_free(%struct.ahash_request* %118)
  br label %120

120:                                              ; preds = %117, %69
  %121 = load %struct.crypto_ahash*, %struct.crypto_ahash** %14, align 8
  %122 = call i32 @crypto_free_ahash(%struct.crypto_ahash* %121)
  %123 = load i32, i32* %16, align 4
  store i32 %123, i32* %4, align 4
  br label %124

124:                                              ; preds = %120, %60, %50, %33
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local i32 @crypto_ahash_digestsize(%struct.crypto_ahash*) #1

declare dso_local %struct.qce_sha_ctx* @crypto_tfm_ctx(i32*) #1

declare dso_local i32 @crypto_tfm_alg_blocksize(i32) #1

declare dso_local i32 @crypto_ahash_tfm(%struct.crypto_ahash*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local %struct.crypto_ahash* @crypto_alloc_ahash(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.crypto_ahash*) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_ahash*) #1

declare dso_local %struct.ahash_request* @ahash_request_alloc(%struct.crypto_ahash*, i32) #1

declare dso_local i32 @crypto_init_wait(%struct.crypto_wait*) #1

declare dso_local i32 @ahash_request_set_callback(%struct.ahash_request*, i32, i32, %struct.crypto_wait*) #1

declare dso_local i32 @crypto_ahash_clear_flags(%struct.crypto_ahash*, i32) #1

declare dso_local i32* @kzalloc(i64, i32) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i32*, i32) #1

declare dso_local i32 @ahash_request_set_crypt(%struct.ahash_request*, %struct.scatterlist*, i32*, i32) #1

declare dso_local i32 @crypto_wait_req(i32, %struct.crypto_wait*) #1

declare dso_local i32 @crypto_ahash_digest(%struct.ahash_request*) #1

declare dso_local i32 @crypto_ahash_set_flags(%struct.crypto_ahash*, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @ahash_request_free(%struct.ahash_request*) #1

declare dso_local i32 @crypto_free_ahash(%struct.crypto_ahash*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

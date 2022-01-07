; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_hmac_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_hmac_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_sha_dev = type { %struct.ahash_request* }
%struct.ahash_request = type { i32 }
%struct.atmel_sha_reqctx = type { i32, i64, i8* }
%struct.crypto_ahash = type { i32 }
%struct.atmel_sha_hmac_ctx = type { i32 (%struct.atmel_sha_dev.0*)*, i64, i32 }
%struct.atmel_sha_dev.0 = type opaque

@SHA_FLAGS_ALGO_MASK = common dso_local global i32 0, align 4
@SHA1_BLOCK_SIZE = common dso_local global i64 0, align 8
@SHA1_DIGEST_SIZE = common dso_local global i8* null, align 8
@SHA224_BLOCK_SIZE = common dso_local global i64 0, align 8
@SHA256_DIGEST_SIZE = common dso_local global i8* null, align 8
@SHA256_BLOCK_SIZE = common dso_local global i64 0, align 8
@SHA384_BLOCK_SIZE = common dso_local global i64 0, align 8
@SHA512_DIGEST_SIZE = common dso_local global i8* null, align 8
@SHA512_BLOCK_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_sha_dev*, i32 (%struct.atmel_sha_dev*)*)* @atmel_sha_hmac_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_sha_hmac_setup(%struct.atmel_sha_dev* %0, i32 (%struct.atmel_sha_dev*)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.atmel_sha_dev*, align 8
  %5 = alloca i32 (%struct.atmel_sha_dev*)*, align 8
  %6 = alloca %struct.ahash_request*, align 8
  %7 = alloca %struct.atmel_sha_reqctx*, align 8
  %8 = alloca %struct.crypto_ahash*, align 8
  %9 = alloca %struct.atmel_sha_hmac_ctx*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  store %struct.atmel_sha_dev* %0, %struct.atmel_sha_dev** %4, align 8
  store i32 (%struct.atmel_sha_dev*)* %1, i32 (%struct.atmel_sha_dev*)** %5, align 8
  %13 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %4, align 8
  %14 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %13, i32 0, i32 0
  %15 = load %struct.ahash_request*, %struct.ahash_request** %14, align 8
  store %struct.ahash_request* %15, %struct.ahash_request** %6, align 8
  %16 = load %struct.ahash_request*, %struct.ahash_request** %6, align 8
  %17 = call %struct.atmel_sha_reqctx* @ahash_request_ctx(%struct.ahash_request* %16)
  store %struct.atmel_sha_reqctx* %17, %struct.atmel_sha_reqctx** %7, align 8
  %18 = load %struct.ahash_request*, %struct.ahash_request** %6, align 8
  %19 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %18)
  store %struct.crypto_ahash* %19, %struct.crypto_ahash** %8, align 8
  %20 = load %struct.crypto_ahash*, %struct.crypto_ahash** %8, align 8
  %21 = call %struct.atmel_sha_hmac_ctx* @crypto_ahash_ctx(%struct.crypto_ahash* %20)
  store %struct.atmel_sha_hmac_ctx* %21, %struct.atmel_sha_hmac_ctx** %9, align 8
  %22 = load i32 (%struct.atmel_sha_dev*)*, i32 (%struct.atmel_sha_dev*)** %5, align 8
  %23 = bitcast i32 (%struct.atmel_sha_dev*)* %22 to i32 (%struct.atmel_sha_dev.0*)*
  %24 = load %struct.atmel_sha_hmac_ctx*, %struct.atmel_sha_hmac_ctx** %9, align 8
  %25 = getelementptr inbounds %struct.atmel_sha_hmac_ctx, %struct.atmel_sha_hmac_ctx* %24, i32 0, i32 0
  store i32 (%struct.atmel_sha_dev.0*)* %23, i32 (%struct.atmel_sha_dev.0*)** %25, align 8
  %26 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %7, align 8
  %27 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @SHA_FLAGS_ALGO_MASK, align 4
  %30 = and i32 %28, %29
  switch i32 %30, label %66 [
    i32 132, label %31
    i32 131, label %38
    i32 130, label %45
    i32 129, label %52
    i32 128, label %59
  ]

31:                                               ; preds = %2
  %32 = load i64, i64* @SHA1_BLOCK_SIZE, align 8
  %33 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %7, align 8
  %34 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  %35 = load i8*, i8** @SHA1_DIGEST_SIZE, align 8
  %36 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %7, align 8
  %37 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %36, i32 0, i32 2
  store i8* %35, i8** %37, align 8
  br label %71

38:                                               ; preds = %2
  %39 = load i64, i64* @SHA224_BLOCK_SIZE, align 8
  %40 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %7, align 8
  %41 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %40, i32 0, i32 1
  store i64 %39, i64* %41, align 8
  %42 = load i8*, i8** @SHA256_DIGEST_SIZE, align 8
  %43 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %7, align 8
  %44 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %43, i32 0, i32 2
  store i8* %42, i8** %44, align 8
  br label %71

45:                                               ; preds = %2
  %46 = load i64, i64* @SHA256_BLOCK_SIZE, align 8
  %47 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %7, align 8
  %48 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  %49 = load i8*, i8** @SHA256_DIGEST_SIZE, align 8
  %50 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %7, align 8
  %51 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %50, i32 0, i32 2
  store i8* %49, i8** %51, align 8
  br label %71

52:                                               ; preds = %2
  %53 = load i64, i64* @SHA384_BLOCK_SIZE, align 8
  %54 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %7, align 8
  %55 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %54, i32 0, i32 1
  store i64 %53, i64* %55, align 8
  %56 = load i8*, i8** @SHA512_DIGEST_SIZE, align 8
  %57 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %7, align 8
  %58 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %57, i32 0, i32 2
  store i8* %56, i8** %58, align 8
  br label %71

59:                                               ; preds = %2
  %60 = load i64, i64* @SHA512_BLOCK_SIZE, align 8
  %61 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %7, align 8
  %62 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %61, i32 0, i32 1
  store i64 %60, i64* %62, align 8
  %63 = load i8*, i8** @SHA512_DIGEST_SIZE, align 8
  %64 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %7, align 8
  %65 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %64, i32 0, i32 2
  store i8* %63, i8** %65, align 8
  br label %71

66:                                               ; preds = %2
  %67 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %4, align 8
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  %70 = call i32 @atmel_sha_complete(%struct.atmel_sha_dev* %67, i32 %69)
  store i32 %70, i32* %3, align 4
  br label %122

71:                                               ; preds = %59, %52, %45, %38, %31
  %72 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %7, align 8
  %73 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %12, align 8
  %75 = load %struct.atmel_sha_hmac_ctx*, %struct.atmel_sha_hmac_ctx** %9, align 8
  %76 = getelementptr inbounds %struct.atmel_sha_hmac_ctx, %struct.atmel_sha_hmac_ctx* %75, i32 0, i32 2
  %77 = call i32 @atmel_sha_hmac_key_get(i32* %76, i32** %11, i32* %10)
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = call i64 @likely(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %71
  %84 = load i32 (%struct.atmel_sha_dev*)*, i32 (%struct.atmel_sha_dev*)** %5, align 8
  %85 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %4, align 8
  %86 = call i32 %84(%struct.atmel_sha_dev* %85)
  store i32 %86, i32* %3, align 4
  br label %122

87:                                               ; preds = %71
  %88 = load i32, i32* %10, align 4
  %89 = zext i32 %88 to i64
  %90 = load i64, i64* %12, align 8
  %91 = icmp ugt i64 %89, %90
  %92 = zext i1 %91 to i32
  %93 = call i64 @unlikely(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %87
  %96 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %4, align 8
  %97 = load i32*, i32** %11, align 8
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @atmel_sha_hmac_prehash_key(%struct.atmel_sha_dev* %96, i32* %97, i32 %98)
  store i32 %99, i32* %3, align 4
  br label %122

100:                                              ; preds = %87
  %101 = load %struct.atmel_sha_hmac_ctx*, %struct.atmel_sha_hmac_ctx** %9, align 8
  %102 = getelementptr inbounds %struct.atmel_sha_hmac_ctx, %struct.atmel_sha_hmac_ctx* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = inttoptr i64 %103 to i32*
  %105 = load i32*, i32** %11, align 8
  %106 = load i32, i32* %10, align 4
  %107 = call i32 @memcpy(i32* %104, i32* %105, i32 %106)
  %108 = load %struct.atmel_sha_hmac_ctx*, %struct.atmel_sha_hmac_ctx** %9, align 8
  %109 = getelementptr inbounds %struct.atmel_sha_hmac_ctx, %struct.atmel_sha_hmac_ctx* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = inttoptr i64 %110 to i32*
  %112 = load i32, i32* %10, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i64, i64* %12, align 8
  %116 = load i32, i32* %10, align 4
  %117 = zext i32 %116 to i64
  %118 = sub i64 %115, %117
  %119 = call i32 @memset(i32* %114, i32 0, i64 %118)
  %120 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %4, align 8
  %121 = call i32 @atmel_sha_hmac_compute_ipad_hash(%struct.atmel_sha_dev* %120)
  store i32 %121, i32* %3, align 4
  br label %122

122:                                              ; preds = %100, %95, %83, %66
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local %struct.atmel_sha_reqctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local %struct.atmel_sha_hmac_ctx* @crypto_ahash_ctx(%struct.crypto_ahash*) #1

declare dso_local i32 @atmel_sha_complete(%struct.atmel_sha_dev*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @atmel_sha_hmac_key_get(i32*, i32**, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @atmel_sha_hmac_prehash_key(%struct.atmel_sha_dev*, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @atmel_sha_hmac_compute_ipad_hash(%struct.atmel_sha_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

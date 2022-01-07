; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_hmac_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_hmac_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }
%struct.chcr_ahash_req_ctx = type { i32, i32 }
%struct.crypto_ahash = type { i32 }
%struct.hmac_ctx = type { i32 }

@SHA224_DIGEST_SIZE = common dso_local global i32 0, align 4
@SHA256_DIGEST_SIZE = common dso_local global i32 0, align 4
@SHA384_DIGEST_SIZE = common dso_local global i32 0, align 4
@SHA512_DIGEST_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @chcr_hmac_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chcr_hmac_init(%struct.ahash_request* %0) #0 {
  %2 = alloca %struct.ahash_request*, align 8
  %3 = alloca %struct.chcr_ahash_req_ctx*, align 8
  %4 = alloca %struct.crypto_ahash*, align 8
  %5 = alloca %struct.hmac_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ahash_request* %0, %struct.ahash_request** %2, align 8
  %8 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %9 = call %struct.chcr_ahash_req_ctx* @ahash_request_ctx(%struct.ahash_request* %8)
  store %struct.chcr_ahash_req_ctx* %9, %struct.chcr_ahash_req_ctx** %3, align 8
  %10 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %11 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %10)
  store %struct.crypto_ahash* %11, %struct.crypto_ahash** %4, align 8
  %12 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %13 = call i32 @h_ctx(%struct.crypto_ahash* %12)
  %14 = call %struct.hmac_ctx* @HMAC_CTX(i32 %13)
  store %struct.hmac_ctx* %14, %struct.hmac_ctx** %5, align 8
  %15 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %16 = call i32 @crypto_ahash_digestsize(%struct.crypto_ahash* %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %18 = call i32 @crypto_ahash_tfm(%struct.crypto_ahash* %17)
  %19 = call i32 @crypto_tfm_alg_blocksize(i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %21 = call i32 @chcr_sha_init(%struct.ahash_request* %20)
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %3, align 8
  %24 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %26 = call i32 @crypto_ahash_tfm(%struct.crypto_ahash* %25)
  %27 = call i64 @is_hmac(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %66

29:                                               ; preds = %1
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @SHA224_DIGEST_SIZE, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %29
  %34 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %3, align 8
  %35 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.hmac_ctx*, %struct.hmac_ctx** %5, align 8
  %38 = getelementptr inbounds %struct.hmac_ctx, %struct.hmac_ctx* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @SHA256_DIGEST_SIZE, align 4
  %41 = call i32 @memcpy(i32 %36, i32 %39, i32 %40)
  br label %65

42:                                               ; preds = %29
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @SHA384_DIGEST_SIZE, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %42
  %47 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %3, align 8
  %48 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.hmac_ctx*, %struct.hmac_ctx** %5, align 8
  %51 = getelementptr inbounds %struct.hmac_ctx, %struct.hmac_ctx* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @SHA512_DIGEST_SIZE, align 4
  %54 = call i32 @memcpy(i32 %49, i32 %52, i32 %53)
  br label %64

55:                                               ; preds = %42
  %56 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %3, align 8
  %57 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.hmac_ctx*, %struct.hmac_ctx** %5, align 8
  %60 = getelementptr inbounds %struct.hmac_ctx, %struct.hmac_ctx* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @memcpy(i32 %58, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %55, %46
  br label %65

65:                                               ; preds = %64, %33
  br label %66

66:                                               ; preds = %65, %1
  ret i32 0
}

declare dso_local %struct.chcr_ahash_req_ctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local %struct.hmac_ctx* @HMAC_CTX(i32) #1

declare dso_local i32 @h_ctx(%struct.crypto_ahash*) #1

declare dso_local i32 @crypto_ahash_digestsize(%struct.crypto_ahash*) #1

declare dso_local i32 @crypto_tfm_alg_blocksize(i32) #1

declare dso_local i32 @crypto_ahash_tfm(%struct.crypto_ahash*) #1

declare dso_local i32 @chcr_sha_init(%struct.ahash_request*) #1

declare dso_local i64 @is_hmac(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

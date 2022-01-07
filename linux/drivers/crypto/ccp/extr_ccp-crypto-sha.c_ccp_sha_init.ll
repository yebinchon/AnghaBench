; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-crypto-sha.c_ccp_sha_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-crypto-sha.c_ccp_sha_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }
%struct.crypto_ahash = type { i32 }
%struct.ccp_ctx = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }
%struct.ccp_sha_req_ctx = type { i32, i32, i32, i32 }
%struct.ccp_crypto_ahash_alg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @ccp_sha_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccp_sha_init(%struct.ahash_request* %0) #0 {
  %2 = alloca %struct.ahash_request*, align 8
  %3 = alloca %struct.crypto_ahash*, align 8
  %4 = alloca %struct.ccp_ctx*, align 8
  %5 = alloca %struct.ccp_sha_req_ctx*, align 8
  %6 = alloca %struct.ccp_crypto_ahash_alg*, align 8
  %7 = alloca i32, align 4
  store %struct.ahash_request* %0, %struct.ahash_request** %2, align 8
  %8 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %9 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %8)
  store %struct.crypto_ahash* %9, %struct.crypto_ahash** %3, align 8
  %10 = load %struct.crypto_ahash*, %struct.crypto_ahash** %3, align 8
  %11 = call %struct.ccp_ctx* @crypto_ahash_ctx(%struct.crypto_ahash* %10)
  store %struct.ccp_ctx* %11, %struct.ccp_ctx** %4, align 8
  %12 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %13 = call %struct.ccp_sha_req_ctx* @ahash_request_ctx(%struct.ahash_request* %12)
  store %struct.ccp_sha_req_ctx* %13, %struct.ccp_sha_req_ctx** %5, align 8
  %14 = load %struct.crypto_ahash*, %struct.crypto_ahash** %3, align 8
  %15 = call i32 @crypto_ahash_tfm(%struct.crypto_ahash* %14)
  %16 = call %struct.ccp_crypto_ahash_alg* @ccp_crypto_ahash_alg(i32 %15)
  store %struct.ccp_crypto_ahash_alg* %16, %struct.ccp_crypto_ahash_alg** %6, align 8
  %17 = load %struct.crypto_ahash*, %struct.crypto_ahash** %3, align 8
  %18 = call i32 @crypto_ahash_tfm(%struct.crypto_ahash* %17)
  %19 = call i32 @crypto_tfm_alg_blocksize(i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.ccp_sha_req_ctx*, %struct.ccp_sha_req_ctx** %5, align 8
  %21 = call i32 @memset(%struct.ccp_sha_req_ctx* %20, i32 0, i32 16)
  %22 = load %struct.ccp_crypto_ahash_alg*, %struct.ccp_crypto_ahash_alg** %6, align 8
  %23 = getelementptr inbounds %struct.ccp_crypto_ahash_alg, %struct.ccp_crypto_ahash_alg* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ccp_sha_req_ctx*, %struct.ccp_sha_req_ctx** %5, align 8
  %26 = getelementptr inbounds %struct.ccp_sha_req_ctx, %struct.ccp_sha_req_ctx* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load %struct.ccp_sha_req_ctx*, %struct.ccp_sha_req_ctx** %5, align 8
  %28 = getelementptr inbounds %struct.ccp_sha_req_ctx, %struct.ccp_sha_req_ctx* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  %29 = load %struct.ccp_ctx*, %struct.ccp_ctx** %4, align 8
  %30 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %1
  %36 = load %struct.ccp_sha_req_ctx*, %struct.ccp_sha_req_ctx** %5, align 8
  %37 = getelementptr inbounds %struct.ccp_sha_req_ctx, %struct.ccp_sha_req_ctx* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ccp_ctx*, %struct.ccp_ctx** %4, align 8
  %40 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @memcpy(i32 %38, i32 %43, i32 %44)
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.ccp_sha_req_ctx*, %struct.ccp_sha_req_ctx** %5, align 8
  %48 = getelementptr inbounds %struct.ccp_sha_req_ctx, %struct.ccp_sha_req_ctx* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %35, %1
  ret i32 0
}

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local %struct.ccp_ctx* @crypto_ahash_ctx(%struct.crypto_ahash*) #1

declare dso_local %struct.ccp_sha_req_ctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local %struct.ccp_crypto_ahash_alg* @ccp_crypto_ahash_alg(i32) #1

declare dso_local i32 @crypto_ahash_tfm(%struct.crypto_ahash*) #1

declare dso_local i32 @crypto_tfm_alg_blocksize(i32) #1

declare dso_local i32 @memset(%struct.ccp_sha_req_ctx*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_hash.c_safexcel_hmac_sha384_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_hash.c_safexcel_hmac_sha384_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }
%struct.safexcel_ahash_ctx = type { i32, i32 }
%struct.safexcel_ahash_req = type { i32, i8*, i32, i32, i8*, i8*, i32 }

@SHA512_DIGEST_SIZE = common dso_local global i32 0, align 4
@SHA512_BLOCK_SIZE = common dso_local global i8* null, align 8
@CONTEXT_CONTROL_CRYPTO_ALG_SHA384 = common dso_local global i32 0, align 4
@CONTEXT_CONTROL_DIGEST_PRECOMPUTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @safexcel_hmac_sha384_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @safexcel_hmac_sha384_init(%struct.ahash_request* %0) #0 {
  %2 = alloca %struct.ahash_request*, align 8
  %3 = alloca %struct.safexcel_ahash_ctx*, align 8
  %4 = alloca %struct.safexcel_ahash_req*, align 8
  store %struct.ahash_request* %0, %struct.ahash_request** %2, align 8
  %5 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %6 = call i32 @crypto_ahash_reqtfm(%struct.ahash_request* %5)
  %7 = call %struct.safexcel_ahash_ctx* @crypto_ahash_ctx(i32 %6)
  store %struct.safexcel_ahash_ctx* %7, %struct.safexcel_ahash_ctx** %3, align 8
  %8 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %9 = call %struct.safexcel_ahash_req* @ahash_request_ctx(%struct.ahash_request* %8)
  store %struct.safexcel_ahash_req* %9, %struct.safexcel_ahash_req** %4, align 8
  %10 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %4, align 8
  %11 = call i32 @memset(%struct.safexcel_ahash_req* %10, i32 0, i32 48)
  %12 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %4, align 8
  %13 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.safexcel_ahash_ctx*, %struct.safexcel_ahash_ctx** %3, align 8
  %16 = getelementptr inbounds %struct.safexcel_ahash_ctx, %struct.safexcel_ahash_ctx* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SHA512_DIGEST_SIZE, align 4
  %19 = call i32 @memcpy(i32 %14, i32 %17, i32 %18)
  %20 = load i8*, i8** @SHA512_BLOCK_SIZE, align 8
  %21 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %4, align 8
  %22 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %21, i32 0, i32 5
  store i8* %20, i8** %22, align 8
  %23 = load i8*, i8** @SHA512_BLOCK_SIZE, align 8
  %24 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %4, align 8
  %25 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %24, i32 0, i32 4
  store i8* %23, i8** %25, align 8
  %26 = load i32, i32* @CONTEXT_CONTROL_CRYPTO_ALG_SHA384, align 4
  %27 = load %struct.safexcel_ahash_ctx*, %struct.safexcel_ahash_ctx** %3, align 8
  %28 = getelementptr inbounds %struct.safexcel_ahash_ctx, %struct.safexcel_ahash_ctx* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @CONTEXT_CONTROL_DIGEST_PRECOMPUTED, align 4
  %30 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %4, align 8
  %31 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @SHA512_DIGEST_SIZE, align 4
  %33 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %4, align 8
  %34 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  %35 = load i8*, i8** @SHA512_BLOCK_SIZE, align 8
  %36 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %4, align 8
  %37 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %4, align 8
  %39 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  ret i32 0
}

declare dso_local %struct.safexcel_ahash_ctx* @crypto_ahash_ctx(i32) #1

declare dso_local i32 @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local %struct.safexcel_ahash_req* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @memset(%struct.safexcel_ahash_req*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

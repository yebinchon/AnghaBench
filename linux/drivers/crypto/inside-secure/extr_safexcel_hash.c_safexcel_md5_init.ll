; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_hash.c_safexcel_md5_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_hash.c_safexcel_md5_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }
%struct.safexcel_ahash_ctx = type { i32 }
%struct.safexcel_ahash_req = type { i32, i32, i32 }

@CONTEXT_CONTROL_CRYPTO_ALG_MD5 = common dso_local global i32 0, align 4
@CONTEXT_CONTROL_DIGEST_PRECOMPUTED = common dso_local global i32 0, align 4
@MD5_DIGEST_SIZE = common dso_local global i32 0, align 4
@MD5_HMAC_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @safexcel_md5_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @safexcel_md5_init(%struct.ahash_request* %0) #0 {
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
  %11 = call i32 @memset(%struct.safexcel_ahash_req* %10, i32 0, i32 12)
  %12 = load i32, i32* @CONTEXT_CONTROL_CRYPTO_ALG_MD5, align 4
  %13 = load %struct.safexcel_ahash_ctx*, %struct.safexcel_ahash_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.safexcel_ahash_ctx, %struct.safexcel_ahash_ctx* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @CONTEXT_CONTROL_DIGEST_PRECOMPUTED, align 4
  %16 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %4, align 8
  %17 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @MD5_DIGEST_SIZE, align 4
  %19 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %4, align 8
  %20 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @MD5_HMAC_BLOCK_SIZE, align 4
  %22 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %4, align 8
  %23 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  ret i32 0
}

declare dso_local %struct.safexcel_ahash_ctx* @crypto_ahash_ctx(i32) #1

declare dso_local i32 @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local %struct.safexcel_ahash_req* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @memset(%struct.safexcel_ahash_req*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

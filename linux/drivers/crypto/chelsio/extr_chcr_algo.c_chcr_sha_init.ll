; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_sha_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_sha_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }
%struct.chcr_ahash_req_ctx = type { i32, i32, i32, i32, i32, i64, i64 }
%struct.crypto_ahash = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @chcr_sha_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chcr_sha_init(%struct.ahash_request* %0) #0 {
  %2 = alloca %struct.ahash_request*, align 8
  %3 = alloca %struct.chcr_ahash_req_ctx*, align 8
  %4 = alloca %struct.crypto_ahash*, align 8
  %5 = alloca i32, align 4
  store %struct.ahash_request* %0, %struct.ahash_request** %2, align 8
  %6 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %7 = call %struct.chcr_ahash_req_ctx* @ahash_request_ctx(%struct.ahash_request* %6)
  store %struct.chcr_ahash_req_ctx* %7, %struct.chcr_ahash_req_ctx** %3, align 8
  %8 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %9 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %8)
  store %struct.crypto_ahash* %9, %struct.crypto_ahash** %4, align 8
  %10 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %11 = call i32 @crypto_ahash_digestsize(%struct.crypto_ahash* %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %3, align 8
  %13 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %12, i32 0, i32 6
  store i64 0, i64* %13, align 8
  %14 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %3, align 8
  %15 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %14, i32 0, i32 5
  store i64 0, i64* %15, align 8
  %16 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %3, align 8
  %17 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %3, align 8
  %20 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 8
  %21 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %3, align 8
  %22 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %3, align 8
  %25 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %3, align 8
  %27 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @copy_hash_init_values(i32 %28, i32 %29)
  ret i32 0
}

declare dso_local %struct.chcr_ahash_req_ctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local i32 @crypto_ahash_digestsize(%struct.crypto_ahash*) #1

declare dso_local i32 @copy_hash_init_values(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

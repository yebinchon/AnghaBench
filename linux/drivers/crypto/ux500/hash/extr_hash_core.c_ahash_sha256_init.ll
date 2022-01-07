; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ux500/hash/extr_hash_core.c_ahash_sha256_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ux500/hash/extr_hash_core.c_ahash_sha256_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }
%struct.crypto_ahash = type { i32 }
%struct.hash_ctx = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@HASH_DATA_8_BITS = common dso_local global i32 0, align 4
@HASH_ALGO_SHA256 = common dso_local global i32 0, align 4
@HASH_OPER_MODE_HASH = common dso_local global i32 0, align 4
@SHA256_DIGEST_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @ahash_sha256_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahash_sha256_init(%struct.ahash_request* %0) #0 {
  %2 = alloca %struct.ahash_request*, align 8
  %3 = alloca %struct.crypto_ahash*, align 8
  %4 = alloca %struct.hash_ctx*, align 8
  store %struct.ahash_request* %0, %struct.ahash_request** %2, align 8
  %5 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %6 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %5)
  store %struct.crypto_ahash* %6, %struct.crypto_ahash** %3, align 8
  %7 = load %struct.crypto_ahash*, %struct.crypto_ahash** %3, align 8
  %8 = call %struct.hash_ctx* @crypto_ahash_ctx(%struct.crypto_ahash* %7)
  store %struct.hash_ctx* %8, %struct.hash_ctx** %4, align 8
  %9 = load i32, i32* @HASH_DATA_8_BITS, align 4
  %10 = load %struct.hash_ctx*, %struct.hash_ctx** %4, align 8
  %11 = getelementptr inbounds %struct.hash_ctx, %struct.hash_ctx* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 2
  store i32 %9, i32* %12, align 4
  %13 = load i32, i32* @HASH_ALGO_SHA256, align 4
  %14 = load %struct.hash_ctx*, %struct.hash_ctx** %4, align 8
  %15 = getelementptr inbounds %struct.hash_ctx, %struct.hash_ctx* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  store i32 %13, i32* %16, align 4
  %17 = load i32, i32* @HASH_OPER_MODE_HASH, align 4
  %18 = load %struct.hash_ctx*, %struct.hash_ctx** %4, align 8
  %19 = getelementptr inbounds %struct.hash_ctx, %struct.hash_ctx* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 4
  %21 = load i32, i32* @SHA256_DIGEST_SIZE, align 4
  %22 = load %struct.hash_ctx*, %struct.hash_ctx** %4, align 8
  %23 = getelementptr inbounds %struct.hash_ctx, %struct.hash_ctx* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %25 = call i32 @hash_init(%struct.ahash_request* %24)
  ret i32 %25
}

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local %struct.hash_ctx* @crypto_ahash_ctx(%struct.crypto_ahash*) #1

declare dso_local i32 @hash_init(%struct.ahash_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/axis/extr_artpec6_crypto.c_artpec6_crypto_hmac_sha256_digest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/axis/extr_artpec6_crypto.c_artpec6_crypto_hmac_sha256_digest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }
%struct.artpec6_hash_request_context = type { i32 }

@ARTPEC6_CRYPTO_HASH_SHA256 = common dso_local global i32 0, align 4
@HASH_FLAG_UPDATE = common dso_local global i32 0, align 4
@HASH_FLAG_FINALIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @artpec6_crypto_hmac_sha256_digest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @artpec6_crypto_hmac_sha256_digest(%struct.ahash_request* %0) #0 {
  %2 = alloca %struct.ahash_request*, align 8
  %3 = alloca %struct.artpec6_hash_request_context*, align 8
  store %struct.ahash_request* %0, %struct.ahash_request** %2, align 8
  %4 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %5 = call %struct.artpec6_hash_request_context* @ahash_request_ctx(%struct.ahash_request* %4)
  store %struct.artpec6_hash_request_context* %5, %struct.artpec6_hash_request_context** %3, align 8
  %6 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %7 = load i32, i32* @ARTPEC6_CRYPTO_HASH_SHA256, align 4
  %8 = call i32 @artpec6_crypto_init_hash(%struct.ahash_request* %6, i32 %7, i32 1)
  %9 = load i32, i32* @HASH_FLAG_UPDATE, align 4
  %10 = load i32, i32* @HASH_FLAG_FINALIZE, align 4
  %11 = or i32 %9, %10
  %12 = load %struct.artpec6_hash_request_context*, %struct.artpec6_hash_request_context** %3, align 8
  %13 = getelementptr inbounds %struct.artpec6_hash_request_context, %struct.artpec6_hash_request_context* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 4
  %16 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %17 = call i32 @artpec6_crypto_prepare_submit_hash(%struct.ahash_request* %16)
  ret i32 %17
}

declare dso_local %struct.artpec6_hash_request_context* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @artpec6_crypto_init_hash(%struct.ahash_request*, i32, i32) #1

declare dso_local i32 @artpec6_crypto_prepare_submit_hash(%struct.ahash_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

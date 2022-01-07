; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-crypto-aes.c_ccp_aes_rfc3686_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-crypto-aes.c_ccp_aes_rfc3686_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_async_request = type { i32 }
%struct.ablkcipher_request = type { i32 }
%struct.ccp_aes_req_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_async_request*, i32)* @ccp_aes_rfc3686_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccp_aes_rfc3686_complete(%struct.crypto_async_request* %0, i32 %1) #0 {
  %3 = alloca %struct.crypto_async_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ablkcipher_request*, align 8
  %6 = alloca %struct.ccp_aes_req_ctx*, align 8
  store %struct.crypto_async_request* %0, %struct.crypto_async_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.crypto_async_request*, %struct.crypto_async_request** %3, align 8
  %8 = call %struct.ablkcipher_request* @ablkcipher_request_cast(%struct.crypto_async_request* %7)
  store %struct.ablkcipher_request* %8, %struct.ablkcipher_request** %5, align 8
  %9 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %10 = call %struct.ccp_aes_req_ctx* @ablkcipher_request_ctx(%struct.ablkcipher_request* %9)
  store %struct.ccp_aes_req_ctx* %10, %struct.ccp_aes_req_ctx** %6, align 8
  %11 = load %struct.ccp_aes_req_ctx*, %struct.ccp_aes_req_ctx** %6, align 8
  %12 = getelementptr inbounds %struct.ccp_aes_req_ctx, %struct.ccp_aes_req_ctx* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %15 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.crypto_async_request*, %struct.crypto_async_request** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @ccp_aes_complete(%struct.crypto_async_request* %16, i32 %17)
  ret i32 %18
}

declare dso_local %struct.ablkcipher_request* @ablkcipher_request_cast(%struct.crypto_async_request*) #1

declare dso_local %struct.ccp_aes_req_ctx* @ablkcipher_request_ctx(%struct.ablkcipher_request*) #1

declare dso_local i32 @ccp_aes_complete(%struct.crypto_async_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

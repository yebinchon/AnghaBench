; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-crypto-aes-xts.c_ccp_aes_xts_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-crypto-aes-xts.c_ccp_aes_xts_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_async_request = type { i32 }
%struct.ablkcipher_request = type { i32 }
%struct.ccp_aes_req_ctx = type { i32 }

@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_async_request*, i32)* @ccp_aes_xts_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccp_aes_xts_complete(%struct.crypto_async_request* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.crypto_async_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ablkcipher_request*, align 8
  %7 = alloca %struct.ccp_aes_req_ctx*, align 8
  store %struct.crypto_async_request* %0, %struct.crypto_async_request** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.crypto_async_request*, %struct.crypto_async_request** %4, align 8
  %9 = call %struct.ablkcipher_request* @ablkcipher_request_cast(%struct.crypto_async_request* %8)
  store %struct.ablkcipher_request* %9, %struct.ablkcipher_request** %6, align 8
  %10 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %11 = call %struct.ccp_aes_req_ctx* @ablkcipher_request_ctx(%struct.ablkcipher_request* %10)
  store %struct.ccp_aes_req_ctx* %11, %struct.ccp_aes_req_ctx** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %3, align 4
  br label %25

16:                                               ; preds = %2
  %17 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %18 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ccp_aes_req_ctx*, %struct.ccp_aes_req_ctx** %7, align 8
  %21 = getelementptr inbounds %struct.ccp_aes_req_ctx, %struct.ccp_aes_req_ctx* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %24 = call i32 @memcpy(i32 %19, i32 %22, i32 %23)
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %16, %14
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local %struct.ablkcipher_request* @ablkcipher_request_cast(%struct.crypto_async_request*) #1

declare dso_local %struct.ccp_aes_req_ctx* @ablkcipher_request_ctx(%struct.ablkcipher_request*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-crypto-des3.c_ccp_des3_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-crypto-des3.c_ccp_des3_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_async_request = type { i32 }
%struct.ablkcipher_request = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ccp_ctx = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.ccp_des3_req_ctx = type { i32 }

@CCP_DES3_MODE_ECB = common dso_local global i64 0, align 8
@DES3_EDE_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_async_request*, i32)* @ccp_des3_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccp_des3_complete(%struct.crypto_async_request* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.crypto_async_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ablkcipher_request*, align 8
  %7 = alloca %struct.ccp_ctx*, align 8
  %8 = alloca %struct.ccp_des3_req_ctx*, align 8
  store %struct.crypto_async_request* %0, %struct.crypto_async_request** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.crypto_async_request*, %struct.crypto_async_request** %4, align 8
  %10 = call %struct.ablkcipher_request* @ablkcipher_request_cast(%struct.crypto_async_request* %9)
  store %struct.ablkcipher_request* %10, %struct.ablkcipher_request** %6, align 8
  %11 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %12 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.ccp_ctx* @crypto_tfm_ctx(i32 %14)
  store %struct.ccp_ctx* %15, %struct.ccp_ctx** %7, align 8
  %16 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %17 = call %struct.ccp_des3_req_ctx* @ablkcipher_request_ctx(%struct.ablkcipher_request* %16)
  store %struct.ccp_des3_req_ctx* %17, %struct.ccp_des3_req_ctx** %8, align 8
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %3, align 4
  br label %40

22:                                               ; preds = %2
  %23 = load %struct.ccp_ctx*, %struct.ccp_ctx** %7, align 8
  %24 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @CCP_DES3_MODE_ECB, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %22
  %31 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %32 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ccp_des3_req_ctx*, %struct.ccp_des3_req_ctx** %8, align 8
  %35 = getelementptr inbounds %struct.ccp_des3_req_ctx, %struct.ccp_des3_req_ctx* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @DES3_EDE_BLOCK_SIZE, align 4
  %38 = call i32 @memcpy(i32 %33, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %30, %22
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %20
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.ablkcipher_request* @ablkcipher_request_cast(%struct.crypto_async_request*) #1

declare dso_local %struct.ccp_ctx* @crypto_tfm_ctx(i32) #1

declare dso_local %struct.ccp_des3_req_ctx* @ablkcipher_request_ctx(%struct.ablkcipher_request*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_cipher.c_mv_cesa_skcipher_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_cipher.c_mv_cesa_skcipher_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_async_request = type { i32 }
%struct.skcipher_request = type { i32 }
%struct.mv_cesa_skcipher_req = type { %struct.mv_cesa_req }
%struct.mv_cesa_req = type { i32 }

@CESA_STD_REQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_async_request*, i32)* @mv_cesa_skcipher_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_cesa_skcipher_process(%struct.crypto_async_request* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.crypto_async_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.skcipher_request*, align 8
  %7 = alloca %struct.mv_cesa_skcipher_req*, align 8
  %8 = alloca %struct.mv_cesa_req*, align 8
  store %struct.crypto_async_request* %0, %struct.crypto_async_request** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.crypto_async_request*, %struct.crypto_async_request** %4, align 8
  %10 = call %struct.skcipher_request* @skcipher_request_cast(%struct.crypto_async_request* %9)
  store %struct.skcipher_request* %10, %struct.skcipher_request** %6, align 8
  %11 = load %struct.skcipher_request*, %struct.skcipher_request** %6, align 8
  %12 = call %struct.mv_cesa_skcipher_req* @skcipher_request_ctx(%struct.skcipher_request* %11)
  store %struct.mv_cesa_skcipher_req* %12, %struct.mv_cesa_skcipher_req** %7, align 8
  %13 = load %struct.mv_cesa_skcipher_req*, %struct.mv_cesa_skcipher_req** %7, align 8
  %14 = getelementptr inbounds %struct.mv_cesa_skcipher_req, %struct.mv_cesa_skcipher_req* %13, i32 0, i32 0
  store %struct.mv_cesa_req* %14, %struct.mv_cesa_req** %8, align 8
  %15 = load %struct.mv_cesa_req*, %struct.mv_cesa_req** %8, align 8
  %16 = call i64 @mv_cesa_req_get_type(%struct.mv_cesa_req* %15)
  %17 = load i64, i64* @CESA_STD_REQ, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.skcipher_request*, %struct.skcipher_request** %6, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @mv_cesa_skcipher_std_process(%struct.skcipher_request* %20, i32 %21)
  store i32 %22, i32* %3, align 4
  br label %27

23:                                               ; preds = %2
  %24 = load %struct.mv_cesa_req*, %struct.mv_cesa_req** %8, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @mv_cesa_dma_process(%struct.mv_cesa_req* %24, i32 %25)
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %23, %19
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local %struct.skcipher_request* @skcipher_request_cast(%struct.crypto_async_request*) #1

declare dso_local %struct.mv_cesa_skcipher_req* @skcipher_request_ctx(%struct.skcipher_request*) #1

declare dso_local i64 @mv_cesa_req_get_type(%struct.mv_cesa_req*) #1

declare dso_local i32 @mv_cesa_skcipher_std_process(%struct.skcipher_request*, i32) #1

declare dso_local i32 @mv_cesa_dma_process(%struct.mv_cesa_req*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_hash.c_mv_cesa_ahash_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_hash.c_mv_cesa_ahash_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_async_request = type { i32 }
%struct.ahash_request = type { i32 }
%struct.mv_cesa_ahash_req = type { i32 }

@CESA_DMA_REQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_async_request*, i32)* @mv_cesa_ahash_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_cesa_ahash_process(%struct.crypto_async_request* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.crypto_async_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ahash_request*, align 8
  %7 = alloca %struct.mv_cesa_ahash_req*, align 8
  store %struct.crypto_async_request* %0, %struct.crypto_async_request** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.crypto_async_request*, %struct.crypto_async_request** %4, align 8
  %9 = call %struct.ahash_request* @ahash_request_cast(%struct.crypto_async_request* %8)
  store %struct.ahash_request* %9, %struct.ahash_request** %6, align 8
  %10 = load %struct.ahash_request*, %struct.ahash_request** %6, align 8
  %11 = call %struct.mv_cesa_ahash_req* @ahash_request_ctx(%struct.ahash_request* %10)
  store %struct.mv_cesa_ahash_req* %11, %struct.mv_cesa_ahash_req** %7, align 8
  %12 = load %struct.mv_cesa_ahash_req*, %struct.mv_cesa_ahash_req** %7, align 8
  %13 = getelementptr inbounds %struct.mv_cesa_ahash_req, %struct.mv_cesa_ahash_req* %12, i32 0, i32 0
  %14 = call i64 @mv_cesa_req_get_type(i32* %13)
  %15 = load i64, i64* @CESA_DMA_REQ, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.mv_cesa_ahash_req*, %struct.mv_cesa_ahash_req** %7, align 8
  %19 = getelementptr inbounds %struct.mv_cesa_ahash_req, %struct.mv_cesa_ahash_req* %18, i32 0, i32 0
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @mv_cesa_dma_process(i32* %19, i32 %20)
  store i32 %21, i32* %3, align 4
  br label %26

22:                                               ; preds = %2
  %23 = load %struct.ahash_request*, %struct.ahash_request** %6, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @mv_cesa_ahash_std_process(%struct.ahash_request* %23, i32 %24)
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %22, %17
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local %struct.ahash_request* @ahash_request_cast(%struct.crypto_async_request*) #1

declare dso_local %struct.mv_cesa_ahash_req* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i64 @mv_cesa_req_get_type(i32*) #1

declare dso_local i32 @mv_cesa_dma_process(i32*, i32) #1

declare dso_local i32 @mv_cesa_ahash_std_process(%struct.ahash_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_hash.c_mv_cesa_ahash_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_hash.c_mv_cesa_ahash_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_async_request = type { i32 }
%struct.mv_cesa_engine = type { i32 }
%struct.ahash_request = type { i32 }
%struct.mv_cesa_ahash_req = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mv_cesa_engine* }

@CESA_DMA_REQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_async_request*, %struct.mv_cesa_engine*)* @mv_cesa_ahash_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv_cesa_ahash_prepare(%struct.crypto_async_request* %0, %struct.mv_cesa_engine* %1) #0 {
  %3 = alloca %struct.crypto_async_request*, align 8
  %4 = alloca %struct.mv_cesa_engine*, align 8
  %5 = alloca %struct.ahash_request*, align 8
  %6 = alloca %struct.mv_cesa_ahash_req*, align 8
  store %struct.crypto_async_request* %0, %struct.crypto_async_request** %3, align 8
  store %struct.mv_cesa_engine* %1, %struct.mv_cesa_engine** %4, align 8
  %7 = load %struct.crypto_async_request*, %struct.crypto_async_request** %3, align 8
  %8 = call %struct.ahash_request* @ahash_request_cast(%struct.crypto_async_request* %7)
  store %struct.ahash_request* %8, %struct.ahash_request** %5, align 8
  %9 = load %struct.ahash_request*, %struct.ahash_request** %5, align 8
  %10 = call %struct.mv_cesa_ahash_req* @ahash_request_ctx(%struct.ahash_request* %9)
  store %struct.mv_cesa_ahash_req* %10, %struct.mv_cesa_ahash_req** %6, align 8
  %11 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %4, align 8
  %12 = load %struct.mv_cesa_ahash_req*, %struct.mv_cesa_ahash_req** %6, align 8
  %13 = getelementptr inbounds %struct.mv_cesa_ahash_req, %struct.mv_cesa_ahash_req* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.mv_cesa_engine* %11, %struct.mv_cesa_engine** %14, align 8
  %15 = load %struct.mv_cesa_ahash_req*, %struct.mv_cesa_ahash_req** %6, align 8
  %16 = getelementptr inbounds %struct.mv_cesa_ahash_req, %struct.mv_cesa_ahash_req* %15, i32 0, i32 0
  %17 = call i64 @mv_cesa_req_get_type(%struct.TYPE_2__* %16)
  %18 = load i64, i64* @CESA_DMA_REQ, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load %struct.ahash_request*, %struct.ahash_request** %5, align 8
  %22 = call i32 @mv_cesa_ahash_dma_prepare(%struct.ahash_request* %21)
  br label %26

23:                                               ; preds = %2
  %24 = load %struct.ahash_request*, %struct.ahash_request** %5, align 8
  %25 = call i32 @mv_cesa_ahash_std_prepare(%struct.ahash_request* %24)
  br label %26

26:                                               ; preds = %23, %20
  ret void
}

declare dso_local %struct.ahash_request* @ahash_request_cast(%struct.crypto_async_request*) #1

declare dso_local %struct.mv_cesa_ahash_req* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i64 @mv_cesa_req_get_type(%struct.TYPE_2__*) #1

declare dso_local i32 @mv_cesa_ahash_dma_prepare(%struct.ahash_request*) #1

declare dso_local i32 @mv_cesa_ahash_std_prepare(%struct.ahash_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

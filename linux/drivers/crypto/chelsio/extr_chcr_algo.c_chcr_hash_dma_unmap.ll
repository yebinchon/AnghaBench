; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_hash_dma_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_hash_dma_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ahash_request = type { i32, i32 }
%struct.chcr_ahash_req_ctx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @chcr_hash_dma_unmap(%struct.device* %0, %struct.ahash_request* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.ahash_request*, align 8
  %5 = alloca %struct.chcr_ahash_req_ctx*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.ahash_request* %1, %struct.ahash_request** %4, align 8
  %6 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %7 = call %struct.chcr_ahash_req_ctx* @ahash_request_ctx(%struct.ahash_request* %6)
  store %struct.chcr_ahash_req_ctx* %7, %struct.chcr_ahash_req_ctx** %5, align 8
  %8 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %9 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %27

13:                                               ; preds = %2
  %14 = load %struct.device*, %struct.device** %3, align 8
  %15 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %16 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %19 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @sg_nents(i32 %20)
  %22 = load i32, i32* @DMA_TO_DEVICE, align 4
  %23 = call i32 @dma_unmap_sg(%struct.device* %14, i32 %17, i32 %21, i32 %22)
  %24 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %5, align 8
  %25 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  br label %27

27:                                               ; preds = %13, %12
  ret void
}

declare dso_local %struct.chcr_ahash_req_ctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @dma_unmap_sg(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @sg_nents(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

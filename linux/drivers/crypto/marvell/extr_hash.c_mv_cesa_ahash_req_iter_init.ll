; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_hash.c_mv_cesa_ahash_req_iter_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_hash.c_mv_cesa_ahash_req_iter_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_cesa_ahash_dma_iter = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ahash_request = type { i32, i32 }
%struct.mv_cesa_ahash_req = type { i32, i32 }

@CESA_HASH_BLOCK_SIZE_MSK = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mv_cesa_ahash_dma_iter*, %struct.ahash_request*)* @mv_cesa_ahash_req_iter_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv_cesa_ahash_req_iter_init(%struct.mv_cesa_ahash_dma_iter* %0, %struct.ahash_request* %1) #0 {
  %3 = alloca %struct.mv_cesa_ahash_dma_iter*, align 8
  %4 = alloca %struct.ahash_request*, align 8
  %5 = alloca %struct.mv_cesa_ahash_req*, align 8
  %6 = alloca i32, align 4
  store %struct.mv_cesa_ahash_dma_iter* %0, %struct.mv_cesa_ahash_dma_iter** %3, align 8
  store %struct.ahash_request* %1, %struct.ahash_request** %4, align 8
  %7 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %8 = call %struct.mv_cesa_ahash_req* @ahash_request_ctx(%struct.ahash_request* %7)
  store %struct.mv_cesa_ahash_req* %8, %struct.mv_cesa_ahash_req** %5, align 8
  %9 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %10 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.mv_cesa_ahash_req*, %struct.mv_cesa_ahash_req** %5, align 8
  %13 = getelementptr inbounds %struct.mv_cesa_ahash_req, %struct.mv_cesa_ahash_req* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = add i32 %11, %14
  store i32 %15, i32* %6, align 4
  %16 = load %struct.mv_cesa_ahash_req*, %struct.mv_cesa_ahash_req** %5, align 8
  %17 = getelementptr inbounds %struct.mv_cesa_ahash_req, %struct.mv_cesa_ahash_req* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @CESA_HASH_BLOCK_SIZE_MSK, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %20, %2
  %26 = load %struct.mv_cesa_ahash_dma_iter*, %struct.mv_cesa_ahash_dma_iter** %3, align 8
  %27 = getelementptr inbounds %struct.mv_cesa_ahash_dma_iter, %struct.mv_cesa_ahash_dma_iter* %26, i32 0, i32 1
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @mv_cesa_req_dma_iter_init(i32* %27, i32 %28)
  %30 = load %struct.mv_cesa_ahash_dma_iter*, %struct.mv_cesa_ahash_dma_iter** %3, align 8
  %31 = getelementptr inbounds %struct.mv_cesa_ahash_dma_iter, %struct.mv_cesa_ahash_dma_iter* %30, i32 0, i32 0
  %32 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %33 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @DMA_TO_DEVICE, align 4
  %36 = call i32 @mv_cesa_sg_dma_iter_init(%struct.TYPE_2__* %31, i32 %34, i32 %35)
  %37 = load %struct.mv_cesa_ahash_req*, %struct.mv_cesa_ahash_req** %5, align 8
  %38 = getelementptr inbounds %struct.mv_cesa_ahash_req, %struct.mv_cesa_ahash_req* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.mv_cesa_ahash_dma_iter*, %struct.mv_cesa_ahash_dma_iter** %3, align 8
  %41 = getelementptr inbounds %struct.mv_cesa_ahash_dma_iter, %struct.mv_cesa_ahash_dma_iter* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 4
  ret void
}

declare dso_local %struct.mv_cesa_ahash_req* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @mv_cesa_req_dma_iter_init(i32*, i32) #1

declare dso_local i32 @mv_cesa_sg_dma_iter_init(%struct.TYPE_2__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

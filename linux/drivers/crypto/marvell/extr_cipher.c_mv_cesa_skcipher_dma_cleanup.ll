; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_cipher.c_mv_cesa_skcipher_dma_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_cipher.c_mv_cesa_skcipher_dma_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.skcipher_request = type { i64, i64 }
%struct.mv_cesa_skcipher_req = type { i32, i32, i32 }

@cesa_dev = common dso_local global %struct.TYPE_2__* null, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skcipher_request*)* @mv_cesa_skcipher_dma_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv_cesa_skcipher_dma_cleanup(%struct.skcipher_request* %0) #0 {
  %2 = alloca %struct.skcipher_request*, align 8
  %3 = alloca %struct.mv_cesa_skcipher_req*, align 8
  store %struct.skcipher_request* %0, %struct.skcipher_request** %2, align 8
  %4 = load %struct.skcipher_request*, %struct.skcipher_request** %2, align 8
  %5 = call %struct.mv_cesa_skcipher_req* @skcipher_request_ctx(%struct.skcipher_request* %4)
  store %struct.mv_cesa_skcipher_req* %5, %struct.mv_cesa_skcipher_req** %3, align 8
  %6 = load %struct.skcipher_request*, %struct.skcipher_request** %2, align 8
  %7 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.skcipher_request*, %struct.skcipher_request** %2, align 8
  %10 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %8, %11
  br i1 %12, label %13, label %36

13:                                               ; preds = %1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cesa_dev, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.skcipher_request*, %struct.skcipher_request** %2, align 8
  %18 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.mv_cesa_skcipher_req*, %struct.mv_cesa_skcipher_req** %3, align 8
  %21 = getelementptr inbounds %struct.mv_cesa_skcipher_req, %struct.mv_cesa_skcipher_req* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %24 = call i32 @dma_unmap_sg(i32 %16, i64 %19, i32 %22, i32 %23)
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cesa_dev, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.skcipher_request*, %struct.skcipher_request** %2, align 8
  %29 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.mv_cesa_skcipher_req*, %struct.mv_cesa_skcipher_req** %3, align 8
  %32 = getelementptr inbounds %struct.mv_cesa_skcipher_req, %struct.mv_cesa_skcipher_req* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @DMA_TO_DEVICE, align 4
  %35 = call i32 @dma_unmap_sg(i32 %27, i64 %30, i32 %33, i32 %34)
  br label %48

36:                                               ; preds = %1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cesa_dev, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.skcipher_request*, %struct.skcipher_request** %2, align 8
  %41 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.mv_cesa_skcipher_req*, %struct.mv_cesa_skcipher_req** %3, align 8
  %44 = getelementptr inbounds %struct.mv_cesa_skcipher_req, %struct.mv_cesa_skcipher_req* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %47 = call i32 @dma_unmap_sg(i32 %39, i64 %42, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %36, %13
  %49 = load %struct.mv_cesa_skcipher_req*, %struct.mv_cesa_skcipher_req** %3, align 8
  %50 = getelementptr inbounds %struct.mv_cesa_skcipher_req, %struct.mv_cesa_skcipher_req* %49, i32 0, i32 0
  %51 = call i32 @mv_cesa_dma_cleanup(i32* %50)
  ret void
}

declare dso_local %struct.mv_cesa_skcipher_req* @skcipher_request_ctx(%struct.skcipher_request*) #1

declare dso_local i32 @dma_unmap_sg(i32, i64, i32, i32) #1

declare dso_local i32 @mv_cesa_dma_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

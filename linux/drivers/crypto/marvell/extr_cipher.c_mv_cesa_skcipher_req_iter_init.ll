; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_cipher.c_mv_cesa_skcipher_req_iter_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_cipher.c_mv_cesa_skcipher_req_iter_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_cesa_skcipher_dma_iter = type { i32, i32, i32 }
%struct.skcipher_request = type { i32, i32, i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mv_cesa_skcipher_dma_iter*, %struct.skcipher_request*)* @mv_cesa_skcipher_req_iter_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv_cesa_skcipher_req_iter_init(%struct.mv_cesa_skcipher_dma_iter* %0, %struct.skcipher_request* %1) #0 {
  %3 = alloca %struct.mv_cesa_skcipher_dma_iter*, align 8
  %4 = alloca %struct.skcipher_request*, align 8
  store %struct.mv_cesa_skcipher_dma_iter* %0, %struct.mv_cesa_skcipher_dma_iter** %3, align 8
  store %struct.skcipher_request* %1, %struct.skcipher_request** %4, align 8
  %5 = load %struct.mv_cesa_skcipher_dma_iter*, %struct.mv_cesa_skcipher_dma_iter** %3, align 8
  %6 = getelementptr inbounds %struct.mv_cesa_skcipher_dma_iter, %struct.mv_cesa_skcipher_dma_iter* %5, i32 0, i32 2
  %7 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %8 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @mv_cesa_req_dma_iter_init(i32* %6, i32 %9)
  %11 = load %struct.mv_cesa_skcipher_dma_iter*, %struct.mv_cesa_skcipher_dma_iter** %3, align 8
  %12 = getelementptr inbounds %struct.mv_cesa_skcipher_dma_iter, %struct.mv_cesa_skcipher_dma_iter* %11, i32 0, i32 1
  %13 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %14 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @DMA_TO_DEVICE, align 4
  %17 = call i32 @mv_cesa_sg_dma_iter_init(i32* %12, i32 %15, i32 %16)
  %18 = load %struct.mv_cesa_skcipher_dma_iter*, %struct.mv_cesa_skcipher_dma_iter** %3, align 8
  %19 = getelementptr inbounds %struct.mv_cesa_skcipher_dma_iter, %struct.mv_cesa_skcipher_dma_iter* %18, i32 0, i32 0
  %20 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %21 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %24 = call i32 @mv_cesa_sg_dma_iter_init(i32* %19, i32 %22, i32 %23)
  ret void
}

declare dso_local i32 @mv_cesa_req_dma_iter_init(i32*, i32) #1

declare dso_local i32 @mv_cesa_sg_dma_iter_init(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

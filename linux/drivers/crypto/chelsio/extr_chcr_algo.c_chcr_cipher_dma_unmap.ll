; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_cipher_dma_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_cipher_dma_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ablkcipher_request = type { i64, i64 }

@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @chcr_cipher_dma_unmap(%struct.device* %0, %struct.ablkcipher_request* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.ablkcipher_request*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.ablkcipher_request* %1, %struct.ablkcipher_request** %4, align 8
  %5 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %6 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %9 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %7, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %2
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %15 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %18 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @sg_nents(i64 %19)
  %21 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %22 = call i32 @dma_unmap_sg(%struct.device* %13, i64 %16, i32 %20, i32 %21)
  br label %44

23:                                               ; preds = %2
  %24 = load %struct.device*, %struct.device** %3, align 8
  %25 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %26 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %29 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @sg_nents(i64 %30)
  %32 = load i32, i32* @DMA_TO_DEVICE, align 4
  %33 = call i32 @dma_unmap_sg(%struct.device* %24, i64 %27, i32 %31, i32 %32)
  %34 = load %struct.device*, %struct.device** %3, align 8
  %35 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %36 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %39 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @sg_nents(i64 %40)
  %42 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %43 = call i32 @dma_unmap_sg(%struct.device* %34, i64 %37, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %23, %12
  ret void
}

declare dso_local i32 @dma_unmap_sg(%struct.device*, i64, i32, i32) #1

declare dso_local i32 @sg_nents(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caampkc.c_rsa_io_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caampkc.c_rsa_io_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rsa_edesc = type { i64, i32, i32, i32 }
%struct.akcipher_request = type { i32 }
%struct.caam_rsa_req_ctx = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.rsa_edesc*, %struct.akcipher_request*)* @rsa_io_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rsa_io_unmap(%struct.device* %0, %struct.rsa_edesc* %1, %struct.akcipher_request* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rsa_edesc*, align 8
  %6 = alloca %struct.akcipher_request*, align 8
  %7 = alloca %struct.caam_rsa_req_ctx*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rsa_edesc* %1, %struct.rsa_edesc** %5, align 8
  store %struct.akcipher_request* %2, %struct.akcipher_request** %6, align 8
  %8 = load %struct.akcipher_request*, %struct.akcipher_request** %6, align 8
  %9 = call %struct.caam_rsa_req_ctx* @akcipher_request_ctx(%struct.akcipher_request* %8)
  store %struct.caam_rsa_req_ctx* %9, %struct.caam_rsa_req_ctx** %7, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = load %struct.akcipher_request*, %struct.akcipher_request** %6, align 8
  %12 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.rsa_edesc*, %struct.rsa_edesc** %5, align 8
  %15 = getelementptr inbounds %struct.rsa_edesc, %struct.rsa_edesc* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %18 = call i32 @dma_unmap_sg(%struct.device* %10, i32 %13, i32 %16, i32 %17)
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = load %struct.caam_rsa_req_ctx*, %struct.caam_rsa_req_ctx** %7, align 8
  %21 = getelementptr inbounds %struct.caam_rsa_req_ctx, %struct.caam_rsa_req_ctx* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.rsa_edesc*, %struct.rsa_edesc** %5, align 8
  %24 = getelementptr inbounds %struct.rsa_edesc, %struct.rsa_edesc* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @DMA_TO_DEVICE, align 4
  %27 = call i32 @dma_unmap_sg(%struct.device* %19, i32 %22, i32 %25, i32 %26)
  %28 = load %struct.rsa_edesc*, %struct.rsa_edesc** %5, align 8
  %29 = getelementptr inbounds %struct.rsa_edesc, %struct.rsa_edesc* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %3
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = load %struct.rsa_edesc*, %struct.rsa_edesc** %5, align 8
  %35 = getelementptr inbounds %struct.rsa_edesc, %struct.rsa_edesc* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.rsa_edesc*, %struct.rsa_edesc** %5, align 8
  %38 = getelementptr inbounds %struct.rsa_edesc, %struct.rsa_edesc* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* @DMA_TO_DEVICE, align 4
  %41 = call i32 @dma_unmap_single(%struct.device* %33, i32 %36, i64 %39, i32 %40)
  br label %42

42:                                               ; preds = %32, %3
  ret void
}

declare dso_local %struct.caam_rsa_req_ctx* @akcipher_request_ctx(%struct.akcipher_request*) #1

declare dso_local i32 @dma_unmap_sg(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg_qi.c_aead_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg_qi.c_aead_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.aead_edesc = type { i32, i32, i32, i32, i32, i32 }
%struct.aead_request = type { i32, i32 }
%struct.crypto_aead = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.aead_edesc*, %struct.aead_request*)* @aead_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aead_unmap(%struct.device* %0, %struct.aead_edesc* %1, %struct.aead_request* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.aead_edesc*, align 8
  %6 = alloca %struct.aead_request*, align 8
  %7 = alloca %struct.crypto_aead*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.aead_edesc* %1, %struct.aead_edesc** %5, align 8
  store %struct.aead_request* %2, %struct.aead_request** %6, align 8
  %9 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %10 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %9)
  store %struct.crypto_aead* %10, %struct.crypto_aead** %7, align 8
  %11 = load %struct.crypto_aead*, %struct.crypto_aead** %7, align 8
  %12 = call i32 @crypto_aead_ivsize(%struct.crypto_aead* %11)
  store i32 %12, i32* %8, align 4
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %15 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %18 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.aead_edesc*, %struct.aead_edesc** %5, align 8
  %21 = getelementptr inbounds %struct.aead_edesc, %struct.aead_edesc* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.aead_edesc*, %struct.aead_edesc** %5, align 8
  %24 = getelementptr inbounds %struct.aead_edesc, %struct.aead_edesc* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.aead_edesc*, %struct.aead_edesc** %5, align 8
  %27 = getelementptr inbounds %struct.aead_edesc, %struct.aead_edesc* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @DMA_TO_DEVICE, align 4
  %31 = load %struct.aead_edesc*, %struct.aead_edesc** %5, align 8
  %32 = getelementptr inbounds %struct.aead_edesc, %struct.aead_edesc* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.aead_edesc*, %struct.aead_edesc** %5, align 8
  %35 = getelementptr inbounds %struct.aead_edesc, %struct.aead_edesc* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @caam_unmap(%struct.device* %13, i32 %16, i32 %19, i32 %22, i32 %25, i32 %28, i32 %29, i32 %30, i32 %33, i32 %36)
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = load %struct.aead_edesc*, %struct.aead_edesc** %5, align 8
  %40 = getelementptr inbounds %struct.aead_edesc, %struct.aead_edesc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @DMA_TO_DEVICE, align 4
  %43 = call i32 @dma_unmap_single(%struct.device* %38, i32 %41, i32 4, i32 %42)
  ret void
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local i32 @crypto_aead_ivsize(%struct.crypto_aead*) #1

declare dso_local i32 @caam_unmap(%struct.device*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

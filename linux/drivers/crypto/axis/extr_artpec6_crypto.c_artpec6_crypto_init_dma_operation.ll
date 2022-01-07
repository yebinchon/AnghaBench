; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/axis/extr_artpec6_crypto.c_artpec6_crypto_init_dma_operation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/axis/extr_artpec6_crypto.c_artpec6_crypto_init_dma_operation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.artpec6_crypto_req_common = type { %struct.artpec6_crypto_dma_descriptors* }
%struct.artpec6_crypto_dma_descriptors = type { i32, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.artpec6_crypto_req_common*)* @artpec6_crypto_init_dma_operation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @artpec6_crypto_init_dma_operation(%struct.artpec6_crypto_req_common* %0) #0 {
  %2 = alloca %struct.artpec6_crypto_req_common*, align 8
  %3 = alloca %struct.artpec6_crypto_dma_descriptors*, align 8
  store %struct.artpec6_crypto_req_common* %0, %struct.artpec6_crypto_req_common** %2, align 8
  %4 = load %struct.artpec6_crypto_req_common*, %struct.artpec6_crypto_req_common** %2, align 8
  %5 = getelementptr inbounds %struct.artpec6_crypto_req_common, %struct.artpec6_crypto_req_common* %4, i32 0, i32 0
  %6 = load %struct.artpec6_crypto_dma_descriptors*, %struct.artpec6_crypto_dma_descriptors** %5, align 8
  store %struct.artpec6_crypto_dma_descriptors* %6, %struct.artpec6_crypto_dma_descriptors** %3, align 8
  %7 = load %struct.artpec6_crypto_dma_descriptors*, %struct.artpec6_crypto_dma_descriptors** %3, align 8
  %8 = getelementptr inbounds %struct.artpec6_crypto_dma_descriptors, %struct.artpec6_crypto_dma_descriptors* %7, i32 0, i32 3
  store i64 0, i64* %8, align 8
  %9 = load %struct.artpec6_crypto_dma_descriptors*, %struct.artpec6_crypto_dma_descriptors** %3, align 8
  %10 = getelementptr inbounds %struct.artpec6_crypto_dma_descriptors, %struct.artpec6_crypto_dma_descriptors* %9, i32 0, i32 2
  store i64 0, i64* %10, align 8
  %11 = load %struct.artpec6_crypto_dma_descriptors*, %struct.artpec6_crypto_dma_descriptors** %3, align 8
  %12 = getelementptr inbounds %struct.artpec6_crypto_dma_descriptors, %struct.artpec6_crypto_dma_descriptors* %11, i32 0, i32 1
  store i64 0, i64* %12, align 8
  %13 = load %struct.artpec6_crypto_dma_descriptors*, %struct.artpec6_crypto_dma_descriptors** %3, align 8
  %14 = getelementptr inbounds %struct.artpec6_crypto_dma_descriptors, %struct.artpec6_crypto_dma_descriptors* %13, i32 0, i32 0
  %15 = call i32 @INIT_LIST_HEAD(i32* %14)
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

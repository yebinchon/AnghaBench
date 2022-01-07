; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/axis/extr_artpec6_crypto.c_artpec6_crypto_dma_unmap_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/axis/extr_artpec6_crypto.c_artpec6_crypto_dma_unmap_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.artpec6_crypto_req_common = type { %struct.artpec6_crypto_dma_descriptors* }
%struct.artpec6_crypto_dma_descriptors = type { i32, %struct.artpec6_crypto_dma_map* }
%struct.artpec6_crypto_dma_map = type { i32, i32, i32 }

@artpec6_crypto_dev = common dso_local global %struct.device* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.artpec6_crypto_req_common*)* @artpec6_crypto_dma_unmap_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @artpec6_crypto_dma_unmap_all(%struct.artpec6_crypto_req_common* %0) #0 {
  %2 = alloca %struct.artpec6_crypto_req_common*, align 8
  %3 = alloca %struct.artpec6_crypto_dma_descriptors*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.artpec6_crypto_dma_map*, align 8
  store %struct.artpec6_crypto_req_common* %0, %struct.artpec6_crypto_req_common** %2, align 8
  %7 = load %struct.artpec6_crypto_req_common*, %struct.artpec6_crypto_req_common** %2, align 8
  %8 = getelementptr inbounds %struct.artpec6_crypto_req_common, %struct.artpec6_crypto_req_common* %7, i32 0, i32 0
  %9 = load %struct.artpec6_crypto_dma_descriptors*, %struct.artpec6_crypto_dma_descriptors** %8, align 8
  store %struct.artpec6_crypto_dma_descriptors* %9, %struct.artpec6_crypto_dma_descriptors** %3, align 8
  %10 = load %struct.device*, %struct.device** @artpec6_crypto_dev, align 8
  store %struct.device* %10, %struct.device** %4, align 8
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %35, %1
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.artpec6_crypto_dma_descriptors*, %struct.artpec6_crypto_dma_descriptors** %3, align 8
  %14 = getelementptr inbounds %struct.artpec6_crypto_dma_descriptors, %struct.artpec6_crypto_dma_descriptors* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %38

17:                                               ; preds = %11
  %18 = load %struct.artpec6_crypto_dma_descriptors*, %struct.artpec6_crypto_dma_descriptors** %3, align 8
  %19 = getelementptr inbounds %struct.artpec6_crypto_dma_descriptors, %struct.artpec6_crypto_dma_descriptors* %18, i32 0, i32 1
  %20 = load %struct.artpec6_crypto_dma_map*, %struct.artpec6_crypto_dma_map** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.artpec6_crypto_dma_map, %struct.artpec6_crypto_dma_map* %20, i64 %22
  store %struct.artpec6_crypto_dma_map* %23, %struct.artpec6_crypto_dma_map** %6, align 8
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = load %struct.artpec6_crypto_dma_map*, %struct.artpec6_crypto_dma_map** %6, align 8
  %26 = getelementptr inbounds %struct.artpec6_crypto_dma_map, %struct.artpec6_crypto_dma_map* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.artpec6_crypto_dma_map*, %struct.artpec6_crypto_dma_map** %6, align 8
  %29 = getelementptr inbounds %struct.artpec6_crypto_dma_map, %struct.artpec6_crypto_dma_map* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.artpec6_crypto_dma_map*, %struct.artpec6_crypto_dma_map** %6, align 8
  %32 = getelementptr inbounds %struct.artpec6_crypto_dma_map, %struct.artpec6_crypto_dma_map* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dma_unmap_page(%struct.device* %24, i32 %27, i32 %30, i32 %33)
  br label %35

35:                                               ; preds = %17
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %11

38:                                               ; preds = %11
  %39 = load %struct.artpec6_crypto_dma_descriptors*, %struct.artpec6_crypto_dma_descriptors** %3, align 8
  %40 = getelementptr inbounds %struct.artpec6_crypto_dma_descriptors, %struct.artpec6_crypto_dma_descriptors* %39, i32 0, i32 0
  store i32 0, i32* %40, align 8
  ret void
}

declare dso_local i32 @dma_unmap_page(%struct.device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

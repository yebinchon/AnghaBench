; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caampkc.c_rsa_priv_f3_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caampkc.c_rsa_priv_f3_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rsa_edesc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.rsa_priv_f3_pdb }
%struct.rsa_priv_f3_pdb = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.akcipher_request = type { i32 }
%struct.crypto_akcipher = type { i32 }
%struct.caam_rsa_ctx = type { %struct.caam_rsa_key }
%struct.caam_rsa_key = type { i64, i64 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.rsa_edesc*, %struct.akcipher_request*)* @rsa_priv_f3_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rsa_priv_f3_unmap(%struct.device* %0, %struct.rsa_edesc* %1, %struct.akcipher_request* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rsa_edesc*, align 8
  %6 = alloca %struct.akcipher_request*, align 8
  %7 = alloca %struct.crypto_akcipher*, align 8
  %8 = alloca %struct.caam_rsa_ctx*, align 8
  %9 = alloca %struct.caam_rsa_key*, align 8
  %10 = alloca %struct.rsa_priv_f3_pdb*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rsa_edesc* %1, %struct.rsa_edesc** %5, align 8
  store %struct.akcipher_request* %2, %struct.akcipher_request** %6, align 8
  %13 = load %struct.akcipher_request*, %struct.akcipher_request** %6, align 8
  %14 = call %struct.crypto_akcipher* @crypto_akcipher_reqtfm(%struct.akcipher_request* %13)
  store %struct.crypto_akcipher* %14, %struct.crypto_akcipher** %7, align 8
  %15 = load %struct.crypto_akcipher*, %struct.crypto_akcipher** %7, align 8
  %16 = call %struct.caam_rsa_ctx* @akcipher_tfm_ctx(%struct.crypto_akcipher* %15)
  store %struct.caam_rsa_ctx* %16, %struct.caam_rsa_ctx** %8, align 8
  %17 = load %struct.caam_rsa_ctx*, %struct.caam_rsa_ctx** %8, align 8
  %18 = getelementptr inbounds %struct.caam_rsa_ctx, %struct.caam_rsa_ctx* %17, i32 0, i32 0
  store %struct.caam_rsa_key* %18, %struct.caam_rsa_key** %9, align 8
  %19 = load %struct.rsa_edesc*, %struct.rsa_edesc** %5, align 8
  %20 = getelementptr inbounds %struct.rsa_edesc, %struct.rsa_edesc* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store %struct.rsa_priv_f3_pdb* %21, %struct.rsa_priv_f3_pdb** %10, align 8
  %22 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %9, align 8
  %23 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %11, align 8
  %25 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %9, align 8
  %26 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %12, align 8
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = load %struct.rsa_priv_f3_pdb*, %struct.rsa_priv_f3_pdb** %10, align 8
  %30 = getelementptr inbounds %struct.rsa_priv_f3_pdb, %struct.rsa_priv_f3_pdb* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 4
  %32 = load i64, i64* %11, align 8
  %33 = load i32, i32* @DMA_TO_DEVICE, align 4
  %34 = call i32 @dma_unmap_single(%struct.device* %28, i32 %31, i64 %32, i32 %33)
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = load %struct.rsa_priv_f3_pdb*, %struct.rsa_priv_f3_pdb** %10, align 8
  %37 = getelementptr inbounds %struct.rsa_priv_f3_pdb, %struct.rsa_priv_f3_pdb* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* %12, align 8
  %40 = load i32, i32* @DMA_TO_DEVICE, align 4
  %41 = call i32 @dma_unmap_single(%struct.device* %35, i32 %38, i64 %39, i32 %40)
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = load %struct.rsa_priv_f3_pdb*, %struct.rsa_priv_f3_pdb** %10, align 8
  %44 = getelementptr inbounds %struct.rsa_priv_f3_pdb, %struct.rsa_priv_f3_pdb* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* %11, align 8
  %47 = load i32, i32* @DMA_TO_DEVICE, align 4
  %48 = call i32 @dma_unmap_single(%struct.device* %42, i32 %45, i64 %46, i32 %47)
  %49 = load %struct.device*, %struct.device** %4, align 8
  %50 = load %struct.rsa_priv_f3_pdb*, %struct.rsa_priv_f3_pdb** %10, align 8
  %51 = getelementptr inbounds %struct.rsa_priv_f3_pdb, %struct.rsa_priv_f3_pdb* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load i64, i64* %12, align 8
  %54 = load i32, i32* @DMA_TO_DEVICE, align 4
  %55 = call i32 @dma_unmap_single(%struct.device* %49, i32 %52, i64 %53, i32 %54)
  %56 = load %struct.device*, %struct.device** %4, align 8
  %57 = load %struct.rsa_priv_f3_pdb*, %struct.rsa_priv_f3_pdb** %10, align 8
  %58 = getelementptr inbounds %struct.rsa_priv_f3_pdb, %struct.rsa_priv_f3_pdb* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i64, i64* %11, align 8
  %61 = load i32, i32* @DMA_TO_DEVICE, align 4
  %62 = call i32 @dma_unmap_single(%struct.device* %56, i32 %59, i64 %60, i32 %61)
  %63 = load %struct.device*, %struct.device** %4, align 8
  %64 = load %struct.rsa_priv_f3_pdb*, %struct.rsa_priv_f3_pdb** %10, align 8
  %65 = getelementptr inbounds %struct.rsa_priv_f3_pdb, %struct.rsa_priv_f3_pdb* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i64, i64* %11, align 8
  %68 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %69 = call i32 @dma_unmap_single(%struct.device* %63, i32 %66, i64 %67, i32 %68)
  %70 = load %struct.device*, %struct.device** %4, align 8
  %71 = load %struct.rsa_priv_f3_pdb*, %struct.rsa_priv_f3_pdb** %10, align 8
  %72 = getelementptr inbounds %struct.rsa_priv_f3_pdb, %struct.rsa_priv_f3_pdb* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i64, i64* %12, align 8
  %75 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %76 = call i32 @dma_unmap_single(%struct.device* %70, i32 %73, i64 %74, i32 %75)
  ret void
}

declare dso_local %struct.crypto_akcipher* @crypto_akcipher_reqtfm(%struct.akcipher_request*) #1

declare dso_local %struct.caam_rsa_ctx* @akcipher_tfm_ctx(%struct.crypto_akcipher*) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

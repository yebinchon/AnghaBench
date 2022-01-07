; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caampkc.c_rsa_pub_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caampkc.c_rsa_pub_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rsa_edesc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.rsa_pub_pdb }
%struct.rsa_pub_pdb = type { i32, i32 }
%struct.akcipher_request = type { i32 }
%struct.crypto_akcipher = type { i32 }
%struct.caam_rsa_ctx = type { %struct.caam_rsa_key }
%struct.caam_rsa_key = type { i32, i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.rsa_edesc*, %struct.akcipher_request*)* @rsa_pub_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rsa_pub_unmap(%struct.device* %0, %struct.rsa_edesc* %1, %struct.akcipher_request* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rsa_edesc*, align 8
  %6 = alloca %struct.akcipher_request*, align 8
  %7 = alloca %struct.crypto_akcipher*, align 8
  %8 = alloca %struct.caam_rsa_ctx*, align 8
  %9 = alloca %struct.caam_rsa_key*, align 8
  %10 = alloca %struct.rsa_pub_pdb*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rsa_edesc* %1, %struct.rsa_edesc** %5, align 8
  store %struct.akcipher_request* %2, %struct.akcipher_request** %6, align 8
  %11 = load %struct.akcipher_request*, %struct.akcipher_request** %6, align 8
  %12 = call %struct.crypto_akcipher* @crypto_akcipher_reqtfm(%struct.akcipher_request* %11)
  store %struct.crypto_akcipher* %12, %struct.crypto_akcipher** %7, align 8
  %13 = load %struct.crypto_akcipher*, %struct.crypto_akcipher** %7, align 8
  %14 = call %struct.caam_rsa_ctx* @akcipher_tfm_ctx(%struct.crypto_akcipher* %13)
  store %struct.caam_rsa_ctx* %14, %struct.caam_rsa_ctx** %8, align 8
  %15 = load %struct.caam_rsa_ctx*, %struct.caam_rsa_ctx** %8, align 8
  %16 = getelementptr inbounds %struct.caam_rsa_ctx, %struct.caam_rsa_ctx* %15, i32 0, i32 0
  store %struct.caam_rsa_key* %16, %struct.caam_rsa_key** %9, align 8
  %17 = load %struct.rsa_edesc*, %struct.rsa_edesc** %5, align 8
  %18 = getelementptr inbounds %struct.rsa_edesc, %struct.rsa_edesc* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.rsa_pub_pdb* %19, %struct.rsa_pub_pdb** %10, align 8
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = load %struct.rsa_pub_pdb*, %struct.rsa_pub_pdb** %10, align 8
  %22 = getelementptr inbounds %struct.rsa_pub_pdb, %struct.rsa_pub_pdb* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %9, align 8
  %25 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @DMA_TO_DEVICE, align 4
  %28 = call i32 @dma_unmap_single(%struct.device* %20, i32 %23, i32 %26, i32 %27)
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = load %struct.rsa_pub_pdb*, %struct.rsa_pub_pdb** %10, align 8
  %31 = getelementptr inbounds %struct.rsa_pub_pdb, %struct.rsa_pub_pdb* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %9, align 8
  %34 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @DMA_TO_DEVICE, align 4
  %37 = call i32 @dma_unmap_single(%struct.device* %29, i32 %32, i32 %35, i32 %36)
  ret void
}

declare dso_local %struct.crypto_akcipher* @crypto_akcipher_reqtfm(%struct.akcipher_request*) #1

declare dso_local %struct.caam_rsa_ctx* @akcipher_tfm_ctx(%struct.crypto_akcipher*) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

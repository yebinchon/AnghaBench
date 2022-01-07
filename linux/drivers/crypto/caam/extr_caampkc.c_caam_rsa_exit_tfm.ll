; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caampkc.c_caam_rsa_exit_tfm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caampkc.c_caam_rsa_exit_tfm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_akcipher = type { i32 }
%struct.caam_rsa_ctx = type { i32, i32, %struct.caam_rsa_key }
%struct.caam_rsa_key = type { i32 }

@CAAM_RSA_MAX_INPUT_SIZE = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_akcipher*)* @caam_rsa_exit_tfm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @caam_rsa_exit_tfm(%struct.crypto_akcipher* %0) #0 {
  %2 = alloca %struct.crypto_akcipher*, align 8
  %3 = alloca %struct.caam_rsa_ctx*, align 8
  %4 = alloca %struct.caam_rsa_key*, align 8
  store %struct.crypto_akcipher* %0, %struct.crypto_akcipher** %2, align 8
  %5 = load %struct.crypto_akcipher*, %struct.crypto_akcipher** %2, align 8
  %6 = call %struct.caam_rsa_ctx* @akcipher_tfm_ctx(%struct.crypto_akcipher* %5)
  store %struct.caam_rsa_ctx* %6, %struct.caam_rsa_ctx** %3, align 8
  %7 = load %struct.caam_rsa_ctx*, %struct.caam_rsa_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.caam_rsa_ctx, %struct.caam_rsa_ctx* %7, i32 0, i32 2
  store %struct.caam_rsa_key* %8, %struct.caam_rsa_key** %4, align 8
  %9 = load %struct.caam_rsa_ctx*, %struct.caam_rsa_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.caam_rsa_ctx, %struct.caam_rsa_ctx* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.caam_rsa_ctx*, %struct.caam_rsa_ctx** %3, align 8
  %13 = getelementptr inbounds %struct.caam_rsa_ctx, %struct.caam_rsa_ctx* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i64, i64* @CAAM_RSA_MAX_INPUT_SIZE, align 8
  %16 = sub nsw i64 %15, 1
  %17 = load i32, i32* @DMA_TO_DEVICE, align 4
  %18 = call i32 @dma_unmap_single(i32 %11, i32 %14, i64 %16, i32 %17)
  %19 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %4, align 8
  %20 = call i32 @caam_rsa_free_key(%struct.caam_rsa_key* %19)
  %21 = load %struct.caam_rsa_ctx*, %struct.caam_rsa_ctx** %3, align 8
  %22 = getelementptr inbounds %struct.caam_rsa_ctx, %struct.caam_rsa_ctx* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @caam_jr_free(i32 %23)
  ret void
}

declare dso_local %struct.caam_rsa_ctx* @akcipher_tfm_ctx(%struct.crypto_akcipher*) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i64, i32) #1

declare dso_local i32 @caam_rsa_free_key(%struct.caam_rsa_key*) #1

declare dso_local i32 @caam_jr_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

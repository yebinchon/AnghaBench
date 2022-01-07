; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-cryp.c_stm32_cryp_aes_aead_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-cryp.c_stm32_cryp_aes_aead_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead = type { i32 }
%struct.stm32_cryp_ctx = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i32, i32 }

@stm32_cryp_aead_one_req = common dso_local global i32 0, align 4
@stm32_cryp_prepare_aead_req = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_aead*)* @stm32_cryp_aes_aead_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_cryp_aes_aead_init(%struct.crypto_aead* %0) #0 {
  %2 = alloca %struct.crypto_aead*, align 8
  %3 = alloca %struct.stm32_cryp_ctx*, align 8
  store %struct.crypto_aead* %0, %struct.crypto_aead** %2, align 8
  %4 = load %struct.crypto_aead*, %struct.crypto_aead** %2, align 8
  %5 = call %struct.stm32_cryp_ctx* @crypto_aead_ctx(%struct.crypto_aead* %4)
  store %struct.stm32_cryp_ctx* %5, %struct.stm32_cryp_ctx** %3, align 8
  %6 = load %struct.crypto_aead*, %struct.crypto_aead** %2, align 8
  %7 = getelementptr inbounds %struct.crypto_aead, %struct.crypto_aead* %6, i32 0, i32 0
  store i32 4, i32* %7, align 4
  %8 = load i32, i32* @stm32_cryp_aead_one_req, align 4
  %9 = load %struct.stm32_cryp_ctx*, %struct.stm32_cryp_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.stm32_cryp_ctx, %struct.stm32_cryp_ctx* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 2
  store i32 %8, i32* %12, align 4
  %13 = load i32, i32* @stm32_cryp_prepare_aead_req, align 4
  %14 = load %struct.stm32_cryp_ctx*, %struct.stm32_cryp_ctx** %3, align 8
  %15 = getelementptr inbounds %struct.stm32_cryp_ctx, %struct.stm32_cryp_ctx* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  store i32 %13, i32* %17, align 8
  %18 = load %struct.stm32_cryp_ctx*, %struct.stm32_cryp_ctx** %3, align 8
  %19 = getelementptr inbounds %struct.stm32_cryp_ctx, %struct.stm32_cryp_ctx* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i32* null, i32** %21, align 8
  ret i32 0
}

declare dso_local %struct.stm32_cryp_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

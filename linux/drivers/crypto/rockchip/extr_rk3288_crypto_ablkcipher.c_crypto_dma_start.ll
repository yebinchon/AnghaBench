; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/rockchip/extr_rk3288_crypto_ablkcipher.c_crypto_dma_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/rockchip/extr_rk3288_crypto_ablkcipher.c_crypto_dma_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk_crypto_info = type { i32, i32, i32 }

@RK_CRYPTO_BRDMAS = common dso_local global i32 0, align 4
@RK_CRYPTO_BRDMAL = common dso_local global i32 0, align 4
@RK_CRYPTO_BTDMAS = common dso_local global i32 0, align 4
@RK_CRYPTO_CTRL = common dso_local global i32 0, align 4
@RK_CRYPTO_BLOCK_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rk_crypto_info*)* @crypto_dma_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crypto_dma_start(%struct.rk_crypto_info* %0) #0 {
  %2 = alloca %struct.rk_crypto_info*, align 8
  store %struct.rk_crypto_info* %0, %struct.rk_crypto_info** %2, align 8
  %3 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %2, align 8
  %4 = load i32, i32* @RK_CRYPTO_BRDMAS, align 4
  %5 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %2, align 8
  %6 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @CRYPTO_WRITE(%struct.rk_crypto_info* %3, i32 %4, i32 %7)
  %9 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %2, align 8
  %10 = load i32, i32* @RK_CRYPTO_BRDMAL, align 4
  %11 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %2, align 8
  %12 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = sdiv i32 %13, 4
  %15 = call i32 @CRYPTO_WRITE(%struct.rk_crypto_info* %9, i32 %10, i32 %14)
  %16 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %2, align 8
  %17 = load i32, i32* @RK_CRYPTO_BTDMAS, align 4
  %18 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %2, align 8
  %19 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @CRYPTO_WRITE(%struct.rk_crypto_info* %16, i32 %17, i32 %20)
  %22 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %2, align 8
  %23 = load i32, i32* @RK_CRYPTO_CTRL, align 4
  %24 = load i32, i32* @RK_CRYPTO_BLOCK_START, align 4
  %25 = load i32, i32* @RK_CRYPTO_BLOCK_START, align 4
  %26 = call i32 @_SBF(i32 %25, i32 16)
  %27 = or i32 %24, %26
  %28 = call i32 @CRYPTO_WRITE(%struct.rk_crypto_info* %22, i32 %23, i32 %27)
  ret void
}

declare dso_local i32 @CRYPTO_WRITE(%struct.rk_crypto_info*, i32, i32) #1

declare dso_local i32 @_SBF(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

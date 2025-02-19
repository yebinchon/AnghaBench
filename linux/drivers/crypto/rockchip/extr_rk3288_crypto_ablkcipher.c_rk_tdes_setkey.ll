; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/rockchip/extr_rk3288_crypto_ablkcipher.c_rk_tdes_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/rockchip/extr_rk3288_crypto_ablkcipher.c_rk_tdes_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_ablkcipher = type { i32 }
%struct.rk_cipher_ctx = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@RK_CRYPTO_TDES_KEY1_0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_ablkcipher*, i32*, i32)* @rk_tdes_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk_tdes_setkey(%struct.crypto_ablkcipher* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_ablkcipher*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rk_cipher_ctx*, align 8
  %9 = alloca i32, align 4
  store %struct.crypto_ablkcipher* %0, %struct.crypto_ablkcipher** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %5, align 8
  %11 = call %struct.rk_cipher_ctx* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher* %10)
  store %struct.rk_cipher_ctx* %11, %struct.rk_cipher_ctx** %8, align 8
  %12 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %5, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @verify_ablkcipher_des3_key(%struct.crypto_ablkcipher* %12, i32* %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %4, align 4
  br label %33

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.rk_cipher_ctx*, %struct.rk_cipher_ctx** %8, align 8
  %22 = getelementptr inbounds %struct.rk_cipher_ctx, %struct.rk_cipher_ctx* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.rk_cipher_ctx*, %struct.rk_cipher_ctx** %8, align 8
  %24 = getelementptr inbounds %struct.rk_cipher_ctx, %struct.rk_cipher_ctx* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @RK_CRYPTO_TDES_KEY1_0, align 8
  %29 = add nsw i64 %27, %28
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @memcpy_toio(i64 %29, i32* %30, i32 %31)
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %19, %17
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local %struct.rk_cipher_ctx* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher*) #1

declare dso_local i32 @verify_ablkcipher_des3_key(%struct.crypto_ablkcipher*, i32*) #1

declare dso_local i32 @memcpy_toio(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

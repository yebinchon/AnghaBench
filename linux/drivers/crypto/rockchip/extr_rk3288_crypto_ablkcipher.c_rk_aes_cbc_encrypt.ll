; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/rockchip/extr_rk3288_crypto_ablkcipher.c_rk_aes_cbc_encrypt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/rockchip/extr_rk3288_crypto_ablkcipher.c_rk_aes_cbc_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ablkcipher_request = type { i32 }
%struct.crypto_ablkcipher = type { i32 }
%struct.rk_cipher_ctx = type { i32, %struct.rk_crypto_info* }
%struct.rk_crypto_info = type { i32 }

@RK_CRYPTO_AES_CBC_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ablkcipher_request*)* @rk_aes_cbc_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk_aes_cbc_encrypt(%struct.ablkcipher_request* %0) #0 {
  %2 = alloca %struct.ablkcipher_request*, align 8
  %3 = alloca %struct.crypto_ablkcipher*, align 8
  %4 = alloca %struct.rk_cipher_ctx*, align 8
  %5 = alloca %struct.rk_crypto_info*, align 8
  store %struct.ablkcipher_request* %0, %struct.ablkcipher_request** %2, align 8
  %6 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %2, align 8
  %7 = call %struct.crypto_ablkcipher* @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request* %6)
  store %struct.crypto_ablkcipher* %7, %struct.crypto_ablkcipher** %3, align 8
  %8 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %3, align 8
  %9 = call %struct.rk_cipher_ctx* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher* %8)
  store %struct.rk_cipher_ctx* %9, %struct.rk_cipher_ctx** %4, align 8
  %10 = load %struct.rk_cipher_ctx*, %struct.rk_cipher_ctx** %4, align 8
  %11 = getelementptr inbounds %struct.rk_cipher_ctx, %struct.rk_cipher_ctx* %10, i32 0, i32 1
  %12 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %11, align 8
  store %struct.rk_crypto_info* %12, %struct.rk_crypto_info** %5, align 8
  %13 = load i32, i32* @RK_CRYPTO_AES_CBC_MODE, align 4
  %14 = load %struct.rk_cipher_ctx*, %struct.rk_cipher_ctx** %4, align 8
  %15 = getelementptr inbounds %struct.rk_cipher_ctx, %struct.rk_cipher_ctx* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %5, align 8
  %17 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %2, align 8
  %18 = call i32 @rk_handle_req(%struct.rk_crypto_info* %16, %struct.ablkcipher_request* %17)
  ret i32 %18
}

declare dso_local %struct.crypto_ablkcipher* @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request*) #1

declare dso_local %struct.rk_cipher_ctx* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher*) #1

declare dso_local i32 @rk_handle_req(%struct.rk_crypto_info*, %struct.ablkcipher_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

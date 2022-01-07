; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/rockchip/extr_rk3288_crypto_ablkcipher.c_rk_ablk_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/rockchip/extr_rk3288_crypto_ablkcipher.c_rk_ablk_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk_crypto_info = type { i64, i32 }
%struct.ablkcipher_request = type { i32 }
%struct.crypto_ablkcipher = type { i32 }
%struct.crypto_tfm = type { i32 }
%struct.rk_cipher_ctx = type { i32, i64 }

@DES_BLOCK_SIZE = common dso_local global i64 0, align 8
@RK_CRYPTO_TDES_FIFO_MODE = common dso_local global i32 0, align 4
@RK_CRYPTO_TDES_BYTESWAP_KEY = common dso_local global i32 0, align 4
@RK_CRYPTO_TDES_BYTESWAP_IV = common dso_local global i32 0, align 4
@RK_CRYPTO_TDES_CTRL = common dso_local global i32 0, align 4
@RK_CRYPTO_TDES_IV_0 = common dso_local global i64 0, align 8
@RK_CRYPTO_DESSEL = common dso_local global i64 0, align 8
@RK_CRYPTO_AES_FIFO_MODE = common dso_local global i32 0, align 4
@RK_CRYPTO_AES_KEY_CHANGE = common dso_local global i32 0, align 4
@RK_CRYPTO_AES_BYTESWAP_KEY = common dso_local global i32 0, align 4
@RK_CRYPTO_AES_BYTESWAP_IV = common dso_local global i32 0, align 4
@AES_KEYSIZE_192 = common dso_local global i64 0, align 8
@RK_CRYPTO_AES_192BIT_key = common dso_local global i32 0, align 4
@AES_KEYSIZE_256 = common dso_local global i64 0, align 8
@RK_CRYPTO_AES_256BIT_key = common dso_local global i32 0, align 4
@RK_CRYPTO_AES_CTRL = common dso_local global i32 0, align 4
@RK_CRYPTO_AES_IV_0 = common dso_local global i64 0, align 8
@RK_CRYPTO_BYTESWAP_BTFIFO = common dso_local global i64 0, align 8
@RK_CRYPTO_BYTESWAP_BRFIFO = common dso_local global i64 0, align 8
@RK_CRYPTO_CONF = common dso_local global i32 0, align 4
@RK_CRYPTO_INTENA = common dso_local global i32 0, align 4
@RK_CRYPTO_BCDMA_ERR_ENA = common dso_local global i64 0, align 8
@RK_CRYPTO_BCDMA_DONE_ENA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rk_crypto_info*)* @rk_ablk_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rk_ablk_hw_init(%struct.rk_crypto_info* %0) #0 {
  %2 = alloca %struct.rk_crypto_info*, align 8
  %3 = alloca %struct.ablkcipher_request*, align 8
  %4 = alloca %struct.crypto_ablkcipher*, align 8
  %5 = alloca %struct.crypto_tfm*, align 8
  %6 = alloca %struct.rk_cipher_ctx*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.rk_crypto_info* %0, %struct.rk_crypto_info** %2, align 8
  %10 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %2, align 8
  %11 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.ablkcipher_request* @ablkcipher_request_cast(i32 %12)
  store %struct.ablkcipher_request* %13, %struct.ablkcipher_request** %3, align 8
  %14 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %15 = call %struct.crypto_ablkcipher* @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request* %14)
  store %struct.crypto_ablkcipher* %15, %struct.crypto_ablkcipher** %4, align 8
  %16 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %4, align 8
  %17 = call %struct.crypto_tfm* @crypto_ablkcipher_tfm(%struct.crypto_ablkcipher* %16)
  store %struct.crypto_tfm* %17, %struct.crypto_tfm** %5, align 8
  %18 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %4, align 8
  %19 = call %struct.rk_cipher_ctx* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher* %18)
  store %struct.rk_cipher_ctx* %19, %struct.rk_cipher_ctx** %6, align 8
  store i64 0, i64* %9, align 8
  %20 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %21 = call i64 @crypto_tfm_alg_blocksize(%struct.crypto_tfm* %20)
  store i64 %21, i64* %8, align 8
  %22 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %4, align 8
  %23 = call i64 @crypto_ablkcipher_ivsize(%struct.crypto_ablkcipher* %22)
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* @DES_BLOCK_SIZE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %55

27:                                               ; preds = %1
  %28 = load i32, i32* @RK_CRYPTO_TDES_FIFO_MODE, align 4
  %29 = load i32, i32* @RK_CRYPTO_TDES_BYTESWAP_KEY, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @RK_CRYPTO_TDES_BYTESWAP_IV, align 4
  %32 = or i32 %30, %31
  %33 = load %struct.rk_cipher_ctx*, %struct.rk_cipher_ctx** %6, align 8
  %34 = getelementptr inbounds %struct.rk_cipher_ctx, %struct.rk_cipher_ctx* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 8
  %37 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %2, align 8
  %38 = load i32, i32* @RK_CRYPTO_TDES_CTRL, align 4
  %39 = load %struct.rk_cipher_ctx*, %struct.rk_cipher_ctx** %6, align 8
  %40 = getelementptr inbounds %struct.rk_cipher_ctx, %struct.rk_cipher_ctx* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = call i32 @CRYPTO_WRITE(%struct.rk_crypto_info* %37, i32 %38, i64 %42)
  %44 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %2, align 8
  %45 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @RK_CRYPTO_TDES_IV_0, align 8
  %48 = add nsw i64 %46, %47
  %49 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %50 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i64, i64* %7, align 8
  %53 = call i32 @memcpy_toio(i64 %48, i32 %51, i64 %52)
  %54 = load i64, i64* @RK_CRYPTO_DESSEL, align 8
  store i64 %54, i64* %9, align 8
  br label %109

55:                                               ; preds = %1
  %56 = load i32, i32* @RK_CRYPTO_AES_FIFO_MODE, align 4
  %57 = load i32, i32* @RK_CRYPTO_AES_KEY_CHANGE, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @RK_CRYPTO_AES_BYTESWAP_KEY, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @RK_CRYPTO_AES_BYTESWAP_IV, align 4
  %62 = or i32 %60, %61
  %63 = load %struct.rk_cipher_ctx*, %struct.rk_cipher_ctx** %6, align 8
  %64 = getelementptr inbounds %struct.rk_cipher_ctx, %struct.rk_cipher_ctx* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 8
  %67 = load %struct.rk_cipher_ctx*, %struct.rk_cipher_ctx** %6, align 8
  %68 = getelementptr inbounds %struct.rk_cipher_ctx, %struct.rk_cipher_ctx* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @AES_KEYSIZE_192, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %55
  %73 = load i32, i32* @RK_CRYPTO_AES_192BIT_key, align 4
  %74 = load %struct.rk_cipher_ctx*, %struct.rk_cipher_ctx** %6, align 8
  %75 = getelementptr inbounds %struct.rk_cipher_ctx, %struct.rk_cipher_ctx* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 8
  br label %91

78:                                               ; preds = %55
  %79 = load %struct.rk_cipher_ctx*, %struct.rk_cipher_ctx** %6, align 8
  %80 = getelementptr inbounds %struct.rk_cipher_ctx, %struct.rk_cipher_ctx* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @AES_KEYSIZE_256, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %78
  %85 = load i32, i32* @RK_CRYPTO_AES_256BIT_key, align 4
  %86 = load %struct.rk_cipher_ctx*, %struct.rk_cipher_ctx** %6, align 8
  %87 = getelementptr inbounds %struct.rk_cipher_ctx, %struct.rk_cipher_ctx* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 8
  br label %90

90:                                               ; preds = %84, %78
  br label %91

91:                                               ; preds = %90, %72
  %92 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %2, align 8
  %93 = load i32, i32* @RK_CRYPTO_AES_CTRL, align 4
  %94 = load %struct.rk_cipher_ctx*, %struct.rk_cipher_ctx** %6, align 8
  %95 = getelementptr inbounds %struct.rk_cipher_ctx, %struct.rk_cipher_ctx* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = sext i32 %96 to i64
  %98 = call i32 @CRYPTO_WRITE(%struct.rk_crypto_info* %92, i32 %93, i64 %97)
  %99 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %2, align 8
  %100 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @RK_CRYPTO_AES_IV_0, align 8
  %103 = add nsw i64 %101, %102
  %104 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %105 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i64, i64* %7, align 8
  %108 = call i32 @memcpy_toio(i64 %103, i32 %106, i64 %107)
  br label %109

109:                                              ; preds = %91, %27
  %110 = load i64, i64* @RK_CRYPTO_BYTESWAP_BTFIFO, align 8
  %111 = load i64, i64* @RK_CRYPTO_BYTESWAP_BRFIFO, align 8
  %112 = or i64 %110, %111
  %113 = load i64, i64* %9, align 8
  %114 = or i64 %113, %112
  store i64 %114, i64* %9, align 8
  %115 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %2, align 8
  %116 = load i32, i32* @RK_CRYPTO_CONF, align 4
  %117 = load i64, i64* %9, align 8
  %118 = call i32 @CRYPTO_WRITE(%struct.rk_crypto_info* %115, i32 %116, i64 %117)
  %119 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %2, align 8
  %120 = load i32, i32* @RK_CRYPTO_INTENA, align 4
  %121 = load i64, i64* @RK_CRYPTO_BCDMA_ERR_ENA, align 8
  %122 = load i64, i64* @RK_CRYPTO_BCDMA_DONE_ENA, align 8
  %123 = or i64 %121, %122
  %124 = call i32 @CRYPTO_WRITE(%struct.rk_crypto_info* %119, i32 %120, i64 %123)
  ret void
}

declare dso_local %struct.ablkcipher_request* @ablkcipher_request_cast(i32) #1

declare dso_local %struct.crypto_ablkcipher* @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request*) #1

declare dso_local %struct.crypto_tfm* @crypto_ablkcipher_tfm(%struct.crypto_ablkcipher*) #1

declare dso_local %struct.rk_cipher_ctx* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher*) #1

declare dso_local i64 @crypto_tfm_alg_blocksize(%struct.crypto_tfm*) #1

declare dso_local i64 @crypto_ablkcipher_ivsize(%struct.crypto_ablkcipher*) #1

declare dso_local i32 @CRYPTO_WRITE(%struct.rk_crypto_info*, i32, i64) #1

declare dso_local i32 @memcpy_toio(i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

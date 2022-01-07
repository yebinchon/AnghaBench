; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/rockchip/extr_rk3288_crypto_ablkcipher.c_rk_update_iv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/rockchip/extr_rk3288_crypto_ablkcipher.c_rk_update_iv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk_crypto_info = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ablkcipher_request = type { i32 }
%struct.crypto_ablkcipher = type { i32 }
%struct.rk_cipher_ctx = type { i32, i32* }

@RK_CRYPTO_DEC = common dso_local global i32 0, align 4
@DES_BLOCK_SIZE = common dso_local global i32 0, align 4
@RK_CRYPTO_TDES_IV_0 = common dso_local global i64 0, align 8
@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@RK_CRYPTO_AES_IV_0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rk_crypto_info*)* @rk_update_iv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rk_update_iv(%struct.rk_crypto_info* %0) #0 {
  %2 = alloca %struct.rk_crypto_info*, align 8
  %3 = alloca %struct.ablkcipher_request*, align 8
  %4 = alloca %struct.crypto_ablkcipher*, align 8
  %5 = alloca %struct.rk_cipher_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.rk_crypto_info* %0, %struct.rk_crypto_info** %2, align 8
  %8 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %2, align 8
  %9 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.ablkcipher_request* @ablkcipher_request_cast(i32 %10)
  store %struct.ablkcipher_request* %11, %struct.ablkcipher_request** %3, align 8
  %12 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %13 = call %struct.crypto_ablkcipher* @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request* %12)
  store %struct.crypto_ablkcipher* %13, %struct.crypto_ablkcipher** %4, align 8
  %14 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %4, align 8
  %15 = call %struct.rk_cipher_ctx* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher* %14)
  store %struct.rk_cipher_ctx* %15, %struct.rk_cipher_ctx** %5, align 8
  %16 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %4, align 8
  %17 = call i32 @crypto_ablkcipher_ivsize(%struct.crypto_ablkcipher* %16)
  store i32 %17, i32* %6, align 4
  store i32* null, i32** %7, align 8
  %18 = load %struct.rk_cipher_ctx*, %struct.rk_cipher_ctx** %5, align 8
  %19 = getelementptr inbounds %struct.rk_cipher_ctx, %struct.rk_cipher_ctx* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @RK_CRYPTO_DEC, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load %struct.rk_cipher_ctx*, %struct.rk_cipher_ctx** %5, align 8
  %26 = getelementptr inbounds %struct.rk_cipher_ctx, %struct.rk_cipher_ctx* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %7, align 8
  br label %50

28:                                               ; preds = %1
  %29 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %2, align 8
  %30 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = call i32 @sg_page(%struct.TYPE_2__* %31)
  %33 = call i32 @page_address(i32 %32)
  %34 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %2, align 8
  %35 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %33, %38
  %40 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %2, align 8
  %41 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %39, %44
  %46 = load i32, i32* %6, align 4
  %47 = sub nsw i32 %45, %46
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i32*
  store i32* %49, i32** %7, align 8
  br label %50

50:                                               ; preds = %28, %24
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @DES_BLOCK_SIZE, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %50
  %55 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %2, align 8
  %56 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @RK_CRYPTO_TDES_IV_0, align 8
  %59 = add nsw i64 %57, %58
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @memcpy_toio(i64 %59, i32* %60, i32 %61)
  br label %77

63:                                               ; preds = %50
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %63
  %68 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %2, align 8
  %69 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @RK_CRYPTO_AES_IV_0, align 8
  %72 = add nsw i64 %70, %71
  %73 = load i32*, i32** %7, align 8
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @memcpy_toio(i64 %72, i32* %73, i32 %74)
  br label %76

76:                                               ; preds = %67, %63
  br label %77

77:                                               ; preds = %76, %54
  ret void
}

declare dso_local %struct.ablkcipher_request* @ablkcipher_request_cast(i32) #1

declare dso_local %struct.crypto_ablkcipher* @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request*) #1

declare dso_local %struct.rk_cipher_ctx* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher*) #1

declare dso_local i32 @crypto_ablkcipher_ivsize(%struct.crypto_ablkcipher*) #1

declare dso_local i32 @page_address(i32) #1

declare dso_local i32 @sg_page(%struct.TYPE_2__*) #1

declare dso_local i32 @memcpy_toio(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

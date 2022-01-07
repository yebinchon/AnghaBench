; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_aes_xts_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_aes_xts_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_ablkcipher = type { i32 }
%struct.ablk_ctx = type { i32, i32, i32, i32, i32 }

@KEY_CONTEXT_HDR_SALT_AND_PAD = common dso_local global i32 0, align 4
@AES_KEYSIZE_256 = common dso_local global i32 0, align 4
@CHCR_KEYCTX_CIPHER_KEY_SIZE_128 = common dso_local global i32 0, align 4
@CHCR_KEYCTX_CIPHER_KEY_SIZE_256 = common dso_local global i32 0, align 4
@CHCR_KEYCTX_NO_KEY = common dso_local global i32 0, align 4
@CHCR_SCMD_CIPHER_MODE_AES_XTS = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_ablkcipher*, i32*, i32)* @chcr_aes_xts_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chcr_aes_xts_setkey(%struct.crypto_ablkcipher* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_ablkcipher*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ablk_ctx*, align 8
  %9 = alloca i16, align 2
  %10 = alloca i32, align 4
  store %struct.crypto_ablkcipher* %0, %struct.crypto_ablkcipher** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %5, align 8
  %12 = call i32 @c_ctx(%struct.crypto_ablkcipher* %11)
  %13 = call %struct.ablk_ctx* @ABLK_CTX(i32 %12)
  store %struct.ablk_ctx* %13, %struct.ablk_ctx** %8, align 8
  store i16 0, i16* %9, align 2
  %14 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %5, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @chcr_cipher_fallback_setkey(%struct.crypto_ablkcipher* %14, i32* %15, i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %62

21:                                               ; preds = %3
  %22 = load %struct.ablk_ctx*, %struct.ablk_ctx** %8, align 8
  %23 = getelementptr inbounds %struct.ablk_ctx, %struct.ablk_ctx* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @memcpy(i32 %24, i32* %25, i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.ablk_ctx*, %struct.ablk_ctx** %8, align 8
  %30 = getelementptr inbounds %struct.ablk_ctx, %struct.ablk_ctx* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.ablk_ctx*, %struct.ablk_ctx** %8, align 8
  %32 = getelementptr inbounds %struct.ablk_ctx, %struct.ablk_ctx* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ablk_ctx*, %struct.ablk_ctx** %8, align 8
  %35 = getelementptr inbounds %struct.ablk_ctx, %struct.ablk_ctx* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %7, align 4
  %38 = shl i32 %37, 2
  %39 = call i32 @get_aes_decrypt_key(i32 %33, i32 %36, i32 %38)
  %40 = load i32, i32* @KEY_CONTEXT_HDR_SALT_AND_PAD, align 4
  %41 = load i32, i32* %7, align 4
  %42 = add i32 %40, %41
  %43 = lshr i32 %42, 4
  %44 = trunc i32 %43 to i16
  store i16 %44, i16* %9, align 2
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @AES_KEYSIZE_256, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %21
  %49 = load i32, i32* @CHCR_KEYCTX_CIPHER_KEY_SIZE_128, align 4
  br label %52

50:                                               ; preds = %21
  %51 = load i32, i32* @CHCR_KEYCTX_CIPHER_KEY_SIZE_256, align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32 [ %49, %48 ], [ %51, %50 ]
  %54 = load i32, i32* @CHCR_KEYCTX_NO_KEY, align 4
  %55 = load i16, i16* %9, align 2
  %56 = call i32 @FILL_KEY_CTX_HDR(i32 %53, i32 %54, i32 1, i32 0, i16 zeroext %55)
  %57 = load %struct.ablk_ctx*, %struct.ablk_ctx** %8, align 8
  %58 = getelementptr inbounds %struct.ablk_ctx, %struct.ablk_ctx* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @CHCR_SCMD_CIPHER_MODE_AES_XTS, align 4
  %60 = load %struct.ablk_ctx*, %struct.ablk_ctx** %8, align 8
  %61 = getelementptr inbounds %struct.ablk_ctx, %struct.ablk_ctx* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  store i32 0, i32* %4, align 4
  br label %69

62:                                               ; preds = %20
  %63 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %5, align 8
  %64 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %65 = call i32 @crypto_ablkcipher_set_flags(%struct.crypto_ablkcipher* %63, i32 %64)
  %66 = load %struct.ablk_ctx*, %struct.ablk_ctx** %8, align 8
  %67 = getelementptr inbounds %struct.ablk_ctx, %struct.ablk_ctx* %66, i32 0, i32 0
  store i32 0, i32* %67, align 4
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %62, %52
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local %struct.ablk_ctx* @ABLK_CTX(i32) #1

declare dso_local i32 @c_ctx(%struct.crypto_ablkcipher*) #1

declare dso_local i32 @chcr_cipher_fallback_setkey(%struct.crypto_ablkcipher*, i32*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @get_aes_decrypt_key(i32, i32, i32) #1

declare dso_local i32 @FILL_KEY_CTX_HDR(i32, i32, i32, i32, i16 zeroext) #1

declare dso_local i32 @crypto_ablkcipher_set_flags(%struct.crypto_ablkcipher*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_aes_ctr_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_aes_ctr_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_ablkcipher = type { i32 }
%struct.ablk_ctx = type { i32, i32, i32, i32 }

@CHCR_KEYCTX_CIPHER_KEY_SIZE_192 = common dso_local global i32 0, align 4
@KEY_CONTEXT_HDR_SALT_AND_PAD = common dso_local global i32 0, align 4
@CHCR_KEYCTX_NO_KEY = common dso_local global i32 0, align 4
@CHCR_SCMD_CIPHER_MODE_AES_CTR = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_ablkcipher*, i32*, i32)* @chcr_aes_ctr_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chcr_aes_ctr_setkey(%struct.crypto_ablkcipher* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_ablkcipher*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ablk_ctx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.crypto_ablkcipher* %0, %struct.crypto_ablkcipher** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %5, align 8
  %14 = call i32 @c_ctx(%struct.crypto_ablkcipher* %13)
  %15 = call %struct.ablk_ctx* @ABLK_CTX(i32 %14)
  store %struct.ablk_ctx* %15, %struct.ablk_ctx** %8, align 8
  store i32 0, i32* %11, align 4
  %16 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %5, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @chcr_cipher_fallback_setkey(%struct.crypto_ablkcipher* %16, i32* %17, i32 %18)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %55

23:                                               ; preds = %3
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @chcr_keyctx_ck_size(i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @CHCR_KEYCTX_CIPHER_KEY_SIZE_192, align 4
  %28 = icmp eq i32 %26, %27
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 8, i32 0
  store i32 %30, i32* %11, align 4
  %31 = load %struct.ablk_ctx*, %struct.ablk_ctx** %8, align 8
  %32 = getelementptr inbounds %struct.ablk_ctx, %struct.ablk_ctx* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @memcpy(i32 %33, i32* %34, i32 %35)
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.ablk_ctx*, %struct.ablk_ctx** %8, align 8
  %39 = getelementptr inbounds %struct.ablk_ctx, %struct.ablk_ctx* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @KEY_CONTEXT_HDR_SALT_AND_PAD, align 4
  %41 = load i32, i32* %7, align 4
  %42 = add i32 %40, %41
  %43 = load i32, i32* %11, align 4
  %44 = add i32 %42, %43
  %45 = lshr i32 %44, 4
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @CHCR_KEYCTX_NO_KEY, align 4
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @FILL_KEY_CTX_HDR(i32 %46, i32 %47, i32 0, i32 0, i32 %48)
  %50 = load %struct.ablk_ctx*, %struct.ablk_ctx** %8, align 8
  %51 = getelementptr inbounds %struct.ablk_ctx, %struct.ablk_ctx* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @CHCR_SCMD_CIPHER_MODE_AES_CTR, align 4
  %53 = load %struct.ablk_ctx*, %struct.ablk_ctx** %8, align 8
  %54 = getelementptr inbounds %struct.ablk_ctx, %struct.ablk_ctx* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  store i32 0, i32* %4, align 4
  br label %62

55:                                               ; preds = %22
  %56 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %5, align 8
  %57 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %58 = call i32 @crypto_ablkcipher_set_flags(%struct.crypto_ablkcipher* %56, i32 %57)
  %59 = load %struct.ablk_ctx*, %struct.ablk_ctx** %8, align 8
  %60 = getelementptr inbounds %struct.ablk_ctx, %struct.ablk_ctx* %59, i32 0, i32 0
  store i32 0, i32* %60, align 4
  %61 = load i32, i32* %12, align 4
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %55, %23
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local %struct.ablk_ctx* @ABLK_CTX(i32) #1

declare dso_local i32 @c_ctx(%struct.crypto_ablkcipher*) #1

declare dso_local i32 @chcr_cipher_fallback_setkey(%struct.crypto_ablkcipher*, i32*, i32) #1

declare dso_local i32 @chcr_keyctx_ck_size(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @FILL_KEY_CTX_HDR(i32, i32, i32, i32, i32) #1

declare dso_local i32 @crypto_ablkcipher_set_flags(%struct.crypto_ablkcipher*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

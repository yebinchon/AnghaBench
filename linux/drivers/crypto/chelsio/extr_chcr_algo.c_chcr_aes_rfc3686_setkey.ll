; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_aes_rfc3686_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_aes_rfc3686_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_ablkcipher = type { i32 }
%struct.ablk_ctx = type { i32, i32, i32, i32, i32 }

@CTR_RFC3686_NONCE_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CHCR_KEYCTX_CIPHER_KEY_SIZE_192 = common dso_local global i32 0, align 4
@KEY_CONTEXT_HDR_SALT_AND_PAD = common dso_local global i32 0, align 4
@CHCR_KEYCTX_NO_KEY = common dso_local global i32 0, align 4
@CHCR_SCMD_CIPHER_MODE_AES_CTR = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_ablkcipher*, i32*, i32)* @chcr_aes_rfc3686_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chcr_aes_rfc3686_setkey(%struct.crypto_ablkcipher* %0, i32* %1, i32 %2) #0 {
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
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @CTR_RFC3686_NONCE_SIZE, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %83

22:                                               ; preds = %3
  %23 = load %struct.ablk_ctx*, %struct.ablk_ctx** %8, align 8
  %24 = getelementptr inbounds %struct.ablk_ctx, %struct.ablk_ctx* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @CTR_RFC3686_NONCE_SIZE, align 4
  %29 = sub i32 %27, %28
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %26, i64 %30
  %32 = load i32, i32* @CTR_RFC3686_NONCE_SIZE, align 4
  %33 = call i32 @memcpy(i32 %25, i32* %31, i32 %32)
  %34 = load i32, i32* @CTR_RFC3686_NONCE_SIZE, align 4
  %35 = load i32, i32* %7, align 4
  %36 = sub i32 %35, %34
  store i32 %36, i32* %7, align 4
  %37 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %5, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @chcr_cipher_fallback_setkey(%struct.crypto_ablkcipher* %37, i32* %38, i32 %39)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %22
  br label %76

44:                                               ; preds = %22
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @chcr_keyctx_ck_size(i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @CHCR_KEYCTX_CIPHER_KEY_SIZE_192, align 4
  %49 = icmp eq i32 %47, %48
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 8, i32 0
  store i32 %51, i32* %11, align 4
  %52 = load %struct.ablk_ctx*, %struct.ablk_ctx** %8, align 8
  %53 = getelementptr inbounds %struct.ablk_ctx, %struct.ablk_ctx* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @memcpy(i32 %54, i32* %55, i32 %56)
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.ablk_ctx*, %struct.ablk_ctx** %8, align 8
  %60 = getelementptr inbounds %struct.ablk_ctx, %struct.ablk_ctx* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @KEY_CONTEXT_HDR_SALT_AND_PAD, align 4
  %62 = load i32, i32* %7, align 4
  %63 = add i32 %61, %62
  %64 = load i32, i32* %11, align 4
  %65 = add i32 %63, %64
  %66 = lshr i32 %65, 4
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @CHCR_KEYCTX_NO_KEY, align 4
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @FILL_KEY_CTX_HDR(i32 %67, i32 %68, i32 0, i32 0, i32 %69)
  %71 = load %struct.ablk_ctx*, %struct.ablk_ctx** %8, align 8
  %72 = getelementptr inbounds %struct.ablk_ctx, %struct.ablk_ctx* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* @CHCR_SCMD_CIPHER_MODE_AES_CTR, align 4
  %74 = load %struct.ablk_ctx*, %struct.ablk_ctx** %8, align 8
  %75 = getelementptr inbounds %struct.ablk_ctx, %struct.ablk_ctx* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  store i32 0, i32* %4, align 4
  br label %83

76:                                               ; preds = %43
  %77 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %5, align 8
  %78 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %79 = call i32 @crypto_ablkcipher_set_flags(%struct.crypto_ablkcipher* %77, i32 %78)
  %80 = load %struct.ablk_ctx*, %struct.ablk_ctx** %8, align 8
  %81 = getelementptr inbounds %struct.ablk_ctx, %struct.ablk_ctx* %80, i32 0, i32 0
  store i32 0, i32* %81, align 4
  %82 = load i32, i32* %12, align 4
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %76, %44, %19
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local %struct.ablk_ctx* @ABLK_CTX(i32) #1

declare dso_local i32 @c_ctx(%struct.crypto_ablkcipher*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @chcr_cipher_fallback_setkey(%struct.crypto_ablkcipher*, i32*, i32) #1

declare dso_local i32 @chcr_keyctx_ck_size(i32) #1

declare dso_local i32 @FILL_KEY_CTX_HDR(i32, i32, i32, i32, i32) #1

declare dso_local i32 @crypto_ablkcipher_set_flags(%struct.crypto_ablkcipher*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

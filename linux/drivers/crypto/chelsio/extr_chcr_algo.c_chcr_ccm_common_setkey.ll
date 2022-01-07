; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_ccm_common_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_ccm_common_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead = type { i32 }
%struct.chcr_aead_ctx = type { i32, i32, i32 }
%struct.crypto_tfm = type { i32 }

@AES_KEYSIZE_128 = common dso_local global i32 0, align 4
@CHCR_KEYCTX_CIPHER_KEY_SIZE_128 = common dso_local global i8 0, align 1
@CHCR_KEYCTX_MAC_KEY_SIZE_128 = common dso_local global i8 0, align 1
@AES_KEYSIZE_192 = common dso_local global i32 0, align 4
@CHCR_KEYCTX_CIPHER_KEY_SIZE_192 = common dso_local global i8 0, align 1
@CHCR_KEYCTX_MAC_KEY_SIZE_192 = common dso_local global i8 0, align 1
@AES_KEYSIZE_256 = common dso_local global i32 0, align 4
@CHCR_KEYCTX_CIPHER_KEY_SIZE_256 = common dso_local global i8 0, align 1
@CHCR_KEYCTX_MAC_KEY_SIZE_256 = common dso_local global i8 0, align 1
@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_aead*, i32*, i32)* @chcr_ccm_common_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chcr_ccm_common_setkey(%struct.crypto_aead* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_aead*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.chcr_aead_ctx*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  store %struct.crypto_aead* %0, %struct.crypto_aead** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %13 = call i32 @a_ctx(%struct.crypto_aead* %12)
  %14 = call %struct.chcr_aead_ctx* @AEAD_CTX(i32 %13)
  store %struct.chcr_aead_ctx* %14, %struct.chcr_aead_ctx** %8, align 8
  store i32 0, i32* %11, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @roundup(i32 %15, i32 16)
  %17 = mul nsw i32 %16, 2
  %18 = sext i32 %17 to i64
  %19 = add i64 4, %18
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @AES_KEYSIZE_128, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i8, i8* @CHCR_KEYCTX_CIPHER_KEY_SIZE_128, align 1
  store i8 %25, i8* %9, align 1
  %26 = load i8, i8* @CHCR_KEYCTX_MAC_KEY_SIZE_128, align 1
  store i8 %26, i8* %10, align 1
  br label %52

27:                                               ; preds = %3
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @AES_KEYSIZE_192, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i8, i8* @CHCR_KEYCTX_CIPHER_KEY_SIZE_192, align 1
  store i8 %32, i8* %9, align 1
  %33 = load i8, i8* @CHCR_KEYCTX_MAC_KEY_SIZE_192, align 1
  store i8 %33, i8* %10, align 1
  br label %51

34:                                               ; preds = %27
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @AES_KEYSIZE_256, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i8, i8* @CHCR_KEYCTX_CIPHER_KEY_SIZE_256, align 1
  store i8 %39, i8* %9, align 1
  %40 = load i8, i8* @CHCR_KEYCTX_MAC_KEY_SIZE_256, align 1
  store i8 %40, i8* %10, align 1
  br label %50

41:                                               ; preds = %34
  %42 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %43 = bitcast %struct.crypto_aead* %42 to %struct.crypto_tfm*
  %44 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %45 = call i32 @crypto_tfm_set_flags(%struct.crypto_tfm* %43, i32 %44)
  %46 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %8, align 8
  %47 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %46, i32 0, i32 0
  store i32 0, i32* %47, align 4
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %69

50:                                               ; preds = %38
  br label %51

51:                                               ; preds = %50, %31
  br label %52

52:                                               ; preds = %51, %24
  %53 = load i8, i8* %9, align 1
  %54 = load i8, i8* %10, align 1
  %55 = load i32, i32* %11, align 4
  %56 = ashr i32 %55, 4
  %57 = call i32 @FILL_KEY_CTX_HDR(i8 zeroext %53, i8 zeroext %54, i32 0, i32 0, i32 %56)
  %58 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %8, align 8
  %59 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 4
  %60 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %8, align 8
  %61 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %6, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @memcpy(i32 %62, i32* %63, i32 %64)
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %8, align 8
  %68 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %52, %41
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local %struct.chcr_aead_ctx* @AEAD_CTX(i32) #1

declare dso_local i32 @a_ctx(%struct.crypto_aead*) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @crypto_tfm_set_flags(%struct.crypto_tfm*, i32) #1

declare dso_local i32 @FILL_KEY_CTX_HDR(i8 zeroext, i8 zeroext, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

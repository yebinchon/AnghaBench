; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_cipher.c_safexcel_skcipher_aes_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_cipher.c_safexcel_skcipher_aes_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_skcipher = type { i32 }
%struct.crypto_tfm = type { i32 }
%struct.safexcel_cipher_ctx = type { i64*, i32, %struct.TYPE_2__, %struct.safexcel_crypto_priv* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.safexcel_crypto_priv = type { i32 }
%struct.crypto_aes_ctx = type { i32* }

@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@EIP197_TRC_CACHE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_skcipher*, i32*, i32)* @safexcel_skcipher_aes_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @safexcel_skcipher_aes_setkey(%struct.crypto_skcipher* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_skcipher*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.crypto_tfm*, align 8
  %9 = alloca %struct.safexcel_cipher_ctx*, align 8
  %10 = alloca %struct.safexcel_crypto_priv*, align 8
  %11 = alloca %struct.crypto_aes_ctx, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.crypto_skcipher* %0, %struct.crypto_skcipher** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %15 = call %struct.crypto_tfm* @crypto_skcipher_tfm(%struct.crypto_skcipher* %14)
  store %struct.crypto_tfm* %15, %struct.crypto_tfm** %8, align 8
  %16 = load %struct.crypto_tfm*, %struct.crypto_tfm** %8, align 8
  %17 = call %struct.safexcel_cipher_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %16)
  store %struct.safexcel_cipher_ctx* %17, %struct.safexcel_cipher_ctx** %9, align 8
  %18 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %9, align 8
  %19 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %18, i32 0, i32 3
  %20 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %19, align 8
  store %struct.safexcel_crypto_priv* %20, %struct.safexcel_crypto_priv** %10, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @aes_expandkey(%struct.crypto_aes_ctx* %11, i32* %21, i32 %22)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %3
  %27 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %28 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %29 = call i32 @crypto_skcipher_set_flags(%struct.crypto_skcipher* %27, i32 %28)
  %30 = load i32, i32* %12, align 4
  store i32 %30, i32* %4, align 4
  br label %107

31:                                               ; preds = %3
  %32 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %10, align 8
  %33 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @EIP197_TRC_CACHE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %77

38:                                               ; preds = %31
  %39 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %9, align 8
  %40 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %77

44:                                               ; preds = %38
  store i32 0, i32* %13, align 4
  br label %45

45:                                               ; preds = %73, %44
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = load i32, i32* %7, align 4
  %49 = zext i32 %48 to i64
  %50 = udiv i64 %49, 4
  %51 = icmp ult i64 %47, %50
  br i1 %51, label %52, label %76

52:                                               ; preds = %45
  %53 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %9, align 8
  %54 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %53, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  %56 = load i32, i32* %13, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.crypto_aes_ctx, %struct.crypto_aes_ctx* %11, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %13, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @cpu_to_le32(i32 %65)
  %67 = icmp ne i64 %59, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %52
  %69 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %9, align 8
  %70 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  store i32 1, i32* %71, align 8
  br label %76

72:                                               ; preds = %52
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %13, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %13, align 4
  br label %45

76:                                               ; preds = %68, %45
  br label %77

77:                                               ; preds = %76, %38, %31
  store i32 0, i32* %13, align 4
  br label %78

78:                                               ; preds = %99, %77
  %79 = load i32, i32* %13, align 4
  %80 = sext i32 %79 to i64
  %81 = load i32, i32* %7, align 4
  %82 = zext i32 %81 to i64
  %83 = udiv i64 %82, 4
  %84 = icmp ult i64 %80, %83
  br i1 %84, label %85, label %102

85:                                               ; preds = %78
  %86 = getelementptr inbounds %struct.crypto_aes_ctx, %struct.crypto_aes_ctx* %11, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %13, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @cpu_to_le32(i32 %91)
  %93 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %9, align 8
  %94 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %93, i32 0, i32 0
  %95 = load i64*, i64** %94, align 8
  %96 = load i32, i32* %13, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %95, i64 %97
  store i64 %92, i64* %98, align 8
  br label %99

99:                                               ; preds = %85
  %100 = load i32, i32* %13, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %13, align 4
  br label %78

102:                                              ; preds = %78
  %103 = load i32, i32* %7, align 4
  %104 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %9, align 8
  %105 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 8
  %106 = call i32 @memzero_explicit(%struct.crypto_aes_ctx* %11, i32 8)
  store i32 0, i32* %4, align 4
  br label %107

107:                                              ; preds = %102, %26
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local %struct.crypto_tfm* @crypto_skcipher_tfm(%struct.crypto_skcipher*) #1

declare dso_local %struct.safexcel_cipher_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @aes_expandkey(%struct.crypto_aes_ctx*, i32*, i32) #1

declare dso_local i32 @crypto_skcipher_set_flags(%struct.crypto_skcipher*, i32) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @memzero_explicit(%struct.crypto_aes_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_cipher.c_safexcel_aead_ccm_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_cipher.c_safexcel_aead_ccm_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead = type { i32 }
%struct.crypto_tfm = type { i32 }
%struct.safexcel_cipher_ctx = type { i64*, i32, i32, i32, i32*, %struct.TYPE_2__, %struct.safexcel_crypto_priv* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.safexcel_crypto_priv = type { i32 }
%struct.crypto_aes_ctx = type { i32* }

@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@EIP197_TRC_CACHE = common dso_local global i32 0, align 4
@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@AES_KEYSIZE_192 = common dso_local global i32 0, align 4
@CONTEXT_CONTROL_CRYPTO_ALG_XCBC192 = common dso_local global i32 0, align 4
@AES_KEYSIZE_256 = common dso_local global i32 0, align 4
@CONTEXT_CONTROL_CRYPTO_ALG_XCBC256 = common dso_local global i32 0, align 4
@CONTEXT_CONTROL_CRYPTO_ALG_XCBC128 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_aead*, i32*, i32)* @safexcel_aead_ccm_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @safexcel_aead_ccm_setkey(%struct.crypto_aead* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_aead*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.crypto_tfm*, align 8
  %9 = alloca %struct.safexcel_cipher_ctx*, align 8
  %10 = alloca %struct.safexcel_crypto_priv*, align 8
  %11 = alloca %struct.crypto_aes_ctx, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.crypto_aead* %0, %struct.crypto_aead** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %15 = call %struct.crypto_tfm* @crypto_aead_tfm(%struct.crypto_aead* %14)
  store %struct.crypto_tfm* %15, %struct.crypto_tfm** %8, align 8
  %16 = load %struct.crypto_tfm*, %struct.crypto_tfm** %8, align 8
  %17 = call %struct.safexcel_cipher_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %16)
  store %struct.safexcel_cipher_ctx* %17, %struct.safexcel_cipher_ctx** %9, align 8
  %18 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %9, align 8
  %19 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %18, i32 0, i32 6
  %20 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %19, align 8
  store %struct.safexcel_crypto_priv* %20, %struct.safexcel_crypto_priv** %10, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @aes_expandkey(%struct.crypto_aes_ctx* %11, i32* %21, i32 %22)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %3
  %27 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %28 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %29 = call i32 @crypto_aead_set_flags(%struct.crypto_aead* %27, i32 %28)
  %30 = call i32 @memzero_explicit(%struct.crypto_aes_ctx* %11, i32 8)
  %31 = load i32, i32* %12, align 4
  store i32 %31, i32* %4, align 4
  br label %153

32:                                               ; preds = %3
  %33 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %10, align 8
  %34 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @EIP197_TRC_CACHE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %78

39:                                               ; preds = %32
  %40 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %9, align 8
  %41 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %40, i32 0, i32 5
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %78

45:                                               ; preds = %39
  store i32 0, i32* %13, align 4
  br label %46

46:                                               ; preds = %74, %45
  %47 = load i32, i32* %13, align 4
  %48 = sext i32 %47 to i64
  %49 = load i32, i32* %7, align 4
  %50 = zext i32 %49 to i64
  %51 = udiv i64 %50, 4
  %52 = icmp ult i64 %48, %51
  br i1 %52, label %53, label %77

53:                                               ; preds = %46
  %54 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %9, align 8
  %55 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = load i32, i32* %13, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.crypto_aes_ctx, %struct.crypto_aes_ctx* %11, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %13, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @cpu_to_le32(i32 %66)
  %68 = icmp ne i64 %60, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %53
  %70 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %9, align 8
  %71 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %70, i32 0, i32 5
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store i32 1, i32* %72, align 8
  br label %77

73:                                               ; preds = %53
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %13, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %13, align 4
  br label %46

77:                                               ; preds = %69, %46
  br label %78

78:                                               ; preds = %77, %39, %32
  store i32 0, i32* %13, align 4
  br label %79

79:                                               ; preds = %118, %78
  %80 = load i32, i32* %13, align 4
  %81 = sext i32 %80 to i64
  %82 = load i32, i32* %7, align 4
  %83 = zext i32 %82 to i64
  %84 = udiv i64 %83, 4
  %85 = icmp ult i64 %81, %84
  br i1 %85, label %86, label %121

86:                                               ; preds = %79
  %87 = getelementptr inbounds %struct.crypto_aes_ctx, %struct.crypto_aes_ctx* %11, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %13, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @cpu_to_le32(i32 %92)
  %94 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %9, align 8
  %95 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %94, i32 0, i32 0
  %96 = load i64*, i64** %95, align 8
  %97 = load i32, i32* %13, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %96, i64 %98
  store i64 %93, i64* %99, align 8
  %100 = getelementptr inbounds %struct.crypto_aes_ctx, %struct.crypto_aes_ctx* %11, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %13, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @cpu_to_be32(i32 %105)
  %107 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %9, align 8
  %108 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %107, i32 0, i32 4
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %13, align 4
  %111 = sext i32 %110 to i64
  %112 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %113 = mul nsw i32 2, %112
  %114 = sext i32 %113 to i64
  %115 = udiv i64 %114, 4
  %116 = add i64 %111, %115
  %117 = getelementptr inbounds i32, i32* %109, i64 %116
  store i32 %106, i32* %117, align 4
  br label %118

118:                                              ; preds = %86
  %119 = load i32, i32* %13, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %13, align 4
  br label %79

121:                                              ; preds = %79
  %122 = load i32, i32* %7, align 4
  %123 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %9, align 8
  %124 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 8
  %125 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %126 = mul nsw i32 2, %125
  %127 = load i32, i32* %7, align 4
  %128 = add i32 %126, %127
  %129 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %9, align 8
  %130 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %129, i32 0, i32 2
  store i32 %128, i32* %130, align 4
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* @AES_KEYSIZE_192, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %138

134:                                              ; preds = %121
  %135 = load i32, i32* @CONTEXT_CONTROL_CRYPTO_ALG_XCBC192, align 4
  %136 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %9, align 8
  %137 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %136, i32 0, i32 3
  store i32 %135, i32* %137, align 8
  br label %151

138:                                              ; preds = %121
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* @AES_KEYSIZE_256, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %138
  %143 = load i32, i32* @CONTEXT_CONTROL_CRYPTO_ALG_XCBC256, align 4
  %144 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %9, align 8
  %145 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %144, i32 0, i32 3
  store i32 %143, i32* %145, align 8
  br label %150

146:                                              ; preds = %138
  %147 = load i32, i32* @CONTEXT_CONTROL_CRYPTO_ALG_XCBC128, align 4
  %148 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %9, align 8
  %149 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %148, i32 0, i32 3
  store i32 %147, i32* %149, align 8
  br label %150

150:                                              ; preds = %146, %142
  br label %151

151:                                              ; preds = %150, %134
  %152 = call i32 @memzero_explicit(%struct.crypto_aes_ctx* %11, i32 8)
  store i32 0, i32* %4, align 4
  br label %153

153:                                              ; preds = %151, %26
  %154 = load i32, i32* %4, align 4
  ret i32 %154
}

declare dso_local %struct.crypto_tfm* @crypto_aead_tfm(%struct.crypto_aead*) #1

declare dso_local %struct.safexcel_cipher_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @aes_expandkey(%struct.crypto_aes_ctx*, i32*, i32) #1

declare dso_local i32 @crypto_aead_set_flags(%struct.crypto_aead*, i32) #1

declare dso_local i32 @memzero_explicit(%struct.crypto_aes_ctx*, i32) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

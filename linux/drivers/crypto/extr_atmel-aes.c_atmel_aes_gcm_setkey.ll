; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-aes.c_atmel_aes_gcm_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-aes.c_atmel_aes_gcm_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead = type { i32 }
%struct.atmel_aes_base_ctx = type { i32, i32 }

@AES_KEYSIZE_256 = common dso_local global i32 0, align 4
@AES_KEYSIZE_192 = common dso_local global i32 0, align 4
@AES_KEYSIZE_128 = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_aead*, i32*, i32)* @atmel_aes_gcm_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_aes_gcm_setkey(%struct.crypto_aead* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_aead*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.atmel_aes_base_ctx*, align 8
  store %struct.crypto_aead* %0, %struct.crypto_aead** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %10 = call %struct.atmel_aes_base_ctx* @crypto_aead_ctx(%struct.crypto_aead* %9)
  store %struct.atmel_aes_base_ctx* %10, %struct.atmel_aes_base_ctx** %8, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @AES_KEYSIZE_256, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @AES_KEYSIZE_192, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %14
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @AES_KEYSIZE_128, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %24 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %25 = call i32 @crypto_aead_set_flags(%struct.crypto_aead* %23, i32 %24)
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %38

28:                                               ; preds = %18, %14, %3
  %29 = load %struct.atmel_aes_base_ctx*, %struct.atmel_aes_base_ctx** %8, align 8
  %30 = getelementptr inbounds %struct.atmel_aes_base_ctx, %struct.atmel_aes_base_ctx* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @memcpy(i32 %31, i32* %32, i32 %33)
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.atmel_aes_base_ctx*, %struct.atmel_aes_base_ctx** %8, align 8
  %37 = getelementptr inbounds %struct.atmel_aes_base_ctx, %struct.atmel_aes_base_ctx* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %28, %22
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local %struct.atmel_aes_base_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local i32 @crypto_aead_set_flags(%struct.crypto_aead*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

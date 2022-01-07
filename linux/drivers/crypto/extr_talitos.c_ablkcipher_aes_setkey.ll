; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_talitos.c_ablkcipher_aes_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_talitos.c_ablkcipher_aes_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_ablkcipher = type { i32 }

@AES_KEYSIZE_128 = common dso_local global i32 0, align 4
@AES_KEYSIZE_192 = common dso_local global i32 0, align 4
@AES_KEYSIZE_256 = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_ablkcipher*, i32*, i32)* @ablkcipher_aes_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ablkcipher_aes_setkey(%struct.crypto_ablkcipher* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_ablkcipher*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.crypto_ablkcipher* %0, %struct.crypto_ablkcipher** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @AES_KEYSIZE_128, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %19, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @AES_KEYSIZE_192, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @AES_KEYSIZE_256, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %15, %11, %3
  %20 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %5, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @ablkcipher_setkey(%struct.crypto_ablkcipher* %20, i32* %21, i32 %22)
  store i32 %23, i32* %4, align 4
  br label %30

24:                                               ; preds = %15
  %25 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %5, align 8
  %26 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %27 = call i32 @crypto_ablkcipher_set_flags(%struct.crypto_ablkcipher* %25, i32 %26)
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %24, %19
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @ablkcipher_setkey(%struct.crypto_ablkcipher*, i32*, i32) #1

declare dso_local i32 @crypto_ablkcipher_set_flags(%struct.crypto_ablkcipher*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qce/extr_ablkcipher.c_qce_ablkcipher_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qce/extr_ablkcipher.c_qce_ablkcipher_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_ablkcipher = type { i32 }
%struct.crypto_tfm = type { i32 }
%struct.qce_cipher_ctx = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_ablkcipher*, i32*, i32)* @qce_ablkcipher_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qce_ablkcipher_setkey(%struct.crypto_ablkcipher* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_ablkcipher*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.crypto_tfm*, align 8
  %9 = alloca %struct.qce_cipher_ctx*, align 8
  %10 = alloca i32, align 4
  store %struct.crypto_ablkcipher* %0, %struct.crypto_ablkcipher** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %5, align 8
  %12 = call %struct.crypto_tfm* @crypto_ablkcipher_tfm(%struct.crypto_ablkcipher* %11)
  store %struct.crypto_tfm* %12, %struct.crypto_tfm** %8, align 8
  %13 = load %struct.crypto_tfm*, %struct.crypto_tfm** %8, align 8
  %14 = call %struct.qce_cipher_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %13)
  store %struct.qce_cipher_ctx* %14, %struct.qce_cipher_ctx** %9, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17, %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %52

23:                                               ; preds = %17
  %24 = load i32, i32* %7, align 4
  switch i32 %24, label %26 [
    i32 129, label %25
    i32 128, label %25
  ]

25:                                               ; preds = %23, %23
  br label %27

26:                                               ; preds = %23
  br label %37

27:                                               ; preds = %25
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.qce_cipher_ctx*, %struct.qce_cipher_ctx** %9, align 8
  %30 = getelementptr inbounds %struct.qce_cipher_ctx, %struct.qce_cipher_ctx* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.qce_cipher_ctx*, %struct.qce_cipher_ctx** %9, align 8
  %32 = getelementptr inbounds %struct.qce_cipher_ctx, %struct.qce_cipher_ctx* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @memcpy(i32 %33, i32* %34, i32 %35)
  store i32 0, i32* %4, align 4
  br label %52

37:                                               ; preds = %26
  %38 = load %struct.qce_cipher_ctx*, %struct.qce_cipher_ctx** %9, align 8
  %39 = getelementptr inbounds %struct.qce_cipher_ctx, %struct.qce_cipher_ctx* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @crypto_sync_skcipher_setkey(i32 %40, i32* %41, i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %37
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.qce_cipher_ctx*, %struct.qce_cipher_ctx** %9, align 8
  %49 = getelementptr inbounds %struct.qce_cipher_ctx, %struct.qce_cipher_ctx* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %46, %37
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %50, %27, %20
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.crypto_tfm* @crypto_ablkcipher_tfm(%struct.crypto_ablkcipher*) #1

declare dso_local %struct.qce_cipher_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @crypto_sync_skcipher_setkey(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

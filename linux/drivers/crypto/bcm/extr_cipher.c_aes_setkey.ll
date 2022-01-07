; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/bcm/extr_cipher.c_aes_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/bcm/extr_cipher.c_aes_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_ablkcipher = type { i32 }
%struct.iproc_ctx_s = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@CIPHER_MODE_XTS = common dso_local global i64 0, align 8
@CIPHER_TYPE_AES128 = common dso_local global i32 0, align 4
@CIPHER_TYPE_AES192 = common dso_local global i32 0, align 4
@CIPHER_TYPE_AES256 = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SPU_MAX_PAYLOAD_INF = common dso_local global i32 0, align 4
@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_ablkcipher*, i32*, i32)* @aes_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aes_setkey(%struct.crypto_ablkcipher* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_ablkcipher*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.iproc_ctx_s*, align 8
  store %struct.crypto_ablkcipher* %0, %struct.crypto_ablkcipher** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %5, align 8
  %10 = call %struct.iproc_ctx_s* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher* %9)
  store %struct.iproc_ctx_s* %10, %struct.iproc_ctx_s** %8, align 8
  %11 = load %struct.iproc_ctx_s*, %struct.iproc_ctx_s** %8, align 8
  %12 = getelementptr inbounds %struct.iproc_ctx_s, %struct.iproc_ctx_s* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @CIPHER_MODE_XTS, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = udiv i32 %18, 2
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %17, %3
  %21 = load i32, i32* %7, align 4
  switch i32 %21, label %34 [
    i32 130, label %22
    i32 129, label %26
    i32 128, label %30
  ]

22:                                               ; preds = %20
  %23 = load i32, i32* @CIPHER_TYPE_AES128, align 4
  %24 = load %struct.iproc_ctx_s*, %struct.iproc_ctx_s** %8, align 8
  %25 = getelementptr inbounds %struct.iproc_ctx_s, %struct.iproc_ctx_s* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  br label %40

26:                                               ; preds = %20
  %27 = load i32, i32* @CIPHER_TYPE_AES192, align 4
  %28 = load %struct.iproc_ctx_s*, %struct.iproc_ctx_s** %8, align 8
  %29 = getelementptr inbounds %struct.iproc_ctx_s, %struct.iproc_ctx_s* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  br label %40

30:                                               ; preds = %20
  %31 = load i32, i32* @CIPHER_TYPE_AES256, align 4
  %32 = load %struct.iproc_ctx_s*, %struct.iproc_ctx_s** %8, align 8
  %33 = getelementptr inbounds %struct.iproc_ctx_s, %struct.iproc_ctx_s* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  br label %40

34:                                               ; preds = %20
  %35 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %5, align 8
  %36 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %37 = call i32 @crypto_ablkcipher_set_flags(%struct.crypto_ablkcipher* %35, i32 %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %57

40:                                               ; preds = %30, %26, %22
  %41 = load %struct.iproc_ctx_s*, %struct.iproc_ctx_s** %8, align 8
  %42 = getelementptr inbounds %struct.iproc_ctx_s, %struct.iproc_ctx_s* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @SPU_MAX_PAYLOAD_INF, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = load %struct.iproc_ctx_s*, %struct.iproc_ctx_s** %8, align 8
  %48 = getelementptr inbounds %struct.iproc_ctx_s, %struct.iproc_ctx_s* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %51 = srem i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br label %53

53:                                               ; preds = %46, %40
  %54 = phi i1 [ false, %40 ], [ %52, %46 ]
  %55 = zext i1 %54 to i32
  %56 = call i32 @WARN_ON(i32 %55)
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %53, %34
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local %struct.iproc_ctx_s* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher*) #1

declare dso_local i32 @crypto_ablkcipher_set_flags(%struct.crypto_ablkcipher*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_skcipher.c_nitrox_aes_ctr_rfc3686_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_skcipher.c_nitrox_aes_ctr_rfc3686_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_skcipher = type { i32 }
%struct.crypto_tfm = type { i32 }
%struct.nitrox_crypto_ctx = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.flexi_crypto_context* }
%struct.flexi_crypto_context = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@CTR_RFC3686_NONCE_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_skcipher*, i32*, i32)* @nitrox_aes_ctr_rfc3686_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nitrox_aes_ctr_rfc3686_setkey(%struct.crypto_skcipher* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_skcipher*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.crypto_tfm*, align 8
  %9 = alloca %struct.nitrox_crypto_ctx*, align 8
  %10 = alloca %struct.flexi_crypto_context*, align 8
  %11 = alloca i32, align 4
  store %struct.crypto_skcipher* %0, %struct.crypto_skcipher** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %13 = call %struct.crypto_tfm* @crypto_skcipher_tfm(%struct.crypto_skcipher* %12)
  store %struct.crypto_tfm* %13, %struct.crypto_tfm** %8, align 8
  %14 = load %struct.crypto_tfm*, %struct.crypto_tfm** %8, align 8
  %15 = call %struct.nitrox_crypto_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %14)
  store %struct.nitrox_crypto_ctx* %15, %struct.nitrox_crypto_ctx** %9, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @CTR_RFC3686_NONCE_SIZE, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %58

22:                                               ; preds = %3
  %23 = load %struct.nitrox_crypto_ctx*, %struct.nitrox_crypto_ctx** %9, align 8
  %24 = getelementptr inbounds %struct.nitrox_crypto_ctx, %struct.nitrox_crypto_ctx* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load %struct.flexi_crypto_context*, %struct.flexi_crypto_context** %25, align 8
  store %struct.flexi_crypto_context* %26, %struct.flexi_crypto_context** %10, align 8
  %27 = load %struct.flexi_crypto_context*, %struct.flexi_crypto_context** %10, align 8
  %28 = getelementptr inbounds %struct.flexi_crypto_context, %struct.flexi_crypto_context* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @CTR_RFC3686_NONCE_SIZE, align 4
  %34 = sub i32 %32, %33
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %31, i64 %35
  %37 = load i32, i32* @CTR_RFC3686_NONCE_SIZE, align 4
  %38 = call i32 @memcpy(i32 %30, i32* %36, i32 %37)
  %39 = load i32, i32* @CTR_RFC3686_NONCE_SIZE, align 4
  %40 = load i32, i32* %7, align 4
  %41 = sub i32 %40, %39
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @flexi_aes_keylen(i32 %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %22
  %47 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %48 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %49 = call i32 @crypto_skcipher_set_flags(%struct.crypto_skcipher* %47, i32 %48)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %58

52:                                               ; preds = %22
  %53 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %54 = load i32, i32* %11, align 4
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @nitrox_skcipher_setkey(%struct.crypto_skcipher* %53, i32 %54, i32* %55, i32 %56)
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %52, %46, %19
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local %struct.crypto_tfm* @crypto_skcipher_tfm(%struct.crypto_skcipher*) #1

declare dso_local %struct.nitrox_crypto_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @flexi_aes_keylen(i32) #1

declare dso_local i32 @crypto_skcipher_set_flags(%struct.crypto_skcipher*, i32) #1

declare dso_local i32 @nitrox_skcipher_setkey(%struct.crypto_skcipher*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

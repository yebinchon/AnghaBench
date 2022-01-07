; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_skcipher.c_nitrox_aes_xts_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_skcipher.c_nitrox_aes_xts_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_skcipher = type { i32 }
%struct.crypto_tfm = type { i32 }
%struct.nitrox_crypto_ctx = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.flexi_crypto_context* }
%struct.flexi_crypto_context = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_skcipher*, i32*, i32)* @nitrox_aes_xts_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nitrox_aes_xts_setkey(%struct.crypto_skcipher* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_skcipher*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.crypto_tfm*, align 8
  %9 = alloca %struct.nitrox_crypto_ctx*, align 8
  %10 = alloca %struct.flexi_crypto_context*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.crypto_skcipher* %0, %struct.crypto_skcipher** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %14 = call %struct.crypto_tfm* @crypto_skcipher_tfm(%struct.crypto_skcipher* %13)
  store %struct.crypto_tfm* %14, %struct.crypto_tfm** %8, align 8
  %15 = load %struct.crypto_tfm*, %struct.crypto_tfm** %8, align 8
  %16 = call %struct.nitrox_crypto_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %15)
  store %struct.nitrox_crypto_ctx* %16, %struct.nitrox_crypto_ctx** %9, align 8
  %17 = load %struct.crypto_tfm*, %struct.crypto_tfm** %8, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @xts_check_key(%struct.crypto_tfm* %17, i32* %18, i32 %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %12, align 4
  store i32 %24, i32* %4, align 4
  br label %59

25:                                               ; preds = %3
  %26 = load i32, i32* %7, align 4
  %27 = udiv i32 %26, 2
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @flexi_aes_keylen(i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %25
  %33 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %34 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %35 = call i32 @crypto_skcipher_set_flags(%struct.crypto_skcipher* %33, i32 %34)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %59

38:                                               ; preds = %25
  %39 = load %struct.nitrox_crypto_ctx*, %struct.nitrox_crypto_ctx** %9, align 8
  %40 = getelementptr inbounds %struct.nitrox_crypto_ctx, %struct.nitrox_crypto_ctx* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load %struct.flexi_crypto_context*, %struct.flexi_crypto_context** %41, align 8
  store %struct.flexi_crypto_context* %42, %struct.flexi_crypto_context** %10, align 8
  %43 = load %struct.flexi_crypto_context*, %struct.flexi_crypto_context** %10, align 8
  %44 = getelementptr inbounds %struct.flexi_crypto_context, %struct.flexi_crypto_context* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @memcpy(i32 %47, i32* %51, i32 %52)
  %54 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %55 = load i32, i32* %11, align 4
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @nitrox_skcipher_setkey(%struct.crypto_skcipher* %54, i32 %55, i32* %56, i32 %57)
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %38, %32, %23
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local %struct.crypto_tfm* @crypto_skcipher_tfm(%struct.crypto_skcipher*) #1

declare dso_local %struct.nitrox_crypto_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @xts_check_key(%struct.crypto_tfm*, i32*, i32) #1

declare dso_local i32 @flexi_aes_keylen(i32) #1

declare dso_local i32 @crypto_skcipher_set_flags(%struct.crypto_skcipher*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @nitrox_skcipher_setkey(%struct.crypto_skcipher*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

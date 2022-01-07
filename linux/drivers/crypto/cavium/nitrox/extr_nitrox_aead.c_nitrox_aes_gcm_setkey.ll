; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_aead.c_nitrox_aes_gcm_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_aead.c_nitrox_aes_gcm_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead = type { i32 }
%struct.nitrox_crypto_ctx = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.flexi_crypto_context* }
%struct.flexi_crypto_context = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%union.fc_ctx_flags = type { i32 }
%struct.TYPE_7__ = type { i32 }

@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_aead*, i32*, i32)* @nitrox_aes_gcm_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nitrox_aes_gcm_setkey(%struct.crypto_aead* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_aead*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nitrox_crypto_ctx*, align 8
  %10 = alloca %struct.flexi_crypto_context*, align 8
  %11 = alloca %union.fc_ctx_flags, align 4
  store %struct.crypto_aead* %0, %struct.crypto_aead** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %13 = call %struct.nitrox_crypto_ctx* @crypto_aead_ctx(%struct.crypto_aead* %12)
  store %struct.nitrox_crypto_ctx* %13, %struct.nitrox_crypto_ctx** %9, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @flexi_aes_keylen(i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %20 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %21 = call i32 @crypto_aead_set_flags(%struct.crypto_aead* %19, i32 %20)
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %55

24:                                               ; preds = %3
  %25 = load %struct.nitrox_crypto_ctx*, %struct.nitrox_crypto_ctx** %9, align 8
  %26 = getelementptr inbounds %struct.nitrox_crypto_ctx, %struct.nitrox_crypto_ctx* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.flexi_crypto_context*, %struct.flexi_crypto_context** %27, align 8
  store %struct.flexi_crypto_context* %28, %struct.flexi_crypto_context** %10, align 8
  %29 = load %struct.flexi_crypto_context*, %struct.flexi_crypto_context** %10, align 8
  %30 = getelementptr inbounds %struct.flexi_crypto_context, %struct.flexi_crypto_context* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @be64_to_cpu(i32 %32)
  %34 = bitcast %union.fc_ctx_flags* %11 to i32*
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* %8, align 4
  %36 = bitcast %union.fc_ctx_flags* %11 to %struct.TYPE_7__*
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = bitcast %union.fc_ctx_flags* %11 to i32*
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @cpu_to_be64(i32 %39)
  %41 = load %struct.flexi_crypto_context*, %struct.flexi_crypto_context** %10, align 8
  %42 = getelementptr inbounds %struct.flexi_crypto_context, %struct.flexi_crypto_context* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 4
  %44 = load %struct.flexi_crypto_context*, %struct.flexi_crypto_context** %10, align 8
  %45 = getelementptr inbounds %struct.flexi_crypto_context, %struct.flexi_crypto_context* %44, i32 0, i32 0
  %46 = call i32 @memset(%struct.TYPE_10__* %45, i32 0, i32 4)
  %47 = load %struct.flexi_crypto_context*, %struct.flexi_crypto_context** %10, align 8
  %48 = getelementptr inbounds %struct.flexi_crypto_context, %struct.flexi_crypto_context* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @memcpy(i32 %51, i32* %52, i32 %53)
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %24, %18
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local %struct.nitrox_crypto_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local i32 @flexi_aes_keylen(i32) #1

declare dso_local i32 @crypto_aead_set_flags(%struct.crypto_aead*, i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_skcipher.c_nitrox_skcipher_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_skcipher.c_nitrox_skcipher_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_skcipher = type { i32 }
%struct.crypto_tfm = type { i32 }
%struct.nitrox_crypto_ctx = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.flexi_crypto_context* }
%struct.flexi_crypto_context = type { %struct.TYPE_8__, %union.fc_ctx_flags }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%union.fc_ctx_flags = type { i64, [8 x i8] }
%struct.TYPE_6__ = type { i32, i32, i32 }

@CIPHER_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"unsupported cipher: %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IV_FROM_DPTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_skcipher*, i32, i32*, i32)* @nitrox_skcipher_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nitrox_skcipher_setkey(%struct.crypto_skcipher* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.crypto_skcipher*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.crypto_tfm*, align 8
  %11 = alloca %struct.nitrox_crypto_ctx*, align 8
  %12 = alloca %struct.flexi_crypto_context*, align 8
  %13 = alloca %union.fc_ctx_flags*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.crypto_skcipher* %0, %struct.crypto_skcipher** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %6, align 8
  %17 = call %struct.crypto_tfm* @crypto_skcipher_tfm(%struct.crypto_skcipher* %16)
  store %struct.crypto_tfm* %17, %struct.crypto_tfm** %10, align 8
  %18 = load %struct.crypto_tfm*, %struct.crypto_tfm** %10, align 8
  %19 = call %struct.nitrox_crypto_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %18)
  store %struct.nitrox_crypto_ctx* %19, %struct.nitrox_crypto_ctx** %11, align 8
  %20 = load %struct.crypto_tfm*, %struct.crypto_tfm** %10, align 8
  %21 = call i8* @crypto_tfm_alg_name(%struct.crypto_tfm* %20)
  store i8* %21, i8** %15, align 8
  %22 = load i8*, i8** %15, align 8
  %23 = call i32 @flexi_cipher_type(i8* %22)
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %14, align 4
  %25 = load i32, i32* @CIPHER_INVALID, align 4
  %26 = icmp eq i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %4
  %31 = load i8*, i8** %15, align 8
  %32 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %31)
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %71

35:                                               ; preds = %4
  %36 = load %struct.nitrox_crypto_ctx*, %struct.nitrox_crypto_ctx** %11, align 8
  %37 = getelementptr inbounds %struct.nitrox_crypto_ctx, %struct.nitrox_crypto_ctx* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load %struct.flexi_crypto_context*, %struct.flexi_crypto_context** %38, align 8
  store %struct.flexi_crypto_context* %39, %struct.flexi_crypto_context** %12, align 8
  %40 = load %struct.flexi_crypto_context*, %struct.flexi_crypto_context** %12, align 8
  %41 = getelementptr inbounds %struct.flexi_crypto_context, %struct.flexi_crypto_context* %40, i32 0, i32 1
  store %union.fc_ctx_flags* %41, %union.fc_ctx_flags** %13, align 8
  %42 = load %union.fc_ctx_flags*, %union.fc_ctx_flags** %13, align 8
  %43 = bitcast %union.fc_ctx_flags* %42 to i64*
  store i64 0, i64* %43, align 8
  %44 = load i32, i32* %14, align 4
  %45 = load %union.fc_ctx_flags*, %union.fc_ctx_flags** %13, align 8
  %46 = bitcast %union.fc_ctx_flags* %45 to %struct.TYPE_6__*
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load %union.fc_ctx_flags*, %union.fc_ctx_flags** %13, align 8
  %50 = bitcast %union.fc_ctx_flags* %49 to %struct.TYPE_6__*
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  store i32 %48, i32* %51, align 4
  %52 = load i32, i32* @IV_FROM_DPTR, align 4
  %53 = load %union.fc_ctx_flags*, %union.fc_ctx_flags** %13, align 8
  %54 = bitcast %union.fc_ctx_flags* %53 to %struct.TYPE_6__*
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 2
  store i32 %52, i32* %55, align 8
  %56 = load %union.fc_ctx_flags*, %union.fc_ctx_flags** %13, align 8
  %57 = bitcast %union.fc_ctx_flags* %56 to %struct.TYPE_6__*
  %58 = bitcast %struct.TYPE_6__* %57 to i32*
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @cpu_to_be64(i32 %59)
  %61 = load %union.fc_ctx_flags*, %union.fc_ctx_flags** %13, align 8
  %62 = bitcast %union.fc_ctx_flags* %61 to i64*
  store i64 %60, i64* %62, align 8
  %63 = load %struct.flexi_crypto_context*, %struct.flexi_crypto_context** %12, align 8
  %64 = getelementptr inbounds %struct.flexi_crypto_context, %struct.flexi_crypto_context* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32*, i32** %8, align 8
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @memcpy(i32 %67, i32* %68, i32 %69)
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %35, %30
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local %struct.crypto_tfm* @crypto_skcipher_tfm(%struct.crypto_skcipher*) #1

declare dso_local %struct.nitrox_crypto_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i8* @crypto_tfm_alg_name(%struct.crypto_tfm*) #1

declare dso_local i32 @flexi_cipher_type(i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

declare dso_local i64 @cpu_to_be64(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

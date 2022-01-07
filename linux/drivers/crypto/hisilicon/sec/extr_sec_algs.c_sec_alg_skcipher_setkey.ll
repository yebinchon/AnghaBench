; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/sec/extr_sec_algs.c_sec_alg_skcipher_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/sec/extr_sec_algs.c_sec_alg_skcipher_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_skcipher = type { i32 }
%struct.sec_alg_tfm_ctx = type { i32, i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device* }
%struct.device = type { i32 }

@SEC_MAX_CIPHER_KEY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_skcipher*, i32*, i32, i32)* @sec_alg_skcipher_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sec_alg_skcipher_setkey(%struct.crypto_skcipher* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.crypto_skcipher*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sec_alg_tfm_ctx*, align 8
  %11 = alloca %struct.device*, align 8
  store %struct.crypto_skcipher* %0, %struct.crypto_skcipher** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %6, align 8
  %13 = call %struct.sec_alg_tfm_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher* %12)
  store %struct.sec_alg_tfm_ctx* %13, %struct.sec_alg_tfm_ctx** %10, align 8
  %14 = load %struct.sec_alg_tfm_ctx*, %struct.sec_alg_tfm_ctx** %10, align 8
  %15 = getelementptr inbounds %struct.sec_alg_tfm_ctx, %struct.sec_alg_tfm_ctx* %14, i32 0, i32 3
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.device*, %struct.device** %19, align 8
  store %struct.device* %20, %struct.device** %11, align 8
  %21 = load %struct.sec_alg_tfm_ctx*, %struct.sec_alg_tfm_ctx** %10, align 8
  %22 = getelementptr inbounds %struct.sec_alg_tfm_ctx, %struct.sec_alg_tfm_ctx* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.sec_alg_tfm_ctx*, %struct.sec_alg_tfm_ctx** %10, align 8
  %25 = getelementptr inbounds %struct.sec_alg_tfm_ctx, %struct.sec_alg_tfm_ctx* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %4
  %29 = load %struct.sec_alg_tfm_ctx*, %struct.sec_alg_tfm_ctx** %10, align 8
  %30 = getelementptr inbounds %struct.sec_alg_tfm_ctx, %struct.sec_alg_tfm_ctx* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* @SEC_MAX_CIPHER_KEY, align 4
  %33 = call i32 @memset(i64 %31, i32 0, i32 %32)
  br label %54

34:                                               ; preds = %4
  %35 = load %struct.device*, %struct.device** %11, align 8
  %36 = load i32, i32* @SEC_MAX_CIPHER_KEY, align 4
  %37 = load %struct.sec_alg_tfm_ctx*, %struct.sec_alg_tfm_ctx** %10, align 8
  %38 = getelementptr inbounds %struct.sec_alg_tfm_ctx, %struct.sec_alg_tfm_ctx* %37, i32 0, i32 2
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call i64 @dma_alloc_coherent(%struct.device* %35, i32 %36, i32* %38, i32 %39)
  %41 = load %struct.sec_alg_tfm_ctx*, %struct.sec_alg_tfm_ctx** %10, align 8
  %42 = getelementptr inbounds %struct.sec_alg_tfm_ctx, %struct.sec_alg_tfm_ctx* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  %43 = load %struct.sec_alg_tfm_ctx*, %struct.sec_alg_tfm_ctx** %10, align 8
  %44 = getelementptr inbounds %struct.sec_alg_tfm_ctx, %struct.sec_alg_tfm_ctx* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %34
  %48 = load %struct.sec_alg_tfm_ctx*, %struct.sec_alg_tfm_ctx** %10, align 8
  %49 = getelementptr inbounds %struct.sec_alg_tfm_ctx, %struct.sec_alg_tfm_ctx* %48, i32 0, i32 0
  %50 = call i32 @mutex_unlock(i32* %49)
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %63

53:                                               ; preds = %34
  br label %54

54:                                               ; preds = %53, %28
  %55 = load %struct.sec_alg_tfm_ctx*, %struct.sec_alg_tfm_ctx** %10, align 8
  %56 = getelementptr inbounds %struct.sec_alg_tfm_ctx, %struct.sec_alg_tfm_ctx* %55, i32 0, i32 0
  %57 = call i32 @mutex_unlock(i32* %56)
  %58 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %6, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @sec_alg_skcipher_init_context(%struct.crypto_skcipher* %58, i32* %59, i32 %60, i32 %61)
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %54, %47
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local %struct.sec_alg_tfm_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i64 @dma_alloc_coherent(%struct.device*, i32, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @sec_alg_skcipher_init_context(%struct.crypto_skcipher*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

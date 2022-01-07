; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_sahara.c_sahara_aes_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_sahara.c_sahara_aes_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_ablkcipher = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sahara_ctx = type { i32, i32, i32, i32 }

@AES_KEYSIZE_128 = common dso_local global i32 0, align 4
@FLAGS_NEW_KEY = common dso_local global i32 0, align 4
@AES_KEYSIZE_192 = common dso_local global i32 0, align 4
@AES_KEYSIZE_256 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MASK = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_ablkcipher*, i32*, i32)* @sahara_aes_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sahara_aes_setkey(%struct.crypto_ablkcipher* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_ablkcipher*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sahara_ctx*, align 8
  %9 = alloca i32, align 4
  store %struct.crypto_ablkcipher* %0, %struct.crypto_ablkcipher** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %5, align 8
  %11 = call %struct.sahara_ctx* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher* %10)
  store %struct.sahara_ctx* %11, %struct.sahara_ctx** %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.sahara_ctx*, %struct.sahara_ctx** %8, align 8
  %14 = getelementptr inbounds %struct.sahara_ctx, %struct.sahara_ctx* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @AES_KEYSIZE_128, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %3
  %19 = load %struct.sahara_ctx*, %struct.sahara_ctx** %8, align 8
  %20 = getelementptr inbounds %struct.sahara_ctx, %struct.sahara_ctx* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @memcpy(i32 %21, i32* %22, i32 %23)
  %25 = load i32, i32* @FLAGS_NEW_KEY, align 4
  %26 = load %struct.sahara_ctx*, %struct.sahara_ctx** %8, align 8
  %27 = getelementptr inbounds %struct.sahara_ctx, %struct.sahara_ctx* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  store i32 0, i32* %4, align 4
  br label %82

30:                                               ; preds = %3
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @AES_KEYSIZE_192, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @AES_KEYSIZE_256, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %82

41:                                               ; preds = %34, %30
  %42 = load %struct.sahara_ctx*, %struct.sahara_ctx** %8, align 8
  %43 = getelementptr inbounds %struct.sahara_ctx, %struct.sahara_ctx* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @CRYPTO_TFM_REQ_MASK, align 4
  %46 = call i32 @crypto_sync_skcipher_clear_flags(i32 %44, i32 %45)
  %47 = load %struct.sahara_ctx*, %struct.sahara_ctx** %8, align 8
  %48 = getelementptr inbounds %struct.sahara_ctx, %struct.sahara_ctx* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %5, align 8
  %51 = getelementptr inbounds %struct.crypto_ablkcipher, %struct.crypto_ablkcipher* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @CRYPTO_TFM_REQ_MASK, align 4
  %55 = and i32 %53, %54
  %56 = call i32 @crypto_sync_skcipher_set_flags(i32 %49, i32 %55)
  %57 = load %struct.sahara_ctx*, %struct.sahara_ctx** %8, align 8
  %58 = getelementptr inbounds %struct.sahara_ctx, %struct.sahara_ctx* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @crypto_sync_skcipher_setkey(i32 %59, i32* %60, i32 %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* @CRYPTO_TFM_RES_MASK, align 4
  %64 = xor i32 %63, -1
  %65 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %5, align 8
  %66 = getelementptr inbounds %struct.crypto_ablkcipher, %struct.crypto_ablkcipher* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, %64
  store i32 %69, i32* %67, align 4
  %70 = load %struct.sahara_ctx*, %struct.sahara_ctx** %8, align 8
  %71 = getelementptr inbounds %struct.sahara_ctx, %struct.sahara_ctx* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @crypto_sync_skcipher_get_flags(i32 %72)
  %74 = load i32, i32* @CRYPTO_TFM_RES_MASK, align 4
  %75 = and i32 %73, %74
  %76 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %5, align 8
  %77 = getelementptr inbounds %struct.crypto_ablkcipher, %struct.crypto_ablkcipher* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %75
  store i32 %80, i32* %78, align 4
  %81 = load i32, i32* %9, align 4
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %41, %38, %18
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local %struct.sahara_ctx* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @crypto_sync_skcipher_clear_flags(i32, i32) #1

declare dso_local i32 @crypto_sync_skcipher_set_flags(i32, i32) #1

declare dso_local i32 @crypto_sync_skcipher_setkey(i32, i32*, i32) #1

declare dso_local i32 @crypto_sync_skcipher_get_flags(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

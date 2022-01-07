; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-aes.c_omap_aes_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-aes.c_omap_aes_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_ablkcipher = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.omap_aes_ctx = type { i32, i32, i32 }

@AES_KEYSIZE_128 = common dso_local global i32 0, align 4
@AES_KEYSIZE_192 = common dso_local global i32 0, align 4
@AES_KEYSIZE_256 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"enter, keylen: %d\0A\00", align 1
@CRYPTO_TFM_REQ_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_ablkcipher*, i32*, i32)* @omap_aes_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_aes_setkey(%struct.crypto_ablkcipher* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_ablkcipher*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.omap_aes_ctx*, align 8
  %9 = alloca i32, align 4
  store %struct.crypto_ablkcipher* %0, %struct.crypto_ablkcipher** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %5, align 8
  %11 = call %struct.omap_aes_ctx* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher* %10)
  store %struct.omap_aes_ctx* %11, %struct.omap_aes_ctx** %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @AES_KEYSIZE_128, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @AES_KEYSIZE_192, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @AES_KEYSIZE_256, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %63

26:                                               ; preds = %19, %15, %3
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.omap_aes_ctx*, %struct.omap_aes_ctx** %8, align 8
  %30 = getelementptr inbounds %struct.omap_aes_ctx, %struct.omap_aes_ctx* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @memcpy(i32 %31, i32* %32, i32 %33)
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.omap_aes_ctx*, %struct.omap_aes_ctx** %8, align 8
  %37 = getelementptr inbounds %struct.omap_aes_ctx, %struct.omap_aes_ctx* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.omap_aes_ctx*, %struct.omap_aes_ctx** %8, align 8
  %39 = getelementptr inbounds %struct.omap_aes_ctx, %struct.omap_aes_ctx* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @CRYPTO_TFM_REQ_MASK, align 4
  %42 = call i32 @crypto_sync_skcipher_clear_flags(i32 %40, i32 %41)
  %43 = load %struct.omap_aes_ctx*, %struct.omap_aes_ctx** %8, align 8
  %44 = getelementptr inbounds %struct.omap_aes_ctx, %struct.omap_aes_ctx* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %5, align 8
  %47 = getelementptr inbounds %struct.crypto_ablkcipher, %struct.crypto_ablkcipher* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @CRYPTO_TFM_REQ_MASK, align 4
  %51 = and i32 %49, %50
  %52 = call i32 @crypto_sync_skcipher_set_flags(i32 %45, i32 %51)
  %53 = load %struct.omap_aes_ctx*, %struct.omap_aes_ctx** %8, align 8
  %54 = getelementptr inbounds %struct.omap_aes_ctx, %struct.omap_aes_ctx* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @crypto_sync_skcipher_setkey(i32 %55, i32* %56, i32 %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %63

62:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %61, %23
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local %struct.omap_aes_ctx* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @crypto_sync_skcipher_clear_flags(i32, i32) #1

declare dso_local i32 @crypto_sync_skcipher_set_flags(i32, i32) #1

declare dso_local i32 @crypto_sync_skcipher_setkey(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

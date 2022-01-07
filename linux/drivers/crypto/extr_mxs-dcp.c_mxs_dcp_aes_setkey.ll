; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_mxs-dcp.c_mxs_dcp_aes_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_mxs-dcp.c_mxs_dcp_aes_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_ablkcipher = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.dcp_async_ctx = type { i32, i32, i32 }

@AES_KEYSIZE_128 = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MASK = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_ablkcipher*, i32*, i32)* @mxs_dcp_aes_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxs_dcp_aes_setkey(%struct.crypto_ablkcipher* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_ablkcipher*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dcp_async_ctx*, align 8
  %9 = alloca i32, align 4
  store %struct.crypto_ablkcipher* %0, %struct.crypto_ablkcipher** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %5, align 8
  %11 = call %struct.dcp_async_ctx* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher* %10)
  store %struct.dcp_async_ctx* %11, %struct.dcp_async_ctx** %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.dcp_async_ctx*, %struct.dcp_async_ctx** %8, align 8
  %14 = getelementptr inbounds %struct.dcp_async_ctx, %struct.dcp_async_ctx* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @AES_KEYSIZE_128, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %3
  %19 = load %struct.dcp_async_ctx*, %struct.dcp_async_ctx** %8, align 8
  %20 = getelementptr inbounds %struct.dcp_async_ctx, %struct.dcp_async_ctx* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @memcpy(i32 %21, i32* %22, i32 %23)
  store i32 0, i32* %4, align 4
  br label %70

25:                                               ; preds = %3
  %26 = load %struct.dcp_async_ctx*, %struct.dcp_async_ctx** %8, align 8
  %27 = getelementptr inbounds %struct.dcp_async_ctx, %struct.dcp_async_ctx* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @CRYPTO_TFM_REQ_MASK, align 4
  %30 = call i32 @crypto_sync_skcipher_clear_flags(i32 %28, i32 %29)
  %31 = load %struct.dcp_async_ctx*, %struct.dcp_async_ctx** %8, align 8
  %32 = getelementptr inbounds %struct.dcp_async_ctx, %struct.dcp_async_ctx* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %5, align 8
  %35 = getelementptr inbounds %struct.crypto_ablkcipher, %struct.crypto_ablkcipher* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @CRYPTO_TFM_REQ_MASK, align 4
  %39 = and i32 %37, %38
  %40 = call i32 @crypto_sync_skcipher_set_flags(i32 %33, i32 %39)
  %41 = load %struct.dcp_async_ctx*, %struct.dcp_async_ctx** %8, align 8
  %42 = getelementptr inbounds %struct.dcp_async_ctx, %struct.dcp_async_ctx* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @crypto_sync_skcipher_setkey(i32 %43, i32* %44, i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %70

50:                                               ; preds = %25
  %51 = load i32, i32* @CRYPTO_TFM_RES_MASK, align 4
  %52 = xor i32 %51, -1
  %53 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %5, align 8
  %54 = getelementptr inbounds %struct.crypto_ablkcipher, %struct.crypto_ablkcipher* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, %52
  store i32 %57, i32* %55, align 4
  %58 = load %struct.dcp_async_ctx*, %struct.dcp_async_ctx** %8, align 8
  %59 = getelementptr inbounds %struct.dcp_async_ctx, %struct.dcp_async_ctx* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @crypto_sync_skcipher_get_flags(i32 %60)
  %62 = load i32, i32* @CRYPTO_TFM_RES_MASK, align 4
  %63 = and i32 %61, %62
  %64 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %5, align 8
  %65 = getelementptr inbounds %struct.crypto_ablkcipher, %struct.crypto_ablkcipher* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %63
  store i32 %68, i32* %66, align 4
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %50, %49, %18
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local %struct.dcp_async_ctx* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher*) #1

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

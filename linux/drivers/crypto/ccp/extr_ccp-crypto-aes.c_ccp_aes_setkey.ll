; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-crypto-aes.c_ccp_aes_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-crypto-aes.c_ccp_aes_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_ablkcipher = type { i32 }
%struct.ccp_ctx = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }
%struct.ccp_crypto_ablkcipher_alg = type { i32 }

@CCP_AES_TYPE_128 = common dso_local global i32 0, align 4
@CCP_AES_TYPE_192 = common dso_local global i32 0, align 4
@CCP_AES_TYPE_256 = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_ablkcipher*, i32*, i32)* @ccp_aes_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccp_aes_setkey(%struct.crypto_ablkcipher* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_ablkcipher*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ccp_ctx*, align 8
  %9 = alloca %struct.ccp_crypto_ablkcipher_alg*, align 8
  store %struct.crypto_ablkcipher* %0, %struct.crypto_ablkcipher** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %5, align 8
  %11 = call i32 @crypto_ablkcipher_tfm(%struct.crypto_ablkcipher* %10)
  %12 = call %struct.ccp_ctx* @crypto_tfm_ctx(i32 %11)
  store %struct.ccp_ctx* %12, %struct.ccp_ctx** %8, align 8
  %13 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %5, align 8
  %14 = call i32 @crypto_ablkcipher_tfm(%struct.crypto_ablkcipher* %13)
  %15 = call %struct.ccp_crypto_ablkcipher_alg* @ccp_crypto_ablkcipher_alg(i32 %14)
  store %struct.ccp_crypto_ablkcipher_alg* %15, %struct.ccp_crypto_ablkcipher_alg** %9, align 8
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %35 [
    i32 130, label %17
    i32 129, label %23
    i32 128, label %29
  ]

17:                                               ; preds = %3
  %18 = load i32, i32* @CCP_AES_TYPE_128, align 4
  %19 = load %struct.ccp_ctx*, %struct.ccp_ctx** %8, align 8
  %20 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 4
  store i32 %18, i32* %22, align 4
  br label %41

23:                                               ; preds = %3
  %24 = load i32, i32* @CCP_AES_TYPE_192, align 4
  %25 = load %struct.ccp_ctx*, %struct.ccp_ctx** %8, align 8
  %26 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 4
  store i32 %24, i32* %28, align 4
  br label %41

29:                                               ; preds = %3
  %30 = load i32, i32* @CCP_AES_TYPE_256, align 4
  %31 = load %struct.ccp_ctx*, %struct.ccp_ctx** %8, align 8
  %32 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 4
  store i32 %30, i32* %34, align 4
  br label %41

35:                                               ; preds = %3
  %36 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %5, align 8
  %37 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %38 = call i32 @crypto_ablkcipher_set_flags(%struct.crypto_ablkcipher* %36, i32 %37)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %73

41:                                               ; preds = %29, %23, %17
  %42 = load %struct.ccp_crypto_ablkcipher_alg*, %struct.ccp_crypto_ablkcipher_alg** %9, align 8
  %43 = getelementptr inbounds %struct.ccp_crypto_ablkcipher_alg, %struct.ccp_crypto_ablkcipher_alg* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ccp_ctx*, %struct.ccp_ctx** %8, align 8
  %46 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 3
  store i32 %44, i32* %48, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.ccp_ctx*, %struct.ccp_ctx** %8, align 8
  %51 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  store i32 %49, i32* %53, align 4
  %54 = load %struct.ccp_ctx*, %struct.ccp_ctx** %8, align 8
  %55 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %6, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @memcpy(i32 %58, i32* %59, i32 %60)
  %62 = load %struct.ccp_ctx*, %struct.ccp_ctx** %8, align 8
  %63 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 2
  %66 = load %struct.ccp_ctx*, %struct.ccp_ctx** %8, align 8
  %67 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @sg_init_one(i32* %65, i32 %70, i32 %71)
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %41, %35
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local %struct.ccp_ctx* @crypto_tfm_ctx(i32) #1

declare dso_local i32 @crypto_ablkcipher_tfm(%struct.crypto_ablkcipher*) #1

declare dso_local %struct.ccp_crypto_ablkcipher_alg* @ccp_crypto_ablkcipher_alg(i32) #1

declare dso_local i32 @crypto_ablkcipher_set_flags(%struct.crypto_ablkcipher*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @sg_init_one(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

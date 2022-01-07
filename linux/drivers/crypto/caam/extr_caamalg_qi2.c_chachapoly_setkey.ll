; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg_qi2.c_chachapoly_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg_qi2.c_chachapoly_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead = type { i32 }
%struct.caam_ctx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32* }

@CHACHAPOLY_IV_SIZE = common dso_local global i32 0, align 4
@CHACHA_KEY_SIZE = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_aead*, i32*, i32)* @chachapoly_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chachapoly_setkey(%struct.crypto_aead* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_aead*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.caam_ctx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.crypto_aead* %0, %struct.crypto_aead** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %12 = call %struct.caam_ctx* @crypto_aead_ctx(%struct.crypto_aead* %11)
  store %struct.caam_ctx* %12, %struct.caam_ctx** %8, align 8
  %13 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %14 = call i32 @crypto_aead_ivsize(%struct.crypto_aead* %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* @CHACHAPOLY_IV_SIZE, align 4
  %16 = load i32, i32* %9, align 4
  %17 = sub i32 %15, %16
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @CHACHA_KEY_SIZE, align 4
  %20 = load i32, i32* %10, align 4
  %21 = add i32 %19, %20
  %22 = icmp ne i32 %18, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %3
  %24 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %25 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %26 = call i32 @crypto_aead_set_flags(%struct.crypto_aead* %24, i32 %25)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %42

29:                                               ; preds = %3
  %30 = load i32*, i32** %6, align 8
  %31 = load %struct.caam_ctx*, %struct.caam_ctx** %8, align 8
  %32 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store i32* %30, i32** %33, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %10, align 4
  %36 = sub i32 %34, %35
  %37 = load %struct.caam_ctx*, %struct.caam_ctx** %8, align 8
  %38 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 8
  %40 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %41 = call i32 @chachapoly_set_sh_desc(%struct.crypto_aead* %40)
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %29, %23
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local %struct.caam_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local i32 @crypto_aead_ivsize(%struct.crypto_aead*) #1

declare dso_local i32 @crypto_aead_set_flags(%struct.crypto_aead*, i32) #1

declare dso_local i32 @chachapoly_set_sh_desc(%struct.crypto_aead*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_aead_ccm_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_aead_ccm_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead = type { i32 }
%struct.chcr_aead_ctx = type { %struct.crypto_aead* }

@CRYPTO_TFM_REQ_MASK = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_aead*, i32*, i32)* @chcr_aead_ccm_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chcr_aead_ccm_setkey(%struct.crypto_aead* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_aead*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.chcr_aead_ctx*, align 8
  %9 = alloca i32, align 4
  store %struct.crypto_aead* %0, %struct.crypto_aead** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %11 = call i32 @a_ctx(%struct.crypto_aead* %10)
  %12 = call %struct.chcr_aead_ctx* @AEAD_CTX(i32 %11)
  store %struct.chcr_aead_ctx* %12, %struct.chcr_aead_ctx** %8, align 8
  %13 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %8, align 8
  %14 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %13, i32 0, i32 0
  %15 = load %struct.crypto_aead*, %struct.crypto_aead** %14, align 8
  %16 = load i32, i32* @CRYPTO_TFM_REQ_MASK, align 4
  %17 = call i32 @crypto_aead_clear_flags(%struct.crypto_aead* %15, i32 %16)
  %18 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %8, align 8
  %19 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %18, i32 0, i32 0
  %20 = load %struct.crypto_aead*, %struct.crypto_aead** %19, align 8
  %21 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %22 = call i32 @crypto_aead_get_flags(%struct.crypto_aead* %21)
  %23 = load i32, i32* @CRYPTO_TFM_REQ_MASK, align 4
  %24 = and i32 %22, %23
  %25 = call i32 @crypto_aead_set_flags(%struct.crypto_aead* %20, i32 %24)
  %26 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %8, align 8
  %27 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %26, i32 0, i32 0
  %28 = load %struct.crypto_aead*, %struct.crypto_aead** %27, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @crypto_aead_setkey(%struct.crypto_aead* %28, i32* %29, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %33 = load i32, i32* @CRYPTO_TFM_RES_MASK, align 4
  %34 = call i32 @crypto_aead_clear_flags(%struct.crypto_aead* %32, i32 %33)
  %35 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %36 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %8, align 8
  %37 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %36, i32 0, i32 0
  %38 = load %struct.crypto_aead*, %struct.crypto_aead** %37, align 8
  %39 = call i32 @crypto_aead_get_flags(%struct.crypto_aead* %38)
  %40 = load i32, i32* @CRYPTO_TFM_RES_MASK, align 4
  %41 = and i32 %39, %40
  %42 = call i32 @crypto_aead_set_flags(%struct.crypto_aead* %35, i32 %41)
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %3
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %4, align 4
  br label %52

47:                                               ; preds = %3
  %48 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @chcr_ccm_common_setkey(%struct.crypto_aead* %48, i32* %49, i32 %50)
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %47, %45
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.chcr_aead_ctx* @AEAD_CTX(i32) #1

declare dso_local i32 @a_ctx(%struct.crypto_aead*) #1

declare dso_local i32 @crypto_aead_clear_flags(%struct.crypto_aead*, i32) #1

declare dso_local i32 @crypto_aead_set_flags(%struct.crypto_aead*, i32) #1

declare dso_local i32 @crypto_aead_get_flags(%struct.crypto_aead*) #1

declare dso_local i32 @crypto_aead_setkey(%struct.crypto_aead*, i32*, i32) #1

declare dso_local i32 @chcr_ccm_common_setkey(%struct.crypto_aead*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

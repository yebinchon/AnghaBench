; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_aead_rfc4309_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_aead_rfc4309_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead = type { i32 }
%struct.chcr_aead_ctx = type { i32, %struct.crypto_aead*, i64 }
%struct.crypto_tfm = type { i32 }

@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MASK = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_aead*, i32*, i32)* @chcr_aead_rfc4309_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chcr_aead_rfc4309_setkey(%struct.crypto_aead* %0, i32* %1, i32 %2) #0 {
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
  %13 = load i32, i32* %7, align 4
  %14 = icmp ult i32 %13, 3
  br i1 %14, label %15, label %24

15:                                               ; preds = %3
  %16 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %17 = bitcast %struct.crypto_aead* %16 to %struct.crypto_tfm*
  %18 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %19 = call i32 @crypto_tfm_set_flags(%struct.crypto_tfm* %17, i32 %18)
  %20 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %8, align 8
  %21 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %20, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %74

24:                                               ; preds = %3
  %25 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %8, align 8
  %26 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %25, i32 0, i32 1
  %27 = load %struct.crypto_aead*, %struct.crypto_aead** %26, align 8
  %28 = load i32, i32* @CRYPTO_TFM_REQ_MASK, align 4
  %29 = call i32 @crypto_aead_clear_flags(%struct.crypto_aead* %27, i32 %28)
  %30 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %8, align 8
  %31 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %30, i32 0, i32 1
  %32 = load %struct.crypto_aead*, %struct.crypto_aead** %31, align 8
  %33 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %34 = call i32 @crypto_aead_get_flags(%struct.crypto_aead* %33)
  %35 = load i32, i32* @CRYPTO_TFM_REQ_MASK, align 4
  %36 = and i32 %34, %35
  %37 = call i32 @crypto_aead_set_flags(%struct.crypto_aead* %32, i32 %36)
  %38 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %8, align 8
  %39 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %38, i32 0, i32 1
  %40 = load %struct.crypto_aead*, %struct.crypto_aead** %39, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @crypto_aead_setkey(%struct.crypto_aead* %40, i32* %41, i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %45 = load i32, i32* @CRYPTO_TFM_RES_MASK, align 4
  %46 = call i32 @crypto_aead_clear_flags(%struct.crypto_aead* %44, i32 %45)
  %47 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %48 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %8, align 8
  %49 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %48, i32 0, i32 1
  %50 = load %struct.crypto_aead*, %struct.crypto_aead** %49, align 8
  %51 = call i32 @crypto_aead_get_flags(%struct.crypto_aead* %50)
  %52 = load i32, i32* @CRYPTO_TFM_RES_MASK, align 4
  %53 = and i32 %51, %52
  %54 = call i32 @crypto_aead_set_flags(%struct.crypto_aead* %47, i32 %53)
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %24
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %4, align 4
  br label %74

59:                                               ; preds = %24
  %60 = load i32, i32* %7, align 4
  %61 = sub i32 %60, 3
  store i32 %61, i32* %7, align 4
  %62 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %8, align 8
  %63 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32*, i32** %6, align 8
  %66 = load i32, i32* %7, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = call i32 @memcpy(i32 %64, i32* %68, i32 3)
  %70 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %71 = load i32*, i32** %6, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @chcr_ccm_common_setkey(%struct.crypto_aead* %70, i32* %71, i32 %72)
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %59, %57, %15
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local %struct.chcr_aead_ctx* @AEAD_CTX(i32) #1

declare dso_local i32 @a_ctx(%struct.crypto_aead*) #1

declare dso_local i32 @crypto_tfm_set_flags(%struct.crypto_tfm*, i32) #1

declare dso_local i32 @crypto_aead_clear_flags(%struct.crypto_aead*, i32) #1

declare dso_local i32 @crypto_aead_set_flags(%struct.crypto_aead*, i32) #1

declare dso_local i32 @crypto_aead_get_flags(%struct.crypto_aead*) #1

declare dso_local i32 @crypto_aead_setkey(%struct.crypto_aead*, i32*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @chcr_ccm_common_setkey(%struct.crypto_aead*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

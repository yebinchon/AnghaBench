; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_gcm_setauthsize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_gcm_setauthsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead = type { i32 }
%struct.chcr_aead_ctx = type { i32, i8*, i8* }
%struct.crypto_tfm = type { i32 }

@CHCR_SCMD_HMAC_CTRL_PL1 = common dso_local global i8* null, align 8
@VERIFY_HW = common dso_local global i8* null, align 8
@CHCR_SCMD_HMAC_CTRL_DIV2 = common dso_local global i8* null, align 8
@CHCR_SCMD_HMAC_CTRL_IPSEC_96BIT = common dso_local global i8* null, align 8
@CHCR_SCMD_HMAC_CTRL_PL3 = common dso_local global i8* null, align 8
@CHCR_SCMD_HMAC_CTRL_NO_TRUNC = common dso_local global i8* null, align 8
@VERIFY_SW = common dso_local global i8* null, align 8
@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_aead*, i32)* @chcr_gcm_setauthsize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chcr_gcm_setauthsize(%struct.crypto_aead* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.crypto_aead*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.chcr_aead_ctx*, align 8
  store %struct.crypto_aead* %0, %struct.crypto_aead** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %8 = call i32 @a_ctx(%struct.crypto_aead* %7)
  %9 = call %struct.chcr_aead_ctx* @AEAD_CTX(i32 %8)
  store %struct.chcr_aead_ctx* %9, %struct.chcr_aead_ctx** %6, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %53 [
    i32 129, label %11
    i32 128, label %18
    i32 134, label %25
    i32 132, label %32
    i32 130, label %39
    i32 133, label %46
    i32 131, label %46
  ]

11:                                               ; preds = %2
  %12 = load i8*, i8** @CHCR_SCMD_HMAC_CTRL_PL1, align 8
  %13 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %6, align 8
  %14 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %13, i32 0, i32 2
  store i8* %12, i8** %14, align 8
  %15 = load i8*, i8** @VERIFY_HW, align 8
  %16 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %6, align 8
  %17 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %16, i32 0, i32 1
  store i8* %15, i8** %17, align 8
  br label %60

18:                                               ; preds = %2
  %19 = load i8*, i8** @CHCR_SCMD_HMAC_CTRL_DIV2, align 8
  %20 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %6, align 8
  %21 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %20, i32 0, i32 2
  store i8* %19, i8** %21, align 8
  %22 = load i8*, i8** @VERIFY_HW, align 8
  %23 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %6, align 8
  %24 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  br label %60

25:                                               ; preds = %2
  %26 = load i8*, i8** @CHCR_SCMD_HMAC_CTRL_IPSEC_96BIT, align 8
  %27 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %6, align 8
  %28 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %27, i32 0, i32 2
  store i8* %26, i8** %28, align 8
  %29 = load i8*, i8** @VERIFY_HW, align 8
  %30 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %6, align 8
  %31 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  br label %60

32:                                               ; preds = %2
  %33 = load i8*, i8** @CHCR_SCMD_HMAC_CTRL_PL3, align 8
  %34 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %6, align 8
  %35 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %34, i32 0, i32 2
  store i8* %33, i8** %35, align 8
  %36 = load i8*, i8** @VERIFY_HW, align 8
  %37 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %6, align 8
  %38 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  br label %60

39:                                               ; preds = %2
  %40 = load i8*, i8** @CHCR_SCMD_HMAC_CTRL_NO_TRUNC, align 8
  %41 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %6, align 8
  %42 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %41, i32 0, i32 2
  store i8* %40, i8** %42, align 8
  %43 = load i8*, i8** @VERIFY_HW, align 8
  %44 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %6, align 8
  %45 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  br label %60

46:                                               ; preds = %2, %2
  %47 = load i8*, i8** @CHCR_SCMD_HMAC_CTRL_NO_TRUNC, align 8
  %48 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %6, align 8
  %49 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %48, i32 0, i32 2
  store i8* %47, i8** %49, align 8
  %50 = load i8*, i8** @VERIFY_SW, align 8
  %51 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %6, align 8
  %52 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  br label %60

53:                                               ; preds = %2
  %54 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %55 = bitcast %struct.crypto_aead* %54 to %struct.crypto_tfm*
  %56 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %57 = call i32 @crypto_tfm_set_flags(%struct.crypto_tfm* %55, i32 %56)
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %66

60:                                               ; preds = %46, %39, %32, %25, %18, %11
  %61 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %6, align 8
  %62 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @crypto_aead_setauthsize(i32 %63, i32 %64)
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %60, %53
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.chcr_aead_ctx* @AEAD_CTX(i32) #1

declare dso_local i32 @a_ctx(%struct.crypto_aead*) #1

declare dso_local i32 @crypto_tfm_set_flags(%struct.crypto_tfm*, i32) #1

declare dso_local i32 @crypto_aead_setauthsize(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

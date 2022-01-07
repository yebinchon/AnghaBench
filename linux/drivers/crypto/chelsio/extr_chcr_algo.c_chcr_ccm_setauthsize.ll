; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_ccm_setauthsize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_ccm_setauthsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead = type { i32 }
%struct.chcr_aead_ctx = type { i32, i8*, i32 }
%struct.crypto_tfm = type { i32 }

@CHCR_SCMD_HMAC_CTRL_PL1 = common dso_local global i32 0, align 4
@VERIFY_HW = common dso_local global i8* null, align 8
@CHCR_SCMD_HMAC_CTRL_PL2 = common dso_local global i32 0, align 4
@CHCR_SCMD_HMAC_CTRL_DIV2 = common dso_local global i32 0, align 4
@CHCR_SCMD_HMAC_CTRL_TRUNC_RFC4366 = common dso_local global i32 0, align 4
@CHCR_SCMD_HMAC_CTRL_IPSEC_96BIT = common dso_local global i32 0, align 4
@CHCR_SCMD_HMAC_CTRL_PL3 = common dso_local global i32 0, align 4
@CHCR_SCMD_HMAC_CTRL_NO_TRUNC = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_aead*, i32)* @chcr_ccm_setauthsize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chcr_ccm_setauthsize(%struct.crypto_aead* %0, i32 %1) #0 {
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
  switch i32 %10, label %60 [
    i32 130, label %11
    i32 129, label %18
    i32 128, label %25
    i32 134, label %32
    i32 133, label %39
    i32 132, label %46
    i32 131, label %53
  ]

11:                                               ; preds = %2
  %12 = load i32, i32* @CHCR_SCMD_HMAC_CTRL_PL1, align 4
  %13 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %6, align 8
  %14 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 8
  %15 = load i8*, i8** @VERIFY_HW, align 8
  %16 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %6, align 8
  %17 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %16, i32 0, i32 1
  store i8* %15, i8** %17, align 8
  br label %67

18:                                               ; preds = %2
  %19 = load i32, i32* @CHCR_SCMD_HMAC_CTRL_PL2, align 4
  %20 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %6, align 8
  %21 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  %22 = load i8*, i8** @VERIFY_HW, align 8
  %23 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %6, align 8
  %24 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  br label %67

25:                                               ; preds = %2
  %26 = load i32, i32* @CHCR_SCMD_HMAC_CTRL_DIV2, align 4
  %27 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %6, align 8
  %28 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load i8*, i8** @VERIFY_HW, align 8
  %30 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %6, align 8
  %31 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  br label %67

32:                                               ; preds = %2
  %33 = load i32, i32* @CHCR_SCMD_HMAC_CTRL_TRUNC_RFC4366, align 4
  %34 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %6, align 8
  %35 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load i8*, i8** @VERIFY_HW, align 8
  %37 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %6, align 8
  %38 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  br label %67

39:                                               ; preds = %2
  %40 = load i32, i32* @CHCR_SCMD_HMAC_CTRL_IPSEC_96BIT, align 4
  %41 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %6, align 8
  %42 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load i8*, i8** @VERIFY_HW, align 8
  %44 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %6, align 8
  %45 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  br label %67

46:                                               ; preds = %2
  %47 = load i32, i32* @CHCR_SCMD_HMAC_CTRL_PL3, align 4
  %48 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %6, align 8
  %49 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load i8*, i8** @VERIFY_HW, align 8
  %51 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %6, align 8
  %52 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  br label %67

53:                                               ; preds = %2
  %54 = load i32, i32* @CHCR_SCMD_HMAC_CTRL_NO_TRUNC, align 4
  %55 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %6, align 8
  %56 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load i8*, i8** @VERIFY_HW, align 8
  %58 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %6, align 8
  %59 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %58, i32 0, i32 1
  store i8* %57, i8** %59, align 8
  br label %67

60:                                               ; preds = %2
  %61 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %62 = bitcast %struct.crypto_aead* %61 to %struct.crypto_tfm*
  %63 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %64 = call i32 @crypto_tfm_set_flags(%struct.crypto_tfm* %62, i32 %63)
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %73

67:                                               ; preds = %53, %46, %39, %32, %25, %18, %11
  %68 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %6, align 8
  %69 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @crypto_aead_setauthsize(i32 %70, i32 %71)
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %67, %60
  %74 = load i32, i32* %3, align 4
  ret i32 %74
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

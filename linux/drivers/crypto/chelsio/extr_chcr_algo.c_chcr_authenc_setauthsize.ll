; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_authenc_setauthsize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_authenc_setauthsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead = type { i32 }
%struct.chcr_aead_ctx = type { i32, i8*, i8* }

@ICV_4 = common dso_local global i32 0, align 4
@CHCR_SCMD_HMAC_CTRL_PL1 = common dso_local global i8* null, align 8
@VERIFY_HW = common dso_local global i8* null, align 8
@ICV_6 = common dso_local global i32 0, align 4
@CHCR_SCMD_HMAC_CTRL_PL2 = common dso_local global i8* null, align 8
@ICV_10 = common dso_local global i32 0, align 4
@CHCR_SCMD_HMAC_CTRL_TRUNC_RFC4366 = common dso_local global i8* null, align 8
@ICV_12 = common dso_local global i32 0, align 4
@CHCR_SCMD_HMAC_CTRL_IPSEC_96BIT = common dso_local global i8* null, align 8
@ICV_14 = common dso_local global i32 0, align 4
@CHCR_SCMD_HMAC_CTRL_PL3 = common dso_local global i8* null, align 8
@CHCR_SCMD_HMAC_CTRL_DIV2 = common dso_local global i8* null, align 8
@CHCR_SCMD_HMAC_CTRL_NO_TRUNC = common dso_local global i8* null, align 8
@VERIFY_SW = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_aead*, i32)* @chcr_authenc_setauthsize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chcr_authenc_setauthsize(%struct.crypto_aead* %0, i32 %1) #0 {
  %3 = alloca %struct.crypto_aead*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.chcr_aead_ctx*, align 8
  %6 = alloca i32, align 4
  store %struct.crypto_aead* %0, %struct.crypto_aead** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.crypto_aead*, %struct.crypto_aead** %3, align 8
  %8 = call i32 @a_ctx(%struct.crypto_aead* %7)
  %9 = call %struct.chcr_aead_ctx* @AEAD_CTX(i32 %8)
  store %struct.chcr_aead_ctx* %9, %struct.chcr_aead_ctx** %5, align 8
  %10 = load %struct.crypto_aead*, %struct.crypto_aead** %3, align 8
  %11 = call i32 @crypto_aead_maxauthsize(%struct.crypto_aead* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @ICV_4, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load i8*, i8** @CHCR_SCMD_HMAC_CTRL_PL1, align 8
  %17 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %5, align 8
  %18 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %17, i32 0, i32 2
  store i8* %16, i8** %18, align 8
  %19 = load i8*, i8** @VERIFY_HW, align 8
  %20 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %5, align 8
  %21 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %20, i32 0, i32 1
  store i8* %19, i8** %21, align 8
  br label %102

22:                                               ; preds = %2
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @ICV_6, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = load i8*, i8** @CHCR_SCMD_HMAC_CTRL_PL2, align 8
  %28 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %5, align 8
  %29 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %28, i32 0, i32 2
  store i8* %27, i8** %29, align 8
  %30 = load i8*, i8** @VERIFY_HW, align 8
  %31 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %5, align 8
  %32 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  br label %101

33:                                               ; preds = %22
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @ICV_10, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %33
  %38 = load i8*, i8** @CHCR_SCMD_HMAC_CTRL_TRUNC_RFC4366, align 8
  %39 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %5, align 8
  %40 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %39, i32 0, i32 2
  store i8* %38, i8** %40, align 8
  %41 = load i8*, i8** @VERIFY_HW, align 8
  %42 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %5, align 8
  %43 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  br label %100

44:                                               ; preds = %33
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @ICV_12, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = load i8*, i8** @CHCR_SCMD_HMAC_CTRL_IPSEC_96BIT, align 8
  %50 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %5, align 8
  %51 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %50, i32 0, i32 2
  store i8* %49, i8** %51, align 8
  %52 = load i8*, i8** @VERIFY_HW, align 8
  %53 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %5, align 8
  %54 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  br label %99

55:                                               ; preds = %44
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @ICV_14, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  %60 = load i8*, i8** @CHCR_SCMD_HMAC_CTRL_PL3, align 8
  %61 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %5, align 8
  %62 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %61, i32 0, i32 2
  store i8* %60, i8** %62, align 8
  %63 = load i8*, i8** @VERIFY_HW, align 8
  %64 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %5, align 8
  %65 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %64, i32 0, i32 1
  store i8* %63, i8** %65, align 8
  br label %98

66:                                               ; preds = %55
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* %6, align 4
  %69 = ashr i32 %68, 1
  %70 = icmp eq i32 %67, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %66
  %72 = load i8*, i8** @CHCR_SCMD_HMAC_CTRL_DIV2, align 8
  %73 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %5, align 8
  %74 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %73, i32 0, i32 2
  store i8* %72, i8** %74, align 8
  %75 = load i8*, i8** @VERIFY_HW, align 8
  %76 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %5, align 8
  %77 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %76, i32 0, i32 1
  store i8* %75, i8** %77, align 8
  br label %97

78:                                               ; preds = %66
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %78
  %83 = load i8*, i8** @CHCR_SCMD_HMAC_CTRL_NO_TRUNC, align 8
  %84 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %5, align 8
  %85 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %84, i32 0, i32 2
  store i8* %83, i8** %85, align 8
  %86 = load i8*, i8** @VERIFY_HW, align 8
  %87 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %5, align 8
  %88 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %87, i32 0, i32 1
  store i8* %86, i8** %88, align 8
  br label %96

89:                                               ; preds = %78
  %90 = load i8*, i8** @CHCR_SCMD_HMAC_CTRL_NO_TRUNC, align 8
  %91 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %5, align 8
  %92 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %91, i32 0, i32 2
  store i8* %90, i8** %92, align 8
  %93 = load i8*, i8** @VERIFY_SW, align 8
  %94 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %5, align 8
  %95 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %94, i32 0, i32 1
  store i8* %93, i8** %95, align 8
  br label %96

96:                                               ; preds = %89, %82
  br label %97

97:                                               ; preds = %96, %71
  br label %98

98:                                               ; preds = %97, %59
  br label %99

99:                                               ; preds = %98, %48
  br label %100

100:                                              ; preds = %99, %37
  br label %101

101:                                              ; preds = %100, %26
  br label %102

102:                                              ; preds = %101, %15
  %103 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %5, align 8
  %104 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* %4, align 4
  %107 = call i32 @crypto_aead_setauthsize(i32 %105, i32 %106)
  ret i32 %107
}

declare dso_local %struct.chcr_aead_ctx* @AEAD_CTX(i32) #1

declare dso_local i32 @a_ctx(%struct.crypto_aead*) #1

declare dso_local i32 @crypto_aead_maxauthsize(%struct.crypto_aead*) #1

declare dso_local i32 @crypto_aead_setauthsize(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

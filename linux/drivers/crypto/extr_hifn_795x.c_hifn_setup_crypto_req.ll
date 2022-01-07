; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_hifn_795x.c_hifn_setup_crypto_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_hifn_795x.c_hifn_setup_crypto_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ablkcipher_request = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.hifn_context = type { i32 }
%struct.hifn_request_context = type { i32, i64, i64, i64, i64 }

@ACRYPTO_MODE_ECB = common dso_local global i64 0, align 8
@ACRYPTO_TYPE_AES_128 = common dso_local global i64 0, align 8
@HIFN_AES_IV_LENGTH = common dso_local global i32 0, align 4
@ACRYPTO_TYPE_DES = common dso_local global i64 0, align 8
@HIFN_DES_KEY_LENGTH = common dso_local global i32 0, align 4
@ACRYPTO_TYPE_3DES = common dso_local global i64 0, align 8
@HIFN_3DES_KEY_LENGTH = common dso_local global i32 0, align 4
@ACRYPTO_TYPE_AES_192 = common dso_local global i64 0, align 8
@ACRYPTO_TYPE_AES_256 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ablkcipher_request*, i64, i64, i64)* @hifn_setup_crypto_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hifn_setup_crypto_req(%struct.ablkcipher_request* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.ablkcipher_request*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.hifn_context*, align 8
  %10 = alloca %struct.hifn_request_context*, align 8
  %11 = alloca i32, align 4
  store %struct.ablkcipher_request* %0, %struct.ablkcipher_request** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %13 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.hifn_context* @crypto_tfm_ctx(i32 %15)
  store %struct.hifn_context* %16, %struct.hifn_context** %9, align 8
  %17 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %18 = call %struct.hifn_request_context* @ablkcipher_request_ctx(%struct.ablkcipher_request* %17)
  store %struct.hifn_request_context* %18, %struct.hifn_request_context** %10, align 8
  %19 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %20 = call i32 @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request* %19)
  %21 = call i32 @crypto_ablkcipher_ivsize(i32 %20)
  store i32 %21, i32* %11, align 4
  %22 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %23 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %51

26:                                               ; preds = %4
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* @ACRYPTO_MODE_ECB, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %51

30:                                               ; preds = %26
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* @ACRYPTO_TYPE_AES_128, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @HIFN_AES_IV_LENGTH, align 4
  store i32 %35, i32* %11, align 4
  br label %50

36:                                               ; preds = %30
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* @ACRYPTO_TYPE_DES, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* @HIFN_DES_KEY_LENGTH, align 4
  store i32 %41, i32* %11, align 4
  br label %49

42:                                               ; preds = %36
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* @ACRYPTO_TYPE_3DES, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* @HIFN_3DES_KEY_LENGTH, align 4
  store i32 %47, i32* %11, align 4
  br label %48

48:                                               ; preds = %46, %42
  br label %49

49:                                               ; preds = %48, %40
  br label %50

50:                                               ; preds = %49, %34
  br label %51

51:                                               ; preds = %50, %26, %4
  %52 = load %struct.hifn_context*, %struct.hifn_context** %9, align 8
  %53 = getelementptr inbounds %struct.hifn_context, %struct.hifn_context* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 16
  br i1 %55, label %56, label %76

56:                                               ; preds = %51
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* @ACRYPTO_TYPE_AES_128, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %76

60:                                               ; preds = %56
  %61 = load %struct.hifn_context*, %struct.hifn_context** %9, align 8
  %62 = getelementptr inbounds %struct.hifn_context, %struct.hifn_context* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 24
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i64, i64* @ACRYPTO_TYPE_AES_192, align 8
  store i64 %66, i64* %7, align 8
  br label %75

67:                                               ; preds = %60
  %68 = load %struct.hifn_context*, %struct.hifn_context** %9, align 8
  %69 = getelementptr inbounds %struct.hifn_context, %struct.hifn_context* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 32
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load i64, i64* @ACRYPTO_TYPE_AES_256, align 8
  store i64 %73, i64* %7, align 8
  br label %74

74:                                               ; preds = %72, %67
  br label %75

75:                                               ; preds = %74, %65
  br label %76

76:                                               ; preds = %75, %56, %51
  %77 = load i64, i64* %6, align 8
  %78 = load %struct.hifn_request_context*, %struct.hifn_request_context** %10, align 8
  %79 = getelementptr inbounds %struct.hifn_request_context, %struct.hifn_request_context* %78, i32 0, i32 4
  store i64 %77, i64* %79, align 8
  %80 = load i64, i64* %8, align 8
  %81 = load %struct.hifn_request_context*, %struct.hifn_request_context** %10, align 8
  %82 = getelementptr inbounds %struct.hifn_request_context, %struct.hifn_request_context* %81, i32 0, i32 3
  store i64 %80, i64* %82, align 8
  %83 = load i64, i64* %7, align 8
  %84 = load %struct.hifn_request_context*, %struct.hifn_request_context** %10, align 8
  %85 = getelementptr inbounds %struct.hifn_request_context, %struct.hifn_request_context* %84, i32 0, i32 2
  store i64 %83, i64* %85, align 8
  %86 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %87 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.hifn_request_context*, %struct.hifn_request_context** %10, align 8
  %90 = getelementptr inbounds %struct.hifn_request_context, %struct.hifn_request_context* %89, i32 0, i32 1
  store i64 %88, i64* %90, align 8
  %91 = load i32, i32* %11, align 4
  %92 = load %struct.hifn_request_context*, %struct.hifn_request_context** %10, align 8
  %93 = getelementptr inbounds %struct.hifn_request_context, %struct.hifn_request_context* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %95 = call i32 @hifn_handle_req(%struct.ablkcipher_request* %94)
  ret i32 %95
}

declare dso_local %struct.hifn_context* @crypto_tfm_ctx(i32) #1

declare dso_local %struct.hifn_request_context* @ablkcipher_request_ctx(%struct.ablkcipher_request*) #1

declare dso_local i32 @crypto_ablkcipher_ivsize(i32) #1

declare dso_local i32 @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request*) #1

declare dso_local i32 @hifn_handle_req(%struct.ablkcipher_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

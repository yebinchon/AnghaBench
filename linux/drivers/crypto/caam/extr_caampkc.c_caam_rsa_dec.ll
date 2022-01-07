; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caampkc.c_caam_rsa_dec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caampkc.c_caam_rsa_dec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.akcipher_request = type { i64 }
%struct.crypto_akcipher = type { i32 }
%struct.caam_rsa_ctx = type { i32, %struct.caam_rsa_key }
%struct.caam_rsa_key = type { i64, i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Output buffer length less than parameter n\0A\00", align 1
@EOVERFLOW = common dso_local global i32 0, align 4
@FORM3 = common dso_local global i64 0, align 8
@FORM2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.akcipher_request*)* @caam_rsa_dec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @caam_rsa_dec(%struct.akcipher_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.akcipher_request*, align 8
  %4 = alloca %struct.crypto_akcipher*, align 8
  %5 = alloca %struct.caam_rsa_ctx*, align 8
  %6 = alloca %struct.caam_rsa_key*, align 8
  %7 = alloca i32, align 4
  store %struct.akcipher_request* %0, %struct.akcipher_request** %3, align 8
  %8 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %9 = call %struct.crypto_akcipher* @crypto_akcipher_reqtfm(%struct.akcipher_request* %8)
  store %struct.crypto_akcipher* %9, %struct.crypto_akcipher** %4, align 8
  %10 = load %struct.crypto_akcipher*, %struct.crypto_akcipher** %4, align 8
  %11 = call %struct.caam_rsa_ctx* @akcipher_tfm_ctx(%struct.crypto_akcipher* %10)
  store %struct.caam_rsa_ctx* %11, %struct.caam_rsa_ctx** %5, align 8
  %12 = load %struct.caam_rsa_ctx*, %struct.caam_rsa_ctx** %5, align 8
  %13 = getelementptr inbounds %struct.caam_rsa_ctx, %struct.caam_rsa_ctx* %12, i32 0, i32 1
  store %struct.caam_rsa_key* %13, %struct.caam_rsa_key** %6, align 8
  %14 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %6, align 8
  %15 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %6, align 8
  %20 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  br label %24

24:                                               ; preds = %18, %1
  %25 = phi i1 [ true, %1 ], [ %23, %18 ]
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %76

32:                                               ; preds = %24
  %33 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %34 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %6, align 8
  %37 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp slt i64 %35, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %32
  %41 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %6, align 8
  %42 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %45 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.caam_rsa_ctx*, %struct.caam_rsa_ctx** %5, align 8
  %47 = getelementptr inbounds %struct.caam_rsa_ctx, %struct.caam_rsa_ctx* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @dev_err(i32 %48, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @EOVERFLOW, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %76

52:                                               ; preds = %32
  %53 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %6, align 8
  %54 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @FORM3, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %60 = call i32 @caam_rsa_dec_priv_f3(%struct.akcipher_request* %59)
  store i32 %60, i32* %7, align 4
  br label %74

61:                                               ; preds = %52
  %62 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %6, align 8
  %63 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @FORM2, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %69 = call i32 @caam_rsa_dec_priv_f2(%struct.akcipher_request* %68)
  store i32 %69, i32* %7, align 4
  br label %73

70:                                               ; preds = %61
  %71 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %72 = call i32 @caam_rsa_dec_priv_f1(%struct.akcipher_request* %71)
  store i32 %72, i32* %7, align 4
  br label %73

73:                                               ; preds = %70, %67
  br label %74

74:                                               ; preds = %73, %58
  %75 = load i32, i32* %7, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %74, %40, %29
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local %struct.crypto_akcipher* @crypto_akcipher_reqtfm(%struct.akcipher_request*) #1

declare dso_local %struct.caam_rsa_ctx* @akcipher_tfm_ctx(%struct.crypto_akcipher*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @caam_rsa_dec_priv_f3(%struct.akcipher_request*) #1

declare dso_local i32 @caam_rsa_dec_priv_f2(%struct.akcipher_request*) #1

declare dso_local i32 @caam_rsa_dec_priv_f1(%struct.akcipher_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

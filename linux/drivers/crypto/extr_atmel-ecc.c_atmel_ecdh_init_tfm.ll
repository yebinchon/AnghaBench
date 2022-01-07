; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-ecc.c_atmel_ecdh_init_tfm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-ecc.c_atmel_ecdh_init_tfm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_kpp = type { i32 }
%struct.atmel_ecdh_ctx = type { %struct.crypto_kpp*, %struct.crypto_kpp* }

@.str = private unnamed_addr constant [33 x i8] c"tfm - i2c_client binding failed\0A\00", align 1
@CRYPTO_ALG_NEED_FALLBACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Failed to allocate transformation for '%s': %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_kpp*)* @atmel_ecdh_init_tfm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_ecdh_init_tfm(%struct.crypto_kpp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto_kpp*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.crypto_kpp*, align 8
  %6 = alloca %struct.atmel_ecdh_ctx*, align 8
  store %struct.crypto_kpp* %0, %struct.crypto_kpp** %3, align 8
  %7 = load %struct.crypto_kpp*, %struct.crypto_kpp** %3, align 8
  %8 = call i8* @kpp_alg_name(%struct.crypto_kpp* %7)
  store i8* %8, i8** %4, align 8
  %9 = load %struct.crypto_kpp*, %struct.crypto_kpp** %3, align 8
  %10 = call %struct.atmel_ecdh_ctx* @kpp_tfm_ctx(%struct.crypto_kpp* %9)
  store %struct.atmel_ecdh_ctx* %10, %struct.atmel_ecdh_ctx** %6, align 8
  %11 = call %struct.crypto_kpp* (...) @atmel_ecc_i2c_client_alloc()
  %12 = load %struct.atmel_ecdh_ctx*, %struct.atmel_ecdh_ctx** %6, align 8
  %13 = getelementptr inbounds %struct.atmel_ecdh_ctx, %struct.atmel_ecdh_ctx* %12, i32 0, i32 1
  store %struct.crypto_kpp* %11, %struct.crypto_kpp** %13, align 8
  %14 = load %struct.atmel_ecdh_ctx*, %struct.atmel_ecdh_ctx** %6, align 8
  %15 = getelementptr inbounds %struct.atmel_ecdh_ctx, %struct.atmel_ecdh_ctx* %14, i32 0, i32 1
  %16 = load %struct.crypto_kpp*, %struct.crypto_kpp** %15, align 8
  %17 = call i64 @IS_ERR(%struct.crypto_kpp* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.atmel_ecdh_ctx*, %struct.atmel_ecdh_ctx** %6, align 8
  %22 = getelementptr inbounds %struct.atmel_ecdh_ctx, %struct.atmel_ecdh_ctx* %21, i32 0, i32 1
  %23 = load %struct.crypto_kpp*, %struct.crypto_kpp** %22, align 8
  %24 = call i32 @PTR_ERR(%struct.crypto_kpp* %23)
  store i32 %24, i32* %2, align 4
  br label %51

25:                                               ; preds = %1
  %26 = load i8*, i8** %4, align 8
  %27 = load i32, i32* @CRYPTO_ALG_NEED_FALLBACK, align 4
  %28 = call %struct.crypto_kpp* @crypto_alloc_kpp(i8* %26, i32 0, i32 %27)
  store %struct.crypto_kpp* %28, %struct.crypto_kpp** %5, align 8
  %29 = load %struct.crypto_kpp*, %struct.crypto_kpp** %5, align 8
  %30 = call i64 @IS_ERR(%struct.crypto_kpp* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %25
  %33 = load %struct.atmel_ecdh_ctx*, %struct.atmel_ecdh_ctx** %6, align 8
  %34 = getelementptr inbounds %struct.atmel_ecdh_ctx, %struct.atmel_ecdh_ctx* %33, i32 0, i32 1
  %35 = load %struct.crypto_kpp*, %struct.crypto_kpp** %34, align 8
  %36 = getelementptr inbounds %struct.crypto_kpp, %struct.crypto_kpp* %35, i32 0, i32 0
  %37 = load i8*, i8** %4, align 8
  %38 = load %struct.crypto_kpp*, %struct.crypto_kpp** %5, align 8
  %39 = call i32 @PTR_ERR(%struct.crypto_kpp* %38)
  %40 = call i32 @dev_err(i32* %36, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8* %37, i32 %39)
  %41 = load %struct.crypto_kpp*, %struct.crypto_kpp** %5, align 8
  %42 = call i32 @PTR_ERR(%struct.crypto_kpp* %41)
  store i32 %42, i32* %2, align 4
  br label %51

43:                                               ; preds = %25
  %44 = load %struct.crypto_kpp*, %struct.crypto_kpp** %5, align 8
  %45 = load %struct.crypto_kpp*, %struct.crypto_kpp** %3, align 8
  %46 = call i32 @crypto_kpp_get_flags(%struct.crypto_kpp* %45)
  %47 = call i32 @crypto_kpp_set_flags(%struct.crypto_kpp* %44, i32 %46)
  %48 = load %struct.crypto_kpp*, %struct.crypto_kpp** %5, align 8
  %49 = load %struct.atmel_ecdh_ctx*, %struct.atmel_ecdh_ctx** %6, align 8
  %50 = getelementptr inbounds %struct.atmel_ecdh_ctx, %struct.atmel_ecdh_ctx* %49, i32 0, i32 0
  store %struct.crypto_kpp* %48, %struct.crypto_kpp** %50, align 8
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %43, %32, %19
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i8* @kpp_alg_name(%struct.crypto_kpp*) #1

declare dso_local %struct.atmel_ecdh_ctx* @kpp_tfm_ctx(%struct.crypto_kpp*) #1

declare dso_local %struct.crypto_kpp* @atmel_ecc_i2c_client_alloc(...) #1

declare dso_local i64 @IS_ERR(%struct.crypto_kpp*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_kpp*) #1

declare dso_local %struct.crypto_kpp* @crypto_alloc_kpp(i8*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i8*, i32) #1

declare dso_local i32 @crypto_kpp_set_flags(%struct.crypto_kpp*, i32) #1

declare dso_local i32 @crypto_kpp_get_flags(%struct.crypto_kpp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

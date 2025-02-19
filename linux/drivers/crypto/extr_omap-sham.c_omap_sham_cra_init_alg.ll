; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-sham.c_omap_sham_cra_init_alg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-sham.c_omap_sham_cra_init_alg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.omap_sham_ctx = type { i8*, i32, %struct.omap_sham_hmac_ctx* }
%struct.omap_sham_hmac_ctx = type { i8* }

@CRYPTO_ALG_NEED_FALLBACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"omap-sham: fallback driver '%s' could not be loaded.\0A\00", align 1
@BUFLEN = common dso_local global i64 0, align 8
@FLAGS_HMAC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"omap-sham: base driver '%s' could not be loaded.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*, i8*)* @omap_sham_cra_init_alg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_sham_cra_init_alg(%struct.crypto_tfm* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.crypto_tfm*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.omap_sham_ctx*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.omap_sham_hmac_ctx*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.crypto_tfm*, %struct.crypto_tfm** %4, align 8
  %10 = call %struct.omap_sham_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %9)
  store %struct.omap_sham_ctx* %10, %struct.omap_sham_ctx** %6, align 8
  %11 = load %struct.crypto_tfm*, %struct.crypto_tfm** %4, align 8
  %12 = call i8* @crypto_tfm_alg_name(%struct.crypto_tfm* %11)
  store i8* %12, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load i32, i32* @CRYPTO_ALG_NEED_FALLBACK, align 4
  %15 = call i8* @crypto_alloc_shash(i8* %13, i32 0, i32 %14)
  %16 = load %struct.omap_sham_ctx*, %struct.omap_sham_ctx** %6, align 8
  %17 = getelementptr inbounds %struct.omap_sham_ctx, %struct.omap_sham_ctx* %16, i32 0, i32 0
  store i8* %15, i8** %17, align 8
  %18 = load %struct.omap_sham_ctx*, %struct.omap_sham_ctx** %6, align 8
  %19 = getelementptr inbounds %struct.omap_sham_ctx, %struct.omap_sham_ctx* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i64 @IS_ERR(i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %2
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @pr_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = load %struct.omap_sham_ctx*, %struct.omap_sham_ctx** %6, align 8
  %27 = getelementptr inbounds %struct.omap_sham_ctx, %struct.omap_sham_ctx* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @PTR_ERR(i8* %28)
  store i32 %29, i32* %3, align 4
  br label %71

30:                                               ; preds = %2
  %31 = load %struct.crypto_tfm*, %struct.crypto_tfm** %4, align 8
  %32 = call i32 @__crypto_ahash_cast(%struct.crypto_tfm* %31)
  %33 = load i64, i64* @BUFLEN, align 8
  %34 = add i64 4, %33
  %35 = call i32 @crypto_ahash_set_reqsize(i32 %32, i64 %34)
  %36 = load i8*, i8** %5, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %70

38:                                               ; preds = %30
  %39 = load %struct.omap_sham_ctx*, %struct.omap_sham_ctx** %6, align 8
  %40 = getelementptr inbounds %struct.omap_sham_ctx, %struct.omap_sham_ctx* %39, i32 0, i32 2
  %41 = load %struct.omap_sham_hmac_ctx*, %struct.omap_sham_hmac_ctx** %40, align 8
  store %struct.omap_sham_hmac_ctx* %41, %struct.omap_sham_hmac_ctx** %8, align 8
  %42 = load i32, i32* @FLAGS_HMAC, align 4
  %43 = call i32 @BIT(i32 %42)
  %44 = load %struct.omap_sham_ctx*, %struct.omap_sham_ctx** %6, align 8
  %45 = getelementptr inbounds %struct.omap_sham_ctx, %struct.omap_sham_ctx* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = load i32, i32* @CRYPTO_ALG_NEED_FALLBACK, align 4
  %50 = call i8* @crypto_alloc_shash(i8* %48, i32 0, i32 %49)
  %51 = load %struct.omap_sham_hmac_ctx*, %struct.omap_sham_hmac_ctx** %8, align 8
  %52 = getelementptr inbounds %struct.omap_sham_hmac_ctx, %struct.omap_sham_hmac_ctx* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  %53 = load %struct.omap_sham_hmac_ctx*, %struct.omap_sham_hmac_ctx** %8, align 8
  %54 = getelementptr inbounds %struct.omap_sham_hmac_ctx, %struct.omap_sham_hmac_ctx* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i64 @IS_ERR(i8* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %38
  %59 = load i8*, i8** %5, align 8
  %60 = call i32 @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i8* %59)
  %61 = load %struct.omap_sham_ctx*, %struct.omap_sham_ctx** %6, align 8
  %62 = getelementptr inbounds %struct.omap_sham_ctx, %struct.omap_sham_ctx* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @crypto_free_shash(i8* %63)
  %65 = load %struct.omap_sham_hmac_ctx*, %struct.omap_sham_hmac_ctx** %8, align 8
  %66 = getelementptr inbounds %struct.omap_sham_hmac_ctx, %struct.omap_sham_hmac_ctx* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @PTR_ERR(i8* %67)
  store i32 %68, i32* %3, align 4
  br label %71

69:                                               ; preds = %38
  br label %70

70:                                               ; preds = %69, %30
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %70, %58, %23
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.omap_sham_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i8* @crypto_tfm_alg_name(%struct.crypto_tfm*) #1

declare dso_local i8* @crypto_alloc_shash(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @crypto_ahash_set_reqsize(i32, i64) #1

declare dso_local i32 @__crypto_ahash_cast(%struct.crypto_tfm*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @crypto_free_shash(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

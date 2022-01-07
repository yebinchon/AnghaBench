; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_n2_core.c_n2_hmac_cra_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_n2_core.c_n2_hmac_cra_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.crypto_ahash = type opaque
%struct.n2_hmac_ctx = type { %struct.TYPE_2__, %struct.crypto_shash* }
%struct.TYPE_2__ = type { %struct.crypto_shash* }
%struct.crypto_shash = type { i32 }
%struct.n2_hmac_alg = type { i8* }

@CRYPTO_ALG_NEED_FALLBACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Fallback driver '%s' could not be loaded!\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Child shash '%s' could not be loaded!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*)* @n2_hmac_cra_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @n2_hmac_cra_init(%struct.crypto_tfm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto_tfm*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.crypto_ahash*, align 8
  %6 = alloca %struct.n2_hmac_ctx*, align 8
  %7 = alloca %struct.n2_hmac_alg*, align 8
  %8 = alloca %struct.crypto_ahash*, align 8
  %9 = alloca %struct.crypto_shash*, align 8
  %10 = alloca i32, align 4
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %3, align 8
  %11 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %12 = call i8* @crypto_tfm_alg_name(%struct.crypto_tfm* %11)
  store i8* %12, i8** %4, align 8
  %13 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %14 = call %struct.crypto_shash* @__crypto_ahash_cast(%struct.crypto_tfm* %13)
  %15 = bitcast %struct.crypto_shash* %14 to %struct.crypto_ahash*
  store %struct.crypto_ahash* %15, %struct.crypto_ahash** %5, align 8
  %16 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %17 = bitcast %struct.crypto_ahash* %16 to %struct.crypto_shash*
  %18 = call %struct.n2_hmac_ctx* @crypto_ahash_ctx(%struct.crypto_shash* %17)
  store %struct.n2_hmac_ctx* %18, %struct.n2_hmac_ctx** %6, align 8
  %19 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %20 = call %struct.n2_hmac_alg* @n2_hmac_alg(%struct.crypto_tfm* %19)
  store %struct.n2_hmac_alg* %20, %struct.n2_hmac_alg** %7, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = load i32, i32* @CRYPTO_ALG_NEED_FALLBACK, align 4
  %23 = call %struct.crypto_shash* @crypto_alloc_ahash(i8* %21, i32 0, i32 %22)
  %24 = bitcast %struct.crypto_shash* %23 to %struct.crypto_ahash*
  store %struct.crypto_ahash* %24, %struct.crypto_ahash** %8, align 8
  %25 = load %struct.crypto_ahash*, %struct.crypto_ahash** %8, align 8
  %26 = bitcast %struct.crypto_ahash* %25 to %struct.crypto_shash*
  %27 = call i64 @IS_ERR(%struct.crypto_shash* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %1
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @pr_warning(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %30)
  %32 = load %struct.crypto_ahash*, %struct.crypto_ahash** %8, align 8
  %33 = bitcast %struct.crypto_ahash* %32 to %struct.crypto_shash*
  %34 = call i32 @PTR_ERR(%struct.crypto_shash* %33)
  store i32 %34, i32* %10, align 4
  br label %70

35:                                               ; preds = %1
  %36 = load %struct.n2_hmac_alg*, %struct.n2_hmac_alg** %7, align 8
  %37 = getelementptr inbounds %struct.n2_hmac_alg, %struct.n2_hmac_alg* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call %struct.crypto_shash* @crypto_alloc_shash(i8* %38, i32 0, i32 0)
  store %struct.crypto_shash* %39, %struct.crypto_shash** %9, align 8
  %40 = load %struct.crypto_shash*, %struct.crypto_shash** %9, align 8
  %41 = call i64 @IS_ERR(%struct.crypto_shash* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %35
  %44 = load %struct.n2_hmac_alg*, %struct.n2_hmac_alg** %7, align 8
  %45 = getelementptr inbounds %struct.n2_hmac_alg, %struct.n2_hmac_alg* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @pr_warning(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %46)
  %48 = load %struct.crypto_shash*, %struct.crypto_shash** %9, align 8
  %49 = call i32 @PTR_ERR(%struct.crypto_shash* %48)
  store i32 %49, i32* %10, align 4
  br label %66

50:                                               ; preds = %35
  %51 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %52 = bitcast %struct.crypto_ahash* %51 to %struct.crypto_shash*
  %53 = load %struct.crypto_ahash*, %struct.crypto_ahash** %8, align 8
  %54 = bitcast %struct.crypto_ahash* %53 to %struct.crypto_shash*
  %55 = call i64 @crypto_ahash_reqsize(%struct.crypto_shash* %54)
  %56 = add i64 4, %55
  %57 = call i32 @crypto_ahash_set_reqsize(%struct.crypto_shash* %52, i64 %56)
  %58 = load %struct.crypto_shash*, %struct.crypto_shash** %9, align 8
  %59 = load %struct.n2_hmac_ctx*, %struct.n2_hmac_ctx** %6, align 8
  %60 = getelementptr inbounds %struct.n2_hmac_ctx, %struct.n2_hmac_ctx* %59, i32 0, i32 1
  store %struct.crypto_shash* %58, %struct.crypto_shash** %60, align 8
  %61 = load %struct.crypto_ahash*, %struct.crypto_ahash** %8, align 8
  %62 = bitcast %struct.crypto_ahash* %61 to %struct.crypto_shash*
  %63 = load %struct.n2_hmac_ctx*, %struct.n2_hmac_ctx** %6, align 8
  %64 = getelementptr inbounds %struct.n2_hmac_ctx, %struct.n2_hmac_ctx* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  store %struct.crypto_shash* %62, %struct.crypto_shash** %65, align 8
  store i32 0, i32* %2, align 4
  br label %72

66:                                               ; preds = %43
  %67 = load %struct.crypto_ahash*, %struct.crypto_ahash** %8, align 8
  %68 = bitcast %struct.crypto_ahash* %67 to %struct.crypto_shash*
  %69 = call i32 @crypto_free_ahash(%struct.crypto_shash* %68)
  br label %70

70:                                               ; preds = %66, %29
  %71 = load i32, i32* %10, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %70, %50
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i8* @crypto_tfm_alg_name(%struct.crypto_tfm*) #1

declare dso_local %struct.crypto_shash* @__crypto_ahash_cast(%struct.crypto_tfm*) #1

declare dso_local %struct.n2_hmac_ctx* @crypto_ahash_ctx(%struct.crypto_shash*) #1

declare dso_local %struct.n2_hmac_alg* @n2_hmac_alg(%struct.crypto_tfm*) #1

declare dso_local %struct.crypto_shash* @crypto_alloc_ahash(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.crypto_shash*) #1

declare dso_local i32 @pr_warning(i8*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_shash*) #1

declare dso_local %struct.crypto_shash* @crypto_alloc_shash(i8*, i32, i32) #1

declare dso_local i32 @crypto_ahash_set_reqsize(%struct.crypto_shash*, i64) #1

declare dso_local i64 @crypto_ahash_reqsize(%struct.crypto_shash*) #1

declare dso_local i32 @crypto_free_ahash(%struct.crypto_shash*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

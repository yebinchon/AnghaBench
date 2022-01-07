; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-sha.c_mtk_sha_cra_init_alg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-sha.c_mtk_sha_cra_init_alg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.mtk_sha_ctx = type { i32, %struct.mtk_sha_hmac_ctx* }
%struct.mtk_sha_hmac_ctx = type { i32 }
%struct.mtk_cryp = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@SHA_FLAGS_HMAC = common dso_local global i32 0, align 4
@CRYPTO_ALG_NEED_FALLBACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"base driver %s could not be loaded.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*, i8*)* @mtk_sha_cra_init_alg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_sha_cra_init_alg(%struct.crypto_tfm* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.crypto_tfm*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mtk_sha_ctx*, align 8
  %7 = alloca %struct.mtk_cryp*, align 8
  %8 = alloca %struct.mtk_sha_hmac_ctx*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.crypto_tfm*, %struct.crypto_tfm** %4, align 8
  %10 = call %struct.mtk_sha_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %9)
  store %struct.mtk_sha_ctx* %10, %struct.mtk_sha_ctx** %6, align 8
  store %struct.mtk_cryp* null, %struct.mtk_cryp** %7, align 8
  %11 = load %struct.mtk_sha_ctx*, %struct.mtk_sha_ctx** %6, align 8
  %12 = call %struct.mtk_cryp* @mtk_sha_find_dev(%struct.mtk_sha_ctx* %11)
  store %struct.mtk_cryp* %12, %struct.mtk_cryp** %7, align 8
  %13 = load %struct.mtk_cryp*, %struct.mtk_cryp** %7, align 8
  %14 = icmp ne %struct.mtk_cryp* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %52

18:                                               ; preds = %2
  %19 = load %struct.crypto_tfm*, %struct.crypto_tfm** %4, align 8
  %20 = call i32 @__crypto_ahash_cast(%struct.crypto_tfm* %19)
  %21 = call i32 @crypto_ahash_set_reqsize(i32 %20, i32 4)
  %22 = load i8*, i8** %5, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %51

24:                                               ; preds = %18
  %25 = load %struct.mtk_sha_ctx*, %struct.mtk_sha_ctx** %6, align 8
  %26 = getelementptr inbounds %struct.mtk_sha_ctx, %struct.mtk_sha_ctx* %25, i32 0, i32 1
  %27 = load %struct.mtk_sha_hmac_ctx*, %struct.mtk_sha_hmac_ctx** %26, align 8
  store %struct.mtk_sha_hmac_ctx* %27, %struct.mtk_sha_hmac_ctx** %8, align 8
  %28 = load i32, i32* @SHA_FLAGS_HMAC, align 4
  %29 = load %struct.mtk_sha_ctx*, %struct.mtk_sha_ctx** %6, align 8
  %30 = getelementptr inbounds %struct.mtk_sha_ctx, %struct.mtk_sha_ctx* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = load i32, i32* @CRYPTO_ALG_NEED_FALLBACK, align 4
  %35 = call i32 @crypto_alloc_shash(i8* %33, i32 0, i32 %34)
  %36 = load %struct.mtk_sha_hmac_ctx*, %struct.mtk_sha_hmac_ctx** %8, align 8
  %37 = getelementptr inbounds %struct.mtk_sha_hmac_ctx, %struct.mtk_sha_hmac_ctx* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.mtk_sha_hmac_ctx*, %struct.mtk_sha_hmac_ctx** %8, align 8
  %39 = getelementptr inbounds %struct.mtk_sha_hmac_ctx, %struct.mtk_sha_hmac_ctx* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @IS_ERR(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %24
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %44)
  %46 = load %struct.mtk_sha_hmac_ctx*, %struct.mtk_sha_hmac_ctx** %8, align 8
  %47 = getelementptr inbounds %struct.mtk_sha_hmac_ctx, %struct.mtk_sha_hmac_ctx* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @PTR_ERR(i32 %48)
  store i32 %49, i32* %3, align 4
  br label %52

50:                                               ; preds = %24
  br label %51

51:                                               ; preds = %50, %18
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %43, %15
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.mtk_sha_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local %struct.mtk_cryp* @mtk_sha_find_dev(%struct.mtk_sha_ctx*) #1

declare dso_local i32 @crypto_ahash_set_reqsize(i32, i32) #1

declare dso_local i32 @__crypto_ahash_cast(%struct.crypto_tfm*) #1

declare dso_local i32 @crypto_alloc_shash(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

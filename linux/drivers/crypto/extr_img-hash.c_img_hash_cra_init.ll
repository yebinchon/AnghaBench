; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_img-hash.c_img_hash_cra_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_img-hash.c_img_hash_cra_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.img_hash_ctx = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@CRYPTO_ALG_NEED_FALLBACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"img_hash: Could not load fallback driver.\0A\00", align 1
@IMG_HASH_DMA_THRESHOLD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*, i8*)* @img_hash_cra_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @img_hash_cra_init(%struct.crypto_tfm* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.crypto_tfm*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.img_hash_ctx*, align 8
  %7 = alloca i32, align 4
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.crypto_tfm*, %struct.crypto_tfm** %4, align 8
  %9 = call %struct.img_hash_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %8)
  store %struct.img_hash_ctx* %9, %struct.img_hash_ctx** %6, align 8
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %7, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* @CRYPTO_ALG_NEED_FALLBACK, align 4
  %14 = call i32 @crypto_alloc_ahash(i8* %12, i32 0, i32 %13)
  %15 = load %struct.img_hash_ctx*, %struct.img_hash_ctx** %6, align 8
  %16 = getelementptr inbounds %struct.img_hash_ctx, %struct.img_hash_ctx* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.img_hash_ctx*, %struct.img_hash_ctx** %6, align 8
  %18 = getelementptr inbounds %struct.img_hash_ctx, %struct.img_hash_ctx* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @IS_ERR(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.img_hash_ctx*, %struct.img_hash_ctx** %6, align 8
  %25 = getelementptr inbounds %struct.img_hash_ctx, %struct.img_hash_ctx* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @PTR_ERR(i32 %26)
  store i32 %27, i32* %7, align 4
  br label %39

28:                                               ; preds = %2
  %29 = load %struct.crypto_tfm*, %struct.crypto_tfm** %4, align 8
  %30 = call i32 @__crypto_ahash_cast(%struct.crypto_tfm* %29)
  %31 = load %struct.img_hash_ctx*, %struct.img_hash_ctx** %6, align 8
  %32 = getelementptr inbounds %struct.img_hash_ctx, %struct.img_hash_ctx* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @crypto_ahash_reqsize(i32 %33)
  %35 = add i64 4, %34
  %36 = load i64, i64* @IMG_HASH_DMA_THRESHOLD, align 8
  %37 = add i64 %35, %36
  %38 = call i32 @crypto_ahash_set_reqsize(i32 %30, i64 %37)
  store i32 0, i32* %3, align 4
  br label %41

39:                                               ; preds = %22
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %39, %28
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.img_hash_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @crypto_alloc_ahash(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @crypto_ahash_set_reqsize(i32, i64) #1

declare dso_local i32 @__crypto_ahash_cast(%struct.crypto_tfm*) #1

declare dso_local i64 @crypto_ahash_reqsize(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

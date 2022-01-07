; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_n2_core.c_n2_hash_cra_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_n2_core.c_n2_hash_cra_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.crypto_ahash = type { i32 }
%struct.n2_hash_ctx = type { %struct.crypto_ahash* }

@CRYPTO_ALG_NEED_FALLBACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Fallback driver '%s' could not be loaded!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*)* @n2_hash_cra_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @n2_hash_cra_init(%struct.crypto_tfm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto_tfm*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.crypto_ahash*, align 8
  %6 = alloca %struct.n2_hash_ctx*, align 8
  %7 = alloca %struct.crypto_ahash*, align 8
  %8 = alloca i32, align 4
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %3, align 8
  %9 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %10 = call i8* @crypto_tfm_alg_name(%struct.crypto_tfm* %9)
  store i8* %10, i8** %4, align 8
  %11 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %12 = call %struct.crypto_ahash* @__crypto_ahash_cast(%struct.crypto_tfm* %11)
  store %struct.crypto_ahash* %12, %struct.crypto_ahash** %5, align 8
  %13 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %14 = call %struct.n2_hash_ctx* @crypto_ahash_ctx(%struct.crypto_ahash* %13)
  store %struct.n2_hash_ctx* %14, %struct.n2_hash_ctx** %6, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = load i32, i32* @CRYPTO_ALG_NEED_FALLBACK, align 4
  %17 = call %struct.crypto_ahash* @crypto_alloc_ahash(i8* %15, i32 0, i32 %16)
  store %struct.crypto_ahash* %17, %struct.crypto_ahash** %7, align 8
  %18 = load %struct.crypto_ahash*, %struct.crypto_ahash** %7, align 8
  %19 = call i64 @IS_ERR(%struct.crypto_ahash* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @pr_warning(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %22)
  %24 = load %struct.crypto_ahash*, %struct.crypto_ahash** %7, align 8
  %25 = call i32 @PTR_ERR(%struct.crypto_ahash* %24)
  store i32 %25, i32* %8, align 4
  br label %35

26:                                               ; preds = %1
  %27 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %28 = load %struct.crypto_ahash*, %struct.crypto_ahash** %7, align 8
  %29 = call i64 @crypto_ahash_reqsize(%struct.crypto_ahash* %28)
  %30 = add i64 4, %29
  %31 = call i32 @crypto_ahash_set_reqsize(%struct.crypto_ahash* %27, i64 %30)
  %32 = load %struct.crypto_ahash*, %struct.crypto_ahash** %7, align 8
  %33 = load %struct.n2_hash_ctx*, %struct.n2_hash_ctx** %6, align 8
  %34 = getelementptr inbounds %struct.n2_hash_ctx, %struct.n2_hash_ctx* %33, i32 0, i32 0
  store %struct.crypto_ahash* %32, %struct.crypto_ahash** %34, align 8
  store i32 0, i32* %2, align 4
  br label %37

35:                                               ; preds = %21
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %35, %26
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i8* @crypto_tfm_alg_name(%struct.crypto_tfm*) #1

declare dso_local %struct.crypto_ahash* @__crypto_ahash_cast(%struct.crypto_tfm*) #1

declare dso_local %struct.n2_hash_ctx* @crypto_ahash_ctx(%struct.crypto_ahash*) #1

declare dso_local %struct.crypto_ahash* @crypto_alloc_ahash(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.crypto_ahash*) #1

declare dso_local i32 @pr_warning(i8*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_ahash*) #1

declare dso_local i32 @crypto_ahash_set_reqsize(%struct.crypto_ahash*, i64) #1

declare dso_local i64 @crypto_ahash_reqsize(%struct.crypto_ahash*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

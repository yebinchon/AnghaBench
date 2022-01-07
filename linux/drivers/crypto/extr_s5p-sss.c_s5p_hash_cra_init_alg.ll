; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_s5p-sss.c_s5p_hash_cra_init_alg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_s5p-sss.c_s5p_hash_cra_init_alg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.s5p_hash_ctx = type { i32, i32 }

@s5p_dev = common dso_local global i32 0, align 4
@CRYPTO_ALG_NEED_FALLBACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"fallback alloc fails for '%s'\0A\00", align 1
@BUFLEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*)* @s5p_hash_cra_init_alg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_hash_cra_init_alg(%struct.crypto_tfm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto_tfm*, align 8
  %4 = alloca %struct.s5p_hash_ctx*, align 8
  %5 = alloca i8*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %3, align 8
  %6 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %7 = call %struct.s5p_hash_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %6)
  store %struct.s5p_hash_ctx* %7, %struct.s5p_hash_ctx** %4, align 8
  %8 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %9 = call i8* @crypto_tfm_alg_name(%struct.crypto_tfm* %8)
  store i8* %9, i8** %5, align 8
  %10 = load i32, i32* @s5p_dev, align 4
  %11 = load %struct.s5p_hash_ctx*, %struct.s5p_hash_ctx** %4, align 8
  %12 = getelementptr inbounds %struct.s5p_hash_ctx, %struct.s5p_hash_ctx* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = load i32, i32* @CRYPTO_ALG_NEED_FALLBACK, align 4
  %15 = call i32 @crypto_alloc_shash(i8* %13, i32 0, i32 %14)
  %16 = load %struct.s5p_hash_ctx*, %struct.s5p_hash_ctx** %4, align 8
  %17 = getelementptr inbounds %struct.s5p_hash_ctx, %struct.s5p_hash_ctx* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.s5p_hash_ctx*, %struct.s5p_hash_ctx** %4, align 8
  %19 = getelementptr inbounds %struct.s5p_hash_ctx, %struct.s5p_hash_ctx* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @IS_ERR(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %1
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = load %struct.s5p_hash_ctx*, %struct.s5p_hash_ctx** %4, align 8
  %27 = getelementptr inbounds %struct.s5p_hash_ctx, %struct.s5p_hash_ctx* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @PTR_ERR(i32 %28)
  store i32 %29, i32* %2, align 4
  br label %36

30:                                               ; preds = %1
  %31 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %32 = call i32 @__crypto_ahash_cast(%struct.crypto_tfm* %31)
  %33 = load i64, i64* @BUFLEN, align 8
  %34 = add i64 4, %33
  %35 = call i32 @crypto_ahash_set_reqsize(i32 %32, i64 %34)
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %30, %23
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.s5p_hash_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i8* @crypto_tfm_alg_name(%struct.crypto_tfm*) #1

declare dso_local i32 @crypto_alloc_shash(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @crypto_ahash_set_reqsize(i32, i64) #1

declare dso_local i32 @__crypto_ahash_cast(%struct.crypto_tfm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

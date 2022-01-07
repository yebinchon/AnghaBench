; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_rfc3686_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_rfc3686_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { %struct.TYPE_2__, %struct.crypto_alg* }
%struct.TYPE_2__ = type { i32 }
%struct.crypto_alg = type { i32 }
%struct.chcr_context = type { i32 }
%struct.ablk_ctx = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"ctr(aes)\00", align 1
@CRYPTO_ALG_NEED_FALLBACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"failed to allocate fallback for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*)* @chcr_rfc3686_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chcr_rfc3686_init(%struct.crypto_tfm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto_tfm*, align 8
  %4 = alloca %struct.crypto_alg*, align 8
  %5 = alloca %struct.chcr_context*, align 8
  %6 = alloca %struct.ablk_ctx*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %3, align 8
  %7 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %8 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %7, i32 0, i32 1
  %9 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  store %struct.crypto_alg* %9, %struct.crypto_alg** %4, align 8
  %10 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %11 = call %struct.chcr_context* @crypto_tfm_ctx(%struct.crypto_tfm* %10)
  store %struct.chcr_context* %11, %struct.chcr_context** %5, align 8
  %12 = load %struct.chcr_context*, %struct.chcr_context** %5, align 8
  %13 = call %struct.ablk_ctx* @ABLK_CTX(%struct.chcr_context* %12)
  store %struct.ablk_ctx* %13, %struct.ablk_ctx** %6, align 8
  %14 = load i32, i32* @CRYPTO_ALG_NEED_FALLBACK, align 4
  %15 = call i32 @crypto_alloc_sync_skcipher(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 0, i32 %14)
  %16 = load %struct.ablk_ctx*, %struct.ablk_ctx** %6, align 8
  %17 = getelementptr inbounds %struct.ablk_ctx, %struct.ablk_ctx* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.ablk_ctx*, %struct.ablk_ctx** %6, align 8
  %19 = getelementptr inbounds %struct.ablk_ctx, %struct.ablk_ctx* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @IS_ERR(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %1
  %24 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %25 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load %struct.ablk_ctx*, %struct.ablk_ctx** %6, align 8
  %29 = getelementptr inbounds %struct.ablk_ctx, %struct.ablk_ctx* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @PTR_ERR(i32 %30)
  store i32 %31, i32* %2, align 4
  br label %39

32:                                               ; preds = %1
  %33 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %34 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32 4, i32* %35, align 8
  %36 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %37 = call %struct.chcr_context* @crypto_tfm_ctx(%struct.crypto_tfm* %36)
  %38 = call i32 @chcr_device_init(%struct.chcr_context* %37)
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %32, %23
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local %struct.chcr_context* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local %struct.ablk_ctx* @ABLK_CTX(%struct.chcr_context*) #1

declare dso_local i32 @crypto_alloc_sync_skcipher(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @chcr_device_init(%struct.chcr_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

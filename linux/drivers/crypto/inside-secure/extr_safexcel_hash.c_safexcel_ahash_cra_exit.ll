; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_hash.c_safexcel_ahash_cra_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_hash.c_safexcel_ahash_cra_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.safexcel_ahash_ctx = type { %struct.TYPE_2__, %struct.safexcel_crypto_priv* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.safexcel_crypto_priv = type { i32, i32, i32 }

@EIP197_TRC_CACHE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"hash: invalidation error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_tfm*)* @safexcel_ahash_cra_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @safexcel_ahash_cra_exit(%struct.crypto_tfm* %0) #0 {
  %2 = alloca %struct.crypto_tfm*, align 8
  %3 = alloca %struct.safexcel_ahash_ctx*, align 8
  %4 = alloca %struct.safexcel_crypto_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %2, align 8
  %6 = load %struct.crypto_tfm*, %struct.crypto_tfm** %2, align 8
  %7 = call %struct.safexcel_ahash_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %6)
  store %struct.safexcel_ahash_ctx* %7, %struct.safexcel_ahash_ctx** %3, align 8
  %8 = load %struct.safexcel_ahash_ctx*, %struct.safexcel_ahash_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.safexcel_ahash_ctx, %struct.safexcel_ahash_ctx* %8, i32 0, i32 1
  %10 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %9, align 8
  store %struct.safexcel_crypto_priv* %10, %struct.safexcel_crypto_priv** %4, align 8
  %11 = load %struct.safexcel_ahash_ctx*, %struct.safexcel_ahash_ctx** %3, align 8
  %12 = getelementptr inbounds %struct.safexcel_ahash_ctx, %struct.safexcel_ahash_ctx* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %49

17:                                               ; preds = %1
  %18 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %4, align 8
  %19 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @EIP197_TRC_CACHE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %17
  %25 = load %struct.crypto_tfm*, %struct.crypto_tfm** %2, align 8
  %26 = call i32 @safexcel_ahash_exit_inv(%struct.crypto_tfm* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %4, align 8
  %31 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @dev_warn(i32 %32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %29, %24
  br label %49

36:                                               ; preds = %17
  %37 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %4, align 8
  %38 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.safexcel_ahash_ctx*, %struct.safexcel_ahash_ctx** %3, align 8
  %41 = getelementptr inbounds %struct.safexcel_ahash_ctx, %struct.safexcel_ahash_ctx* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.safexcel_ahash_ctx*, %struct.safexcel_ahash_ctx** %3, align 8
  %45 = getelementptr inbounds %struct.safexcel_ahash_ctx, %struct.safexcel_ahash_ctx* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @dma_pool_free(i32 %39, i32 %43, i32 %47)
  br label %49

49:                                               ; preds = %16, %36, %35
  ret void
}

declare dso_local %struct.safexcel_ahash_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @safexcel_ahash_exit_inv(%struct.crypto_tfm*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @dma_pool_free(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

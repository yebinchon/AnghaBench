; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_cipher.c_safexcel_skcipher_cra_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_cipher.c_safexcel_skcipher_cra_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.safexcel_cipher_ctx = type { %struct.TYPE_2__, %struct.safexcel_crypto_priv* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.safexcel_crypto_priv = type { i32, i32, i32 }

@EIP197_TRC_CACHE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"skcipher: invalidation error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_tfm*)* @safexcel_skcipher_cra_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @safexcel_skcipher_cra_exit(%struct.crypto_tfm* %0) #0 {
  %2 = alloca %struct.crypto_tfm*, align 8
  %3 = alloca %struct.safexcel_cipher_ctx*, align 8
  %4 = alloca %struct.safexcel_crypto_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %2, align 8
  %6 = load %struct.crypto_tfm*, %struct.crypto_tfm** %2, align 8
  %7 = call %struct.safexcel_cipher_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %6)
  store %struct.safexcel_cipher_ctx* %7, %struct.safexcel_cipher_ctx** %3, align 8
  %8 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %8, i32 0, i32 1
  %10 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %9, align 8
  store %struct.safexcel_crypto_priv* %10, %struct.safexcel_crypto_priv** %4, align 8
  %11 = load %struct.crypto_tfm*, %struct.crypto_tfm** %2, align 8
  %12 = call i64 @safexcel_cipher_cra_exit(%struct.crypto_tfm* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %47

15:                                               ; preds = %1
  %16 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %4, align 8
  %17 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @EIP197_TRC_CACHE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %15
  %23 = load %struct.crypto_tfm*, %struct.crypto_tfm** %2, align 8
  %24 = call i32 @safexcel_skcipher_exit_inv(%struct.crypto_tfm* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %4, align 8
  %29 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @dev_warn(i32 %30, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %27, %22
  br label %47

34:                                               ; preds = %15
  %35 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %4, align 8
  %36 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %3, align 8
  %39 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %3, align 8
  %43 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @dma_pool_free(i32 %37, i32 %41, i32 %45)
  br label %47

47:                                               ; preds = %14, %34, %33
  ret void
}

declare dso_local %struct.safexcel_cipher_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i64 @safexcel_cipher_cra_exit(%struct.crypto_tfm*) #1

declare dso_local i32 @safexcel_skcipher_exit_inv(%struct.crypto_tfm*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @dma_pool_free(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

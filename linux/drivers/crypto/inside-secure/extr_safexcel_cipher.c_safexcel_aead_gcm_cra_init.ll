; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_cipher.c_safexcel_aead_gcm_cra_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_cipher.c_safexcel_aead_gcm_cra_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.safexcel_cipher_ctx = type { i32, i32, i32, i32, i32 }

@CONTEXT_CONTROL_CRYPTO_ALG_GHASH = common dso_local global i32 0, align 4
@GHASH_BLOCK_SIZE = common dso_local global i32 0, align 4
@EIP197_XCM_MODE_GCM = common dso_local global i32 0, align 4
@CONTEXT_CONTROL_CRYPTO_MODE_XCM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"aes\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*)* @safexcel_aead_gcm_cra_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @safexcel_aead_gcm_cra_init(%struct.crypto_tfm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto_tfm*, align 8
  %4 = alloca %struct.safexcel_cipher_ctx*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %3, align 8
  %5 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %6 = call %struct.safexcel_cipher_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %5)
  store %struct.safexcel_cipher_ctx* %6, %struct.safexcel_cipher_ctx** %4, align 8
  %7 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %8 = call i32 @safexcel_aead_cra_init(%struct.crypto_tfm* %7)
  %9 = load i32, i32* @CONTEXT_CONTROL_CRYPTO_ALG_GHASH, align 4
  %10 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %4, align 8
  %11 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %10, i32 0, i32 4
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @GHASH_BLOCK_SIZE, align 4
  %13 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %4, align 8
  %14 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @EIP197_XCM_MODE_GCM, align 4
  %16 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %4, align 8
  %17 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @CONTEXT_CONTROL_CRYPTO_MODE_XCM, align 4
  %19 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %4, align 8
  %20 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = call i32 @crypto_alloc_cipher(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 0, i32 0)
  %22 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %4, align 8
  %23 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %4, align 8
  %25 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @IS_ERR(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %1
  %30 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %4, align 8
  %31 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @PTR_ERR(i32 %32)
  store i32 %33, i32* %2, align 4
  br label %35

34:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %29
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.safexcel_cipher_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @safexcel_aead_cra_init(%struct.crypto_tfm*) #1

declare dso_local i32 @crypto_alloc_cipher(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

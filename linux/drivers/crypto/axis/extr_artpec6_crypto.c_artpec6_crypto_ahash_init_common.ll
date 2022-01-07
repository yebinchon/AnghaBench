; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/axis/extr_artpec6_crypto.c_artpec6_crypto_ahash_init_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/axis/extr_artpec6_crypto.c_artpec6_crypto_ahash_init_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.artpec6_hashalg_context = type { %struct.crypto_shash* }
%struct.crypto_shash = type { i32 }

@CRYPTO_ALG_NEED_FALLBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*, i8*)* @artpec6_crypto_ahash_init_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @artpec6_crypto_ahash_init_common(%struct.crypto_tfm* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.crypto_tfm*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.artpec6_hashalg_context*, align 8
  %7 = alloca %struct.crypto_shash*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.crypto_tfm*, %struct.crypto_tfm** %4, align 8
  %9 = call %struct.artpec6_hashalg_context* @crypto_tfm_ctx(%struct.crypto_tfm* %8)
  store %struct.artpec6_hashalg_context* %9, %struct.artpec6_hashalg_context** %6, align 8
  %10 = load %struct.crypto_tfm*, %struct.crypto_tfm** %4, align 8
  %11 = call i32 @__crypto_ahash_cast(%struct.crypto_tfm* %10)
  %12 = call i32 @crypto_ahash_set_reqsize(i32 %11, i32 4)
  %13 = load %struct.artpec6_hashalg_context*, %struct.artpec6_hashalg_context** %6, align 8
  %14 = call i32 @memset(%struct.artpec6_hashalg_context* %13, i32 0, i32 8)
  %15 = load i8*, i8** %5, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %31

17:                                               ; preds = %2
  %18 = load i8*, i8** %5, align 8
  %19 = load i32, i32* @CRYPTO_ALG_NEED_FALLBACK, align 4
  %20 = call %struct.crypto_shash* @crypto_alloc_shash(i8* %18, i32 0, i32 %19)
  store %struct.crypto_shash* %20, %struct.crypto_shash** %7, align 8
  %21 = load %struct.crypto_shash*, %struct.crypto_shash** %7, align 8
  %22 = call i64 @IS_ERR(%struct.crypto_shash* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load %struct.crypto_shash*, %struct.crypto_shash** %7, align 8
  %26 = call i32 @PTR_ERR(%struct.crypto_shash* %25)
  store i32 %26, i32* %3, align 4
  br label %32

27:                                               ; preds = %17
  %28 = load %struct.crypto_shash*, %struct.crypto_shash** %7, align 8
  %29 = load %struct.artpec6_hashalg_context*, %struct.artpec6_hashalg_context** %6, align 8
  %30 = getelementptr inbounds %struct.artpec6_hashalg_context, %struct.artpec6_hashalg_context* %29, i32 0, i32 0
  store %struct.crypto_shash* %28, %struct.crypto_shash** %30, align 8
  br label %31

31:                                               ; preds = %27, %2
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %24
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local %struct.artpec6_hashalg_context* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @crypto_ahash_set_reqsize(i32, i32) #1

declare dso_local i32 @__crypto_ahash_cast(%struct.crypto_tfm*) #1

declare dso_local i32 @memset(%struct.artpec6_hashalg_context*, i32, i32) #1

declare dso_local %struct.crypto_shash* @crypto_alloc_shash(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.crypto_shash*) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_shash*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

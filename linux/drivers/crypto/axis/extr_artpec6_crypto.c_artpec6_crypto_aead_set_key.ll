; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/axis/extr_artpec6_crypto.c_artpec6_crypto_aead_set_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/axis/extr_artpec6_crypto.c_artpec6_crypto_aead_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead = type { i32 }
%struct.artpec6_cryptotfm_context = type { i32, i32 }

@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_aead*, i32*, i32)* @artpec6_crypto_aead_set_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @artpec6_crypto_aead_set_key(%struct.crypto_aead* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_aead*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.artpec6_cryptotfm_context*, align 8
  store %struct.crypto_aead* %0, %struct.crypto_aead** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %10 = getelementptr inbounds %struct.crypto_aead, %struct.crypto_aead* %9, i32 0, i32 0
  %11 = call %struct.artpec6_cryptotfm_context* @crypto_tfm_ctx(i32* %10)
  store %struct.artpec6_cryptotfm_context* %11, %struct.artpec6_cryptotfm_context** %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 16
  br i1 %13, label %14, label %24

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 24
  br i1 %16, label %17, label %24

17:                                               ; preds = %14
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 32
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %22 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %23 = call i32 @crypto_aead_set_flags(%struct.crypto_aead* %21, i32 %22)
  store i32 -1, i32* %4, align 4
  br label %34

24:                                               ; preds = %17, %14, %3
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.artpec6_cryptotfm_context*, %struct.artpec6_cryptotfm_context** %8, align 8
  %27 = getelementptr inbounds %struct.artpec6_cryptotfm_context, %struct.artpec6_cryptotfm_context* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.artpec6_cryptotfm_context*, %struct.artpec6_cryptotfm_context** %8, align 8
  %29 = getelementptr inbounds %struct.artpec6_cryptotfm_context, %struct.artpec6_cryptotfm_context* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @memcpy(i32 %30, i32* %31, i32 %32)
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %24, %20
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local %struct.artpec6_cryptotfm_context* @crypto_tfm_ctx(i32*) #1

declare dso_local i32 @crypto_aead_set_flags(%struct.crypto_aead*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

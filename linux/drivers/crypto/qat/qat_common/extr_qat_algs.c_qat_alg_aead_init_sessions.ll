; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_algs.c_qat_alg_aead_init_sessions.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_algs.c_qat_alg_aead_init_sessions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead = type { i32 }
%struct.crypto_authenc_keys = type { i32 }

@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_aead*, i32*, i32, i32)* @qat_alg_aead_init_sessions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qat_alg_aead_init_sessions(%struct.crypto_aead* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.crypto_aead*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.crypto_authenc_keys, align 4
  %11 = alloca i32, align 4
  store %struct.crypto_aead* %0, %struct.crypto_aead** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32*, i32** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call i64 @crypto_authenc_extractkeys(%struct.crypto_authenc_keys* %10, i32* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  br label %40

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %10, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i64 @qat_alg_validate_key(i32 %19, i32* %11, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %40

24:                                               ; preds = %17
  %25 = load %struct.crypto_aead*, %struct.crypto_aead** %6, align 8
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i64 @qat_alg_aead_init_enc_session(%struct.crypto_aead* %25, i32 %26, %struct.crypto_authenc_keys* %10, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %47

31:                                               ; preds = %24
  %32 = load %struct.crypto_aead*, %struct.crypto_aead** %6, align 8
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i64 @qat_alg_aead_init_dec_session(%struct.crypto_aead* %32, i32 %33, %struct.crypto_authenc_keys* %10, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %47

38:                                               ; preds = %31
  %39 = call i32 @memzero_explicit(%struct.crypto_authenc_keys* %10, i32 4)
  store i32 0, i32* %5, align 4
  br label %51

40:                                               ; preds = %23, %16
  %41 = load %struct.crypto_aead*, %struct.crypto_aead** %6, align 8
  %42 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %43 = call i32 @crypto_aead_set_flags(%struct.crypto_aead* %41, i32 %42)
  %44 = call i32 @memzero_explicit(%struct.crypto_authenc_keys* %10, i32 4)
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %51

47:                                               ; preds = %37, %30
  %48 = call i32 @memzero_explicit(%struct.crypto_authenc_keys* %10, i32 4)
  %49 = load i32, i32* @EFAULT, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %47, %40, %38
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i64 @crypto_authenc_extractkeys(%struct.crypto_authenc_keys*, i32*, i32) #1

declare dso_local i64 @qat_alg_validate_key(i32, i32*, i32) #1

declare dso_local i64 @qat_alg_aead_init_enc_session(%struct.crypto_aead*, i32, %struct.crypto_authenc_keys*, i32) #1

declare dso_local i64 @qat_alg_aead_init_dec_session(%struct.crypto_aead*, i32, %struct.crypto_authenc_keys*, i32) #1

declare dso_local i32 @memzero_explicit(%struct.crypto_authenc_keys*, i32) #1

declare dso_local i32 @crypto_aead_set_flags(%struct.crypto_aead*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

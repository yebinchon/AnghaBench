; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg_qi2.c_des3_aead_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg_qi2.c_des3_aead_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead = type { i32 }
%struct.crypto_authenc_keys = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@DES3_EDE_KEY_SIZE = common dso_local global i64 0, align 8
@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_aead*, i32*, i32)* @des3_aead_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @des3_aead_setkey(%struct.crypto_aead* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.crypto_aead*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.crypto_authenc_keys, align 8
  %8 = alloca i32, align 4
  store %struct.crypto_aead* %0, %struct.crypto_aead** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @crypto_authenc_extractkeys(%struct.crypto_authenc_keys* %7, i32* %9, i32 %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %44

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %8, align 4
  %19 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %7, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @DES3_EDE_KEY_SIZE, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %44

24:                                               ; preds = %16
  %25 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %26 = call i32 @crypto_aead_tfm(%struct.crypto_aead* %25)
  %27 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %7, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @crypto_des3_ede_verify_key(i32 %26, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %38

32:                                               ; preds = %24
  %33 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @aead_setkey(%struct.crypto_aead* %33, i32* %34, i32 %35)
  %37 = sext i32 %36 to i64
  br label %38

38:                                               ; preds = %32, %31
  %39 = phi i64 [ %29, %31 ], [ %37, %32 ]
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %44, %38
  %42 = call i32 @memzero_explicit(%struct.crypto_authenc_keys* %7, i32 16)
  %43 = load i32, i32* %8, align 4
  ret i32 %43

44:                                               ; preds = %23, %15
  %45 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %46 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %47 = call i32 @crypto_aead_set_flags(%struct.crypto_aead* %45, i32 %46)
  br label %41
}

declare dso_local i32 @crypto_authenc_extractkeys(%struct.crypto_authenc_keys*, i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @crypto_des3_ede_verify_key(i32, i32) #1

declare dso_local i32 @crypto_aead_tfm(%struct.crypto_aead*) #1

declare dso_local i32 @aead_setkey(%struct.crypto_aead*, i32*, i32) #1

declare dso_local i32 @memzero_explicit(%struct.crypto_authenc_keys*, i32) #1

declare dso_local i32 @crypto_aead_set_flags(%struct.crypto_aead*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptvf_algs.c_cvm_xts_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptvf_algs.c_cvm_xts_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_ablkcipher = type { i32 }
%struct.crypto_tfm = type { i32 }
%struct.cvm_enc_ctx = type { i32, i32, i32, i64 }

@KEY2_OFFSET = common dso_local global i64 0, align 8
@AES_XTS = common dso_local global i32 0, align 4
@AES_128_BIT = common dso_local global i32 0, align 4
@AES_256_BIT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_ablkcipher*, i32*, i32)* @cvm_xts_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cvm_xts_setkey(%struct.crypto_ablkcipher* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_ablkcipher*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.crypto_tfm*, align 8
  %9 = alloca %struct.cvm_enc_ctx*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.crypto_ablkcipher* %0, %struct.crypto_ablkcipher** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %5, align 8
  %14 = call %struct.crypto_tfm* @crypto_ablkcipher_tfm(%struct.crypto_ablkcipher* %13)
  store %struct.crypto_tfm* %14, %struct.crypto_tfm** %8, align 8
  %15 = load %struct.crypto_tfm*, %struct.crypto_tfm** %8, align 8
  %16 = call %struct.cvm_enc_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %15)
  store %struct.cvm_enc_ctx* %16, %struct.cvm_enc_ctx** %9, align 8
  %17 = load i32*, i32** %6, align 8
  store i32* %17, i32** %11, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sdiv i32 %19, 2
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  store i32* %22, i32** %12, align 8
  %23 = load %struct.crypto_tfm*, %struct.crypto_tfm** %8, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @xts_check_key(%struct.crypto_tfm* %23, i32* %24, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %4, align 4
  br label %69

31:                                               ; preds = %3
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.cvm_enc_ctx*, %struct.cvm_enc_ctx** %9, align 8
  %34 = getelementptr inbounds %struct.cvm_enc_ctx, %struct.cvm_enc_ctx* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.cvm_enc_ctx*, %struct.cvm_enc_ctx** %9, align 8
  %36 = getelementptr inbounds %struct.cvm_enc_ctx, %struct.cvm_enc_ctx* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = load i32*, i32** %11, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sdiv i32 %39, 2
  %41 = call i32 @memcpy(i64 %37, i32* %38, i32 %40)
  %42 = load %struct.cvm_enc_ctx*, %struct.cvm_enc_ctx** %9, align 8
  %43 = getelementptr inbounds %struct.cvm_enc_ctx, %struct.cvm_enc_ctx* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @KEY2_OFFSET, align 8
  %46 = add nsw i64 %44, %45
  %47 = load i32*, i32** %12, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sdiv i32 %48, 2
  %50 = call i32 @memcpy(i64 %46, i32* %47, i32 %49)
  %51 = load i32, i32* @AES_XTS, align 4
  %52 = load %struct.cvm_enc_ctx*, %struct.cvm_enc_ctx** %9, align 8
  %53 = getelementptr inbounds %struct.cvm_enc_ctx, %struct.cvm_enc_ctx* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load %struct.cvm_enc_ctx*, %struct.cvm_enc_ctx** %9, align 8
  %55 = getelementptr inbounds %struct.cvm_enc_ctx, %struct.cvm_enc_ctx* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  switch i32 %56, label %65 [
    i32 32, label %57
    i32 64, label %61
  ]

57:                                               ; preds = %31
  %58 = load i32, i32* @AES_128_BIT, align 4
  %59 = load %struct.cvm_enc_ctx*, %struct.cvm_enc_ctx** %9, align 8
  %60 = getelementptr inbounds %struct.cvm_enc_ctx, %struct.cvm_enc_ctx* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  br label %68

61:                                               ; preds = %31
  %62 = load i32, i32* @AES_256_BIT, align 4
  %63 = load %struct.cvm_enc_ctx*, %struct.cvm_enc_ctx** %9, align 8
  %64 = getelementptr inbounds %struct.cvm_enc_ctx, %struct.cvm_enc_ctx* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  br label %68

65:                                               ; preds = %31
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %69

68:                                               ; preds = %61, %57
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %68, %65, %29
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local %struct.crypto_tfm* @crypto_ablkcipher_tfm(%struct.crypto_ablkcipher*) #1

declare dso_local %struct.cvm_enc_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @xts_check_key(%struct.crypto_tfm*, i32*, i32) #1

declare dso_local i32 @memcpy(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

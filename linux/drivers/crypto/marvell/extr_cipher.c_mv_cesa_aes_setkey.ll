; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_cipher.c_mv_cesa_aes_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_cipher.c_mv_cesa_aes_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_skcipher = type { i32 }
%struct.crypto_tfm = type { i32 }
%struct.mv_cesa_aes_ctx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32*, i32* }

@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_skcipher*, i32*, i32)* @mv_cesa_aes_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_cesa_aes_setkey(%struct.crypto_skcipher* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_skcipher*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.crypto_tfm*, align 8
  %9 = alloca %struct.mv_cesa_aes_ctx*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.crypto_skcipher* %0, %struct.crypto_skcipher** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %15 = call %struct.crypto_tfm* @crypto_skcipher_tfm(%struct.crypto_skcipher* %14)
  store %struct.crypto_tfm* %15, %struct.crypto_tfm** %8, align 8
  %16 = load %struct.crypto_tfm*, %struct.crypto_tfm** %8, align 8
  %17 = call %struct.mv_cesa_aes_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %16)
  store %struct.mv_cesa_aes_ctx* %17, %struct.mv_cesa_aes_ctx** %9, align 8
  %18 = load %struct.mv_cesa_aes_ctx*, %struct.mv_cesa_aes_ctx** %9, align 8
  %19 = getelementptr inbounds %struct.mv_cesa_aes_ctx, %struct.mv_cesa_aes_ctx* %18, i32 0, i32 0
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @aes_expandkey(%struct.TYPE_2__* %19, i32* %20, i32 %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %3
  %26 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %27 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %28 = call i32 @crypto_skcipher_set_flags(%struct.crypto_skcipher* %26, i32 %27)
  %29 = load i32, i32* %12, align 4
  store i32 %29, i32* %4, align 4
  br label %72

30:                                               ; preds = %3
  %31 = load %struct.mv_cesa_aes_ctx*, %struct.mv_cesa_aes_ctx** %9, align 8
  %32 = getelementptr inbounds %struct.mv_cesa_aes_ctx, %struct.mv_cesa_aes_ctx* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sub nsw i32 %34, 16
  %36 = sdiv i32 %35, 4
  store i32 %36, i32* %10, align 4
  %37 = load %struct.mv_cesa_aes_ctx*, %struct.mv_cesa_aes_ctx** %9, align 8
  %38 = getelementptr inbounds %struct.mv_cesa_aes_ctx, %struct.mv_cesa_aes_ctx* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 24
  %42 = load i32, i32* %10, align 4
  %43 = sub nsw i32 %41, %42
  store i32 %43, i32* %11, align 4
  store i32 0, i32* %13, align 4
  br label %44

44:                                               ; preds = %68, %30
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %71

48:                                               ; preds = %44
  %49 = load %struct.mv_cesa_aes_ctx*, %struct.mv_cesa_aes_ctx** %9, align 8
  %50 = getelementptr inbounds %struct.mv_cesa_aes_ctx, %struct.mv_cesa_aes_ctx* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %13, align 4
  %55 = add nsw i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %52, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @cpu_to_le32(i32 %58)
  %60 = load %struct.mv_cesa_aes_ctx*, %struct.mv_cesa_aes_ctx** %9, align 8
  %61 = getelementptr inbounds %struct.mv_cesa_aes_ctx, %struct.mv_cesa_aes_ctx* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %13, align 4
  %65 = add nsw i32 4, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %63, i64 %66
  store i32 %59, i32* %67, align 4
  br label %68

68:                                               ; preds = %48
  %69 = load i32, i32* %13, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %13, align 4
  br label %44

71:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %71, %25
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local %struct.crypto_tfm* @crypto_skcipher_tfm(%struct.crypto_skcipher*) #1

declare dso_local %struct.mv_cesa_aes_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @aes_expandkey(%struct.TYPE_2__*, i32*, i32) #1

declare dso_local i32 @crypto_skcipher_set_flags(%struct.crypto_skcipher*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

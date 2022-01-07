; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_algs.c_qat_alg_ablkcipher_init_sessions.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_algs.c_qat_alg_ablkcipher_init_sessions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qat_alg_ablkcipher_ctx = type { i32 }

@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qat_alg_ablkcipher_ctx*, i32*, i32, i32)* @qat_alg_ablkcipher_init_sessions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qat_alg_ablkcipher_init_sessions(%struct.qat_alg_ablkcipher_ctx* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qat_alg_ablkcipher_ctx*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.qat_alg_ablkcipher_ctx* %0, %struct.qat_alg_ablkcipher_ctx** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* %9, align 4
  %13 = call i64 @qat_alg_validate_key(i32 %11, i32* %10, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  br label %29

16:                                               ; preds = %4
  %17 = load %struct.qat_alg_ablkcipher_ctx*, %struct.qat_alg_ablkcipher_ctx** %6, align 8
  %18 = load i32, i32* %10, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @qat_alg_ablkcipher_init_enc(%struct.qat_alg_ablkcipher_ctx* %17, i32 %18, i32* %19, i32 %20, i32 %21)
  %23 = load %struct.qat_alg_ablkcipher_ctx*, %struct.qat_alg_ablkcipher_ctx** %6, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @qat_alg_ablkcipher_init_dec(%struct.qat_alg_ablkcipher_ctx* %23, i32 %24, i32* %25, i32 %26, i32 %27)
  store i32 0, i32* %5, align 4
  br label %37

29:                                               ; preds = %15
  %30 = load %struct.qat_alg_ablkcipher_ctx*, %struct.qat_alg_ablkcipher_ctx** %6, align 8
  %31 = getelementptr inbounds %struct.qat_alg_ablkcipher_ctx, %struct.qat_alg_ablkcipher_ctx* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %34 = call i32 @crypto_tfm_set_flags(i32 %32, i32 %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %29, %16
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i64 @qat_alg_validate_key(i32, i32*, i32) #1

declare dso_local i32 @qat_alg_ablkcipher_init_enc(%struct.qat_alg_ablkcipher_ctx*, i32, i32*, i32, i32) #1

declare dso_local i32 @qat_alg_ablkcipher_init_dec(%struct.qat_alg_ablkcipher_ctx*, i32, i32*, i32, i32) #1

declare dso_local i32 @crypto_tfm_set_flags(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

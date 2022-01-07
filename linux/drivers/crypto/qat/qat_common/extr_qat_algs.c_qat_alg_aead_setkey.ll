; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_algs.c_qat_alg_aead_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_algs.c_qat_alg_aead_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead = type { i32 }
%struct.qat_alg_aead_ctx = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_aead*, i32*, i32)* @qat_alg_aead_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qat_alg_aead_setkey(%struct.crypto_aead* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_aead*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.qat_alg_aead_ctx*, align 8
  store %struct.crypto_aead* %0, %struct.crypto_aead** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %10 = call %struct.qat_alg_aead_ctx* @crypto_aead_ctx(%struct.crypto_aead* %9)
  store %struct.qat_alg_aead_ctx* %10, %struct.qat_alg_aead_ctx** %8, align 8
  %11 = load %struct.qat_alg_aead_ctx*, %struct.qat_alg_aead_ctx** %8, align 8
  %12 = getelementptr inbounds %struct.qat_alg_aead_ctx, %struct.qat_alg_aead_ctx* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @qat_alg_aead_rekey(%struct.crypto_aead* %16, i32* %17, i32 %18)
  store i32 %19, i32* %4, align 4
  br label %25

20:                                               ; preds = %3
  %21 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @qat_alg_aead_newkey(%struct.crypto_aead* %21, i32* %22, i32 %23)
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %20, %15
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

declare dso_local %struct.qat_alg_aead_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local i32 @qat_alg_aead_rekey(%struct.crypto_aead*, i32*, i32) #1

declare dso_local i32 @qat_alg_aead_newkey(%struct.crypto_aead*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

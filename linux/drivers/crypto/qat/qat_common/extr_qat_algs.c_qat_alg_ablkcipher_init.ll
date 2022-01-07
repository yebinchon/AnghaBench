; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_algs.c_qat_alg_ablkcipher_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_algs.c_qat_alg_ablkcipher_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.qat_alg_ablkcipher_ctx = type { %struct.crypto_tfm* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*)* @qat_alg_ablkcipher_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qat_alg_ablkcipher_init(%struct.crypto_tfm* %0) #0 {
  %2 = alloca %struct.crypto_tfm*, align 8
  %3 = alloca %struct.qat_alg_ablkcipher_ctx*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %2, align 8
  %4 = load %struct.crypto_tfm*, %struct.crypto_tfm** %2, align 8
  %5 = call %struct.qat_alg_ablkcipher_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %4)
  store %struct.qat_alg_ablkcipher_ctx* %5, %struct.qat_alg_ablkcipher_ctx** %3, align 8
  %6 = load %struct.crypto_tfm*, %struct.crypto_tfm** %2, align 8
  %7 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store i32 4, i32* %8, align 4
  %9 = load %struct.crypto_tfm*, %struct.crypto_tfm** %2, align 8
  %10 = load %struct.qat_alg_ablkcipher_ctx*, %struct.qat_alg_ablkcipher_ctx** %3, align 8
  %11 = getelementptr inbounds %struct.qat_alg_ablkcipher_ctx, %struct.qat_alg_ablkcipher_ctx* %10, i32 0, i32 0
  store %struct.crypto_tfm* %9, %struct.crypto_tfm** %11, align 8
  ret i32 0
}

declare dso_local %struct.qat_alg_ablkcipher_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

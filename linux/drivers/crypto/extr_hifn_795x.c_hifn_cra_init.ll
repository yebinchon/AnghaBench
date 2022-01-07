; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_hifn_795x.c_hifn_cra_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_hifn_795x.c_hifn_cra_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { %struct.TYPE_2__, %struct.crypto_alg* }
%struct.TYPE_2__ = type { i32 }
%struct.crypto_alg = type { i32 }
%struct.hifn_crypto_alg = type { i32 }
%struct.hifn_context = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*)* @hifn_cra_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hifn_cra_init(%struct.crypto_tfm* %0) #0 {
  %2 = alloca %struct.crypto_tfm*, align 8
  %3 = alloca %struct.crypto_alg*, align 8
  %4 = alloca %struct.hifn_crypto_alg*, align 8
  %5 = alloca %struct.hifn_context*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %2, align 8
  %6 = load %struct.crypto_tfm*, %struct.crypto_tfm** %2, align 8
  %7 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %6, i32 0, i32 1
  %8 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  store %struct.crypto_alg* %8, %struct.crypto_alg** %3, align 8
  %9 = load %struct.crypto_alg*, %struct.crypto_alg** %3, align 8
  %10 = call %struct.hifn_crypto_alg* @crypto_alg_to_hifn(%struct.crypto_alg* %9)
  store %struct.hifn_crypto_alg* %10, %struct.hifn_crypto_alg** %4, align 8
  %11 = load %struct.crypto_tfm*, %struct.crypto_tfm** %2, align 8
  %12 = call %struct.hifn_context* @crypto_tfm_ctx(%struct.crypto_tfm* %11)
  store %struct.hifn_context* %12, %struct.hifn_context** %5, align 8
  %13 = load %struct.hifn_crypto_alg*, %struct.hifn_crypto_alg** %4, align 8
  %14 = getelementptr inbounds %struct.hifn_crypto_alg, %struct.hifn_crypto_alg* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.hifn_context*, %struct.hifn_context** %5, align 8
  %17 = getelementptr inbounds %struct.hifn_context, %struct.hifn_context* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.crypto_tfm*, %struct.crypto_tfm** %2, align 8
  %19 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 4, i32* %20, align 8
  ret i32 0
}

declare dso_local %struct.hifn_crypto_alg* @crypto_alg_to_hifn(%struct.crypto_alg*) #1

declare dso_local %struct.hifn_context* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

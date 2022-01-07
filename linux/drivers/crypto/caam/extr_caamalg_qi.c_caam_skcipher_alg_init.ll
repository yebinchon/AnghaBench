; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg_qi.c_caam_skcipher_alg_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg_qi.c_caam_skcipher_alg_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.caam_skcipher_alg = type { %struct.skcipher_alg }
%struct.skcipher_alg = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@THIS_MODULE = common dso_local global i32 0, align 4
@CAAM_CRA_PRIORITY = common dso_local global i32 0, align 4
@CRYPTO_ALG_ASYNC = common dso_local global i32 0, align 4
@CRYPTO_ALG_KERN_DRIVER_ONLY = common dso_local global i32 0, align 4
@caam_cra_init = common dso_local global i32 0, align 4
@caam_cra_exit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.caam_skcipher_alg*)* @caam_skcipher_alg_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @caam_skcipher_alg_init(%struct.caam_skcipher_alg* %0) #0 {
  %2 = alloca %struct.caam_skcipher_alg*, align 8
  %3 = alloca %struct.skcipher_alg*, align 8
  store %struct.caam_skcipher_alg* %0, %struct.caam_skcipher_alg** %2, align 8
  %4 = load %struct.caam_skcipher_alg*, %struct.caam_skcipher_alg** %2, align 8
  %5 = getelementptr inbounds %struct.caam_skcipher_alg, %struct.caam_skcipher_alg* %4, i32 0, i32 0
  store %struct.skcipher_alg* %5, %struct.skcipher_alg** %3, align 8
  %6 = load i32, i32* @THIS_MODULE, align 4
  %7 = load %struct.skcipher_alg*, %struct.skcipher_alg** %3, align 8
  %8 = getelementptr inbounds %struct.skcipher_alg, %struct.skcipher_alg* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 3
  store i32 %6, i32* %9, align 4
  %10 = load i32, i32* @CAAM_CRA_PRIORITY, align 4
  %11 = load %struct.skcipher_alg*, %struct.skcipher_alg** %3, align 8
  %12 = getelementptr inbounds %struct.skcipher_alg, %struct.skcipher_alg* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  store i32 %10, i32* %13, align 4
  %14 = load %struct.skcipher_alg*, %struct.skcipher_alg** %3, align 8
  %15 = getelementptr inbounds %struct.skcipher_alg, %struct.skcipher_alg* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 4, i32* %16, align 4
  %17 = load i32, i32* @CRYPTO_ALG_ASYNC, align 4
  %18 = load i32, i32* @CRYPTO_ALG_KERN_DRIVER_ONLY, align 4
  %19 = or i32 %17, %18
  %20 = load %struct.skcipher_alg*, %struct.skcipher_alg** %3, align 8
  %21 = getelementptr inbounds %struct.skcipher_alg, %struct.skcipher_alg* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store i32 %19, i32* %22, align 4
  %23 = load i32, i32* @caam_cra_init, align 4
  %24 = load %struct.skcipher_alg*, %struct.skcipher_alg** %3, align 8
  %25 = getelementptr inbounds %struct.skcipher_alg, %struct.skcipher_alg* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @caam_cra_exit, align 4
  %27 = load %struct.skcipher_alg*, %struct.skcipher_alg** %3, align 8
  %28 = getelementptr inbounds %struct.skcipher_alg, %struct.skcipher_alg* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/sec/extr_sec_algs.c_sec_alg_skcipher_init_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/sec/extr_sec_algs.c_sec_alg_skcipher_init_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_skcipher = type { i32 }
%struct.crypto_tfm = type { i32 }
%struct.sec_alg_tfm_ctx = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_skcipher*, i32*, i32, i32)* @sec_alg_skcipher_init_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sec_alg_skcipher_init_context(%struct.crypto_skcipher* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.crypto_skcipher*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.crypto_tfm*, align 8
  %10 = alloca %struct.sec_alg_tfm_ctx*, align 8
  store %struct.crypto_skcipher* %0, %struct.crypto_skcipher** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %12 = call %struct.crypto_tfm* @crypto_skcipher_tfm(%struct.crypto_skcipher* %11)
  store %struct.crypto_tfm* %12, %struct.crypto_tfm** %9, align 8
  %13 = load %struct.crypto_tfm*, %struct.crypto_tfm** %9, align 8
  %14 = call %struct.sec_alg_tfm_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %13)
  store %struct.sec_alg_tfm_ctx* %14, %struct.sec_alg_tfm_ctx** %10, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.sec_alg_tfm_ctx*, %struct.sec_alg_tfm_ctx** %10, align 8
  %17 = getelementptr inbounds %struct.sec_alg_tfm_ctx, %struct.sec_alg_tfm_ctx* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.sec_alg_tfm_ctx*, %struct.sec_alg_tfm_ctx** %10, align 8
  %19 = getelementptr inbounds %struct.sec_alg_tfm_ctx, %struct.sec_alg_tfm_ctx* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @memcpy(i32 %20, i32* %21, i32 %22)
  %24 = load %struct.sec_alg_tfm_ctx*, %struct.sec_alg_tfm_ctx** %10, align 8
  %25 = load %struct.sec_alg_tfm_ctx*, %struct.sec_alg_tfm_ctx** %10, align 8
  %26 = getelementptr inbounds %struct.sec_alg_tfm_ctx, %struct.sec_alg_tfm_ctx* %25, i32 0, i32 1
  %27 = load %struct.sec_alg_tfm_ctx*, %struct.sec_alg_tfm_ctx** %10, align 8
  %28 = getelementptr inbounds %struct.sec_alg_tfm_ctx, %struct.sec_alg_tfm_ctx* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @sec_alg_skcipher_init_template(%struct.sec_alg_tfm_ctx* %24, i32* %26, i32 %29)
  ret void
}

declare dso_local %struct.crypto_tfm* @crypto_skcipher_tfm(%struct.crypto_skcipher*) #1

declare dso_local %struct.sec_alg_tfm_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @sec_alg_skcipher_init_template(%struct.sec_alg_tfm_ctx*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

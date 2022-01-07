; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_picoxcell_crypto.c_spacc_ablk_need_fallback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_picoxcell_crypto.c_spacc_ablk_need_fallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spacc_req = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.crypto_tfm* }
%struct.crypto_tfm = type { %struct.crypto_alg* }
%struct.crypto_alg = type { i32 }
%struct.spacc_ablk_ctx = type { i64 }
%struct.spacc_alg = type { i32 }

@SPACC_CRYPTO_ALG_MASK = common dso_local global i32 0, align 4
@SPA_CTRL_CIPH_ALG_AES = common dso_local global i32 0, align 4
@AES_KEYSIZE_128 = common dso_local global i64 0, align 8
@AES_KEYSIZE_256 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spacc_req*)* @spacc_ablk_need_fallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spacc_ablk_need_fallback(%struct.spacc_req* %0) #0 {
  %2 = alloca %struct.spacc_req*, align 8
  %3 = alloca %struct.spacc_ablk_ctx*, align 8
  %4 = alloca %struct.crypto_tfm*, align 8
  %5 = alloca %struct.crypto_alg*, align 8
  %6 = alloca %struct.spacc_alg*, align 8
  store %struct.spacc_req* %0, %struct.spacc_req** %2, align 8
  %7 = load %struct.spacc_req*, %struct.spacc_req** %2, align 8
  %8 = getelementptr inbounds %struct.spacc_req, %struct.spacc_req* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.crypto_tfm*, %struct.crypto_tfm** %10, align 8
  store %struct.crypto_tfm* %11, %struct.crypto_tfm** %4, align 8
  %12 = load %struct.spacc_req*, %struct.spacc_req** %2, align 8
  %13 = getelementptr inbounds %struct.spacc_req, %struct.spacc_req* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.crypto_tfm*, %struct.crypto_tfm** %15, align 8
  %17 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %16, i32 0, i32 0
  %18 = load %struct.crypto_alg*, %struct.crypto_alg** %17, align 8
  store %struct.crypto_alg* %18, %struct.crypto_alg** %5, align 8
  %19 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %20 = call %struct.spacc_alg* @to_spacc_alg(%struct.crypto_alg* %19)
  store %struct.spacc_alg* %20, %struct.spacc_alg** %6, align 8
  %21 = load %struct.crypto_tfm*, %struct.crypto_tfm** %4, align 8
  %22 = call %struct.spacc_ablk_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %21)
  store %struct.spacc_ablk_ctx* %22, %struct.spacc_ablk_ctx** %3, align 8
  %23 = load %struct.spacc_alg*, %struct.spacc_alg** %6, align 8
  %24 = getelementptr inbounds %struct.spacc_alg, %struct.spacc_alg* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @SPACC_CRYPTO_ALG_MASK, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @SPA_CTRL_CIPH_ALG_AES, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %1
  %31 = load %struct.spacc_ablk_ctx*, %struct.spacc_ablk_ctx** %3, align 8
  %32 = getelementptr inbounds %struct.spacc_ablk_ctx, %struct.spacc_ablk_ctx* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @AES_KEYSIZE_128, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load %struct.spacc_ablk_ctx*, %struct.spacc_ablk_ctx** %3, align 8
  %38 = getelementptr inbounds %struct.spacc_ablk_ctx, %struct.spacc_ablk_ctx* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @AES_KEYSIZE_256, align 8
  %41 = icmp ne i64 %39, %40
  br label %42

42:                                               ; preds = %36, %30, %1
  %43 = phi i1 [ false, %30 ], [ false, %1 ], [ %41, %36 ]
  %44 = zext i1 %43 to i32
  ret i32 %44
}

declare dso_local %struct.spacc_alg* @to_spacc_alg(%struct.crypto_alg*) #1

declare dso_local %struct.spacc_ablk_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

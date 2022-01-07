; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_aead_cra_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_aead_cra_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead = type { i32 }
%struct.chcr_aead_ctx = type { i32 }
%struct.aead_alg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CRYPTO_ALG_NEED_FALLBACK = common dso_local global i32 0, align 4
@CRYPTO_ALG_ASYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_aead*)* @chcr_aead_cra_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chcr_aead_cra_init(%struct.crypto_aead* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto_aead*, align 8
  %4 = alloca %struct.chcr_aead_ctx*, align 8
  %5 = alloca %struct.aead_alg*, align 8
  store %struct.crypto_aead* %0, %struct.crypto_aead** %3, align 8
  %6 = load %struct.crypto_aead*, %struct.crypto_aead** %3, align 8
  %7 = call i32 @a_ctx(%struct.crypto_aead* %6)
  %8 = call %struct.chcr_aead_ctx* @AEAD_CTX(i32 %7)
  store %struct.chcr_aead_ctx* %8, %struct.chcr_aead_ctx** %4, align 8
  %9 = load %struct.crypto_aead*, %struct.crypto_aead** %3, align 8
  %10 = call %struct.aead_alg* @crypto_aead_alg(%struct.crypto_aead* %9)
  store %struct.aead_alg* %10, %struct.aead_alg** %5, align 8
  %11 = load %struct.aead_alg*, %struct.aead_alg** %5, align 8
  %12 = getelementptr inbounds %struct.aead_alg, %struct.aead_alg* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @CRYPTO_ALG_NEED_FALLBACK, align 4
  %16 = load i32, i32* @CRYPTO_ALG_ASYNC, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @crypto_alloc_aead(i32 %14, i32 0, i32 %17)
  %19 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %4, align 8
  %20 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %4, align 8
  %22 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @IS_ERR(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %1
  %27 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %4, align 8
  %28 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @PTR_ERR(i32 %29)
  store i32 %30, i32* %2, align 4
  br label %43

31:                                               ; preds = %1
  %32 = load %struct.crypto_aead*, %struct.crypto_aead** %3, align 8
  %33 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %4, align 8
  %34 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @crypto_aead_reqsize(i32 %35)
  %37 = add i64 4, %36
  %38 = call i32 @max(i32 4, i64 %37)
  %39 = call i32 @crypto_aead_set_reqsize(%struct.crypto_aead* %32, i32 %38)
  %40 = load %struct.crypto_aead*, %struct.crypto_aead** %3, align 8
  %41 = call i32 @a_ctx(%struct.crypto_aead* %40)
  %42 = call i32 @chcr_device_init(i32 %41)
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %31, %26
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.chcr_aead_ctx* @AEAD_CTX(i32) #1

declare dso_local i32 @a_ctx(%struct.crypto_aead*) #1

declare dso_local %struct.aead_alg* @crypto_aead_alg(%struct.crypto_aead*) #1

declare dso_local i32 @crypto_alloc_aead(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @crypto_aead_set_reqsize(%struct.crypto_aead*, i32) #1

declare dso_local i32 @max(i32, i64) #1

declare dso_local i64 @crypto_aead_reqsize(i32) #1

declare dso_local i32 @chcr_device_init(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

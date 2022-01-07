; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_picoxcell_crypto.c_spacc_aead_cra_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_picoxcell_crypto.c_spacc_aead_cra_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead = type { i32 }
%struct.spacc_aead_ctx = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, %struct.spacc_engine*, i32 }
%struct.spacc_engine = type { i32 }
%struct.aead_alg = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.spacc_aead = type { i32, i32, i32, %struct.spacc_engine* }

@CRYPTO_ALG_NEED_FALLBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_aead*)* @spacc_aead_cra_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spacc_aead_cra_init(%struct.crypto_aead* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto_aead*, align 8
  %4 = alloca %struct.spacc_aead_ctx*, align 8
  %5 = alloca %struct.aead_alg*, align 8
  %6 = alloca %struct.spacc_aead*, align 8
  %7 = alloca %struct.spacc_engine*, align 8
  store %struct.crypto_aead* %0, %struct.crypto_aead** %3, align 8
  %8 = load %struct.crypto_aead*, %struct.crypto_aead** %3, align 8
  %9 = call %struct.spacc_aead_ctx* @crypto_aead_ctx(%struct.crypto_aead* %8)
  store %struct.spacc_aead_ctx* %9, %struct.spacc_aead_ctx** %4, align 8
  %10 = load %struct.crypto_aead*, %struct.crypto_aead** %3, align 8
  %11 = call %struct.aead_alg* @crypto_aead_alg(%struct.crypto_aead* %10)
  store %struct.aead_alg* %11, %struct.aead_alg** %5, align 8
  %12 = load %struct.aead_alg*, %struct.aead_alg** %5, align 8
  %13 = call %struct.spacc_aead* @to_spacc_aead(%struct.aead_alg* %12)
  store %struct.spacc_aead* %13, %struct.spacc_aead** %6, align 8
  %14 = load %struct.spacc_aead*, %struct.spacc_aead** %6, align 8
  %15 = getelementptr inbounds %struct.spacc_aead, %struct.spacc_aead* %14, i32 0, i32 3
  %16 = load %struct.spacc_engine*, %struct.spacc_engine** %15, align 8
  store %struct.spacc_engine* %16, %struct.spacc_engine** %7, align 8
  %17 = load %struct.spacc_aead*, %struct.spacc_aead** %6, align 8
  %18 = getelementptr inbounds %struct.spacc_aead, %struct.spacc_aead* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.spacc_aead_ctx*, %struct.spacc_aead_ctx** %4, align 8
  %21 = getelementptr inbounds %struct.spacc_aead_ctx, %struct.spacc_aead_ctx* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 3
  store i32 %19, i32* %22, align 8
  %23 = load %struct.spacc_engine*, %struct.spacc_engine** %7, align 8
  %24 = load %struct.spacc_aead_ctx*, %struct.spacc_aead_ctx** %4, align 8
  %25 = getelementptr inbounds %struct.spacc_aead_ctx, %struct.spacc_aead_ctx* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  store %struct.spacc_engine* %23, %struct.spacc_engine** %26, align 8
  %27 = load %struct.aead_alg*, %struct.aead_alg** %5, align 8
  %28 = getelementptr inbounds %struct.aead_alg, %struct.aead_alg* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @CRYPTO_ALG_NEED_FALLBACK, align 4
  %32 = call i32 @crypto_alloc_aead(i32 %30, i32 0, i32 %31)
  %33 = load %struct.spacc_aead_ctx*, %struct.spacc_aead_ctx** %4, align 8
  %34 = getelementptr inbounds %struct.spacc_aead_ctx, %struct.spacc_aead_ctx* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.spacc_aead_ctx*, %struct.spacc_aead_ctx** %4, align 8
  %36 = getelementptr inbounds %struct.spacc_aead_ctx, %struct.spacc_aead_ctx* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @IS_ERR(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %1
  %41 = load %struct.spacc_aead_ctx*, %struct.spacc_aead_ctx** %4, align 8
  %42 = getelementptr inbounds %struct.spacc_aead_ctx, %struct.spacc_aead_ctx* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @PTR_ERR(i32 %43)
  store i32 %44, i32* %2, align 4
  br label %66

45:                                               ; preds = %1
  %46 = load %struct.spacc_aead*, %struct.spacc_aead** %6, align 8
  %47 = getelementptr inbounds %struct.spacc_aead, %struct.spacc_aead* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.spacc_aead_ctx*, %struct.spacc_aead_ctx** %4, align 8
  %50 = getelementptr inbounds %struct.spacc_aead_ctx, %struct.spacc_aead_ctx* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  store i32 %48, i32* %51, align 4
  %52 = load %struct.spacc_aead*, %struct.spacc_aead** %6, align 8
  %53 = getelementptr inbounds %struct.spacc_aead, %struct.spacc_aead* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.spacc_aead_ctx*, %struct.spacc_aead_ctx** %4, align 8
  %56 = getelementptr inbounds %struct.spacc_aead_ctx, %struct.spacc_aead_ctx* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 8
  %58 = load %struct.crypto_aead*, %struct.crypto_aead** %3, align 8
  %59 = load %struct.spacc_aead_ctx*, %struct.spacc_aead_ctx** %4, align 8
  %60 = getelementptr inbounds %struct.spacc_aead_ctx, %struct.spacc_aead_ctx* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @crypto_aead_reqsize(i32 %61)
  %63 = add i64 4, %62
  %64 = call i32 @max(i32 4, i64 %63)
  %65 = call i32 @crypto_aead_set_reqsize(%struct.crypto_aead* %58, i32 %64)
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %45, %40
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local %struct.spacc_aead_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local %struct.aead_alg* @crypto_aead_alg(%struct.crypto_aead*) #1

declare dso_local %struct.spacc_aead* @to_spacc_aead(%struct.aead_alg*) #1

declare dso_local i32 @crypto_alloc_aead(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @crypto_aead_set_reqsize(%struct.crypto_aead*, i32) #1

declare dso_local i32 @max(i32, i64) #1

declare dso_local i64 @crypto_aead_reqsize(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

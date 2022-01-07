; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_picoxcell_crypto.c_spacc_ablk_cra_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_picoxcell_crypto.c_spacc_ablk_cra_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { %struct.TYPE_4__, %struct.crypto_alg* }
%struct.TYPE_4__ = type { i32 }
%struct.crypto_alg = type { i32, i32 }
%struct.spacc_ablk_ctx = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, %struct.spacc_engine*, i32 }
%struct.spacc_engine = type { i32 }
%struct.spacc_alg = type { i32, i32, i32, %struct.spacc_engine* }

@CRYPTO_ALG_NEED_FALLBACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"failed to allocate fallback for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*)* @spacc_ablk_cra_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spacc_ablk_cra_init(%struct.crypto_tfm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto_tfm*, align 8
  %4 = alloca %struct.spacc_ablk_ctx*, align 8
  %5 = alloca %struct.crypto_alg*, align 8
  %6 = alloca %struct.spacc_alg*, align 8
  %7 = alloca %struct.spacc_engine*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %3, align 8
  %8 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %9 = call %struct.spacc_ablk_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %8)
  store %struct.spacc_ablk_ctx* %9, %struct.spacc_ablk_ctx** %4, align 8
  %10 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %11 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %10, i32 0, i32 1
  %12 = load %struct.crypto_alg*, %struct.crypto_alg** %11, align 8
  store %struct.crypto_alg* %12, %struct.crypto_alg** %5, align 8
  %13 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %14 = call %struct.spacc_alg* @to_spacc_alg(%struct.crypto_alg* %13)
  store %struct.spacc_alg* %14, %struct.spacc_alg** %6, align 8
  %15 = load %struct.spacc_alg*, %struct.spacc_alg** %6, align 8
  %16 = getelementptr inbounds %struct.spacc_alg, %struct.spacc_alg* %15, i32 0, i32 3
  %17 = load %struct.spacc_engine*, %struct.spacc_engine** %16, align 8
  store %struct.spacc_engine* %17, %struct.spacc_engine** %7, align 8
  %18 = load %struct.spacc_alg*, %struct.spacc_alg** %6, align 8
  %19 = getelementptr inbounds %struct.spacc_alg, %struct.spacc_alg* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.spacc_ablk_ctx*, %struct.spacc_ablk_ctx** %4, align 8
  %22 = getelementptr inbounds %struct.spacc_ablk_ctx, %struct.spacc_ablk_ctx* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 3
  store i32 %20, i32* %23, align 8
  %24 = load %struct.spacc_engine*, %struct.spacc_engine** %7, align 8
  %25 = load %struct.spacc_ablk_ctx*, %struct.spacc_ablk_ctx** %4, align 8
  %26 = getelementptr inbounds %struct.spacc_ablk_ctx, %struct.spacc_ablk_ctx* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  store %struct.spacc_engine* %24, %struct.spacc_engine** %27, align 8
  %28 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %29 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @CRYPTO_ALG_NEED_FALLBACK, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %60

34:                                               ; preds = %1
  %35 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %36 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @CRYPTO_ALG_NEED_FALLBACK, align 4
  %39 = call i32 @crypto_alloc_sync_skcipher(i32 %37, i32 0, i32 %38)
  %40 = load %struct.spacc_ablk_ctx*, %struct.spacc_ablk_ctx** %4, align 8
  %41 = getelementptr inbounds %struct.spacc_ablk_ctx, %struct.spacc_ablk_ctx* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = load %struct.spacc_ablk_ctx*, %struct.spacc_ablk_ctx** %4, align 8
  %43 = getelementptr inbounds %struct.spacc_ablk_ctx, %struct.spacc_ablk_ctx* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @IS_ERR(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %34
  %48 = load %struct.spacc_engine*, %struct.spacc_engine** %7, align 8
  %49 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %52 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @dev_warn(i32 %50, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load %struct.spacc_ablk_ctx*, %struct.spacc_ablk_ctx** %4, align 8
  %56 = getelementptr inbounds %struct.spacc_ablk_ctx, %struct.spacc_ablk_ctx* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @PTR_ERR(i32 %57)
  store i32 %58, i32* %2, align 4
  br label %76

59:                                               ; preds = %34
  br label %60

60:                                               ; preds = %59, %1
  %61 = load %struct.spacc_alg*, %struct.spacc_alg** %6, align 8
  %62 = getelementptr inbounds %struct.spacc_alg, %struct.spacc_alg* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.spacc_ablk_ctx*, %struct.spacc_ablk_ctx** %4, align 8
  %65 = getelementptr inbounds %struct.spacc_ablk_ctx, %struct.spacc_ablk_ctx* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  store i32 %63, i32* %66, align 4
  %67 = load %struct.spacc_alg*, %struct.spacc_alg** %6, align 8
  %68 = getelementptr inbounds %struct.spacc_alg, %struct.spacc_alg* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.spacc_ablk_ctx*, %struct.spacc_ablk_ctx** %4, align 8
  %71 = getelementptr inbounds %struct.spacc_ablk_ctx, %struct.spacc_ablk_ctx* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  store i32 %69, i32* %72, align 8
  %73 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %74 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  store i32 4, i32* %75, align 8
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %60, %47
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local %struct.spacc_ablk_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local %struct.spacc_alg* @to_spacc_alg(%struct.crypto_alg*) #1

declare dso_local i32 @crypto_alloc_sync_skcipher(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

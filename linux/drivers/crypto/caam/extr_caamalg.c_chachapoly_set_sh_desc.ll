; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg.c_chachapoly_set_sh_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg.c_chachapoly_set_sh_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead = type { i32 }
%struct.caam_ctx = type { i32, i32, i32, i32, %struct.TYPE_2__, i32*, i32, i32*, %struct.device* }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_aead*)* @chachapoly_set_sh_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chachapoly_set_sh_desc(%struct.crypto_aead* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto_aead*, align 8
  %4 = alloca %struct.caam_ctx*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.crypto_aead* %0, %struct.crypto_aead** %3, align 8
  %8 = load %struct.crypto_aead*, %struct.crypto_aead** %3, align 8
  %9 = call %struct.caam_ctx* @crypto_aead_ctx(%struct.crypto_aead* %8)
  store %struct.caam_ctx* %9, %struct.caam_ctx** %4, align 8
  %10 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %11 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %10, i32 0, i32 8
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %5, align 8
  %13 = load %struct.crypto_aead*, %struct.crypto_aead** %3, align 8
  %14 = call i32 @crypto_aead_ivsize(%struct.crypto_aead* %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %16 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %22 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20, %1
  store i32 0, i32* %2, align 4
  br label %73

26:                                               ; preds = %20
  %27 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %28 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %27, i32 0, i32 7
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %7, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %32 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %31, i32 0, i32 4
  %33 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %34 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %33, i32 0, i32 3
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %37 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @cnstr_shdsc_chachapoly(i32* %30, %struct.TYPE_2__* %32, i32* %34, i32 %35, i32 %38, i32 1, i32 0)
  %40 = load %struct.device*, %struct.device** %5, align 8
  %41 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %42 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = call i32 @desc_bytes(i32* %44)
  %46 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %47 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @dma_sync_single_for_device(%struct.device* %40, i32 %43, i32 %45, i32 %48)
  %50 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %51 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %50, i32 0, i32 5
  %52 = load i32*, i32** %51, align 8
  store i32* %52, i32** %7, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %55 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %54, i32 0, i32 4
  %56 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %57 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %56, i32 0, i32 3
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %60 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @cnstr_shdsc_chachapoly(i32* %53, %struct.TYPE_2__* %55, i32* %57, i32 %58, i32 %61, i32 0, i32 0)
  %63 = load %struct.device*, %struct.device** %5, align 8
  %64 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %65 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %7, align 8
  %68 = call i32 @desc_bytes(i32* %67)
  %69 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %70 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @dma_sync_single_for_device(%struct.device* %63, i32 %66, i32 %68, i32 %71)
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %26, %25
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local %struct.caam_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local i32 @crypto_aead_ivsize(%struct.crypto_aead*) #1

declare dso_local i32 @cnstr_shdsc_chachapoly(i32*, %struct.TYPE_2__*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @dma_sync_single_for_device(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @desc_bytes(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

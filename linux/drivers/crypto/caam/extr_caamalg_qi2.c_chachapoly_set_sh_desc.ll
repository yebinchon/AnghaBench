; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg_qi2.c_chachapoly_set_sh_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg_qi2.c_chachapoly_set_sh_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead = type { i32 }
%struct.caam_ctx = type { i32, i32*, i32, i32, %struct.TYPE_2__, %struct.caam_flc*, %struct.device* }
%struct.TYPE_2__ = type { i32 }
%struct.caam_flc = type { i8**, i32* }
%struct.device = type { i32 }

@ENCRYPT = common dso_local global i64 0, align 8
@DECRYPT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_aead*)* @chachapoly_set_sh_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chachapoly_set_sh_desc(%struct.crypto_aead* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto_aead*, align 8
  %4 = alloca %struct.caam_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.caam_flc*, align 8
  %8 = alloca i32*, align 8
  store %struct.crypto_aead* %0, %struct.crypto_aead** %3, align 8
  %9 = load %struct.crypto_aead*, %struct.crypto_aead** %3, align 8
  %10 = call %struct.caam_ctx* @crypto_aead_ctx(%struct.crypto_aead* %9)
  store %struct.caam_ctx* %10, %struct.caam_ctx** %4, align 8
  %11 = load %struct.crypto_aead*, %struct.crypto_aead** %3, align 8
  %12 = call i32 @crypto_aead_ivsize(%struct.crypto_aead* %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %14 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %13, i32 0, i32 6
  %15 = load %struct.device*, %struct.device** %14, align 8
  store %struct.device* %15, %struct.device** %6, align 8
  %16 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %17 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %23 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21, %1
  store i32 0, i32* %2, align 4
  br label %110

27:                                               ; preds = %21
  %28 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %29 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %28, i32 0, i32 5
  %30 = load %struct.caam_flc*, %struct.caam_flc** %29, align 8
  %31 = load i64, i64* @ENCRYPT, align 8
  %32 = getelementptr inbounds %struct.caam_flc, %struct.caam_flc* %30, i64 %31
  store %struct.caam_flc* %32, %struct.caam_flc** %7, align 8
  %33 = load %struct.caam_flc*, %struct.caam_flc** %7, align 8
  %34 = getelementptr inbounds %struct.caam_flc, %struct.caam_flc* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %8, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %38 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %37, i32 0, i32 4
  %39 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %40 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %39, i32 0, i32 3
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %43 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @cnstr_shdsc_chachapoly(i32* %36, %struct.TYPE_2__* %38, i32* %40, i32 %41, i32 %44, i32 1, i32 1)
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 @desc_len(i32* %46)
  %48 = call i8* @cpu_to_caam32(i32 %47)
  %49 = load %struct.caam_flc*, %struct.caam_flc** %7, align 8
  %50 = getelementptr inbounds %struct.caam_flc, %struct.caam_flc* %49, i32 0, i32 0
  %51 = load i8**, i8*** %50, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 1
  store i8* %48, i8** %52, align 8
  %53 = load %struct.device*, %struct.device** %6, align 8
  %54 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %55 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* @ENCRYPT, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %8, align 8
  %61 = call i32 @desc_bytes(i32* %60)
  %62 = sext i32 %61 to i64
  %63 = add i64 8, %62
  %64 = trunc i64 %63 to i32
  %65 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %66 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @dma_sync_single_for_device(%struct.device* %53, i32 %59, i32 %64, i32 %67)
  %69 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %70 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %69, i32 0, i32 5
  %71 = load %struct.caam_flc*, %struct.caam_flc** %70, align 8
  %72 = load i64, i64* @DECRYPT, align 8
  %73 = getelementptr inbounds %struct.caam_flc, %struct.caam_flc* %71, i64 %72
  store %struct.caam_flc* %73, %struct.caam_flc** %7, align 8
  %74 = load %struct.caam_flc*, %struct.caam_flc** %7, align 8
  %75 = getelementptr inbounds %struct.caam_flc, %struct.caam_flc* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  store i32* %76, i32** %8, align 8
  %77 = load i32*, i32** %8, align 8
  %78 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %79 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %78, i32 0, i32 4
  %80 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %81 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %80, i32 0, i32 3
  %82 = load i32, i32* %5, align 4
  %83 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %84 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @cnstr_shdsc_chachapoly(i32* %77, %struct.TYPE_2__* %79, i32* %81, i32 %82, i32 %85, i32 0, i32 1)
  %87 = load i32*, i32** %8, align 8
  %88 = call i32 @desc_len(i32* %87)
  %89 = call i8* @cpu_to_caam32(i32 %88)
  %90 = load %struct.caam_flc*, %struct.caam_flc** %7, align 8
  %91 = getelementptr inbounds %struct.caam_flc, %struct.caam_flc* %90, i32 0, i32 0
  %92 = load i8**, i8*** %91, align 8
  %93 = getelementptr inbounds i8*, i8** %92, i64 1
  store i8* %89, i8** %93, align 8
  %94 = load %struct.device*, %struct.device** %6, align 8
  %95 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %96 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load i64, i64* @DECRYPT, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load i32*, i32** %8, align 8
  %102 = call i32 @desc_bytes(i32* %101)
  %103 = sext i32 %102 to i64
  %104 = add i64 8, %103
  %105 = trunc i64 %104 to i32
  %106 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %107 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @dma_sync_single_for_device(%struct.device* %94, i32 %100, i32 %105, i32 %108)
  store i32 0, i32* %2, align 4
  br label %110

110:                                              ; preds = %27, %26
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local %struct.caam_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local i32 @crypto_aead_ivsize(%struct.crypto_aead*) #1

declare dso_local i32 @cnstr_shdsc_chachapoly(i32*, %struct.TYPE_2__*, i32*, i32, i32, i32, i32) #1

declare dso_local i8* @cpu_to_caam32(i32) #1

declare dso_local i32 @desc_len(i32*) #1

declare dso_local i32 @dma_sync_single_for_device(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @desc_bytes(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

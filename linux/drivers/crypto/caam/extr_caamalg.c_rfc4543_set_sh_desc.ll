; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg.c_rfc4543_set_sh_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg.c_rfc4543_set_sh_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead = type { i32 }
%struct.caam_ctx = type { i32, i32, i32, %struct.TYPE_3__, i32*, i32, i32, i32, i32*, %struct.device* }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.device = type { i32 }

@CAAM_DESC_BYTES_MAX = common dso_local global i32 0, align 4
@GCM_DESC_JOB_IO_LEN = common dso_local global i32 0, align 4
@DESC_RFC4543_ENC_LEN = common dso_local global i32 0, align 4
@DESC_RFC4543_DEC_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_aead*)* @rfc4543_set_sh_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rfc4543_set_sh_desc(%struct.crypto_aead* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto_aead*, align 8
  %4 = alloca %struct.caam_ctx*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.crypto_aead* %0, %struct.crypto_aead** %3, align 8
  %9 = load %struct.crypto_aead*, %struct.crypto_aead** %3, align 8
  %10 = call %struct.caam_ctx* @crypto_aead_ctx(%struct.crypto_aead* %9)
  store %struct.caam_ctx* %10, %struct.caam_ctx** %4, align 8
  %11 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %12 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %11, i32 0, i32 9
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %5, align 8
  %14 = load %struct.crypto_aead*, %struct.crypto_aead** %3, align 8
  %15 = call i32 @crypto_aead_ivsize(%struct.crypto_aead* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* @CAAM_DESC_BYTES_MAX, align 4
  %17 = load i32, i32* @GCM_DESC_JOB_IO_LEN, align 4
  %18 = sub nsw i32 %16, %17
  %19 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %20 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 %18, %22
  store i32 %23, i32* %8, align 4
  %24 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %25 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %1
  %30 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %31 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29, %1
  store i32 0, i32* %2, align 4
  br label %126

35:                                               ; preds = %29
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @DESC_RFC4543_ENC_LEN, align 4
  %38 = icmp sge i32 %36, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %35
  %40 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %41 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  store i32 1, i32* %42, align 4
  %43 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %44 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %47 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 3
  store i32 %45, i32* %48, align 4
  br label %59

49:                                               ; preds = %35
  %50 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %51 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  store i32 0, i32* %52, align 4
  %53 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %54 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %57 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  store i32 %55, i32* %58, align 4
  br label %59

59:                                               ; preds = %49, %39
  %60 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %61 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %60, i32 0, i32 8
  %62 = load i32*, i32** %61, align 8
  store i32* %62, i32** %7, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %65 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %64, i32 0, i32 3
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %68 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @cnstr_shdsc_rfc4543_encap(i32* %63, %struct.TYPE_3__* %65, i32 %66, i32 %69, i32 0)
  %71 = load %struct.device*, %struct.device** %5, align 8
  %72 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %73 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %72, i32 0, i32 7
  %74 = load i32, i32* %73, align 8
  %75 = load i32*, i32** %7, align 8
  %76 = call i32 @desc_bytes(i32* %75)
  %77 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %78 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @dma_sync_single_for_device(%struct.device* %71, i32 %74, i32 %76, i32 %79)
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @DESC_RFC4543_DEC_LEN, align 4
  %83 = icmp sge i32 %81, %82
  br i1 %83, label %84, label %94

84:                                               ; preds = %59
  %85 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %86 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  store i32 1, i32* %87, align 4
  %88 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %89 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %88, i32 0, i32 6
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %92 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 3
  store i32 %90, i32* %93, align 4
  br label %104

94:                                               ; preds = %59
  %95 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %96 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 1
  store i32 0, i32* %97, align 4
  %98 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %99 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %102 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 2
  store i32 %100, i32* %103, align 4
  br label %104

104:                                              ; preds = %94, %84
  %105 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %106 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %105, i32 0, i32 4
  %107 = load i32*, i32** %106, align 8
  store i32* %107, i32** %7, align 8
  %108 = load i32*, i32** %7, align 8
  %109 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %110 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %109, i32 0, i32 3
  %111 = load i32, i32* %6, align 4
  %112 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %113 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @cnstr_shdsc_rfc4543_decap(i32* %108, %struct.TYPE_3__* %110, i32 %111, i32 %114, i32 0)
  %116 = load %struct.device*, %struct.device** %5, align 8
  %117 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %118 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32*, i32** %7, align 8
  %121 = call i32 @desc_bytes(i32* %120)
  %122 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %123 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @dma_sync_single_for_device(%struct.device* %116, i32 %119, i32 %121, i32 %124)
  store i32 0, i32* %2, align 4
  br label %126

126:                                              ; preds = %104, %34
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local %struct.caam_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local i32 @crypto_aead_ivsize(%struct.crypto_aead*) #1

declare dso_local i32 @cnstr_shdsc_rfc4543_encap(i32*, %struct.TYPE_3__*, i32, i32, i32) #1

declare dso_local i32 @dma_sync_single_for_device(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @desc_bytes(i32*) #1

declare dso_local i32 @cnstr_shdsc_rfc4543_decap(i32*, %struct.TYPE_3__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

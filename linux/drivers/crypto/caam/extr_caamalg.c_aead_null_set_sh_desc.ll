; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg.c_aead_null_set_sh_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg.c_aead_null_set_sh_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead = type { i32 }
%struct.caam_ctx = type { i32, i32, i32, %struct.TYPE_3__, i32*, i32, i32, i32, i32*, %struct.device* }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.device = type { i32 }
%struct.caam_drv_private = type { i32 }

@CAAM_DESC_BYTES_MAX = common dso_local global i32 0, align 4
@AEAD_DESC_JOB_IO_LEN = common dso_local global i32 0, align 4
@DESC_AEAD_NULL_ENC_LEN = common dso_local global i32 0, align 4
@DESC_AEAD_NULL_DEC_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_aead*)* @aead_null_set_sh_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aead_null_set_sh_desc(%struct.crypto_aead* %0) #0 {
  %2 = alloca %struct.crypto_aead*, align 8
  %3 = alloca %struct.caam_ctx*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.caam_drv_private*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.crypto_aead* %0, %struct.crypto_aead** %2, align 8
  %8 = load %struct.crypto_aead*, %struct.crypto_aead** %2, align 8
  %9 = call %struct.caam_ctx* @crypto_aead_ctx(%struct.crypto_aead* %8)
  store %struct.caam_ctx* %9, %struct.caam_ctx** %3, align 8
  %10 = load %struct.caam_ctx*, %struct.caam_ctx** %3, align 8
  %11 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %10, i32 0, i32 9
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.caam_drv_private* @dev_get_drvdata(i32 %15)
  store %struct.caam_drv_private* %16, %struct.caam_drv_private** %5, align 8
  %17 = load i32, i32* @CAAM_DESC_BYTES_MAX, align 4
  %18 = load i32, i32* @AEAD_DESC_JOB_IO_LEN, align 4
  %19 = sub nsw i32 %17, %18
  %20 = load %struct.caam_ctx*, %struct.caam_ctx** %3, align 8
  %21 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %19, %23
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @DESC_AEAD_NULL_ENC_LEN, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %1
  %29 = load %struct.caam_ctx*, %struct.caam_ctx** %3, align 8
  %30 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  store i32 1, i32* %31, align 4
  %32 = load %struct.caam_ctx*, %struct.caam_ctx** %3, align 8
  %33 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.caam_ctx*, %struct.caam_ctx** %3, align 8
  %36 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 3
  store i32 %34, i32* %37, align 4
  br label %48

38:                                               ; preds = %1
  %39 = load %struct.caam_ctx*, %struct.caam_ctx** %3, align 8
  %40 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  store i32 0, i32* %41, align 4
  %42 = load %struct.caam_ctx*, %struct.caam_ctx** %3, align 8
  %43 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.caam_ctx*, %struct.caam_ctx** %3, align 8
  %46 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  store i32 %44, i32* %47, align 4
  br label %48

48:                                               ; preds = %38, %28
  %49 = load %struct.caam_ctx*, %struct.caam_ctx** %3, align 8
  %50 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %49, i32 0, i32 8
  %51 = load i32*, i32** %50, align 8
  store i32* %51, i32** %6, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = load %struct.caam_ctx*, %struct.caam_ctx** %3, align 8
  %54 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %53, i32 0, i32 3
  %55 = load %struct.caam_ctx*, %struct.caam_ctx** %3, align 8
  %56 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.caam_drv_private*, %struct.caam_drv_private** %5, align 8
  %59 = getelementptr inbounds %struct.caam_drv_private, %struct.caam_drv_private* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @cnstr_shdsc_aead_null_encap(i32* %52, %struct.TYPE_3__* %54, i32 %57, i32 %60)
  %62 = load %struct.device*, %struct.device** %4, align 8
  %63 = load %struct.caam_ctx*, %struct.caam_ctx** %3, align 8
  %64 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %63, i32 0, i32 7
  %65 = load i32, i32* %64, align 8
  %66 = load i32*, i32** %6, align 8
  %67 = call i32 @desc_bytes(i32* %66)
  %68 = load %struct.caam_ctx*, %struct.caam_ctx** %3, align 8
  %69 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @dma_sync_single_for_device(%struct.device* %62, i32 %65, i32 %67, i32 %70)
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @DESC_AEAD_NULL_DEC_LEN, align 4
  %74 = icmp sge i32 %72, %73
  br i1 %74, label %75, label %85

75:                                               ; preds = %48
  %76 = load %struct.caam_ctx*, %struct.caam_ctx** %3, align 8
  %77 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  store i32 1, i32* %78, align 4
  %79 = load %struct.caam_ctx*, %struct.caam_ctx** %3, align 8
  %80 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.caam_ctx*, %struct.caam_ctx** %3, align 8
  %83 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 3
  store i32 %81, i32* %84, align 4
  br label %95

85:                                               ; preds = %48
  %86 = load %struct.caam_ctx*, %struct.caam_ctx** %3, align 8
  %87 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  store i32 0, i32* %88, align 4
  %89 = load %struct.caam_ctx*, %struct.caam_ctx** %3, align 8
  %90 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.caam_ctx*, %struct.caam_ctx** %3, align 8
  %93 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 2
  store i32 %91, i32* %94, align 4
  br label %95

95:                                               ; preds = %85, %75
  %96 = load %struct.caam_ctx*, %struct.caam_ctx** %3, align 8
  %97 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %96, i32 0, i32 4
  %98 = load i32*, i32** %97, align 8
  store i32* %98, i32** %6, align 8
  %99 = load i32*, i32** %6, align 8
  %100 = load %struct.caam_ctx*, %struct.caam_ctx** %3, align 8
  %101 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %100, i32 0, i32 3
  %102 = load %struct.caam_ctx*, %struct.caam_ctx** %3, align 8
  %103 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.caam_drv_private*, %struct.caam_drv_private** %5, align 8
  %106 = getelementptr inbounds %struct.caam_drv_private, %struct.caam_drv_private* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @cnstr_shdsc_aead_null_decap(i32* %99, %struct.TYPE_3__* %101, i32 %104, i32 %107)
  %109 = load %struct.device*, %struct.device** %4, align 8
  %110 = load %struct.caam_ctx*, %struct.caam_ctx** %3, align 8
  %111 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32*, i32** %6, align 8
  %114 = call i32 @desc_bytes(i32* %113)
  %115 = load %struct.caam_ctx*, %struct.caam_ctx** %3, align 8
  %116 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @dma_sync_single_for_device(%struct.device* %109, i32 %112, i32 %114, i32 %117)
  ret i32 0
}

declare dso_local %struct.caam_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local %struct.caam_drv_private* @dev_get_drvdata(i32) #1

declare dso_local i32 @cnstr_shdsc_aead_null_encap(i32*, %struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @dma_sync_single_for_device(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @desc_bytes(i32*) #1

declare dso_local i32 @cnstr_shdsc_aead_null_decap(i32*, %struct.TYPE_3__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-tdes.c_atmel_tdes_crypt_pdc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-tdes.c_atmel_tdes_crypt_pdc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.atmel_tdes_ctx = type { %struct.atmel_tdes_dev* }
%struct.atmel_tdes_dev = type { i32, i32, i32 }

@TDES_FLAGS_FAST = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@TDES_FLAGS_CFB = common dso_local global i32 0, align 4
@TDES_FLAGS_CFB8 = common dso_local global i32 0, align 4
@TDES_FLAGS_CFB16 = common dso_local global i32 0, align 4
@TDES_PTCR = common dso_local global i32 0, align 4
@TDES_PTCR_TXTDIS = common dso_local global i32 0, align 4
@TDES_PTCR_RXTDIS = common dso_local global i32 0, align 4
@TDES_TPR = common dso_local global i32 0, align 4
@TDES_TCR = common dso_local global i32 0, align 4
@TDES_RPR = common dso_local global i32 0, align 4
@TDES_RCR = common dso_local global i32 0, align 4
@TDES_IER = common dso_local global i32 0, align 4
@TDES_INT_ENDRX = common dso_local global i32 0, align 4
@TDES_PTCR_TXTEN = common dso_local global i32 0, align 4
@TDES_PTCR_RXTEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*, i32, i32, i32)* @atmel_tdes_crypt_pdc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_tdes_crypt_pdc(%struct.crypto_tfm* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.crypto_tfm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.atmel_tdes_ctx*, align 8
  %10 = alloca %struct.atmel_tdes_dev*, align 8
  %11 = alloca i32, align 4
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %13 = call %struct.atmel_tdes_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %12)
  store %struct.atmel_tdes_ctx* %13, %struct.atmel_tdes_ctx** %9, align 8
  %14 = load %struct.atmel_tdes_ctx*, %struct.atmel_tdes_ctx** %9, align 8
  %15 = getelementptr inbounds %struct.atmel_tdes_ctx, %struct.atmel_tdes_ctx* %14, i32 0, i32 0
  %16 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %15, align 8
  store %struct.atmel_tdes_dev* %16, %struct.atmel_tdes_dev** %10, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %10, align 8
  %19 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %10, align 8
  %21 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @TDES_FLAGS_FAST, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %4
  %27 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %10, align 8
  %28 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @DMA_TO_DEVICE, align 4
  %33 = call i32 @dma_sync_single_for_device(i32 %29, i32 %30, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %26, %4
  %35 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %10, align 8
  %36 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @TDES_FLAGS_CFB, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %34
  %42 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %10, align 8
  %43 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @TDES_FLAGS_CFB8, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @DIV_ROUND_UP(i32 %49, i32 4)
  store i32 %50, i32* %11, align 4
  br label %72

51:                                               ; preds = %41, %34
  %52 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %10, align 8
  %53 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @TDES_FLAGS_CFB, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %51
  %59 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %10, align 8
  %60 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @TDES_FLAGS_CFB16, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @DIV_ROUND_UP(i32 %66, i32 4)
  store i32 %67, i32* %11, align 4
  br label %71

68:                                               ; preds = %58, %51
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @DIV_ROUND_UP(i32 %69, i32 4)
  store i32 %70, i32* %11, align 4
  br label %71

71:                                               ; preds = %68, %65
  br label %72

72:                                               ; preds = %71, %48
  %73 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %10, align 8
  %74 = load i32, i32* @TDES_PTCR, align 4
  %75 = load i32, i32* @TDES_PTCR_TXTDIS, align 4
  %76 = load i32, i32* @TDES_PTCR_RXTDIS, align 4
  %77 = or i32 %75, %76
  %78 = call i32 @atmel_tdes_write(%struct.atmel_tdes_dev* %73, i32 %74, i32 %77)
  %79 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %10, align 8
  %80 = load i32, i32* @TDES_TPR, align 4
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @atmel_tdes_write(%struct.atmel_tdes_dev* %79, i32 %80, i32 %81)
  %83 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %10, align 8
  %84 = load i32, i32* @TDES_TCR, align 4
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @atmel_tdes_write(%struct.atmel_tdes_dev* %83, i32 %84, i32 %85)
  %87 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %10, align 8
  %88 = load i32, i32* @TDES_RPR, align 4
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @atmel_tdes_write(%struct.atmel_tdes_dev* %87, i32 %88, i32 %89)
  %91 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %10, align 8
  %92 = load i32, i32* @TDES_RCR, align 4
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @atmel_tdes_write(%struct.atmel_tdes_dev* %91, i32 %92, i32 %93)
  %95 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %10, align 8
  %96 = load i32, i32* @TDES_IER, align 4
  %97 = load i32, i32* @TDES_INT_ENDRX, align 4
  %98 = call i32 @atmel_tdes_write(%struct.atmel_tdes_dev* %95, i32 %96, i32 %97)
  %99 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %10, align 8
  %100 = load i32, i32* @TDES_PTCR, align 4
  %101 = load i32, i32* @TDES_PTCR_TXTEN, align 4
  %102 = load i32, i32* @TDES_PTCR_RXTEN, align 4
  %103 = or i32 %101, %102
  %104 = call i32 @atmel_tdes_write(%struct.atmel_tdes_dev* %99, i32 %100, i32 %103)
  ret i32 0
}

declare dso_local %struct.atmel_tdes_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @dma_sync_single_for_device(i32, i32, i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @atmel_tdes_write(%struct.atmel_tdes_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

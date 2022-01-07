; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-tdes.c_atmel_tdes_crypt_pdc_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-tdes.c_atmel_tdes_crypt_pdc_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_tdes_dev = type { i32, i64, i32, i32, i32, i32, i32, i32, i32 }

@TDES_PTCR = common dso_local global i32 0, align 4
@TDES_PTCR_TXTDIS = common dso_local global i32 0, align 4
@TDES_PTCR_RXTDIS = common dso_local global i32 0, align 4
@TDES_FLAGS_FAST = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"not all data converted: %zu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_tdes_dev*)* @atmel_tdes_crypt_pdc_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_tdes_crypt_pdc_stop(%struct.atmel_tdes_dev* %0) #0 {
  %2 = alloca %struct.atmel_tdes_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.atmel_tdes_dev* %0, %struct.atmel_tdes_dev** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %2, align 8
  %6 = load i32, i32* @TDES_PTCR, align 4
  %7 = load i32, i32* @TDES_PTCR_TXTDIS, align 4
  %8 = load i32, i32* @TDES_PTCR_RXTDIS, align 4
  %9 = or i32 %7, %8
  %10 = call i32 @atmel_tdes_write(%struct.atmel_tdes_dev* %5, i32 %6, i32 %9)
  %11 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %2, align 8
  %12 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @TDES_FLAGS_FAST, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %1
  %18 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %2, align 8
  %19 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %18, i32 0, i32 7
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %2, align 8
  %22 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %25 = call i32 @dma_unmap_sg(i32 %20, i32 %23, i32 1, i32 %24)
  %26 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %2, align 8
  %27 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %26, i32 0, i32 7
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %2, align 8
  %30 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %29, i32 0, i32 8
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @DMA_TO_DEVICE, align 4
  %33 = call i32 @dma_unmap_sg(i32 %28, i32 %31, i32 1, i32 %32)
  br label %71

34:                                               ; preds = %1
  %35 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %2, align 8
  %36 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %2, align 8
  %39 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %2, align 8
  %42 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %45 = call i32 @dma_sync_single_for_device(i32 %37, i32 %40, i64 %43, i32 %44)
  %46 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %2, align 8
  %47 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %46, i32 0, i32 5
  %48 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %2, align 8
  %49 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %48, i32 0, i32 4
  %50 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %2, align 8
  %51 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %2, align 8
  %54 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %2, align 8
  %57 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call i64 @atmel_tdes_sg_copy(i32* %47, i32* %49, i32 %52, i32 %55, i64 %58, i32 1)
  store i64 %59, i64* %4, align 8
  %60 = load i64, i64* %4, align 8
  %61 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %2, align 8
  %62 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %60, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %34
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  %68 = load i64, i64* %4, align 8
  %69 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %68)
  br label %70

70:                                               ; preds = %65, %34
  br label %71

71:                                               ; preds = %70, %17
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @atmel_tdes_write(%struct.atmel_tdes_dev*, i32, i32) #1

declare dso_local i32 @dma_unmap_sg(i32, i32, i32, i32) #1

declare dso_local i32 @dma_sync_single_for_device(i32, i32, i64, i32) #1

declare dso_local i64 @atmel_tdes_sg_copy(i32*, i32*, i32, i32, i64, i32) #1

declare dso_local i32 @pr_err(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

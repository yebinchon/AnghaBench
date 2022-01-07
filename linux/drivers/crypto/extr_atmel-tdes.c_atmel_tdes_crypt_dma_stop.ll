; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-tdes.c_atmel_tdes_crypt_dma_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-tdes.c_atmel_tdes_crypt_dma_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_tdes_dev = type { i32, i64, i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@TDES_FLAGS_DMA = common dso_local global i32 0, align 4
@TDES_FLAGS_FAST = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"not all data converted: %zu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_tdes_dev*)* @atmel_tdes_crypt_dma_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_tdes_crypt_dma_stop(%struct.atmel_tdes_dev* %0) #0 {
  %2 = alloca %struct.atmel_tdes_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.atmel_tdes_dev* %0, %struct.atmel_tdes_dev** %2, align 8
  %5 = load i32, i32* @EINVAL, align 4
  %6 = sub nsw i32 0, %5
  store i32 %6, i32* %3, align 4
  %7 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %2, align 8
  %8 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @TDES_FLAGS_DMA, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %75

13:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  %14 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %2, align 8
  %15 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @TDES_FLAGS_FAST, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %13
  %21 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %2, align 8
  %22 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %21, i32 0, i32 7
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %2, align 8
  %25 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %28 = call i32 @dma_unmap_sg(i32 %23, i32 %26, i32 1, i32 %27)
  %29 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %2, align 8
  %30 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %2, align 8
  %33 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %32, i32 0, i32 8
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @DMA_TO_DEVICE, align 4
  %36 = call i32 @dma_unmap_sg(i32 %31, i32 %34, i32 1, i32 %35)
  br label %74

37:                                               ; preds = %13
  %38 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %2, align 8
  %39 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %38, i32 0, i32 7
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %2, align 8
  %42 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %2, align 8
  %45 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %48 = call i32 @dma_sync_single_for_device(i32 %40, i32 %43, i64 %46, i32 %47)
  %49 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %2, align 8
  %50 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %49, i32 0, i32 5
  %51 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %2, align 8
  %52 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %51, i32 0, i32 4
  %53 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %2, align 8
  %54 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %2, align 8
  %57 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %2, align 8
  %60 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @atmel_tdes_sg_copy(i32* %50, i32* %52, i32 %55, i32 %58, i64 %61, i32 1)
  store i64 %62, i64* %4, align 8
  %63 = load i64, i64* %4, align 8
  %64 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %2, align 8
  %65 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %63, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %37
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  %71 = load i64, i64* %4, align 8
  %72 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %71)
  br label %73

73:                                               ; preds = %68, %37
  br label %74

74:                                               ; preds = %73, %20
  br label %75

75:                                               ; preds = %74, %1
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

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

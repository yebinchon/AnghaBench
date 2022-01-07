; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-aes.c_atmel_aes_dma_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-aes.c_atmel_aes_dma_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_aes_dev = type { i32, %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.scatterlist = type { i32 }

@DMA_SLAVE_BUSWIDTH_1_BYTE = common dso_local global i32 0, align 4
@DMA_SLAVE_BUSWIDTH_2_BYTES = common dso_local global i32 0, align 4
@DMA_SLAVE_BUSWIDTH_4_BYTES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_aes_dev*, %struct.scatterlist*, %struct.scatterlist*, i64, i32)* @atmel_aes_dma_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_aes_dma_start(%struct.atmel_aes_dev* %0, %struct.scatterlist* %1, %struct.scatterlist* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.atmel_aes_dev*, align 8
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca %struct.scatterlist*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.atmel_aes_dev* %0, %struct.atmel_aes_dev** %7, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %8, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %7, align 8
  %16 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %15, i32 0, i32 2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %32 [
    i32 128, label %20
    i32 131, label %22
    i32 130, label %24
    i32 129, label %24
    i32 132, label %26
  ]

20:                                               ; preds = %5
  %21 = load i32, i32* @DMA_SLAVE_BUSWIDTH_1_BYTE, align 4
  store i32 %21, i32* %12, align 4
  store i32 1, i32* %13, align 4
  br label %35

22:                                               ; preds = %5
  %23 = load i32, i32* @DMA_SLAVE_BUSWIDTH_2_BYTES, align 4
  store i32 %23, i32* %12, align 4
  store i32 1, i32* %13, align 4
  br label %35

24:                                               ; preds = %5, %5
  %25 = load i32, i32* @DMA_SLAVE_BUSWIDTH_4_BYTES, align 4
  store i32 %25, i32* %12, align 4
  store i32 1, i32* %13, align 4
  br label %35

26:                                               ; preds = %5
  %27 = load i32, i32* @DMA_SLAVE_BUSWIDTH_4_BYTES, align 4
  store i32 %27, i32* %12, align 4
  %28 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %7, align 8
  %29 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %13, align 4
  br label %35

32:                                               ; preds = %5
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %14, align 4
  br label %75

35:                                               ; preds = %26, %24, %22, %20
  %36 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %7, align 8
  %37 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %38 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %39 = load i64, i64* %10, align 8
  %40 = call i32 @atmel_aes_map(%struct.atmel_aes_dev* %36, %struct.scatterlist* %37, %struct.scatterlist* %38, i64 %39)
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %14, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %75

44:                                               ; preds = %35
  %45 = load i32, i32* %11, align 4
  %46 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %7, align 8
  %47 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %7, align 8
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %51 = load i32, i32* %13, align 4
  %52 = call i32 @atmel_aes_dma_transfer_start(%struct.atmel_aes_dev* %48, i32 %49, i32 %50, i32 %51)
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %14, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %44
  br label %72

56:                                               ; preds = %44
  %57 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %7, align 8
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @atmel_aes_dma_transfer_start(%struct.atmel_aes_dev* %57, i32 %58, i32 %59, i32 %60)
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %14, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  br label %68

65:                                               ; preds = %56
  %66 = load i32, i32* @EINPROGRESS, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %6, align 4
  br label %79

68:                                               ; preds = %64
  %69 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %7, align 8
  %70 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %71 = call i32 @atmel_aes_dma_transfer_stop(%struct.atmel_aes_dev* %69, i32 %70)
  br label %72

72:                                               ; preds = %68, %55
  %73 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %7, align 8
  %74 = call i32 @atmel_aes_unmap(%struct.atmel_aes_dev* %73)
  br label %75

75:                                               ; preds = %72, %43, %32
  %76 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %7, align 8
  %77 = load i32, i32* %14, align 4
  %78 = call i32 @atmel_aes_complete(%struct.atmel_aes_dev* %76, i32 %77)
  store i32 %78, i32* %6, align 4
  br label %79

79:                                               ; preds = %75, %65
  %80 = load i32, i32* %6, align 4
  ret i32 %80
}

declare dso_local i32 @atmel_aes_map(%struct.atmel_aes_dev*, %struct.scatterlist*, %struct.scatterlist*, i64) #1

declare dso_local i32 @atmel_aes_dma_transfer_start(%struct.atmel_aes_dev*, i32, i32, i32) #1

declare dso_local i32 @atmel_aes_dma_transfer_stop(%struct.atmel_aes_dev*, i32) #1

declare dso_local i32 @atmel_aes_unmap(%struct.atmel_aes_dev*) #1

declare dso_local i32 @atmel_aes_complete(%struct.atmel_aes_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

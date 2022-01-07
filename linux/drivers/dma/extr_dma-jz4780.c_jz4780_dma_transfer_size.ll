; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_dma-jz4780.c_jz4780_dma_transfer_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_dma-jz4780.c_jz4780_dma_transfer_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4780_dma_chan = type { i32 }
%struct.jz4780_dma_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@JZ_DMA_SIZE_1_BYTE = common dso_local global i32 0, align 4
@JZ_DMA_SIZE_2_BYTE = common dso_local global i32 0, align 4
@JZ_DMA_SIZE_4_BYTE = common dso_local global i32 0, align 4
@JZ_DMA_SIZE_16_BYTE = common dso_local global i32 0, align 4
@JZ_DMA_SIZE_32_BYTE = common dso_local global i32 0, align 4
@JZ_DMA_SIZE_64_BYTE = common dso_local global i32 0, align 4
@JZ_DMA_SIZE_128_BYTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jz4780_dma_chan*, i64, i32*)* @jz4780_dma_transfer_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4780_dma_transfer_size(%struct.jz4780_dma_chan* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.jz4780_dma_chan*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.jz4780_dma_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.jz4780_dma_chan* %0, %struct.jz4780_dma_chan** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %5, align 8
  %11 = call %struct.jz4780_dma_dev* @jz4780_dma_chan_parent(%struct.jz4780_dma_chan* %10)
  store %struct.jz4780_dma_dev* %11, %struct.jz4780_dma_dev** %8, align 8
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @ffs(i64 %12)
  %14 = sub nsw i32 %13, 1
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp eq i32 %15, 3
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 2, i32* %9, align 4
  br label %33

18:                                               ; preds = %3
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.jz4780_dma_dev*, %struct.jz4780_dma_dev** %8, align 8
  %21 = getelementptr inbounds %struct.jz4780_dma_dev, %struct.jz4780_dma_dev* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp sgt i32 %19, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %18
  %27 = load %struct.jz4780_dma_dev*, %struct.jz4780_dma_dev** %8, align 8
  %28 = getelementptr inbounds %struct.jz4780_dma_dev, %struct.jz4780_dma_dev* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %9, align 4
  br label %32

32:                                               ; preds = %26, %18
  br label %33

33:                                               ; preds = %32, %17
  %34 = load i32, i32* %9, align 4
  %35 = load i32*, i32** %7, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* %9, align 4
  switch i32 %36, label %49 [
    i32 0, label %37
    i32 1, label %39
    i32 2, label %41
    i32 4, label %43
    i32 5, label %45
    i32 6, label %47
  ]

37:                                               ; preds = %33
  %38 = load i32, i32* @JZ_DMA_SIZE_1_BYTE, align 4
  store i32 %38, i32* %4, align 4
  br label %51

39:                                               ; preds = %33
  %40 = load i32, i32* @JZ_DMA_SIZE_2_BYTE, align 4
  store i32 %40, i32* %4, align 4
  br label %51

41:                                               ; preds = %33
  %42 = load i32, i32* @JZ_DMA_SIZE_4_BYTE, align 4
  store i32 %42, i32* %4, align 4
  br label %51

43:                                               ; preds = %33
  %44 = load i32, i32* @JZ_DMA_SIZE_16_BYTE, align 4
  store i32 %44, i32* %4, align 4
  br label %51

45:                                               ; preds = %33
  %46 = load i32, i32* @JZ_DMA_SIZE_32_BYTE, align 4
  store i32 %46, i32* %4, align 4
  br label %51

47:                                               ; preds = %33
  %48 = load i32, i32* @JZ_DMA_SIZE_64_BYTE, align 4
  store i32 %48, i32* %4, align 4
  br label %51

49:                                               ; preds = %33
  %50 = load i32, i32* @JZ_DMA_SIZE_128_BYTE, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %49, %47, %45, %43, %41, %39, %37
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local %struct.jz4780_dma_dev* @jz4780_dma_chan_parent(%struct.jz4780_dma_chan*) #1

declare dso_local i32 @ffs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

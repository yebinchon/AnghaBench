; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_imx-dma.c_imxdma_config_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_imx-dma.c_imxdma_config_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32 }
%struct.imxdma_channel = type { i32, i32, i32, i32, i32, i32, i64, i32, %struct.imxdma_engine* }
%struct.imxdma_engine = type { i32 }

@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@IMX_DMA_MEMSIZE_8 = common dso_local global i32 0, align 4
@IMX_DMA_MEMSIZE_16 = common dso_local global i32 0, align 4
@IMX_DMA_MEMSIZE_32 = common dso_local global i32 0, align 4
@IMX_DMA_TYPE_FIFO = common dso_local global i32 0, align 4
@IMX_DMA_TYPE_LINEAR = common dso_local global i32 0, align 4
@CCR_REN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*, %struct.dma_slave_config*, i32)* @imxdma_config_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imxdma_config_write(%struct.dma_chan* %0, %struct.dma_slave_config* %1, i32 %2) #0 {
  %4 = alloca %struct.dma_chan*, align 8
  %5 = alloca %struct.dma_slave_config*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.imxdma_channel*, align 8
  %8 = alloca %struct.imxdma_engine*, align 8
  %9 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %4, align 8
  store %struct.dma_slave_config* %1, %struct.dma_slave_config** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %11 = call %struct.imxdma_channel* @to_imxdma_chan(%struct.dma_chan* %10)
  store %struct.imxdma_channel* %11, %struct.imxdma_channel** %7, align 8
  %12 = load %struct.imxdma_channel*, %struct.imxdma_channel** %7, align 8
  %13 = getelementptr inbounds %struct.imxdma_channel, %struct.imxdma_channel* %12, i32 0, i32 8
  %14 = load %struct.imxdma_engine*, %struct.imxdma_engine** %13, align 8
  store %struct.imxdma_engine* %14, %struct.imxdma_engine** %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %3
  %19 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %20 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.imxdma_channel*, %struct.imxdma_channel** %7, align 8
  %23 = getelementptr inbounds %struct.imxdma_channel, %struct.imxdma_channel* %22, i32 0, i32 7
  store i32 %21, i32* %23, align 8
  %24 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %25 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.imxdma_channel*, %struct.imxdma_channel** %7, align 8
  %28 = getelementptr inbounds %struct.imxdma_channel, %struct.imxdma_channel* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %30 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.imxdma_channel*, %struct.imxdma_channel** %7, align 8
  %33 = getelementptr inbounds %struct.imxdma_channel, %struct.imxdma_channel* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  br label %50

34:                                               ; preds = %3
  %35 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %36 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.imxdma_channel*, %struct.imxdma_channel** %7, align 8
  %39 = getelementptr inbounds %struct.imxdma_channel, %struct.imxdma_channel* %38, i32 0, i32 7
  store i32 %37, i32* %39, align 8
  %40 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %41 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.imxdma_channel*, %struct.imxdma_channel** %7, align 8
  %44 = getelementptr inbounds %struct.imxdma_channel, %struct.imxdma_channel* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %46 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.imxdma_channel*, %struct.imxdma_channel** %7, align 8
  %49 = getelementptr inbounds %struct.imxdma_channel, %struct.imxdma_channel* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %34, %18
  %51 = load %struct.imxdma_channel*, %struct.imxdma_channel** %7, align 8
  %52 = getelementptr inbounds %struct.imxdma_channel, %struct.imxdma_channel* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  switch i32 %53, label %58 [
    i32 130, label %54
    i32 129, label %56
    i32 128, label %59
  ]

54:                                               ; preds = %50
  %55 = load i32, i32* @IMX_DMA_MEMSIZE_8, align 4
  store i32 %55, i32* %9, align 4
  br label %61

56:                                               ; preds = %50
  %57 = load i32, i32* @IMX_DMA_MEMSIZE_16, align 4
  store i32 %57, i32* %9, align 4
  br label %61

58:                                               ; preds = %50
  br label %59

59:                                               ; preds = %50, %58
  %60 = load i32, i32* @IMX_DMA_MEMSIZE_32, align 4
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %59, %56, %54
  %62 = load %struct.imxdma_channel*, %struct.imxdma_channel** %7, align 8
  %63 = getelementptr inbounds %struct.imxdma_channel, %struct.imxdma_channel* %62, i32 0, i32 6
  store i64 0, i64* %63, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @IMX_DMA_TYPE_FIFO, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @IMX_DMA_MEMSIZE_32, align 4
  %68 = load i32, i32* @IMX_DMA_TYPE_LINEAR, align 4
  %69 = or i32 %67, %68
  %70 = shl i32 %69, 2
  %71 = or i32 %66, %70
  %72 = load i32, i32* @CCR_REN, align 4
  %73 = or i32 %71, %72
  %74 = load %struct.imxdma_channel*, %struct.imxdma_channel** %7, align 8
  %75 = getelementptr inbounds %struct.imxdma_channel, %struct.imxdma_channel* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  %76 = load i32, i32* @IMX_DMA_MEMSIZE_32, align 4
  %77 = load i32, i32* @IMX_DMA_TYPE_LINEAR, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @IMX_DMA_TYPE_FIFO, align 4
  %81 = or i32 %79, %80
  %82 = shl i32 %81, 2
  %83 = or i32 %78, %82
  %84 = load i32, i32* @CCR_REN, align 4
  %85 = or i32 %83, %84
  %86 = load %struct.imxdma_channel*, %struct.imxdma_channel** %7, align 8
  %87 = getelementptr inbounds %struct.imxdma_channel, %struct.imxdma_channel* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 4
  %88 = load %struct.imxdma_engine*, %struct.imxdma_engine** %8, align 8
  %89 = load %struct.imxdma_channel*, %struct.imxdma_channel** %7, align 8
  %90 = getelementptr inbounds %struct.imxdma_channel, %struct.imxdma_channel* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.imxdma_channel*, %struct.imxdma_channel** %7, align 8
  %93 = getelementptr inbounds %struct.imxdma_channel, %struct.imxdma_channel* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @DMA_RSSR(i32 %94)
  %96 = call i32 @imx_dmav1_writel(%struct.imxdma_engine* %88, i32 %91, i32 %95)
  %97 = load %struct.imxdma_engine*, %struct.imxdma_engine** %8, align 8
  %98 = load %struct.imxdma_channel*, %struct.imxdma_channel** %7, align 8
  %99 = getelementptr inbounds %struct.imxdma_channel, %struct.imxdma_channel* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.imxdma_channel*, %struct.imxdma_channel** %7, align 8
  %102 = getelementptr inbounds %struct.imxdma_channel, %struct.imxdma_channel* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = mul nsw i32 %100, %103
  %105 = load %struct.imxdma_channel*, %struct.imxdma_channel** %7, align 8
  %106 = getelementptr inbounds %struct.imxdma_channel, %struct.imxdma_channel* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @DMA_BLR(i32 %107)
  %109 = call i32 @imx_dmav1_writel(%struct.imxdma_engine* %97, i32 %104, i32 %108)
  ret i32 0
}

declare dso_local %struct.imxdma_channel* @to_imxdma_chan(%struct.dma_chan*) #1

declare dso_local i32 @imx_dmav1_writel(%struct.imxdma_engine*, i32, i32) #1

declare dso_local i32 @DMA_RSSR(i32) #1

declare dso_local i32 @DMA_BLR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

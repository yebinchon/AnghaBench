; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_dma-jz4780.c_jz4780_dma_chan_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_dma-jz4780.c_jz4780_dma_chan_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4780_dma_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@JZ_SOC_DATA_PER_CHAN_PM = common dso_local global i32 0, align 4
@JZ_SOC_DATA_NO_DCKES_DCKEC = common dso_local global i32 0, align 4
@JZ_DMA_REG_DCKE = common dso_local global i32 0, align 4
@JZ_DMA_REG_DCKES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jz4780_dma_dev*, i32)* @jz4780_dma_chan_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jz4780_dma_chan_enable(%struct.jz4780_dma_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.jz4780_dma_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.jz4780_dma_dev* %0, %struct.jz4780_dma_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.jz4780_dma_dev*, %struct.jz4780_dma_dev** %3, align 8
  %7 = getelementptr inbounds %struct.jz4780_dma_dev, %struct.jz4780_dma_dev* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @JZ_SOC_DATA_PER_CHAN_PM, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %33

14:                                               ; preds = %2
  %15 = load %struct.jz4780_dma_dev*, %struct.jz4780_dma_dev** %3, align 8
  %16 = getelementptr inbounds %struct.jz4780_dma_dev, %struct.jz4780_dma_dev* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @JZ_SOC_DATA_NO_DCKES_DCKEC, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = load i32, i32* @JZ_DMA_REG_DCKE, align 4
  store i32 %24, i32* %5, align 4
  br label %27

25:                                               ; preds = %14
  %26 = load i32, i32* @JZ_DMA_REG_DCKES, align 4
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = load %struct.jz4780_dma_dev*, %struct.jz4780_dma_dev** %3, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @BIT(i32 %30)
  %32 = call i32 @jz4780_dma_ctrl_writel(%struct.jz4780_dma_dev* %28, i32 %29, i32 %31)
  br label %33

33:                                               ; preds = %27, %2
  ret void
}

declare dso_local i32 @jz4780_dma_ctrl_writel(%struct.jz4780_dma_dev*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

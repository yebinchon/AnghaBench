; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/dw/extr_core.c_dwc_chan_pause.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/dw/extr_core.c_dwc_chan_pause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_dma_chan = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.dw_dma = type { i32 (%struct.dw_dma_chan*, i32)* }

@CFG_LO = common dso_local global i32 0, align 4
@DWC_CFGL_FIFO_EMPTY = common dso_local global i32 0, align 4
@DW_DMA_IS_PAUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_dma_chan*, i32)* @dwc_chan_pause to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc_chan_pause(%struct.dw_dma_chan* %0, i32 %1) #0 {
  %3 = alloca %struct.dw_dma_chan*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dw_dma*, align 8
  %6 = alloca i32, align 4
  store %struct.dw_dma_chan* %0, %struct.dw_dma_chan** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %3, align 8
  %8 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.dw_dma* @to_dw_dma(i32 %10)
  store %struct.dw_dma* %11, %struct.dw_dma** %5, align 8
  store i32 20, i32* %6, align 4
  %12 = load %struct.dw_dma*, %struct.dw_dma** %5, align 8
  %13 = getelementptr inbounds %struct.dw_dma, %struct.dw_dma* %12, i32 0, i32 0
  %14 = load i32 (%struct.dw_dma_chan*, i32)*, i32 (%struct.dw_dma_chan*, i32)** %13, align 8
  %15 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 %14(%struct.dw_dma_chan* %15, i32 %16)
  br label %18

18:                                               ; preds = %31, %2
  %19 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %3, align 8
  %20 = load i32, i32* @CFG_LO, align 4
  %21 = call i32 @channel_readl(%struct.dw_dma_chan* %19, i32 %20)
  %22 = load i32, i32* @DWC_CFGL_FIFO_EMPTY, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %18
  %26 = load i32, i32* %6, align 4
  %27 = add i32 %26, -1
  store i32 %27, i32* %6, align 4
  %28 = icmp ne i32 %26, 0
  br label %29

29:                                               ; preds = %25, %18
  %30 = phi i1 [ false, %18 ], [ %28, %25 ]
  br i1 %30, label %31, label %33

31:                                               ; preds = %29
  %32 = call i32 @udelay(i32 2)
  br label %18

33:                                               ; preds = %29
  %34 = load i32, i32* @DW_DMA_IS_PAUSED, align 4
  %35 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %3, align 8
  %36 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %35, i32 0, i32 0
  %37 = call i32 @set_bit(i32 %34, i32* %36)
  ret void
}

declare dso_local %struct.dw_dma* @to_dw_dma(i32) #1

declare dso_local i32 @channel_readl(%struct.dw_dma_chan*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

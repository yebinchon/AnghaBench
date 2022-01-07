; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/dw/extr_core.c_dwc_dump_chan_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/dw/extr_core.c_dwc_dump_chan_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_dma_chan = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"  SAR: 0x%x DAR: 0x%x LLP: 0x%x CTL: 0x%x:%08x\0A\00", align 1
@SAR = common dso_local global i32 0, align 4
@DAR = common dso_local global i32 0, align 4
@LLP = common dso_local global i32 0, align 4
@CTL_HI = common dso_local global i32 0, align 4
@CTL_LO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_dma_chan*)* @dwc_dump_chan_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc_dump_chan_regs(%struct.dw_dma_chan* %0) #0 {
  %2 = alloca %struct.dw_dma_chan*, align 8
  store %struct.dw_dma_chan* %0, %struct.dw_dma_chan** %2, align 8
  %3 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %2, align 8
  %4 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %3, i32 0, i32 0
  %5 = call i32 @chan2dev(i32* %4)
  %6 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %2, align 8
  %7 = load i32, i32* @SAR, align 4
  %8 = call i32 @channel_readl(%struct.dw_dma_chan* %6, i32 %7)
  %9 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %2, align 8
  %10 = load i32, i32* @DAR, align 4
  %11 = call i32 @channel_readl(%struct.dw_dma_chan* %9, i32 %10)
  %12 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %2, align 8
  %13 = load i32, i32* @LLP, align 4
  %14 = call i32 @channel_readl(%struct.dw_dma_chan* %12, i32 %13)
  %15 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %2, align 8
  %16 = load i32, i32* @CTL_HI, align 4
  %17 = call i32 @channel_readl(%struct.dw_dma_chan* %15, i32 %16)
  %18 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %2, align 8
  %19 = load i32, i32* @CTL_LO, align 4
  %20 = call i32 @channel_readl(%struct.dw_dma_chan* %18, i32 %19)
  %21 = call i32 @dev_err(i32 %5, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %11, i32 %14, i32 %17, i32 %20)
  ret void
}

declare dso_local i32 @dev_err(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @chan2dev(i32*) #1

declare dso_local i32 @channel_readl(%struct.dw_dma_chan*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

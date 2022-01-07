; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/dw/extr_core.c_dwc_do_single_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/dw/extr_core.c_dwc_do_single_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_dma_chan = type { %struct.TYPE_3__*, i32, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.dw_desc = type { i32 }
%struct.dw_dma = type { i32 }

@DWC_CTLL_INT_EN = common dso_local global i32 0, align 4
@SAR = common dso_local global i32 0, align 4
@sar = common dso_local global i32 0, align 4
@DAR = common dso_local global i32 0, align 4
@dar = common dso_local global i32 0, align 4
@CTL_LO = common dso_local global i32 0, align 4
@CTL_HI = common dso_local global i32 0, align 4
@ctlhi = common dso_local global i32 0, align 4
@CH_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_dma_chan*, %struct.dw_desc*)* @dwc_do_single_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc_do_single_block(%struct.dw_dma_chan* %0, %struct.dw_desc* %1) #0 {
  %3 = alloca %struct.dw_dma_chan*, align 8
  %4 = alloca %struct.dw_desc*, align 8
  %5 = alloca %struct.dw_dma*, align 8
  %6 = alloca i32, align 4
  store %struct.dw_dma_chan* %0, %struct.dw_dma_chan** %3, align 8
  store %struct.dw_desc* %1, %struct.dw_desc** %4, align 8
  %7 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %3, align 8
  %8 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.dw_dma* @to_dw_dma(i32 %10)
  store %struct.dw_dma* %11, %struct.dw_dma** %5, align 8
  %12 = load %struct.dw_desc*, %struct.dw_desc** %4, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @lli_read(%struct.dw_desc* %12, i32 %13)
  %15 = load i32, i32* @DWC_CTLL_INT_EN, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %6, align 4
  %17 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %3, align 8
  %18 = load i32, i32* @SAR, align 4
  %19 = load %struct.dw_desc*, %struct.dw_desc** %4, align 8
  %20 = load i32, i32* @sar, align 4
  %21 = call i32 @lli_read(%struct.dw_desc* %19, i32 %20)
  %22 = call i32 @channel_writel(%struct.dw_dma_chan* %17, i32 %18, i32 %21)
  %23 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %3, align 8
  %24 = load i32, i32* @DAR, align 4
  %25 = load %struct.dw_desc*, %struct.dw_desc** %4, align 8
  %26 = load i32, i32* @dar, align 4
  %27 = call i32 @lli_read(%struct.dw_desc* %25, i32 %26)
  %28 = call i32 @channel_writel(%struct.dw_dma_chan* %23, i32 %24, i32 %27)
  %29 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %3, align 8
  %30 = load i32, i32* @CTL_LO, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @channel_writel(%struct.dw_dma_chan* %29, i32 %30, i32 %31)
  %33 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %3, align 8
  %34 = load i32, i32* @CTL_HI, align 4
  %35 = load %struct.dw_desc*, %struct.dw_desc** %4, align 8
  %36 = load i32, i32* @ctlhi, align 4
  %37 = call i32 @lli_read(%struct.dw_desc* %35, i32 %36)
  %38 = call i32 @channel_writel(%struct.dw_dma_chan* %33, i32 %34, i32 %37)
  %39 = load %struct.dw_dma*, %struct.dw_dma** %5, align 8
  %40 = load i32, i32* @CH_EN, align 4
  %41 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %3, align 8
  %42 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @channel_set_bit(%struct.dw_dma* %39, i32 %40, i32 %43)
  %45 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %3, align 8
  %46 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %3, align 8
  %51 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %50, i32 0, i32 0
  store %struct.TYPE_3__* %49, %struct.TYPE_3__** %51, align 8
  ret void
}

declare dso_local %struct.dw_dma* @to_dw_dma(i32) #1

declare dso_local i32 @lli_read(%struct.dw_desc*, i32) #1

declare dso_local i32 @channel_writel(%struct.dw_dma_chan*, i32, i32) #1

declare dso_local i32 @channel_set_bit(%struct.dw_dma*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

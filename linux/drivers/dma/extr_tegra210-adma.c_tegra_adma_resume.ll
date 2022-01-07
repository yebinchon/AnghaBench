; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_tegra210-adma.c_tegra_adma_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_tegra210-adma.c_tegra_adma_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.tegra_adma_chan = type { %struct.tegra_adma_desc* }
%struct.tegra_adma_desc = type { %struct.tegra_adma_chan_regs }
%struct.tegra_adma_chan_regs = type { i32 }

@ADMA_CH_CTRL = common dso_local global i32 0, align 4
@ADMA_CH_CTRL_XFER_PAUSE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @tegra_adma_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_adma_resume(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.tegra_adma_chan*, align 8
  %4 = alloca %struct.tegra_adma_desc*, align 8
  %5 = alloca %struct.tegra_adma_chan_regs*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %6 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %7 = call %struct.tegra_adma_chan* @to_tegra_adma_chan(%struct.dma_chan* %6)
  store %struct.tegra_adma_chan* %7, %struct.tegra_adma_chan** %3, align 8
  %8 = load %struct.tegra_adma_chan*, %struct.tegra_adma_chan** %3, align 8
  %9 = getelementptr inbounds %struct.tegra_adma_chan, %struct.tegra_adma_chan* %8, i32 0, i32 0
  %10 = load %struct.tegra_adma_desc*, %struct.tegra_adma_desc** %9, align 8
  store %struct.tegra_adma_desc* %10, %struct.tegra_adma_desc** %4, align 8
  %11 = load %struct.tegra_adma_desc*, %struct.tegra_adma_desc** %4, align 8
  %12 = getelementptr inbounds %struct.tegra_adma_desc, %struct.tegra_adma_desc* %11, i32 0, i32 0
  store %struct.tegra_adma_chan_regs* %12, %struct.tegra_adma_chan_regs** %5, align 8
  %13 = load %struct.tegra_adma_chan*, %struct.tegra_adma_chan** %3, align 8
  %14 = load i32, i32* @ADMA_CH_CTRL, align 4
  %15 = call i32 @tdma_ch_read(%struct.tegra_adma_chan* %13, i32 %14)
  %16 = load %struct.tegra_adma_chan_regs*, %struct.tegra_adma_chan_regs** %5, align 8
  %17 = getelementptr inbounds %struct.tegra_adma_chan_regs, %struct.tegra_adma_chan_regs* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @ADMA_CH_CTRL_XFER_PAUSE_SHIFT, align 4
  %19 = shl i32 1, %18
  %20 = xor i32 %19, -1
  %21 = load %struct.tegra_adma_chan_regs*, %struct.tegra_adma_chan_regs** %5, align 8
  %22 = getelementptr inbounds %struct.tegra_adma_chan_regs, %struct.tegra_adma_chan_regs* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load %struct.tegra_adma_chan*, %struct.tegra_adma_chan** %3, align 8
  %26 = load i32, i32* @ADMA_CH_CTRL, align 4
  %27 = load %struct.tegra_adma_chan_regs*, %struct.tegra_adma_chan_regs** %5, align 8
  %28 = getelementptr inbounds %struct.tegra_adma_chan_regs, %struct.tegra_adma_chan_regs* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @tdma_ch_write(%struct.tegra_adma_chan* %25, i32 %26, i32 %29)
  ret i32 0
}

declare dso_local %struct.tegra_adma_chan* @to_tegra_adma_chan(%struct.dma_chan*) #1

declare dso_local i32 @tdma_ch_read(%struct.tegra_adma_chan*, i32) #1

declare dso_local i32 @tdma_ch_write(%struct.tegra_adma_chan*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

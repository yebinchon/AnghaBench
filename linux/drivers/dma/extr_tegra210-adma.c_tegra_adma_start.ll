; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_tegra210-adma.c_tegra_adma_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_tegra210-adma.c_tegra_adma_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_adma_chan = type { %struct.tegra_adma_desc*, i64, i64, i32 }
%struct.tegra_adma_desc = type { %struct.tegra_adma_chan_regs }
%struct.tegra_adma_chan_regs = type { i32, i32, i32, i32, i32, i32 }
%struct.virt_dma_desc = type { i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"unable to start DMA, no descriptor\0A\00", align 1
@ADMA_CH_TC = common dso_local global i32 0, align 4
@ADMA_CH_CTRL = common dso_local global i32 0, align 4
@ADMA_CH_LOWER_SRC_ADDR = common dso_local global i32 0, align 4
@ADMA_CH_LOWER_TRG_ADDR = common dso_local global i32 0, align 4
@ADMA_CH_FIFO_CTRL = common dso_local global i32 0, align 4
@ADMA_CH_CONFIG = common dso_local global i32 0, align 4
@ADMA_CH_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_adma_chan*)* @tegra_adma_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_adma_start(%struct.tegra_adma_chan* %0) #0 {
  %2 = alloca %struct.tegra_adma_chan*, align 8
  %3 = alloca %struct.virt_dma_desc*, align 8
  %4 = alloca %struct.tegra_adma_chan_regs*, align 8
  %5 = alloca %struct.tegra_adma_desc*, align 8
  store %struct.tegra_adma_chan* %0, %struct.tegra_adma_chan** %2, align 8
  %6 = load %struct.tegra_adma_chan*, %struct.tegra_adma_chan** %2, align 8
  %7 = getelementptr inbounds %struct.tegra_adma_chan, %struct.tegra_adma_chan* %6, i32 0, i32 3
  %8 = call %struct.virt_dma_desc* @vchan_next_desc(i32* %7)
  store %struct.virt_dma_desc* %8, %struct.virt_dma_desc** %3, align 8
  %9 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %3, align 8
  %10 = icmp ne %struct.virt_dma_desc* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %74

12:                                               ; preds = %1
  %13 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %3, align 8
  %14 = getelementptr inbounds %struct.virt_dma_desc, %struct.virt_dma_desc* %13, i32 0, i32 1
  %15 = call i32 @list_del(i32* %14)
  %16 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %3, align 8
  %17 = getelementptr inbounds %struct.virt_dma_desc, %struct.virt_dma_desc* %16, i32 0, i32 0
  %18 = call %struct.tegra_adma_desc* @to_tegra_adma_desc(i32* %17)
  store %struct.tegra_adma_desc* %18, %struct.tegra_adma_desc** %5, align 8
  %19 = load %struct.tegra_adma_desc*, %struct.tegra_adma_desc** %5, align 8
  %20 = icmp ne %struct.tegra_adma_desc* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %12
  %22 = load %struct.tegra_adma_chan*, %struct.tegra_adma_chan** %2, align 8
  %23 = call i32 @tdc2dev(%struct.tegra_adma_chan* %22)
  %24 = call i32 @dev_warn(i32 %23, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %74

25:                                               ; preds = %12
  %26 = load %struct.tegra_adma_desc*, %struct.tegra_adma_desc** %5, align 8
  %27 = getelementptr inbounds %struct.tegra_adma_desc, %struct.tegra_adma_desc* %26, i32 0, i32 0
  store %struct.tegra_adma_chan_regs* %27, %struct.tegra_adma_chan_regs** %4, align 8
  %28 = load %struct.tegra_adma_chan*, %struct.tegra_adma_chan** %2, align 8
  %29 = getelementptr inbounds %struct.tegra_adma_chan, %struct.tegra_adma_chan* %28, i32 0, i32 2
  store i64 0, i64* %29, align 8
  %30 = load %struct.tegra_adma_chan*, %struct.tegra_adma_chan** %2, align 8
  %31 = getelementptr inbounds %struct.tegra_adma_chan, %struct.tegra_adma_chan* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load %struct.tegra_adma_chan*, %struct.tegra_adma_chan** %2, align 8
  %33 = load i32, i32* @ADMA_CH_TC, align 4
  %34 = load %struct.tegra_adma_chan_regs*, %struct.tegra_adma_chan_regs** %4, align 8
  %35 = getelementptr inbounds %struct.tegra_adma_chan_regs, %struct.tegra_adma_chan_regs* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @tdma_ch_write(%struct.tegra_adma_chan* %32, i32 %33, i32 %36)
  %38 = load %struct.tegra_adma_chan*, %struct.tegra_adma_chan** %2, align 8
  %39 = load i32, i32* @ADMA_CH_CTRL, align 4
  %40 = load %struct.tegra_adma_chan_regs*, %struct.tegra_adma_chan_regs** %4, align 8
  %41 = getelementptr inbounds %struct.tegra_adma_chan_regs, %struct.tegra_adma_chan_regs* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @tdma_ch_write(%struct.tegra_adma_chan* %38, i32 %39, i32 %42)
  %44 = load %struct.tegra_adma_chan*, %struct.tegra_adma_chan** %2, align 8
  %45 = load i32, i32* @ADMA_CH_LOWER_SRC_ADDR, align 4
  %46 = load %struct.tegra_adma_chan_regs*, %struct.tegra_adma_chan_regs** %4, align 8
  %47 = getelementptr inbounds %struct.tegra_adma_chan_regs, %struct.tegra_adma_chan_regs* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @tdma_ch_write(%struct.tegra_adma_chan* %44, i32 %45, i32 %48)
  %50 = load %struct.tegra_adma_chan*, %struct.tegra_adma_chan** %2, align 8
  %51 = load i32, i32* @ADMA_CH_LOWER_TRG_ADDR, align 4
  %52 = load %struct.tegra_adma_chan_regs*, %struct.tegra_adma_chan_regs** %4, align 8
  %53 = getelementptr inbounds %struct.tegra_adma_chan_regs, %struct.tegra_adma_chan_regs* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @tdma_ch_write(%struct.tegra_adma_chan* %50, i32 %51, i32 %54)
  %56 = load %struct.tegra_adma_chan*, %struct.tegra_adma_chan** %2, align 8
  %57 = load i32, i32* @ADMA_CH_FIFO_CTRL, align 4
  %58 = load %struct.tegra_adma_chan_regs*, %struct.tegra_adma_chan_regs** %4, align 8
  %59 = getelementptr inbounds %struct.tegra_adma_chan_regs, %struct.tegra_adma_chan_regs* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @tdma_ch_write(%struct.tegra_adma_chan* %56, i32 %57, i32 %60)
  %62 = load %struct.tegra_adma_chan*, %struct.tegra_adma_chan** %2, align 8
  %63 = load i32, i32* @ADMA_CH_CONFIG, align 4
  %64 = load %struct.tegra_adma_chan_regs*, %struct.tegra_adma_chan_regs** %4, align 8
  %65 = getelementptr inbounds %struct.tegra_adma_chan_regs, %struct.tegra_adma_chan_regs* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @tdma_ch_write(%struct.tegra_adma_chan* %62, i32 %63, i32 %66)
  %68 = load %struct.tegra_adma_chan*, %struct.tegra_adma_chan** %2, align 8
  %69 = load i32, i32* @ADMA_CH_CMD, align 4
  %70 = call i32 @tdma_ch_write(%struct.tegra_adma_chan* %68, i32 %69, i32 1)
  %71 = load %struct.tegra_adma_desc*, %struct.tegra_adma_desc** %5, align 8
  %72 = load %struct.tegra_adma_chan*, %struct.tegra_adma_chan** %2, align 8
  %73 = getelementptr inbounds %struct.tegra_adma_chan, %struct.tegra_adma_chan* %72, i32 0, i32 0
  store %struct.tegra_adma_desc* %71, %struct.tegra_adma_desc** %73, align 8
  br label %74

74:                                               ; preds = %25, %21, %11
  ret void
}

declare dso_local %struct.virt_dma_desc* @vchan_next_desc(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local %struct.tegra_adma_desc* @to_tegra_adma_desc(i32*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @tdc2dev(%struct.tegra_adma_chan*) #1

declare dso_local i32 @tdma_ch_write(%struct.tegra_adma_chan*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

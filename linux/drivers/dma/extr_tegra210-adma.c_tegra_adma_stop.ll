; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_tegra210-adma.c_tegra_adma_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_tegra210-adma.c_tegra_adma_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_adma_chan = type { i32*, i64 }

@ADMA_CH_CMD = common dso_local global i32 0, align 4
@readl = common dso_local global i32 0, align 4
@ADMA_CH_STATUS = common dso_local global i64 0, align 8
@ADMA_CH_STATUS_XFER_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"unable to stop DMA channel\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_adma_chan*)* @tegra_adma_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_adma_stop(%struct.tegra_adma_chan* %0) #0 {
  %2 = alloca %struct.tegra_adma_chan*, align 8
  %3 = alloca i32, align 4
  store %struct.tegra_adma_chan* %0, %struct.tegra_adma_chan** %2, align 8
  %4 = load %struct.tegra_adma_chan*, %struct.tegra_adma_chan** %2, align 8
  %5 = load i32, i32* @ADMA_CH_CMD, align 4
  %6 = call i32 @tdma_ch_write(%struct.tegra_adma_chan* %4, i32 %5, i32 0)
  %7 = load %struct.tegra_adma_chan*, %struct.tegra_adma_chan** %2, align 8
  %8 = call i32 @tegra_adma_irq_clear(%struct.tegra_adma_chan* %7)
  %9 = load i32, i32* @readl, align 4
  %10 = load %struct.tegra_adma_chan*, %struct.tegra_adma_chan** %2, align 8
  %11 = getelementptr inbounds %struct.tegra_adma_chan, %struct.tegra_adma_chan* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @ADMA_CH_STATUS, align 8
  %14 = add nsw i64 %12, %13
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @ADMA_CH_STATUS_XFER_EN, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i64 @readx_poll_timeout_atomic(i32 %9, i64 %14, i32 %15, i32 %21, i32 20, i32 10000)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load %struct.tegra_adma_chan*, %struct.tegra_adma_chan** %2, align 8
  %26 = call i32 @tdc2dev(%struct.tegra_adma_chan* %25)
  %27 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %35

28:                                               ; preds = %1
  %29 = load %struct.tegra_adma_chan*, %struct.tegra_adma_chan** %2, align 8
  %30 = getelementptr inbounds %struct.tegra_adma_chan, %struct.tegra_adma_chan* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @kfree(i32* %31)
  %33 = load %struct.tegra_adma_chan*, %struct.tegra_adma_chan** %2, align 8
  %34 = getelementptr inbounds %struct.tegra_adma_chan, %struct.tegra_adma_chan* %33, i32 0, i32 0
  store i32* null, i32** %34, align 8
  br label %35

35:                                               ; preds = %28, %24
  ret void
}

declare dso_local i32 @tdma_ch_write(%struct.tegra_adma_chan*, i32, i32) #1

declare dso_local i32 @tegra_adma_irq_clear(%struct.tegra_adma_chan*) #1

declare dso_local i64 @readx_poll_timeout_atomic(i32, i64, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @tdc2dev(%struct.tegra_adma_chan*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

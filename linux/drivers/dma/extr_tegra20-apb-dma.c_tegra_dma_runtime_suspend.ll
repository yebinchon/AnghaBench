; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_tegra20-apb-dma.c_tegra_dma_runtime_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_tegra20-apb-dma.c_tegra_dma_runtime_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.tegra_dma = type { i32, %struct.TYPE_2__*, %struct.tegra_dma_channel*, i32 }
%struct.TYPE_2__ = type { i32, i64 }
%struct.tegra_dma_channel = type { i32, %struct.tegra_dma_channel_regs }
%struct.tegra_dma_channel_regs = type { i8*, i8*, i8*, i8*, i8*, i8* }

@TEGRA_APBDMA_GENERAL = common dso_local global i32 0, align 4
@TEGRA_APBDMA_CHAN_CSR = common dso_local global i32 0, align 4
@TEGRA_APBDMA_CHAN_AHBPTR = common dso_local global i32 0, align 4
@TEGRA_APBDMA_CHAN_APBPTR = common dso_local global i32 0, align 4
@TEGRA_APBDMA_CHAN_AHBSEQ = common dso_local global i32 0, align 4
@TEGRA_APBDMA_CHAN_APBSEQ = common dso_local global i32 0, align 4
@TEGRA_APBDMA_CHAN_WCOUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @tegra_dma_runtime_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_dma_runtime_suspend(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.tegra_dma*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tegra_dma_channel*, align 8
  %6 = alloca %struct.tegra_dma_channel_regs*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %7 = load %struct.device*, %struct.device** %2, align 8
  %8 = call %struct.tegra_dma* @dev_get_drvdata(%struct.device* %7)
  store %struct.tegra_dma* %8, %struct.tegra_dma** %3, align 8
  %9 = load %struct.tegra_dma*, %struct.tegra_dma** %3, align 8
  %10 = load i32, i32* @TEGRA_APBDMA_GENERAL, align 4
  %11 = call i32 @tdma_read(%struct.tegra_dma* %9, i32 %10)
  %12 = load %struct.tegra_dma*, %struct.tegra_dma** %3, align 8
  %13 = getelementptr inbounds %struct.tegra_dma, %struct.tegra_dma* %12, i32 0, i32 3
  store i32 %11, i32* %13, align 8
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %75, %1
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.tegra_dma*, %struct.tegra_dma** %3, align 8
  %17 = getelementptr inbounds %struct.tegra_dma, %struct.tegra_dma* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %15, %20
  br i1 %21, label %22, label %78

22:                                               ; preds = %14
  %23 = load %struct.tegra_dma*, %struct.tegra_dma** %3, align 8
  %24 = getelementptr inbounds %struct.tegra_dma, %struct.tegra_dma* %23, i32 0, i32 2
  %25 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.tegra_dma_channel, %struct.tegra_dma_channel* %25, i64 %27
  store %struct.tegra_dma_channel* %28, %struct.tegra_dma_channel** %5, align 8
  %29 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %5, align 8
  %30 = getelementptr inbounds %struct.tegra_dma_channel, %struct.tegra_dma_channel* %29, i32 0, i32 1
  store %struct.tegra_dma_channel_regs* %30, %struct.tegra_dma_channel_regs** %6, align 8
  %31 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %5, align 8
  %32 = getelementptr inbounds %struct.tegra_dma_channel, %struct.tegra_dma_channel* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %22
  br label %75

36:                                               ; preds = %22
  %37 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %5, align 8
  %38 = load i32, i32* @TEGRA_APBDMA_CHAN_CSR, align 4
  %39 = call i8* @tdc_read(%struct.tegra_dma_channel* %37, i32 %38)
  %40 = load %struct.tegra_dma_channel_regs*, %struct.tegra_dma_channel_regs** %6, align 8
  %41 = getelementptr inbounds %struct.tegra_dma_channel_regs, %struct.tegra_dma_channel_regs* %40, i32 0, i32 5
  store i8* %39, i8** %41, align 8
  %42 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %5, align 8
  %43 = load i32, i32* @TEGRA_APBDMA_CHAN_AHBPTR, align 4
  %44 = call i8* @tdc_read(%struct.tegra_dma_channel* %42, i32 %43)
  %45 = load %struct.tegra_dma_channel_regs*, %struct.tegra_dma_channel_regs** %6, align 8
  %46 = getelementptr inbounds %struct.tegra_dma_channel_regs, %struct.tegra_dma_channel_regs* %45, i32 0, i32 4
  store i8* %44, i8** %46, align 8
  %47 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %5, align 8
  %48 = load i32, i32* @TEGRA_APBDMA_CHAN_APBPTR, align 4
  %49 = call i8* @tdc_read(%struct.tegra_dma_channel* %47, i32 %48)
  %50 = load %struct.tegra_dma_channel_regs*, %struct.tegra_dma_channel_regs** %6, align 8
  %51 = getelementptr inbounds %struct.tegra_dma_channel_regs, %struct.tegra_dma_channel_regs* %50, i32 0, i32 3
  store i8* %49, i8** %51, align 8
  %52 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %5, align 8
  %53 = load i32, i32* @TEGRA_APBDMA_CHAN_AHBSEQ, align 4
  %54 = call i8* @tdc_read(%struct.tegra_dma_channel* %52, i32 %53)
  %55 = load %struct.tegra_dma_channel_regs*, %struct.tegra_dma_channel_regs** %6, align 8
  %56 = getelementptr inbounds %struct.tegra_dma_channel_regs, %struct.tegra_dma_channel_regs* %55, i32 0, i32 2
  store i8* %54, i8** %56, align 8
  %57 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %5, align 8
  %58 = load i32, i32* @TEGRA_APBDMA_CHAN_APBSEQ, align 4
  %59 = call i8* @tdc_read(%struct.tegra_dma_channel* %57, i32 %58)
  %60 = load %struct.tegra_dma_channel_regs*, %struct.tegra_dma_channel_regs** %6, align 8
  %61 = getelementptr inbounds %struct.tegra_dma_channel_regs, %struct.tegra_dma_channel_regs* %60, i32 0, i32 1
  store i8* %59, i8** %61, align 8
  %62 = load %struct.tegra_dma*, %struct.tegra_dma** %3, align 8
  %63 = getelementptr inbounds %struct.tegra_dma, %struct.tegra_dma* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %36
  %69 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %5, align 8
  %70 = load i32, i32* @TEGRA_APBDMA_CHAN_WCOUNT, align 4
  %71 = call i8* @tdc_read(%struct.tegra_dma_channel* %69, i32 %70)
  %72 = load %struct.tegra_dma_channel_regs*, %struct.tegra_dma_channel_regs** %6, align 8
  %73 = getelementptr inbounds %struct.tegra_dma_channel_regs, %struct.tegra_dma_channel_regs* %72, i32 0, i32 0
  store i8* %71, i8** %73, align 8
  br label %74

74:                                               ; preds = %68, %36
  br label %75

75:                                               ; preds = %74, %35
  %76 = load i32, i32* %4, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %4, align 4
  br label %14

78:                                               ; preds = %14
  %79 = load %struct.tegra_dma*, %struct.tegra_dma** %3, align 8
  %80 = getelementptr inbounds %struct.tegra_dma, %struct.tegra_dma* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @clk_disable_unprepare(i32 %81)
  ret i32 0
}

declare dso_local %struct.tegra_dma* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @tdma_read(%struct.tegra_dma*, i32) #1

declare dso_local i8* @tdc_read(%struct.tegra_dma_channel*, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

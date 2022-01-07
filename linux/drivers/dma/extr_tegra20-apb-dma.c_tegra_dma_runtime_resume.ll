; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_tegra20-apb-dma.c_tegra_dma_runtime_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_tegra20-apb-dma.c_tegra_dma_runtime_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.tegra_dma = type { i32, %struct.TYPE_2__*, %struct.tegra_dma_channel*, i32 }
%struct.TYPE_2__ = type { i32, i64 }
%struct.tegra_dma_channel = type { i32, %struct.tegra_dma_channel_regs }
%struct.tegra_dma_channel_regs = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"clk_enable failed: %d\0A\00", align 1
@TEGRA_APBDMA_GENERAL = common dso_local global i32 0, align 4
@TEGRA_APBDMA_CONTROL = common dso_local global i32 0, align 4
@TEGRA_APBDMA_IRQ_MASK_SET = common dso_local global i32 0, align 4
@TEGRA_APBDMA_CHAN_WCOUNT = common dso_local global i32 0, align 4
@TEGRA_APBDMA_CHAN_APBSEQ = common dso_local global i32 0, align 4
@TEGRA_APBDMA_CHAN_APBPTR = common dso_local global i32 0, align 4
@TEGRA_APBDMA_CHAN_AHBSEQ = common dso_local global i32 0, align 4
@TEGRA_APBDMA_CHAN_AHBPTR = common dso_local global i32 0, align 4
@TEGRA_APBDMA_CHAN_CSR = common dso_local global i32 0, align 4
@TEGRA_APBDMA_CSR_ENB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @tegra_dma_runtime_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_dma_runtime_resume(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.tegra_dma*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tegra_dma_channel*, align 8
  %8 = alloca %struct.tegra_dma_channel_regs*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call %struct.tegra_dma* @dev_get_drvdata(%struct.device* %9)
  store %struct.tegra_dma* %10, %struct.tegra_dma** %4, align 8
  %11 = load %struct.tegra_dma*, %struct.tegra_dma** %4, align 8
  %12 = getelementptr inbounds %struct.tegra_dma, %struct.tegra_dma* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @clk_prepare_enable(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %3, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @dev_err(%struct.device* %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %2, align 4
  br label %109

22:                                               ; preds = %1
  %23 = load %struct.tegra_dma*, %struct.tegra_dma** %4, align 8
  %24 = load i32, i32* @TEGRA_APBDMA_GENERAL, align 4
  %25 = load %struct.tegra_dma*, %struct.tegra_dma** %4, align 8
  %26 = getelementptr inbounds %struct.tegra_dma, %struct.tegra_dma* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @tdma_write(%struct.tegra_dma* %23, i32 %24, i32 %27)
  %29 = load %struct.tegra_dma*, %struct.tegra_dma** %4, align 8
  %30 = load i32, i32* @TEGRA_APBDMA_CONTROL, align 4
  %31 = call i32 @tdma_write(%struct.tegra_dma* %29, i32 %30, i32 0)
  %32 = load %struct.tegra_dma*, %struct.tegra_dma** %4, align 8
  %33 = load i32, i32* @TEGRA_APBDMA_IRQ_MASK_SET, align 4
  %34 = call i32 @tdma_write(%struct.tegra_dma* %32, i32 %33, i32 -1)
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %105, %22
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.tegra_dma*, %struct.tegra_dma** %4, align 8
  %38 = getelementptr inbounds %struct.tegra_dma, %struct.tegra_dma* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %36, %41
  br i1 %42, label %43, label %108

43:                                               ; preds = %35
  %44 = load %struct.tegra_dma*, %struct.tegra_dma** %4, align 8
  %45 = getelementptr inbounds %struct.tegra_dma, %struct.tegra_dma* %44, i32 0, i32 2
  %46 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.tegra_dma_channel, %struct.tegra_dma_channel* %46, i64 %48
  store %struct.tegra_dma_channel* %49, %struct.tegra_dma_channel** %7, align 8
  %50 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %7, align 8
  %51 = getelementptr inbounds %struct.tegra_dma_channel, %struct.tegra_dma_channel* %50, i32 0, i32 1
  store %struct.tegra_dma_channel_regs* %51, %struct.tegra_dma_channel_regs** %8, align 8
  %52 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %7, align 8
  %53 = getelementptr inbounds %struct.tegra_dma_channel, %struct.tegra_dma_channel* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %43
  br label %105

57:                                               ; preds = %43
  %58 = load %struct.tegra_dma*, %struct.tegra_dma** %4, align 8
  %59 = getelementptr inbounds %struct.tegra_dma, %struct.tegra_dma* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %57
  %65 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %7, align 8
  %66 = load i32, i32* @TEGRA_APBDMA_CHAN_WCOUNT, align 4
  %67 = load %struct.tegra_dma_channel_regs*, %struct.tegra_dma_channel_regs** %8, align 8
  %68 = getelementptr inbounds %struct.tegra_dma_channel_regs, %struct.tegra_dma_channel_regs* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @tdc_write(%struct.tegra_dma_channel* %65, i32 %66, i32 %69)
  br label %71

71:                                               ; preds = %64, %57
  %72 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %7, align 8
  %73 = load i32, i32* @TEGRA_APBDMA_CHAN_APBSEQ, align 4
  %74 = load %struct.tegra_dma_channel_regs*, %struct.tegra_dma_channel_regs** %8, align 8
  %75 = getelementptr inbounds %struct.tegra_dma_channel_regs, %struct.tegra_dma_channel_regs* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @tdc_write(%struct.tegra_dma_channel* %72, i32 %73, i32 %76)
  %78 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %7, align 8
  %79 = load i32, i32* @TEGRA_APBDMA_CHAN_APBPTR, align 4
  %80 = load %struct.tegra_dma_channel_regs*, %struct.tegra_dma_channel_regs** %8, align 8
  %81 = getelementptr inbounds %struct.tegra_dma_channel_regs, %struct.tegra_dma_channel_regs* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @tdc_write(%struct.tegra_dma_channel* %78, i32 %79, i32 %82)
  %84 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %7, align 8
  %85 = load i32, i32* @TEGRA_APBDMA_CHAN_AHBSEQ, align 4
  %86 = load %struct.tegra_dma_channel_regs*, %struct.tegra_dma_channel_regs** %8, align 8
  %87 = getelementptr inbounds %struct.tegra_dma_channel_regs, %struct.tegra_dma_channel_regs* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @tdc_write(%struct.tegra_dma_channel* %84, i32 %85, i32 %88)
  %90 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %7, align 8
  %91 = load i32, i32* @TEGRA_APBDMA_CHAN_AHBPTR, align 4
  %92 = load %struct.tegra_dma_channel_regs*, %struct.tegra_dma_channel_regs** %8, align 8
  %93 = getelementptr inbounds %struct.tegra_dma_channel_regs, %struct.tegra_dma_channel_regs* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @tdc_write(%struct.tegra_dma_channel* %90, i32 %91, i32 %94)
  %96 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %7, align 8
  %97 = load i32, i32* @TEGRA_APBDMA_CHAN_CSR, align 4
  %98 = load %struct.tegra_dma_channel_regs*, %struct.tegra_dma_channel_regs** %8, align 8
  %99 = getelementptr inbounds %struct.tegra_dma_channel_regs, %struct.tegra_dma_channel_regs* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @TEGRA_APBDMA_CSR_ENB, align 4
  %102 = xor i32 %101, -1
  %103 = and i32 %100, %102
  %104 = call i32 @tdc_write(%struct.tegra_dma_channel* %96, i32 %97, i32 %103)
  br label %105

105:                                              ; preds = %71, %56
  %106 = load i32, i32* %5, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %5, align 4
  br label %35

108:                                              ; preds = %35
  store i32 0, i32* %2, align 4
  br label %109

109:                                              ; preds = %108, %17
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local %struct.tegra_dma* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @tdma_write(%struct.tegra_dma*, i32, i32) #1

declare dso_local i32 @tdc_write(%struct.tegra_dma_channel*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

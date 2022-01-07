; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_tegra20-apb-dma.c_tegra_dma_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_tegra20-apb-dma.c_tegra_dma_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_dma_channel = type { i32, i32, i32 (%struct.tegra_dma_channel*, i32)*, i32 }

@TEGRA_APBDMA_CHAN_STATUS = common dso_local global i32 0, align 4
@TEGRA_APBDMA_STATUS_ISE_EOC = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Interrupt already served status 0x%08lx\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @tegra_dma_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_dma_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tegra_dma_channel*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.tegra_dma_channel*
  store %struct.tegra_dma_channel* %10, %struct.tegra_dma_channel** %6, align 8
  %11 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %6, align 8
  %12 = getelementptr inbounds %struct.tegra_dma_channel, %struct.tegra_dma_channel* %11, i32 0, i32 0
  %13 = load i64, i64* %8, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %6, align 8
  %16 = getelementptr inbounds %struct.tegra_dma_channel, %struct.tegra_dma_channel* %15, i32 0, i32 3
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @trace_tegra_dma_isr(i32* %16, i32 %17)
  %19 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %6, align 8
  %20 = load i32, i32* @TEGRA_APBDMA_CHAN_STATUS, align 4
  %21 = call i64 @tdc_read(%struct.tegra_dma_channel* %19, i32 %20)
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* @TEGRA_APBDMA_STATUS_ISE_EOC, align 8
  %24 = and i64 %22, %23
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %2
  %27 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %6, align 8
  %28 = load i32, i32* @TEGRA_APBDMA_CHAN_STATUS, align 4
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @tdc_write(%struct.tegra_dma_channel* %27, i32 %28, i64 %29)
  %31 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %6, align 8
  %32 = getelementptr inbounds %struct.tegra_dma_channel, %struct.tegra_dma_channel* %31, i32 0, i32 2
  %33 = load i32 (%struct.tegra_dma_channel*, i32)*, i32 (%struct.tegra_dma_channel*, i32)** %32, align 8
  %34 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %6, align 8
  %35 = call i32 %33(%struct.tegra_dma_channel* %34, i32 0)
  %36 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %6, align 8
  %37 = getelementptr inbounds %struct.tegra_dma_channel, %struct.tegra_dma_channel* %36, i32 0, i32 1
  %38 = call i32 @tasklet_schedule(i32* %37)
  %39 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %6, align 8
  %40 = getelementptr inbounds %struct.tegra_dma_channel, %struct.tegra_dma_channel* %39, i32 0, i32 0
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  %43 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %43, i32* %3, align 4
  br label %54

44:                                               ; preds = %2
  %45 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %6, align 8
  %46 = getelementptr inbounds %struct.tegra_dma_channel, %struct.tegra_dma_channel* %45, i32 0, i32 0
  %47 = load i64, i64* %8, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  %49 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %6, align 8
  %50 = call i32 @tdc2dev(%struct.tegra_dma_channel* %49)
  %51 = load i64, i64* %7, align 8
  %52 = call i32 @dev_info(i32 %50, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %51)
  %53 = load i32, i32* @IRQ_NONE, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %44, %26
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @trace_tegra_dma_isr(i32*, i32) #1

declare dso_local i64 @tdc_read(%struct.tegra_dma_channel*, i32) #1

declare dso_local i32 @tdc_write(%struct.tegra_dma_channel*, i32, i64) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_info(i32, i8*, i64) #1

declare dso_local i32 @tdc2dev(%struct.tegra_dma_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_imx-dma.c_imxdma_watchdog.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_imx-dma.c_imxdma_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imxdma_channel = type { i32, i32, %struct.imxdma_engine* }
%struct.imxdma_engine = type { i32 }
%struct.timer_list = type { i32 }

@watchdog = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"channel %d: watchdog timeout!\0A\00", align 1
@imxdmac = common dso_local global %struct.imxdma_channel* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @imxdma_watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imxdma_watchdog(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.imxdma_channel*, align 8
  %4 = alloca %struct.imxdma_engine*, align 8
  %5 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %6 = load %struct.imxdma_channel*, %struct.imxdma_channel** %3, align 8
  %7 = ptrtoint %struct.imxdma_channel* %6 to i32
  %8 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %9 = load i32, i32* @watchdog, align 4
  %10 = call %struct.imxdma_channel* @from_timer(i32 %7, %struct.timer_list* %8, i32 %9)
  store %struct.imxdma_channel* %10, %struct.imxdma_channel** %3, align 8
  %11 = load %struct.imxdma_channel*, %struct.imxdma_channel** %3, align 8
  %12 = getelementptr inbounds %struct.imxdma_channel, %struct.imxdma_channel* %11, i32 0, i32 2
  %13 = load %struct.imxdma_engine*, %struct.imxdma_engine** %12, align 8
  store %struct.imxdma_engine* %13, %struct.imxdma_engine** %4, align 8
  %14 = load %struct.imxdma_channel*, %struct.imxdma_channel** %3, align 8
  %15 = getelementptr inbounds %struct.imxdma_channel, %struct.imxdma_channel* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %5, align 4
  %17 = load %struct.imxdma_engine*, %struct.imxdma_engine** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @DMA_CCR(i32 %18)
  %20 = call i32 @imx_dmav1_writel(%struct.imxdma_engine* %17, i32 0, i32 %19)
  %21 = load %struct.imxdma_channel*, %struct.imxdma_channel** %3, align 8
  %22 = getelementptr inbounds %struct.imxdma_channel, %struct.imxdma_channel* %21, i32 0, i32 1
  %23 = call i32 @tasklet_schedule(i32* %22)
  %24 = load %struct.imxdma_engine*, %struct.imxdma_engine** %4, align 8
  %25 = getelementptr inbounds %struct.imxdma_engine, %struct.imxdma_engine* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.imxdma_channel*, %struct.imxdma_channel** %3, align 8
  %28 = getelementptr inbounds %struct.imxdma_channel, %struct.imxdma_channel* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @dev_dbg(i32 %26, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %29)
  ret void
}

declare dso_local %struct.imxdma_channel* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @imx_dmav1_writel(%struct.imxdma_engine*, i32, i32) #1

declare dso_local i32 @DMA_CCR(i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

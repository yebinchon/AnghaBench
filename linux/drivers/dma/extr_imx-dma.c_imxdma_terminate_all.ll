; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_imx-dma.c_imxdma_terminate_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_imx-dma.c_imxdma_terminate_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.imxdma_channel = type { i32, i32, i32, %struct.imxdma_engine* }
%struct.imxdma_engine = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @imxdma_terminate_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imxdma_terminate_all(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.imxdma_channel*, align 8
  %4 = alloca %struct.imxdma_engine*, align 8
  %5 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %6 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %7 = call %struct.imxdma_channel* @to_imxdma_chan(%struct.dma_chan* %6)
  store %struct.imxdma_channel* %7, %struct.imxdma_channel** %3, align 8
  %8 = load %struct.imxdma_channel*, %struct.imxdma_channel** %3, align 8
  %9 = getelementptr inbounds %struct.imxdma_channel, %struct.imxdma_channel* %8, i32 0, i32 3
  %10 = load %struct.imxdma_engine*, %struct.imxdma_engine** %9, align 8
  store %struct.imxdma_engine* %10, %struct.imxdma_engine** %4, align 8
  %11 = load %struct.imxdma_channel*, %struct.imxdma_channel** %3, align 8
  %12 = call i32 @imxdma_disable_hw(%struct.imxdma_channel* %11)
  %13 = load %struct.imxdma_engine*, %struct.imxdma_engine** %4, align 8
  %14 = getelementptr inbounds %struct.imxdma_engine, %struct.imxdma_engine* %13, i32 0, i32 0
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.imxdma_channel*, %struct.imxdma_channel** %3, align 8
  %18 = getelementptr inbounds %struct.imxdma_channel, %struct.imxdma_channel* %17, i32 0, i32 2
  %19 = load %struct.imxdma_channel*, %struct.imxdma_channel** %3, align 8
  %20 = getelementptr inbounds %struct.imxdma_channel, %struct.imxdma_channel* %19, i32 0, i32 0
  %21 = call i32 @list_splice_tail_init(i32* %18, i32* %20)
  %22 = load %struct.imxdma_channel*, %struct.imxdma_channel** %3, align 8
  %23 = getelementptr inbounds %struct.imxdma_channel, %struct.imxdma_channel* %22, i32 0, i32 1
  %24 = load %struct.imxdma_channel*, %struct.imxdma_channel** %3, align 8
  %25 = getelementptr inbounds %struct.imxdma_channel, %struct.imxdma_channel* %24, i32 0, i32 0
  %26 = call i32 @list_splice_tail_init(i32* %23, i32* %25)
  %27 = load %struct.imxdma_engine*, %struct.imxdma_engine** %4, align 8
  %28 = getelementptr inbounds %struct.imxdma_engine, %struct.imxdma_engine* %27, i32 0, i32 0
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  ret i32 0
}

declare dso_local %struct.imxdma_channel* @to_imxdma_chan(%struct.dma_chan*) #1

declare dso_local i32 @imxdma_disable_hw(%struct.imxdma_channel*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_splice_tail_init(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

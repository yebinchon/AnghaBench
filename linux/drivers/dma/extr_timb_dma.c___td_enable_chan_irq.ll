; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_timb_dma.c___td_enable_chan_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_timb_dma.c___td_enable_chan_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timb_dma_chan = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.timb_dma = type { i64 }

@TIMBDMA_IER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Enabling irq: %d, IER: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timb_dma_chan*)* @__td_enable_chan_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__td_enable_chan_irq(%struct.timb_dma_chan* %0) #0 {
  %2 = alloca %struct.timb_dma_chan*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.timb_dma*, align 8
  %5 = alloca i32, align 4
  store %struct.timb_dma_chan* %0, %struct.timb_dma_chan** %2, align 8
  %6 = load %struct.timb_dma_chan*, %struct.timb_dma_chan** %2, align 8
  %7 = getelementptr inbounds %struct.timb_dma_chan, %struct.timb_dma_chan* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %3, align 4
  %10 = load %struct.timb_dma_chan*, %struct.timb_dma_chan** %2, align 8
  %11 = call %struct.timb_dma* @tdchantotd(%struct.timb_dma_chan* %10)
  store %struct.timb_dma* %11, %struct.timb_dma** %4, align 8
  %12 = load %struct.timb_dma*, %struct.timb_dma** %4, align 8
  %13 = getelementptr inbounds %struct.timb_dma, %struct.timb_dma* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @TIMBDMA_IER, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @ioread32(i64 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %3, align 4
  %19 = shl i32 1, %18
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %5, align 4
  %22 = load %struct.timb_dma_chan*, %struct.timb_dma_chan** %2, align 8
  %23 = getelementptr inbounds %struct.timb_dma_chan, %struct.timb_dma_chan* %22, i32 0, i32 0
  %24 = call i32 @chan2dev(%struct.TYPE_2__* %23)
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @dev_dbg(i32 %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.timb_dma*, %struct.timb_dma** %4, align 8
  %30 = getelementptr inbounds %struct.timb_dma, %struct.timb_dma* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @TIMBDMA_IER, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @iowrite32(i32 %28, i64 %33)
  ret void
}

declare dso_local %struct.timb_dma* @tdchantotd(%struct.timb_dma_chan*) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @chan2dev(%struct.TYPE_2__*) #1

declare dso_local i32 @iowrite32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

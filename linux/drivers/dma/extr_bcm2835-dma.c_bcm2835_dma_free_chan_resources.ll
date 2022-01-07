; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_bcm2835-dma.c_bcm2835_dma_free_chan_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_bcm2835-dma.c_bcm2835_dma_free_chan_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.bcm2835_chan = type { i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Freeing DMA channel %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_chan*)* @bcm2835_dma_free_chan_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm2835_dma_free_chan_resources(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.bcm2835_chan*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %4 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %5 = call %struct.bcm2835_chan* @to_bcm2835_dma_chan(%struct.dma_chan* %4)
  store %struct.bcm2835_chan* %5, %struct.bcm2835_chan** %3, align 8
  %6 = load %struct.bcm2835_chan*, %struct.bcm2835_chan** %3, align 8
  %7 = getelementptr inbounds %struct.bcm2835_chan, %struct.bcm2835_chan* %6, i32 0, i32 1
  %8 = call i32 @vchan_free_chan_resources(%struct.TYPE_6__* %7)
  %9 = load %struct.bcm2835_chan*, %struct.bcm2835_chan** %3, align 8
  %10 = getelementptr inbounds %struct.bcm2835_chan, %struct.bcm2835_chan* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.bcm2835_chan*, %struct.bcm2835_chan** %3, align 8
  %13 = call i32 @free_irq(i32 %11, %struct.bcm2835_chan* %12)
  %14 = load %struct.bcm2835_chan*, %struct.bcm2835_chan** %3, align 8
  %15 = getelementptr inbounds %struct.bcm2835_chan, %struct.bcm2835_chan* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @dma_pool_destroy(i32 %16)
  %18 = load %struct.bcm2835_chan*, %struct.bcm2835_chan** %3, align 8
  %19 = getelementptr inbounds %struct.bcm2835_chan, %struct.bcm2835_chan* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.bcm2835_chan*, %struct.bcm2835_chan** %3, align 8
  %26 = getelementptr inbounds %struct.bcm2835_chan, %struct.bcm2835_chan* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @dev_dbg(i32 %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %27)
  ret void
}

declare dso_local %struct.bcm2835_chan* @to_bcm2835_dma_chan(%struct.dma_chan*) #1

declare dso_local i32 @vchan_free_chan_resources(%struct.TYPE_6__*) #1

declare dso_local i32 @free_irq(i32, %struct.bcm2835_chan*) #1

declare dso_local i32 @dma_pool_destroy(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

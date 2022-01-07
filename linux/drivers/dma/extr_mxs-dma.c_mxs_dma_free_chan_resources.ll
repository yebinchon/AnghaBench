; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mxs-dma.c_mxs_dma_free_chan_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mxs-dma.c_mxs_dma_free_chan_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.mxs_dma_chan = type { i32, i32, i32, %struct.mxs_dma_engine* }
%struct.mxs_dma_engine = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CCW_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_chan*)* @mxs_dma_free_chan_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxs_dma_free_chan_resources(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.mxs_dma_chan*, align 8
  %4 = alloca %struct.mxs_dma_engine*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %5 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %6 = call %struct.mxs_dma_chan* @to_mxs_dma_chan(%struct.dma_chan* %5)
  store %struct.mxs_dma_chan* %6, %struct.mxs_dma_chan** %3, align 8
  %7 = load %struct.mxs_dma_chan*, %struct.mxs_dma_chan** %3, align 8
  %8 = getelementptr inbounds %struct.mxs_dma_chan, %struct.mxs_dma_chan* %7, i32 0, i32 3
  %9 = load %struct.mxs_dma_engine*, %struct.mxs_dma_engine** %8, align 8
  store %struct.mxs_dma_engine* %9, %struct.mxs_dma_engine** %4, align 8
  %10 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %11 = call i32 @mxs_dma_disable_chan(%struct.dma_chan* %10)
  %12 = load %struct.mxs_dma_chan*, %struct.mxs_dma_chan** %3, align 8
  %13 = getelementptr inbounds %struct.mxs_dma_chan, %struct.mxs_dma_chan* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.mxs_dma_engine*, %struct.mxs_dma_engine** %4, align 8
  %16 = call i32 @free_irq(i32 %14, %struct.mxs_dma_engine* %15)
  %17 = load %struct.mxs_dma_engine*, %struct.mxs_dma_engine** %4, align 8
  %18 = getelementptr inbounds %struct.mxs_dma_engine, %struct.mxs_dma_engine* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @CCW_BLOCK_SIZE, align 4
  %22 = load %struct.mxs_dma_chan*, %struct.mxs_dma_chan** %3, align 8
  %23 = getelementptr inbounds %struct.mxs_dma_chan, %struct.mxs_dma_chan* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.mxs_dma_chan*, %struct.mxs_dma_chan** %3, align 8
  %26 = getelementptr inbounds %struct.mxs_dma_chan, %struct.mxs_dma_chan* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @dma_free_coherent(i32 %20, i32 %21, i32 %24, i32 %27)
  %29 = load %struct.mxs_dma_engine*, %struct.mxs_dma_engine** %4, align 8
  %30 = getelementptr inbounds %struct.mxs_dma_engine, %struct.mxs_dma_engine* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @clk_disable_unprepare(i32 %31)
  ret void
}

declare dso_local %struct.mxs_dma_chan* @to_mxs_dma_chan(%struct.dma_chan*) #1

declare dso_local i32 @mxs_dma_disable_chan(%struct.dma_chan*) #1

declare dso_local i32 @free_irq(i32, %struct.mxs_dma_engine*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

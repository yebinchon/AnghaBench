; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_amba-pl08x.c_pl08x_phy_reassign_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_amba-pl08x.c_pl08x_phy_reassign_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pl08x_phy_chan = type { %struct.pl08x_dma_chan*, i32 }
%struct.pl08x_dma_chan = type { i32, %struct.pl08x_phy_chan*, i32, %struct.pl08x_driver_data* }
%struct.pl08x_driver_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"reassigned physical channel %d for xfer on %s\0A\00", align 1
@PL08X_CHAN_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pl08x_phy_chan*, %struct.pl08x_dma_chan*)* @pl08x_phy_reassign_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pl08x_phy_reassign_start(%struct.pl08x_phy_chan* %0, %struct.pl08x_dma_chan* %1) #0 {
  %3 = alloca %struct.pl08x_phy_chan*, align 8
  %4 = alloca %struct.pl08x_dma_chan*, align 8
  %5 = alloca %struct.pl08x_driver_data*, align 8
  store %struct.pl08x_phy_chan* %0, %struct.pl08x_phy_chan** %3, align 8
  store %struct.pl08x_dma_chan* %1, %struct.pl08x_dma_chan** %4, align 8
  %6 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %4, align 8
  %7 = getelementptr inbounds %struct.pl08x_dma_chan, %struct.pl08x_dma_chan* %6, i32 0, i32 3
  %8 = load %struct.pl08x_driver_data*, %struct.pl08x_driver_data** %7, align 8
  store %struct.pl08x_driver_data* %8, %struct.pl08x_driver_data** %5, align 8
  %9 = load %struct.pl08x_driver_data*, %struct.pl08x_driver_data** %5, align 8
  %10 = getelementptr inbounds %struct.pl08x_driver_data, %struct.pl08x_driver_data* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %3, align 8
  %14 = getelementptr inbounds %struct.pl08x_phy_chan, %struct.pl08x_phy_chan* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %4, align 8
  %17 = getelementptr inbounds %struct.pl08x_dma_chan, %struct.pl08x_dma_chan* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @dev_dbg(i32* %12, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18)
  %20 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %4, align 8
  %21 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %3, align 8
  %22 = getelementptr inbounds %struct.pl08x_phy_chan, %struct.pl08x_phy_chan* %21, i32 0, i32 0
  store %struct.pl08x_dma_chan* %20, %struct.pl08x_dma_chan** %22, align 8
  %23 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %3, align 8
  %24 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %4, align 8
  %25 = getelementptr inbounds %struct.pl08x_dma_chan, %struct.pl08x_dma_chan* %24, i32 0, i32 1
  store %struct.pl08x_phy_chan* %23, %struct.pl08x_phy_chan** %25, align 8
  %26 = load i32, i32* @PL08X_CHAN_RUNNING, align 4
  %27 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %4, align 8
  %28 = getelementptr inbounds %struct.pl08x_dma_chan, %struct.pl08x_dma_chan* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %4, align 8
  %30 = call i32 @pl08x_start_next_txd(%struct.pl08x_dma_chan* %29)
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @pl08x_start_next_txd(%struct.pl08x_dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

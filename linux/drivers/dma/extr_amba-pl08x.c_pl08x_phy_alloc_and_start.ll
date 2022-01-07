; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_amba-pl08x.c_pl08x_phy_alloc_and_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_amba-pl08x.c_pl08x_phy_alloc_and_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pl08x_dma_chan = type { i32, %struct.pl08x_phy_chan*, i32, i32, %struct.pl08x_driver_data* }
%struct.pl08x_phy_chan = type { i32 }
%struct.pl08x_driver_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"no physical channel available for xfer on %s\0A\00", align 1
@PL08X_CHAN_WAITING = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"allocated physical channel %d for xfer on %s\0A\00", align 1
@PL08X_CHAN_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pl08x_dma_chan*)* @pl08x_phy_alloc_and_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pl08x_phy_alloc_and_start(%struct.pl08x_dma_chan* %0) #0 {
  %2 = alloca %struct.pl08x_dma_chan*, align 8
  %3 = alloca %struct.pl08x_driver_data*, align 8
  %4 = alloca %struct.pl08x_phy_chan*, align 8
  store %struct.pl08x_dma_chan* %0, %struct.pl08x_dma_chan** %2, align 8
  %5 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %2, align 8
  %6 = getelementptr inbounds %struct.pl08x_dma_chan, %struct.pl08x_dma_chan* %5, i32 0, i32 4
  %7 = load %struct.pl08x_driver_data*, %struct.pl08x_driver_data** %6, align 8
  store %struct.pl08x_driver_data* %7, %struct.pl08x_driver_data** %3, align 8
  %8 = load %struct.pl08x_driver_data*, %struct.pl08x_driver_data** %3, align 8
  %9 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %2, align 8
  %10 = call %struct.pl08x_phy_chan* @pl08x_get_phy_channel(%struct.pl08x_driver_data* %8, %struct.pl08x_dma_chan* %9)
  store %struct.pl08x_phy_chan* %10, %struct.pl08x_phy_chan** %4, align 8
  %11 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %4, align 8
  %12 = icmp ne %struct.pl08x_phy_chan* %11, null
  br i1 %12, label %28, label %13

13:                                               ; preds = %1
  %14 = load %struct.pl08x_driver_data*, %struct.pl08x_driver_data** %3, align 8
  %15 = getelementptr inbounds %struct.pl08x_driver_data, %struct.pl08x_driver_data* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %2, align 8
  %19 = getelementptr inbounds %struct.pl08x_dma_chan, %struct.pl08x_dma_chan* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %17, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @PL08X_CHAN_WAITING, align 4
  %23 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %2, align 8
  %24 = getelementptr inbounds %struct.pl08x_dma_chan, %struct.pl08x_dma_chan* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* @jiffies, align 4
  %26 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %2, align 8
  %27 = getelementptr inbounds %struct.pl08x_dma_chan, %struct.pl08x_dma_chan* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  br label %48

28:                                               ; preds = %1
  %29 = load %struct.pl08x_driver_data*, %struct.pl08x_driver_data** %3, align 8
  %30 = getelementptr inbounds %struct.pl08x_driver_data, %struct.pl08x_driver_data* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %4, align 8
  %34 = getelementptr inbounds %struct.pl08x_phy_chan, %struct.pl08x_phy_chan* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %2, align 8
  %37 = getelementptr inbounds %struct.pl08x_dma_chan, %struct.pl08x_dma_chan* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %32, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %38)
  %40 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %4, align 8
  %41 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %2, align 8
  %42 = getelementptr inbounds %struct.pl08x_dma_chan, %struct.pl08x_dma_chan* %41, i32 0, i32 1
  store %struct.pl08x_phy_chan* %40, %struct.pl08x_phy_chan** %42, align 8
  %43 = load i32, i32* @PL08X_CHAN_RUNNING, align 4
  %44 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %2, align 8
  %45 = getelementptr inbounds %struct.pl08x_dma_chan, %struct.pl08x_dma_chan* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %2, align 8
  %47 = call i32 @pl08x_start_next_txd(%struct.pl08x_dma_chan* %46)
  br label %48

48:                                               ; preds = %28, %13
  ret void
}

declare dso_local %struct.pl08x_phy_chan* @pl08x_get_phy_channel(%struct.pl08x_driver_data*, %struct.pl08x_dma_chan*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

declare dso_local i32 @pl08x_start_next_txd(%struct.pl08x_dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

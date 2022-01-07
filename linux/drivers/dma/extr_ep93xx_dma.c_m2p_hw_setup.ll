; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_ep93xx_dma.c_m2p_hw_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_ep93xx_dma.c_m2p_hw_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ep93xx_dma_chan = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ep93xx_dma_data* }
%struct.ep93xx_dma_data = type { i32 }

@M2P_PPALLOC = common dso_local global i64 0, align 8
@M2P_CONTROL_CH_ERROR_INT = common dso_local global i32 0, align 4
@M2P_CONTROL_ICE = common dso_local global i32 0, align 4
@M2P_CONTROL_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ep93xx_dma_chan*)* @m2p_hw_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m2p_hw_setup(%struct.ep93xx_dma_chan* %0) #0 {
  %2 = alloca %struct.ep93xx_dma_chan*, align 8
  %3 = alloca %struct.ep93xx_dma_data*, align 8
  %4 = alloca i32, align 4
  store %struct.ep93xx_dma_chan* %0, %struct.ep93xx_dma_chan** %2, align 8
  %5 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %2, align 8
  %6 = getelementptr inbounds %struct.ep93xx_dma_chan, %struct.ep93xx_dma_chan* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.ep93xx_dma_data*, %struct.ep93xx_dma_data** %7, align 8
  store %struct.ep93xx_dma_data* %8, %struct.ep93xx_dma_data** %3, align 8
  %9 = load %struct.ep93xx_dma_data*, %struct.ep93xx_dma_data** %3, align 8
  %10 = getelementptr inbounds %struct.ep93xx_dma_data, %struct.ep93xx_dma_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, 15
  %13 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %2, align 8
  %14 = getelementptr inbounds %struct.ep93xx_dma_chan, %struct.ep93xx_dma_chan* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @M2P_PPALLOC, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @writel(i32 %12, i64 %17)
  %19 = load i32, i32* @M2P_CONTROL_CH_ERROR_INT, align 4
  %20 = load i32, i32* @M2P_CONTROL_ICE, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @M2P_CONTROL_ENABLE, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %4, align 4
  %24 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %2, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @m2p_set_control(%struct.ep93xx_dma_chan* %24, i32 %25)
  %27 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %2, align 8
  %28 = getelementptr inbounds %struct.ep93xx_dma_chan, %struct.ep93xx_dma_chan* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  ret i32 0
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @m2p_set_control(%struct.ep93xx_dma_chan*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

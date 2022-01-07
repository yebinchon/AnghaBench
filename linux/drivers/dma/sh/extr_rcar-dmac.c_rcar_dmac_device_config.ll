; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/sh/extr_rcar-dmac.c_rcar_dmac_device_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/sh/extr_rcar-dmac.c_rcar_dmac_device_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32 }
%struct.rcar_dmac_chan = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*, %struct.dma_slave_config*)* @rcar_dmac_device_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_dmac_device_config(%struct.dma_chan* %0, %struct.dma_slave_config* %1) #0 {
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca %struct.dma_slave_config*, align 8
  %5 = alloca %struct.rcar_dmac_chan*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %3, align 8
  store %struct.dma_slave_config* %1, %struct.dma_slave_config** %4, align 8
  %6 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %7 = call %struct.rcar_dmac_chan* @to_rcar_dmac_chan(%struct.dma_chan* %6)
  store %struct.rcar_dmac_chan* %7, %struct.rcar_dmac_chan** %5, align 8
  %8 = load %struct.dma_slave_config*, %struct.dma_slave_config** %4, align 8
  %9 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.rcar_dmac_chan*, %struct.rcar_dmac_chan** %5, align 8
  %12 = getelementptr inbounds %struct.rcar_dmac_chan, %struct.rcar_dmac_chan* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  store i32 %10, i32* %13, align 4
  %14 = load %struct.dma_slave_config*, %struct.dma_slave_config** %4, align 8
  %15 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.rcar_dmac_chan*, %struct.rcar_dmac_chan** %5, align 8
  %18 = getelementptr inbounds %struct.rcar_dmac_chan, %struct.rcar_dmac_chan* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  store i32 %16, i32* %19, align 4
  %20 = load %struct.dma_slave_config*, %struct.dma_slave_config** %4, align 8
  %21 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.rcar_dmac_chan*, %struct.rcar_dmac_chan** %5, align 8
  %24 = getelementptr inbounds %struct.rcar_dmac_chan, %struct.rcar_dmac_chan* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 4
  %26 = load %struct.dma_slave_config*, %struct.dma_slave_config** %4, align 8
  %27 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.rcar_dmac_chan*, %struct.rcar_dmac_chan** %5, align 8
  %30 = getelementptr inbounds %struct.rcar_dmac_chan, %struct.rcar_dmac_chan* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 4
  ret i32 0
}

declare dso_local %struct.rcar_dmac_chan* @to_rcar_dmac_chan(%struct.dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

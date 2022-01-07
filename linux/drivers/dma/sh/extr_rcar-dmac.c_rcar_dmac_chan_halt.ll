; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/sh/extr_rcar-dmac.c_rcar_dmac_chan_halt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/sh/extr_rcar-dmac.c_rcar_dmac_chan_halt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_dmac_chan = type { i32 }

@RCAR_DMACHCR = common dso_local global i32 0, align 4
@RCAR_DMACHCR_DSE = common dso_local global i32 0, align 4
@RCAR_DMACHCR_DSIE = common dso_local global i32 0, align 4
@RCAR_DMACHCR_IE = common dso_local global i32 0, align 4
@RCAR_DMACHCR_TE = common dso_local global i32 0, align 4
@RCAR_DMACHCR_DE = common dso_local global i32 0, align 4
@RCAR_DMACHCR_CAE = common dso_local global i32 0, align 4
@RCAR_DMACHCR_CAIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rcar_dmac_chan*)* @rcar_dmac_chan_halt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcar_dmac_chan_halt(%struct.rcar_dmac_chan* %0) #0 {
  %2 = alloca %struct.rcar_dmac_chan*, align 8
  %3 = alloca i32, align 4
  store %struct.rcar_dmac_chan* %0, %struct.rcar_dmac_chan** %2, align 8
  %4 = load %struct.rcar_dmac_chan*, %struct.rcar_dmac_chan** %2, align 8
  %5 = load i32, i32* @RCAR_DMACHCR, align 4
  %6 = call i32 @rcar_dmac_chan_read(%struct.rcar_dmac_chan* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @RCAR_DMACHCR_DSE, align 4
  %8 = load i32, i32* @RCAR_DMACHCR_DSIE, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @RCAR_DMACHCR_IE, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @RCAR_DMACHCR_TE, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @RCAR_DMACHCR_DE, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @RCAR_DMACHCR_CAE, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @RCAR_DMACHCR_CAIE, align 4
  %19 = or i32 %17, %18
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %3, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %3, align 4
  %23 = load %struct.rcar_dmac_chan*, %struct.rcar_dmac_chan** %2, align 8
  %24 = load i32, i32* @RCAR_DMACHCR, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @rcar_dmac_chan_write(%struct.rcar_dmac_chan* %23, i32 %24, i32 %25)
  %27 = load %struct.rcar_dmac_chan*, %struct.rcar_dmac_chan** %2, align 8
  %28 = call i32 @rcar_dmac_chcr_de_barrier(%struct.rcar_dmac_chan* %27)
  ret void
}

declare dso_local i32 @rcar_dmac_chan_read(%struct.rcar_dmac_chan*, i32) #1

declare dso_local i32 @rcar_dmac_chan_write(%struct.rcar_dmac_chan*, i32, i32) #1

declare dso_local i32 @rcar_dmac_chcr_de_barrier(%struct.rcar_dmac_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

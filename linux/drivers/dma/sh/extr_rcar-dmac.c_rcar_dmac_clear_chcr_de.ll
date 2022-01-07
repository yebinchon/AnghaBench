; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/sh/extr_rcar-dmac.c_rcar_dmac_clear_chcr_de.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/sh/extr_rcar-dmac.c_rcar_dmac_clear_chcr_de.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_dmac_chan = type { i32 }

@RCAR_DMACHCR = common dso_local global i32 0, align 4
@RCAR_DMACHCR_DE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rcar_dmac_chan*)* @rcar_dmac_clear_chcr_de to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcar_dmac_clear_chcr_de(%struct.rcar_dmac_chan* %0) #0 {
  %2 = alloca %struct.rcar_dmac_chan*, align 8
  %3 = alloca i32, align 4
  store %struct.rcar_dmac_chan* %0, %struct.rcar_dmac_chan** %2, align 8
  %4 = load %struct.rcar_dmac_chan*, %struct.rcar_dmac_chan** %2, align 8
  %5 = load i32, i32* @RCAR_DMACHCR, align 4
  %6 = call i32 @rcar_dmac_chan_read(%struct.rcar_dmac_chan* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.rcar_dmac_chan*, %struct.rcar_dmac_chan** %2, align 8
  %8 = load i32, i32* @RCAR_DMACHCR, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @RCAR_DMACHCR_DE, align 4
  %11 = xor i32 %10, -1
  %12 = and i32 %9, %11
  %13 = call i32 @rcar_dmac_chan_write(%struct.rcar_dmac_chan* %7, i32 %8, i32 %12)
  %14 = load %struct.rcar_dmac_chan*, %struct.rcar_dmac_chan** %2, align 8
  %15 = call i32 @rcar_dmac_chcr_de_barrier(%struct.rcar_dmac_chan* %14)
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

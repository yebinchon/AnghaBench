; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_fsldma.c_get_cdar.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_fsldma.c_get_cdar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsldma_chan = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@FSL_DMA_SNEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsldma_chan*)* @get_cdar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_cdar(%struct.fsldma_chan* %0) #0 {
  %2 = alloca %struct.fsldma_chan*, align 8
  store %struct.fsldma_chan* %0, %struct.fsldma_chan** %2, align 8
  %3 = load %struct.fsldma_chan*, %struct.fsldma_chan** %2, align 8
  %4 = load %struct.fsldma_chan*, %struct.fsldma_chan** %2, align 8
  %5 = getelementptr inbounds %struct.fsldma_chan, %struct.fsldma_chan* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = call i32 @FSL_DMA_IN(%struct.fsldma_chan* %3, i32* %7, i32 64)
  %9 = load i32, i32* @FSL_DMA_SNEN, align 4
  %10 = xor i32 %9, -1
  %11 = and i32 %8, %10
  ret i32 %11
}

declare dso_local i32 @FSL_DMA_IN(%struct.fsldma_chan*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

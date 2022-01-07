; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_pl330.c_pl330_pause.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_pl330.c_pl330_pause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.dma_pl330_chan = type { i32, i32, %struct.pl330_dmac* }
%struct.pl330_dmac = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @pl330_pause to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pl330_pause(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.dma_pl330_chan*, align 8
  %4 = alloca %struct.pl330_dmac*, align 8
  %5 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %6 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %7 = call %struct.dma_pl330_chan* @to_pchan(%struct.dma_chan* %6)
  store %struct.dma_pl330_chan* %7, %struct.dma_pl330_chan** %3, align 8
  %8 = load %struct.dma_pl330_chan*, %struct.dma_pl330_chan** %3, align 8
  %9 = getelementptr inbounds %struct.dma_pl330_chan, %struct.dma_pl330_chan* %8, i32 0, i32 2
  %10 = load %struct.pl330_dmac*, %struct.pl330_dmac** %9, align 8
  store %struct.pl330_dmac* %10, %struct.pl330_dmac** %4, align 8
  %11 = load %struct.pl330_dmac*, %struct.pl330_dmac** %4, align 8
  %12 = getelementptr inbounds %struct.pl330_dmac, %struct.pl330_dmac* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @pm_runtime_get_sync(i32 %14)
  %16 = load %struct.dma_pl330_chan*, %struct.dma_pl330_chan** %3, align 8
  %17 = getelementptr inbounds %struct.dma_pl330_chan, %struct.dma_pl330_chan* %16, i32 0, i32 0
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.pl330_dmac*, %struct.pl330_dmac** %4, align 8
  %21 = getelementptr inbounds %struct.pl330_dmac, %struct.pl330_dmac* %20, i32 0, i32 1
  %22 = call i32 @spin_lock(i32* %21)
  %23 = load %struct.dma_pl330_chan*, %struct.dma_pl330_chan** %3, align 8
  %24 = getelementptr inbounds %struct.dma_pl330_chan, %struct.dma_pl330_chan* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @_stop(i32 %25)
  %27 = load %struct.pl330_dmac*, %struct.pl330_dmac** %4, align 8
  %28 = getelementptr inbounds %struct.pl330_dmac, %struct.pl330_dmac* %27, i32 0, i32 1
  %29 = call i32 @spin_unlock(i32* %28)
  %30 = load %struct.dma_pl330_chan*, %struct.dma_pl330_chan** %3, align 8
  %31 = getelementptr inbounds %struct.dma_pl330_chan, %struct.dma_pl330_chan* %30, i32 0, i32 0
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  %34 = load %struct.pl330_dmac*, %struct.pl330_dmac** %4, align 8
  %35 = getelementptr inbounds %struct.pl330_dmac, %struct.pl330_dmac* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @pm_runtime_mark_last_busy(i32 %37)
  %39 = load %struct.pl330_dmac*, %struct.pl330_dmac** %4, align 8
  %40 = getelementptr inbounds %struct.pl330_dmac, %struct.pl330_dmac* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @pm_runtime_put_autosuspend(i32 %42)
  ret i32 0
}

declare dso_local %struct.dma_pl330_chan* @to_pchan(%struct.dma_chan*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @_stop(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_pl330.c_pl330_free_chan_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_pl330.c_pl330_free_chan_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.dma_pl330_chan = type { %struct.pl330_dmac*, i32, i64, i32*, i32 }
%struct.pl330_dmac = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_chan*)* @pl330_free_chan_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pl330_free_chan_resources(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.dma_pl330_chan*, align 8
  %4 = alloca %struct.pl330_dmac*, align 8
  %5 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %6 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %7 = call %struct.dma_pl330_chan* @to_pchan(%struct.dma_chan* %6)
  store %struct.dma_pl330_chan* %7, %struct.dma_pl330_chan** %3, align 8
  %8 = load %struct.dma_pl330_chan*, %struct.dma_pl330_chan** %3, align 8
  %9 = getelementptr inbounds %struct.dma_pl330_chan, %struct.dma_pl330_chan* %8, i32 0, i32 0
  %10 = load %struct.pl330_dmac*, %struct.pl330_dmac** %9, align 8
  store %struct.pl330_dmac* %10, %struct.pl330_dmac** %4, align 8
  %11 = load %struct.dma_pl330_chan*, %struct.dma_pl330_chan** %3, align 8
  %12 = getelementptr inbounds %struct.dma_pl330_chan, %struct.dma_pl330_chan* %11, i32 0, i32 4
  %13 = call i32 @tasklet_kill(i32* %12)
  %14 = load %struct.dma_pl330_chan*, %struct.dma_pl330_chan** %3, align 8
  %15 = getelementptr inbounds %struct.dma_pl330_chan, %struct.dma_pl330_chan* %14, i32 0, i32 0
  %16 = load %struct.pl330_dmac*, %struct.pl330_dmac** %15, align 8
  %17 = getelementptr inbounds %struct.pl330_dmac, %struct.pl330_dmac* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @pm_runtime_get_sync(i32 %19)
  %21 = load %struct.pl330_dmac*, %struct.pl330_dmac** %4, align 8
  %22 = getelementptr inbounds %struct.pl330_dmac, %struct.pl330_dmac* %21, i32 0, i32 1
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.dma_pl330_chan*, %struct.dma_pl330_chan** %3, align 8
  %26 = getelementptr inbounds %struct.dma_pl330_chan, %struct.dma_pl330_chan* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @pl330_release_channel(i32* %27)
  %29 = load %struct.dma_pl330_chan*, %struct.dma_pl330_chan** %3, align 8
  %30 = getelementptr inbounds %struct.dma_pl330_chan, %struct.dma_pl330_chan* %29, i32 0, i32 3
  store i32* null, i32** %30, align 8
  %31 = load %struct.dma_pl330_chan*, %struct.dma_pl330_chan** %3, align 8
  %32 = getelementptr inbounds %struct.dma_pl330_chan, %struct.dma_pl330_chan* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %1
  %36 = load %struct.dma_pl330_chan*, %struct.dma_pl330_chan** %3, align 8
  %37 = getelementptr inbounds %struct.dma_pl330_chan, %struct.dma_pl330_chan* %36, i32 0, i32 1
  %38 = load %struct.dma_pl330_chan*, %struct.dma_pl330_chan** %3, align 8
  %39 = getelementptr inbounds %struct.dma_pl330_chan, %struct.dma_pl330_chan* %38, i32 0, i32 0
  %40 = load %struct.pl330_dmac*, %struct.pl330_dmac** %39, align 8
  %41 = getelementptr inbounds %struct.pl330_dmac, %struct.pl330_dmac* %40, i32 0, i32 2
  %42 = call i32 @list_splice_tail_init(i32* %37, i32* %41)
  br label %43

43:                                               ; preds = %35, %1
  %44 = load %struct.pl330_dmac*, %struct.pl330_dmac** %4, align 8
  %45 = getelementptr inbounds %struct.pl330_dmac, %struct.pl330_dmac* %44, i32 0, i32 1
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  %48 = load %struct.dma_pl330_chan*, %struct.dma_pl330_chan** %3, align 8
  %49 = getelementptr inbounds %struct.dma_pl330_chan, %struct.dma_pl330_chan* %48, i32 0, i32 0
  %50 = load %struct.pl330_dmac*, %struct.pl330_dmac** %49, align 8
  %51 = getelementptr inbounds %struct.pl330_dmac, %struct.pl330_dmac* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @pm_runtime_mark_last_busy(i32 %53)
  %55 = load %struct.dma_pl330_chan*, %struct.dma_pl330_chan** %3, align 8
  %56 = getelementptr inbounds %struct.dma_pl330_chan, %struct.dma_pl330_chan* %55, i32 0, i32 0
  %57 = load %struct.pl330_dmac*, %struct.pl330_dmac** %56, align 8
  %58 = getelementptr inbounds %struct.pl330_dmac, %struct.pl330_dmac* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @pm_runtime_put_autosuspend(i32 %60)
  %62 = load %struct.dma_pl330_chan*, %struct.dma_pl330_chan** %3, align 8
  %63 = call i32 @pl330_unprep_slave_fifo(%struct.dma_pl330_chan* %62)
  ret void
}

declare dso_local %struct.dma_pl330_chan* @to_pchan(%struct.dma_chan*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pl330_release_channel(i32*) #1

declare dso_local i32 @list_splice_tail_init(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

declare dso_local i32 @pl330_unprep_slave_fifo(%struct.dma_pl330_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

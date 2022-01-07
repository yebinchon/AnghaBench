; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/sh/extr_usb-dmac.c_usb_dmac_free_chan_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/sh/extr_usb-dmac.c_usb_dmac_free_chan_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.usb_dmac_chan = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_chan*)* @usb_dmac_free_chan_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_dmac_free_chan_resources(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.usb_dmac_chan*, align 8
  %4 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %5 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %6 = call %struct.usb_dmac_chan* @to_usb_dmac_chan(%struct.dma_chan* %5)
  store %struct.usb_dmac_chan* %6, %struct.usb_dmac_chan** %3, align 8
  %7 = load %struct.usb_dmac_chan*, %struct.usb_dmac_chan** %3, align 8
  %8 = getelementptr inbounds %struct.usb_dmac_chan, %struct.usb_dmac_chan* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.usb_dmac_chan*, %struct.usb_dmac_chan** %3, align 8
  %13 = call i32 @usb_dmac_chan_halt(%struct.usb_dmac_chan* %12)
  %14 = load %struct.usb_dmac_chan*, %struct.usb_dmac_chan** %3, align 8
  %15 = getelementptr inbounds %struct.usb_dmac_chan, %struct.usb_dmac_chan* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @spin_unlock_irqrestore(i32* %16, i64 %17)
  %19 = load %struct.usb_dmac_chan*, %struct.usb_dmac_chan** %3, align 8
  %20 = call i32 @usb_dmac_desc_free(%struct.usb_dmac_chan* %19)
  %21 = load %struct.usb_dmac_chan*, %struct.usb_dmac_chan** %3, align 8
  %22 = getelementptr inbounds %struct.usb_dmac_chan, %struct.usb_dmac_chan* %21, i32 0, i32 0
  %23 = call i32 @vchan_free_chan_resources(%struct.TYPE_4__* %22)
  %24 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %25 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @pm_runtime_put(i32 %28)
  ret void
}

declare dso_local %struct.usb_dmac_chan* @to_usb_dmac_chan(%struct.dma_chan*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @usb_dmac_chan_halt(%struct.usb_dmac_chan*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @usb_dmac_desc_free(%struct.usb_dmac_chan*) #1

declare dso_local i32 @vchan_free_chan_resources(%struct.TYPE_4__*) #1

declare dso_local i32 @pm_runtime_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

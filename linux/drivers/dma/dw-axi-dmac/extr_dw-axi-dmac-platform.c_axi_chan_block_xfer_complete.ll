; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/dw-axi-dmac/extr_dw-axi-dmac-platform.c_axi_chan_block_xfer_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/dw-axi-dmac/extr_dw-axi-dmac-platform.c_axi_chan_block_xfer_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axi_dma_chan = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.virt_dma_desc = type { i32 }

@.str = private unnamed_addr constant [61 x i8] c"BUG: %s caught DWAXIDMAC_IRQ_DMA_TRF, but channel not idle!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.axi_dma_chan*)* @axi_chan_block_xfer_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @axi_chan_block_xfer_complete(%struct.axi_dma_chan* %0) #0 {
  %2 = alloca %struct.axi_dma_chan*, align 8
  %3 = alloca %struct.virt_dma_desc*, align 8
  %4 = alloca i64, align 8
  store %struct.axi_dma_chan* %0, %struct.axi_dma_chan** %2, align 8
  %5 = load %struct.axi_dma_chan*, %struct.axi_dma_chan** %2, align 8
  %6 = getelementptr inbounds %struct.axi_dma_chan, %struct.axi_dma_chan* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %4, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.axi_dma_chan*, %struct.axi_dma_chan** %2, align 8
  %11 = call i32 @axi_chan_is_hw_enable(%struct.axi_dma_chan* %10)
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load %struct.axi_dma_chan*, %struct.axi_dma_chan** %2, align 8
  %16 = call i32 @chan2dev(%struct.axi_dma_chan* %15)
  %17 = load %struct.axi_dma_chan*, %struct.axi_dma_chan** %2, align 8
  %18 = call i32 @axi_chan_name(%struct.axi_dma_chan* %17)
  %19 = call i32 @dev_err(i32 %16, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.axi_dma_chan*, %struct.axi_dma_chan** %2, align 8
  %21 = call i32 @axi_chan_disable(%struct.axi_dma_chan* %20)
  br label %22

22:                                               ; preds = %14, %1
  %23 = load %struct.axi_dma_chan*, %struct.axi_dma_chan** %2, align 8
  %24 = getelementptr inbounds %struct.axi_dma_chan, %struct.axi_dma_chan* %23, i32 0, i32 0
  %25 = call %struct.virt_dma_desc* @vchan_next_desc(%struct.TYPE_2__* %24)
  store %struct.virt_dma_desc* %25, %struct.virt_dma_desc** %3, align 8
  %26 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %3, align 8
  %27 = getelementptr inbounds %struct.virt_dma_desc, %struct.virt_dma_desc* %26, i32 0, i32 0
  %28 = call i32 @list_del(i32* %27)
  %29 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %3, align 8
  %30 = call i32 @vchan_cookie_complete(%struct.virt_dma_desc* %29)
  %31 = load %struct.axi_dma_chan*, %struct.axi_dma_chan** %2, align 8
  %32 = call i32 @axi_chan_start_first_queued(%struct.axi_dma_chan* %31)
  %33 = load %struct.axi_dma_chan*, %struct.axi_dma_chan** %2, align 8
  %34 = getelementptr inbounds %struct.axi_dma_chan, %struct.axi_dma_chan* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %4, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @axi_chan_is_hw_enable(%struct.axi_dma_chan*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @chan2dev(%struct.axi_dma_chan*) #1

declare dso_local i32 @axi_chan_name(%struct.axi_dma_chan*) #1

declare dso_local i32 @axi_chan_disable(%struct.axi_dma_chan*) #1

declare dso_local %struct.virt_dma_desc* @vchan_next_desc(%struct.TYPE_2__*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @vchan_cookie_complete(%struct.virt_dma_desc*) #1

declare dso_local i32 @axi_chan_start_first_queued(%struct.axi_dma_chan*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

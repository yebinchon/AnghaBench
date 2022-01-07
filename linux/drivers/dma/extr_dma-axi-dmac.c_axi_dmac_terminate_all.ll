; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_dma-axi-dmac.c_axi_dmac_terminate_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_dma-axi-dmac.c_axi_dmac_terminate_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.axi_dmac_chan = type { %struct.TYPE_3__, i32, i32* }
%struct.TYPE_3__ = type { i32 }
%struct.axi_dmac = type { i32 }

@head = common dso_local global i32 0, align 4
@AXI_DMAC_REG_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @axi_dmac_terminate_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axi_dmac_terminate_all(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.axi_dmac_chan*, align 8
  %4 = alloca %struct.axi_dmac*, align 8
  %5 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %6 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %7 = call %struct.axi_dmac_chan* @to_axi_dmac_chan(%struct.dma_chan* %6)
  store %struct.axi_dmac_chan* %7, %struct.axi_dmac_chan** %3, align 8
  %8 = load %struct.axi_dmac_chan*, %struct.axi_dmac_chan** %3, align 8
  %9 = call %struct.axi_dmac* @chan_to_axi_dmac(%struct.axi_dmac_chan* %8)
  store %struct.axi_dmac* %9, %struct.axi_dmac** %4, align 8
  %10 = load i32, i32* @head, align 4
  %11 = call i32 @LIST_HEAD(i32 %10)
  %12 = load %struct.axi_dmac_chan*, %struct.axi_dmac_chan** %3, align 8
  %13 = getelementptr inbounds %struct.axi_dmac_chan, %struct.axi_dmac_chan* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.axi_dmac*, %struct.axi_dmac** %4, align 8
  %18 = load i32, i32* @AXI_DMAC_REG_CTRL, align 4
  %19 = call i32 @axi_dmac_write(%struct.axi_dmac* %17, i32 %18, i32 0)
  %20 = load %struct.axi_dmac_chan*, %struct.axi_dmac_chan** %3, align 8
  %21 = getelementptr inbounds %struct.axi_dmac_chan, %struct.axi_dmac_chan* %20, i32 0, i32 2
  store i32* null, i32** %21, align 8
  %22 = load %struct.axi_dmac_chan*, %struct.axi_dmac_chan** %3, align 8
  %23 = getelementptr inbounds %struct.axi_dmac_chan, %struct.axi_dmac_chan* %22, i32 0, i32 0
  %24 = call i32 @vchan_get_all_descriptors(%struct.TYPE_3__* %23, i32* @head)
  %25 = load %struct.axi_dmac_chan*, %struct.axi_dmac_chan** %3, align 8
  %26 = getelementptr inbounds %struct.axi_dmac_chan, %struct.axi_dmac_chan* %25, i32 0, i32 1
  %27 = call i32 @list_splice_tail_init(i32* %26, i32* @head)
  %28 = load %struct.axi_dmac_chan*, %struct.axi_dmac_chan** %3, align 8
  %29 = getelementptr inbounds %struct.axi_dmac_chan, %struct.axi_dmac_chan* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  %33 = load %struct.axi_dmac_chan*, %struct.axi_dmac_chan** %3, align 8
  %34 = getelementptr inbounds %struct.axi_dmac_chan, %struct.axi_dmac_chan* %33, i32 0, i32 0
  %35 = call i32 @vchan_dma_desc_free_list(%struct.TYPE_3__* %34, i32* @head)
  ret i32 0
}

declare dso_local %struct.axi_dmac_chan* @to_axi_dmac_chan(%struct.dma_chan*) #1

declare dso_local %struct.axi_dmac* @chan_to_axi_dmac(%struct.axi_dmac_chan*) #1

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @axi_dmac_write(%struct.axi_dmac*, i32, i32) #1

declare dso_local i32 @vchan_get_all_descriptors(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @list_splice_tail_init(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @vchan_dma_desc_free_list(%struct.TYPE_3__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

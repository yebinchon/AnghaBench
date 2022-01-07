; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/hsu/extr_..virt-dma.h_vchan_tx_prep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/hsu/extr_..virt-dma.h_vchan_tx_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i64, i32, i32 }
%struct.virt_dma_chan = type { i32, i32, i32 }
%struct.virt_dma_desc = type { %struct.dma_async_tx_descriptor, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@vchan_tx_submit = common dso_local global i32 0, align 4
@vchan_tx_desc_free = common dso_local global i32 0, align 4
@DMA_TRANS_NOERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_async_tx_descriptor* (%struct.virt_dma_chan*, %struct.virt_dma_desc*, i64)* @vchan_tx_prep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_async_tx_descriptor* @vchan_tx_prep(%struct.virt_dma_chan* %0, %struct.virt_dma_desc* %1, i64 %2) #0 {
  %4 = alloca %struct.virt_dma_chan*, align 8
  %5 = alloca %struct.virt_dma_desc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.virt_dma_chan* %0, %struct.virt_dma_chan** %4, align 8
  store %struct.virt_dma_desc* %1, %struct.virt_dma_desc** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %5, align 8
  %9 = getelementptr inbounds %struct.virt_dma_desc, %struct.virt_dma_desc* %8, i32 0, i32 0
  %10 = load %struct.virt_dma_chan*, %struct.virt_dma_chan** %4, align 8
  %11 = getelementptr inbounds %struct.virt_dma_chan, %struct.virt_dma_chan* %10, i32 0, i32 2
  %12 = call i32 @dma_async_tx_descriptor_init(%struct.dma_async_tx_descriptor* %9, i32* %11)
  %13 = load i64, i64* %6, align 8
  %14 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %5, align 8
  %15 = getelementptr inbounds %struct.virt_dma_desc, %struct.virt_dma_desc* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %15, i32 0, i32 0
  store i64 %13, i64* %16, align 8
  %17 = load i32, i32* @vchan_tx_submit, align 4
  %18 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %5, align 8
  %19 = getelementptr inbounds %struct.virt_dma_desc, %struct.virt_dma_desc* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %19, i32 0, i32 2
  store i32 %17, i32* %20, align 4
  %21 = load i32, i32* @vchan_tx_desc_free, align 4
  %22 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %5, align 8
  %23 = getelementptr inbounds %struct.virt_dma_desc, %struct.virt_dma_desc* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %23, i32 0, i32 1
  store i32 %21, i32* %24, align 8
  %25 = load i32, i32* @DMA_TRANS_NOERROR, align 4
  %26 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %5, align 8
  %27 = getelementptr inbounds %struct.virt_dma_desc, %struct.virt_dma_desc* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i32 %25, i32* %28, align 8
  %29 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %5, align 8
  %30 = getelementptr inbounds %struct.virt_dma_desc, %struct.virt_dma_desc* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  %32 = load %struct.virt_dma_chan*, %struct.virt_dma_chan** %4, align 8
  %33 = getelementptr inbounds %struct.virt_dma_chan, %struct.virt_dma_chan* %32, i32 0, i32 0
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @spin_lock_irqsave(i32* %33, i64 %34)
  %36 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %5, align 8
  %37 = getelementptr inbounds %struct.virt_dma_desc, %struct.virt_dma_desc* %36, i32 0, i32 1
  %38 = load %struct.virt_dma_chan*, %struct.virt_dma_chan** %4, align 8
  %39 = getelementptr inbounds %struct.virt_dma_chan, %struct.virt_dma_chan* %38, i32 0, i32 1
  %40 = call i32 @list_add_tail(i32* %37, i32* %39)
  %41 = load %struct.virt_dma_chan*, %struct.virt_dma_chan** %4, align 8
  %42 = getelementptr inbounds %struct.virt_dma_chan, %struct.virt_dma_chan* %41, i32 0, i32 0
  %43 = load i64, i64* %7, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  %45 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %5, align 8
  %46 = getelementptr inbounds %struct.virt_dma_desc, %struct.virt_dma_desc* %45, i32 0, i32 0
  ret %struct.dma_async_tx_descriptor* %46
}

declare dso_local i32 @dma_async_tx_descriptor_init(%struct.dma_async_tx_descriptor*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_virt-dma.c_vchan_tx_desc_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_virt-dma.c_vchan_tx_desc_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i32 }
%struct.virt_dma_chan = type { i32 (%struct.virt_dma_desc*)*, %struct.TYPE_5__, i32 }
%struct.virt_dma_desc = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"vchan %p: txd %p[%x]: freeing\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vchan_tx_desc_free(%struct.dma_async_tx_descriptor* %0) #0 {
  %2 = alloca %struct.dma_async_tx_descriptor*, align 8
  %3 = alloca %struct.virt_dma_chan*, align 8
  %4 = alloca %struct.virt_dma_desc*, align 8
  %5 = alloca i64, align 8
  store %struct.dma_async_tx_descriptor* %0, %struct.dma_async_tx_descriptor** %2, align 8
  %6 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %2, align 8
  %7 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.virt_dma_chan* @to_virt_chan(i32 %8)
  store %struct.virt_dma_chan* %9, %struct.virt_dma_chan** %3, align 8
  %10 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %2, align 8
  %11 = call %struct.virt_dma_desc* @to_virt_desc(%struct.dma_async_tx_descriptor* %10)
  store %struct.virt_dma_desc* %11, %struct.virt_dma_desc** %4, align 8
  %12 = load %struct.virt_dma_chan*, %struct.virt_dma_chan** %3, align 8
  %13 = getelementptr inbounds %struct.virt_dma_chan, %struct.virt_dma_chan* %12, i32 0, i32 2
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %4, align 8
  %17 = getelementptr inbounds %struct.virt_dma_desc, %struct.virt_dma_desc* %16, i32 0, i32 1
  %18 = call i32 @list_del(i32* %17)
  %19 = load %struct.virt_dma_chan*, %struct.virt_dma_chan** %3, align 8
  %20 = getelementptr inbounds %struct.virt_dma_chan, %struct.virt_dma_chan* %19, i32 0, i32 2
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @spin_unlock_irqrestore(i32* %20, i64 %21)
  %23 = load %struct.virt_dma_chan*, %struct.virt_dma_chan** %3, align 8
  %24 = getelementptr inbounds %struct.virt_dma_chan, %struct.virt_dma_chan* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.virt_dma_chan*, %struct.virt_dma_chan** %3, align 8
  %30 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %4, align 8
  %31 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %4, align 8
  %32 = getelementptr inbounds %struct.virt_dma_desc, %struct.virt_dma_desc* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @dev_dbg(i32 %28, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.virt_dma_chan* %29, %struct.virt_dma_desc* %30, i32 %34)
  %36 = load %struct.virt_dma_chan*, %struct.virt_dma_chan** %3, align 8
  %37 = getelementptr inbounds %struct.virt_dma_chan, %struct.virt_dma_chan* %36, i32 0, i32 0
  %38 = load i32 (%struct.virt_dma_desc*)*, i32 (%struct.virt_dma_desc*)** %37, align 8
  %39 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %4, align 8
  %40 = call i32 %38(%struct.virt_dma_desc* %39)
  ret i32 0
}

declare dso_local %struct.virt_dma_chan* @to_virt_chan(i32) #1

declare dso_local %struct.virt_dma_desc* @to_virt_desc(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, %struct.virt_dma_chan*, %struct.virt_dma_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_virt-dma.c_vchan_tx_submit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_virt-dma.c_vchan_tx_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i32 }
%struct.virt_dma_chan = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.virt_dma_desc = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"vchan %p: txd %p[%x]: submitted\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vchan_tx_submit(%struct.dma_async_tx_descriptor* %0) #0 {
  %2 = alloca %struct.dma_async_tx_descriptor*, align 8
  %3 = alloca %struct.virt_dma_chan*, align 8
  %4 = alloca %struct.virt_dma_desc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.dma_async_tx_descriptor* %0, %struct.dma_async_tx_descriptor** %2, align 8
  %7 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %2, align 8
  %8 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.virt_dma_chan* @to_virt_chan(i32 %9)
  store %struct.virt_dma_chan* %10, %struct.virt_dma_chan** %3, align 8
  %11 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %2, align 8
  %12 = call %struct.virt_dma_desc* @to_virt_desc(%struct.dma_async_tx_descriptor* %11)
  store %struct.virt_dma_desc* %12, %struct.virt_dma_desc** %4, align 8
  %13 = load %struct.virt_dma_chan*, %struct.virt_dma_chan** %3, align 8
  %14 = getelementptr inbounds %struct.virt_dma_chan, %struct.virt_dma_chan* %13, i32 0, i32 1
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %2, align 8
  %18 = call i32 @dma_cookie_assign(%struct.dma_async_tx_descriptor* %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %4, align 8
  %20 = getelementptr inbounds %struct.virt_dma_desc, %struct.virt_dma_desc* %19, i32 0, i32 0
  %21 = load %struct.virt_dma_chan*, %struct.virt_dma_chan** %3, align 8
  %22 = getelementptr inbounds %struct.virt_dma_chan, %struct.virt_dma_chan* %21, i32 0, i32 2
  %23 = call i32 @list_move_tail(i32* %20, i32* %22)
  %24 = load %struct.virt_dma_chan*, %struct.virt_dma_chan** %3, align 8
  %25 = getelementptr inbounds %struct.virt_dma_chan, %struct.virt_dma_chan* %24, i32 0, i32 1
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* %25, i64 %26)
  %28 = load %struct.virt_dma_chan*, %struct.virt_dma_chan** %3, align 8
  %29 = getelementptr inbounds %struct.virt_dma_chan, %struct.virt_dma_chan* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.virt_dma_chan*, %struct.virt_dma_chan** %3, align 8
  %35 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @dev_dbg(i32 %33, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), %struct.virt_dma_chan* %34, %struct.virt_dma_desc* %35, i32 %36)
  %38 = load i32, i32* %6, align 4
  ret i32 %38
}

declare dso_local %struct.virt_dma_chan* @to_virt_chan(i32) #1

declare dso_local %struct.virt_dma_desc* @to_virt_desc(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dma_cookie_assign(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, %struct.virt_dma_chan*, %struct.virt_dma_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/xilinx/extr_xilinx_dma.c_xilinx_dma_chan_handle_cyclic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/xilinx/extr_xilinx_dma.c_xilinx_dma_chan_handle_cyclic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xilinx_dma_chan = type { i32 }
%struct.xilinx_dma_tx_descriptor = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32 (i8*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xilinx_dma_chan*, %struct.xilinx_dma_tx_descriptor*, i64*)* @xilinx_dma_chan_handle_cyclic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xilinx_dma_chan_handle_cyclic(%struct.xilinx_dma_chan* %0, %struct.xilinx_dma_tx_descriptor* %1, i64* %2) #0 {
  %4 = alloca %struct.xilinx_dma_chan*, align 8
  %5 = alloca %struct.xilinx_dma_tx_descriptor*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32 (i8*)*, align 8
  %8 = alloca i8*, align 8
  store %struct.xilinx_dma_chan* %0, %struct.xilinx_dma_chan** %4, align 8
  store %struct.xilinx_dma_tx_descriptor* %1, %struct.xilinx_dma_tx_descriptor** %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = load %struct.xilinx_dma_tx_descriptor*, %struct.xilinx_dma_tx_descriptor** %5, align 8
  %10 = getelementptr inbounds %struct.xilinx_dma_tx_descriptor, %struct.xilinx_dma_tx_descriptor* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32 (i8*)*, i32 (i8*)** %11, align 8
  store i32 (i8*)* %12, i32 (i8*)** %7, align 8
  %13 = load %struct.xilinx_dma_tx_descriptor*, %struct.xilinx_dma_tx_descriptor** %5, align 8
  %14 = getelementptr inbounds %struct.xilinx_dma_tx_descriptor, %struct.xilinx_dma_tx_descriptor* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %8, align 8
  %17 = load i32 (i8*)*, i32 (i8*)** %7, align 8
  %18 = icmp ne i32 (i8*)* %17, null
  br i1 %18, label %19, label %33

19:                                               ; preds = %3
  %20 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %4, align 8
  %21 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %20, i32 0, i32 0
  %22 = load i64*, i64** %6, align 8
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32* %21, i64 %23)
  %25 = load i32 (i8*)*, i32 (i8*)** %7, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 %25(i8* %26)
  %28 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %4, align 8
  %29 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %28, i32 0, i32 0
  %30 = load i64*, i64** %6, align 8
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %29, i64 %31)
  br label %33

33:                                               ; preds = %19, %3
  ret void
}

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

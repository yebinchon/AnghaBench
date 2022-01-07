; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/dw-edma/extr_dw-edma-core.c_dw_edma_device_prep_slave_sg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/dw-edma/extr_dw-edma-core.c_dw_edma_device_prep_slave_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i32 }
%struct.dma_chan = type { i32 }
%struct.scatterlist = type { i32 }
%struct.dw_edma_transfer = type { i32, i64, i32, %struct.TYPE_4__, %struct.dma_chan* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.scatterlist* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_async_tx_descriptor* (%struct.dma_chan*, %struct.scatterlist*, i32, i32, i64, i8*)* @dw_edma_device_prep_slave_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_async_tx_descriptor* @dw_edma_device_prep_slave_sg(%struct.dma_chan* %0, %struct.scatterlist* %1, i32 %2, i32 %3, i64 %4, i8* %5) #0 {
  %7 = alloca %struct.dma_chan*, align 8
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.dw_edma_transfer, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %7, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i8* %5, i8** %12, align 8
  %14 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %15 = getelementptr inbounds %struct.dw_edma_transfer, %struct.dw_edma_transfer* %13, i32 0, i32 4
  store %struct.dma_chan* %14, %struct.dma_chan** %15, align 8
  %16 = load i32, i32* %10, align 4
  %17 = getelementptr inbounds %struct.dw_edma_transfer, %struct.dw_edma_transfer* %13, i32 0, i32 0
  store i32 %16, i32* %17, align 8
  %18 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %19 = getelementptr inbounds %struct.dw_edma_transfer, %struct.dw_edma_transfer* %13, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  store %struct.scatterlist* %18, %struct.scatterlist** %21, align 8
  %22 = load i32, i32* %9, align 4
  %23 = getelementptr inbounds %struct.dw_edma_transfer, %struct.dw_edma_transfer* %13, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 8
  %26 = load i64, i64* %11, align 8
  %27 = getelementptr inbounds %struct.dw_edma_transfer, %struct.dw_edma_transfer* %13, i32 0, i32 1
  store i64 %26, i64* %27, align 8
  %28 = getelementptr inbounds %struct.dw_edma_transfer, %struct.dw_edma_transfer* %13, i32 0, i32 2
  store i32 0, i32* %28, align 8
  %29 = call %struct.dma_async_tx_descriptor* @dw_edma_device_transfer(%struct.dw_edma_transfer* %13)
  ret %struct.dma_async_tx_descriptor* %29
}

declare dso_local %struct.dma_async_tx_descriptor* @dw_edma_device_transfer(%struct.dw_edma_transfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

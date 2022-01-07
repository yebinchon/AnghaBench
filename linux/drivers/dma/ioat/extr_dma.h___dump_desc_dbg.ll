; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ioat/extr_dma.h___dump_desc_dbg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ioat/extr_dma.h___dump_desc_dbg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioatdma_chan = type { i32 }
%struct.ioat_dma_descriptor = type { %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.dma_async_tx_descriptor = type { i32, i32, i64 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [92 x i8] c"desc[%d]: (%#llx->%#llx) cookie: %d flags: %#x ctl: %#10.8x (op: %#x int_en: %d compl: %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ioatdma_chan*, %struct.ioat_dma_descriptor*, %struct.dma_async_tx_descriptor*, i32)* @__dump_desc_dbg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__dump_desc_dbg(%struct.ioatdma_chan* %0, %struct.ioat_dma_descriptor* %1, %struct.dma_async_tx_descriptor* %2, i32 %3) #0 {
  %5 = alloca %struct.ioatdma_chan*, align 8
  %6 = alloca %struct.ioat_dma_descriptor*, align 8
  %7 = alloca %struct.dma_async_tx_descriptor*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.device*, align 8
  store %struct.ioatdma_chan* %0, %struct.ioatdma_chan** %5, align 8
  store %struct.ioat_dma_descriptor* %1, %struct.ioat_dma_descriptor** %6, align 8
  store %struct.dma_async_tx_descriptor* %2, %struct.dma_async_tx_descriptor** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %5, align 8
  %11 = call %struct.device* @to_dev(%struct.ioatdma_chan* %10)
  store %struct.device* %11, %struct.device** %9, align 8
  %12 = load %struct.device*, %struct.device** %9, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %15 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.ioat_dma_descriptor*, %struct.ioat_dma_descriptor** %6, align 8
  %18 = getelementptr inbounds %struct.ioat_dma_descriptor, %struct.ioat_dma_descriptor* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %21 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %24 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.ioat_dma_descriptor*, %struct.ioat_dma_descriptor** %6, align 8
  %27 = getelementptr inbounds %struct.ioat_dma_descriptor, %struct.ioat_dma_descriptor* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ioat_dma_descriptor*, %struct.ioat_dma_descriptor** %6, align 8
  %30 = getelementptr inbounds %struct.ioat_dma_descriptor, %struct.ioat_dma_descriptor* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.ioat_dma_descriptor*, %struct.ioat_dma_descriptor** %6, align 8
  %34 = getelementptr inbounds %struct.ioat_dma_descriptor, %struct.ioat_dma_descriptor* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ioat_dma_descriptor*, %struct.ioat_dma_descriptor** %6, align 8
  %38 = getelementptr inbounds %struct.ioat_dma_descriptor, %struct.ioat_dma_descriptor* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @dev_dbg(%struct.device* %12, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str, i64 0, i64 0), i32 %13, i64 %16, i64 %19, i32 %22, i32 %25, i32 %28, i32 %32, i32 %36, i32 %40)
  ret void
}

declare dso_local %struct.device* @to_dev(%struct.ioatdma_chan*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i64, i64, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

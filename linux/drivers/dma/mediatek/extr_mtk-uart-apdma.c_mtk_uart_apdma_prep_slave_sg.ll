; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/mediatek/extr_mtk-uart-apdma.c_mtk_uart_apdma_prep_slave_sg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/mediatek/extr_mtk-uart-apdma.c_mtk_uart_apdma_prep_slave_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i32 }
%struct.dma_chan = type { i32 }
%struct.scatterlist = type { i32 }
%struct.mtk_chan = type { i32, i32 }
%struct.mtk_uart_apdma_desc = type { i32, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_async_tx_descriptor* (%struct.dma_chan*, %struct.scatterlist*, i32, i32, i64, i8*)* @mtk_uart_apdma_prep_slave_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_async_tx_descriptor* @mtk_uart_apdma_prep_slave_sg(%struct.dma_chan* %0, %struct.scatterlist* %1, i32 %2, i32 %3, i64 %4, i8* %5) #0 {
  %7 = alloca %struct.dma_async_tx_descriptor*, align 8
  %8 = alloca %struct.dma_chan*, align 8
  %9 = alloca %struct.scatterlist*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.mtk_chan*, align 8
  %15 = alloca %struct.mtk_uart_apdma_desc*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %8, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i8* %5, i8** %13, align 8
  %16 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %17 = call %struct.mtk_chan* @to_mtk_uart_apdma_chan(%struct.dma_chan* %16)
  store %struct.mtk_chan* %17, %struct.mtk_chan** %14, align 8
  %18 = load i32, i32* %11, align 4
  %19 = call i32 @is_slave_direction(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %6
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 1
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %6
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %49

25:                                               ; preds = %21
  %26 = load i32, i32* @GFP_ATOMIC, align 4
  %27 = call %struct.mtk_uart_apdma_desc* @kzalloc(i32 12, i32 %26)
  store %struct.mtk_uart_apdma_desc* %27, %struct.mtk_uart_apdma_desc** %15, align 8
  %28 = load %struct.mtk_uart_apdma_desc*, %struct.mtk_uart_apdma_desc** %15, align 8
  %29 = icmp ne %struct.mtk_uart_apdma_desc* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %49

31:                                               ; preds = %25
  %32 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %33 = call i32 @sg_dma_len(%struct.scatterlist* %32)
  %34 = load %struct.mtk_uart_apdma_desc*, %struct.mtk_uart_apdma_desc** %15, align 8
  %35 = getelementptr inbounds %struct.mtk_uart_apdma_desc, %struct.mtk_uart_apdma_desc* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %37 = call i32 @sg_dma_address(%struct.scatterlist* %36)
  %38 = load %struct.mtk_uart_apdma_desc*, %struct.mtk_uart_apdma_desc** %15, align 8
  %39 = getelementptr inbounds %struct.mtk_uart_apdma_desc, %struct.mtk_uart_apdma_desc* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load %struct.mtk_chan*, %struct.mtk_chan** %14, align 8
  %42 = getelementptr inbounds %struct.mtk_chan, %struct.mtk_chan* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.mtk_chan*, %struct.mtk_chan** %14, align 8
  %44 = getelementptr inbounds %struct.mtk_chan, %struct.mtk_chan* %43, i32 0, i32 1
  %45 = load %struct.mtk_uart_apdma_desc*, %struct.mtk_uart_apdma_desc** %15, align 8
  %46 = getelementptr inbounds %struct.mtk_uart_apdma_desc, %struct.mtk_uart_apdma_desc* %45, i32 0, i32 0
  %47 = load i64, i64* %12, align 8
  %48 = call %struct.dma_async_tx_descriptor* @vchan_tx_prep(i32* %44, i32* %46, i64 %47)
  store %struct.dma_async_tx_descriptor* %48, %struct.dma_async_tx_descriptor** %7, align 8
  br label %49

49:                                               ; preds = %31, %30, %24
  %50 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  ret %struct.dma_async_tx_descriptor* %50
}

declare dso_local %struct.mtk_chan* @to_mtk_uart_apdma_chan(%struct.dma_chan*) #1

declare dso_local i32 @is_slave_direction(i32) #1

declare dso_local %struct.mtk_uart_apdma_desc* @kzalloc(i32, i32) #1

declare dso_local i32 @sg_dma_len(%struct.scatterlist*) #1

declare dso_local i32 @sg_dma_address(%struct.scatterlist*) #1

declare dso_local %struct.dma_async_tx_descriptor* @vchan_tx_prep(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

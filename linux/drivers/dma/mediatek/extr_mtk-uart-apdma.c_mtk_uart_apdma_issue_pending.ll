; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/mediatek/extr_mtk-uart-apdma.c_mtk_uart_apdma_issue_pending.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/mediatek/extr_mtk-uart-apdma.c_mtk_uart_apdma_issue_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.mtk_chan = type { i64, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.virt_dma_desc = type { i32 }

@DMA_DEV_TO_MEM = common dso_local global i64 0, align 8
@DMA_MEM_TO_DEV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_chan*)* @mtk_uart_apdma_issue_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_uart_apdma_issue_pending(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.mtk_chan*, align 8
  %4 = alloca %struct.virt_dma_desc*, align 8
  %5 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %6 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %7 = call %struct.mtk_chan* @to_mtk_uart_apdma_chan(%struct.dma_chan* %6)
  store %struct.mtk_chan* %7, %struct.mtk_chan** %3, align 8
  %8 = load %struct.mtk_chan*, %struct.mtk_chan** %3, align 8
  %9 = getelementptr inbounds %struct.mtk_chan, %struct.mtk_chan* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.mtk_chan*, %struct.mtk_chan** %3, align 8
  %14 = getelementptr inbounds %struct.mtk_chan, %struct.mtk_chan* %13, i32 0, i32 1
  %15 = call i64 @vchan_issue_pending(%struct.TYPE_3__* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %45

17:                                               ; preds = %1
  %18 = load %struct.mtk_chan*, %struct.mtk_chan** %3, align 8
  %19 = getelementptr inbounds %struct.mtk_chan, %struct.mtk_chan* %18, i32 0, i32 1
  %20 = call %struct.virt_dma_desc* @vchan_next_desc(%struct.TYPE_3__* %19)
  store %struct.virt_dma_desc* %20, %struct.virt_dma_desc** %4, align 8
  %21 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %4, align 8
  %22 = getelementptr inbounds %struct.virt_dma_desc, %struct.virt_dma_desc* %21, i32 0, i32 0
  %23 = call i32 @to_mtk_uart_apdma_desc(i32* %22)
  %24 = load %struct.mtk_chan*, %struct.mtk_chan** %3, align 8
  %25 = getelementptr inbounds %struct.mtk_chan, %struct.mtk_chan* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load %struct.mtk_chan*, %struct.mtk_chan** %3, align 8
  %27 = getelementptr inbounds %struct.mtk_chan, %struct.mtk_chan* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @DMA_DEV_TO_MEM, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %17
  %32 = load %struct.mtk_chan*, %struct.mtk_chan** %3, align 8
  %33 = call i32 @mtk_uart_apdma_start_rx(%struct.mtk_chan* %32)
  br label %44

34:                                               ; preds = %17
  %35 = load %struct.mtk_chan*, %struct.mtk_chan** %3, align 8
  %36 = getelementptr inbounds %struct.mtk_chan, %struct.mtk_chan* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @DMA_MEM_TO_DEV, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load %struct.mtk_chan*, %struct.mtk_chan** %3, align 8
  %42 = call i32 @mtk_uart_apdma_start_tx(%struct.mtk_chan* %41)
  br label %43

43:                                               ; preds = %40, %34
  br label %44

44:                                               ; preds = %43, %31
  br label %45

45:                                               ; preds = %44, %1
  %46 = load %struct.mtk_chan*, %struct.mtk_chan** %3, align 8
  %47 = getelementptr inbounds %struct.mtk_chan, %struct.mtk_chan* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %5, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  ret void
}

declare dso_local %struct.mtk_chan* @to_mtk_uart_apdma_chan(%struct.dma_chan*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @vchan_issue_pending(%struct.TYPE_3__*) #1

declare dso_local %struct.virt_dma_desc* @vchan_next_desc(%struct.TYPE_3__*) #1

declare dso_local i32 @to_mtk_uart_apdma_desc(i32*) #1

declare dso_local i32 @mtk_uart_apdma_start_rx(%struct.mtk_chan*) #1

declare dso_local i32 @mtk_uart_apdma_start_tx(%struct.mtk_chan*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

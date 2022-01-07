; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/mediatek/extr_mtk-uart-apdma.c_mtk_uart_apdma_terminate_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/mediatek/extr_mtk-uart-apdma.c_mtk_uart_apdma_terminate_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.mtk_chan = type { i64, %struct.TYPE_7__, i32, i64 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@head = common dso_local global i32 0, align 4
@VFF_FLUSH = common dso_local global i64 0, align 8
@VFF_FLUSH_B = common dso_local global i32 0, align 4
@readl = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"flush: fail, status=0x%x\0A\00", align 1
@VFF_DEBUG_STATUS = common dso_local global i32 0, align 4
@VFF_STOP = common dso_local global i64 0, align 8
@VFF_STOP_B = common dso_local global i32 0, align 4
@VFF_EN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"stop: fail, status=0x%x\0A\00", align 1
@VFF_STOP_CLR_B = common dso_local global i32 0, align 4
@VFF_INT_EN = common dso_local global i64 0, align 8
@VFF_INT_EN_CLR_B = common dso_local global i32 0, align 4
@DMA_DEV_TO_MEM = common dso_local global i64 0, align 8
@VFF_INT_FLAG = common dso_local global i64 0, align 8
@VFF_RX_INT_CLR_B = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i64 0, align 8
@VFF_TX_INT_CLR_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @mtk_uart_apdma_terminate_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_uart_apdma_terminate_all(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.mtk_chan*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %7 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %8 = call %struct.mtk_chan* @to_mtk_uart_apdma_chan(%struct.dma_chan* %7)
  store %struct.mtk_chan* %8, %struct.mtk_chan** %3, align 8
  %9 = load i32, i32* @head, align 4
  %10 = call i32 @LIST_HEAD(i32 %9)
  %11 = load %struct.mtk_chan*, %struct.mtk_chan** %3, align 8
  %12 = load i64, i64* @VFF_FLUSH, align 8
  %13 = load i32, i32* @VFF_FLUSH_B, align 4
  %14 = call i32 @mtk_uart_apdma_write(%struct.mtk_chan* %11, i64 %12, i32 %13)
  %15 = load i32, i32* @readl, align 4
  %16 = load %struct.mtk_chan*, %struct.mtk_chan** %3, align 8
  %17 = getelementptr inbounds %struct.mtk_chan, %struct.mtk_chan* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @VFF_FLUSH, align 8
  %20 = add nsw i64 %18, %19
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @VFF_FLUSH_B, align 4
  %24 = icmp ne i32 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @readx_poll_timeout(i32 %15, i64 %20, i32 %21, i32 %25, i32 10, i32 100)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %1
  %30 = load %struct.mtk_chan*, %struct.mtk_chan** %3, align 8
  %31 = getelementptr inbounds %struct.mtk_chan, %struct.mtk_chan* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.mtk_chan*, %struct.mtk_chan** %3, align 8
  %38 = load i32, i32* @VFF_DEBUG_STATUS, align 4
  %39 = call i32 @mtk_uart_apdma_read(%struct.mtk_chan* %37, i32 %38)
  %40 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %29, %1
  %42 = load %struct.mtk_chan*, %struct.mtk_chan** %3, align 8
  %43 = load i64, i64* @VFF_STOP, align 8
  %44 = load i32, i32* @VFF_STOP_B, align 4
  %45 = call i32 @mtk_uart_apdma_write(%struct.mtk_chan* %42, i64 %43, i32 %44)
  %46 = load i32, i32* @readl, align 4
  %47 = load %struct.mtk_chan*, %struct.mtk_chan** %3, align 8
  %48 = getelementptr inbounds %struct.mtk_chan, %struct.mtk_chan* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @VFF_EN, align 8
  %51 = add nsw i64 %49, %50
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = call i32 @readx_poll_timeout(i32 %46, i64 %51, i32 %52, i32 %56, i32 10, i32 100)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %41
  %61 = load %struct.mtk_chan*, %struct.mtk_chan** %3, align 8
  %62 = getelementptr inbounds %struct.mtk_chan, %struct.mtk_chan* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.mtk_chan*, %struct.mtk_chan** %3, align 8
  %69 = load i32, i32* @VFF_DEBUG_STATUS, align 4
  %70 = call i32 @mtk_uart_apdma_read(%struct.mtk_chan* %68, i32 %69)
  %71 = call i32 @dev_err(i32 %67, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %60, %41
  %73 = load %struct.mtk_chan*, %struct.mtk_chan** %3, align 8
  %74 = load i64, i64* @VFF_STOP, align 8
  %75 = load i32, i32* @VFF_STOP_CLR_B, align 4
  %76 = call i32 @mtk_uart_apdma_write(%struct.mtk_chan* %73, i64 %74, i32 %75)
  %77 = load %struct.mtk_chan*, %struct.mtk_chan** %3, align 8
  %78 = load i64, i64* @VFF_INT_EN, align 8
  %79 = load i32, i32* @VFF_INT_EN_CLR_B, align 4
  %80 = call i32 @mtk_uart_apdma_write(%struct.mtk_chan* %77, i64 %78, i32 %79)
  %81 = load %struct.mtk_chan*, %struct.mtk_chan** %3, align 8
  %82 = getelementptr inbounds %struct.mtk_chan, %struct.mtk_chan* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @DMA_DEV_TO_MEM, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %72
  %87 = load %struct.mtk_chan*, %struct.mtk_chan** %3, align 8
  %88 = load i64, i64* @VFF_INT_FLAG, align 8
  %89 = load i32, i32* @VFF_RX_INT_CLR_B, align 4
  %90 = call i32 @mtk_uart_apdma_write(%struct.mtk_chan* %87, i64 %88, i32 %89)
  br label %103

91:                                               ; preds = %72
  %92 = load %struct.mtk_chan*, %struct.mtk_chan** %3, align 8
  %93 = getelementptr inbounds %struct.mtk_chan, %struct.mtk_chan* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @DMA_MEM_TO_DEV, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %91
  %98 = load %struct.mtk_chan*, %struct.mtk_chan** %3, align 8
  %99 = load i64, i64* @VFF_INT_FLAG, align 8
  %100 = load i32, i32* @VFF_TX_INT_CLR_B, align 4
  %101 = call i32 @mtk_uart_apdma_write(%struct.mtk_chan* %98, i64 %99, i32 %100)
  br label %102

102:                                              ; preds = %97, %91
  br label %103

103:                                              ; preds = %102, %86
  %104 = load %struct.mtk_chan*, %struct.mtk_chan** %3, align 8
  %105 = getelementptr inbounds %struct.mtk_chan, %struct.mtk_chan* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @synchronize_irq(i32 %106)
  %108 = load %struct.mtk_chan*, %struct.mtk_chan** %3, align 8
  %109 = getelementptr inbounds %struct.mtk_chan, %struct.mtk_chan* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load i64, i64* %4, align 8
  %112 = call i32 @spin_lock_irqsave(i32* %110, i64 %111)
  %113 = load %struct.mtk_chan*, %struct.mtk_chan** %3, align 8
  %114 = getelementptr inbounds %struct.mtk_chan, %struct.mtk_chan* %113, i32 0, i32 1
  %115 = call i32 @vchan_get_all_descriptors(%struct.TYPE_7__* %114, i32* @head)
  %116 = load %struct.mtk_chan*, %struct.mtk_chan** %3, align 8
  %117 = getelementptr inbounds %struct.mtk_chan, %struct.mtk_chan* %116, i32 0, i32 1
  %118 = call i32 @vchan_dma_desc_free_list(%struct.TYPE_7__* %117, i32* @head)
  %119 = load %struct.mtk_chan*, %struct.mtk_chan** %3, align 8
  %120 = getelementptr inbounds %struct.mtk_chan, %struct.mtk_chan* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load i64, i64* %4, align 8
  %123 = call i32 @spin_unlock_irqrestore(i32* %121, i64 %122)
  ret i32 0
}

declare dso_local %struct.mtk_chan* @to_mtk_uart_apdma_chan(%struct.dma_chan*) #1

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @mtk_uart_apdma_write(%struct.mtk_chan*, i64, i32) #1

declare dso_local i32 @readx_poll_timeout(i32, i64, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @mtk_uart_apdma_read(%struct.mtk_chan*, i32) #1

declare dso_local i32 @synchronize_irq(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @vchan_get_all_descriptors(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @vchan_dma_desc_free_list(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

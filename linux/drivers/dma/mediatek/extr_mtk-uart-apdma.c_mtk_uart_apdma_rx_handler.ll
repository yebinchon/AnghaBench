; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/mediatek/extr_mtk-uart-apdma.c_mtk_uart_apdma_rx_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/mediatek/extr_mtk-uart-apdma.c_mtk_uart_apdma_rx_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_chan = type { i64, %struct.TYPE_3__, %struct.mtk_uart_apdma_desc* }
%struct.TYPE_3__ = type { i32 }
%struct.mtk_uart_apdma_desc = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32 }

@VFF_INT_FLAG = common dso_local global i32 0, align 4
@VFF_RX_INT_CLR_B = common dso_local global i32 0, align 4
@VFF_VALID_SIZE = common dso_local global i32 0, align 4
@VFF_EN = common dso_local global i32 0, align 4
@VFF_EN_CLR_B = common dso_local global i32 0, align 4
@VFF_INT_EN = common dso_local global i32 0, align 4
@VFF_INT_EN_CLR_B = common dso_local global i32 0, align 4
@VFF_RPT = common dso_local global i32 0, align 4
@VFF_WPT = common dso_local global i32 0, align 4
@VFF_RING_SIZE = common dso_local global i32 0, align 4
@VFF_RING_WRAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_chan*)* @mtk_uart_apdma_rx_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_uart_apdma_rx_handler(%struct.mtk_chan* %0) #0 {
  %2 = alloca %struct.mtk_chan*, align 8
  %3 = alloca %struct.mtk_uart_apdma_desc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mtk_chan* %0, %struct.mtk_chan** %2, align 8
  %8 = load %struct.mtk_chan*, %struct.mtk_chan** %2, align 8
  %9 = getelementptr inbounds %struct.mtk_chan, %struct.mtk_chan* %8, i32 0, i32 2
  %10 = load %struct.mtk_uart_apdma_desc*, %struct.mtk_uart_apdma_desc** %9, align 8
  store %struct.mtk_uart_apdma_desc* %10, %struct.mtk_uart_apdma_desc** %3, align 8
  %11 = load %struct.mtk_chan*, %struct.mtk_chan** %2, align 8
  %12 = load i32, i32* @VFF_INT_FLAG, align 4
  %13 = load i32, i32* @VFF_RX_INT_CLR_B, align 4
  %14 = call i32 @mtk_uart_apdma_write(%struct.mtk_chan* %11, i32 %12, i32 %13)
  %15 = load %struct.mtk_chan*, %struct.mtk_chan** %2, align 8
  %16 = load i32, i32* @VFF_VALID_SIZE, align 4
  %17 = call i32 @mtk_uart_apdma_read(%struct.mtk_chan* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %76

20:                                               ; preds = %1
  %21 = load %struct.mtk_chan*, %struct.mtk_chan** %2, align 8
  %22 = load i32, i32* @VFF_EN, align 4
  %23 = load i32, i32* @VFF_EN_CLR_B, align 4
  %24 = call i32 @mtk_uart_apdma_write(%struct.mtk_chan* %21, i32 %22, i32 %23)
  %25 = load %struct.mtk_chan*, %struct.mtk_chan** %2, align 8
  %26 = load i32, i32* @VFF_INT_EN, align 4
  %27 = load i32, i32* @VFF_INT_EN_CLR_B, align 4
  %28 = call i32 @mtk_uart_apdma_write(%struct.mtk_chan* %25, i32 %26, i32 %27)
  %29 = load %struct.mtk_chan*, %struct.mtk_chan** %2, align 8
  %30 = getelementptr inbounds %struct.mtk_chan, %struct.mtk_chan* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %4, align 4
  %33 = load %struct.mtk_chan*, %struct.mtk_chan** %2, align 8
  %34 = load i32, i32* @VFF_RPT, align 4
  %35 = call i32 @mtk_uart_apdma_read(%struct.mtk_chan* %33, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load %struct.mtk_chan*, %struct.mtk_chan** %2, align 8
  %37 = load i32, i32* @VFF_WPT, align 4
  %38 = call i32 @mtk_uart_apdma_read(%struct.mtk_chan* %36, i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @VFF_RING_SIZE, align 4
  %41 = and i32 %39, %40
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @VFF_RING_SIZE, align 4
  %44 = and i32 %42, %43
  %45 = sub i32 %41, %44
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %5, align 4
  %48 = xor i32 %46, %47
  %49 = load i32, i32* @VFF_RING_WRAP, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %20
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* %7, align 4
  %55 = add i32 %54, %53
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %52, %20
  %57 = load %struct.mtk_uart_apdma_desc*, %struct.mtk_uart_apdma_desc** %3, align 8
  %58 = getelementptr inbounds %struct.mtk_uart_apdma_desc, %struct.mtk_uart_apdma_desc* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = sub nsw i64 %59, %61
  %63 = load %struct.mtk_chan*, %struct.mtk_chan** %2, align 8
  %64 = getelementptr inbounds %struct.mtk_chan, %struct.mtk_chan* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  %65 = load %struct.mtk_chan*, %struct.mtk_chan** %2, align 8
  %66 = load i32, i32* @VFF_RPT, align 4
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @mtk_uart_apdma_write(%struct.mtk_chan* %65, i32 %66, i32 %67)
  %69 = load %struct.mtk_uart_apdma_desc*, %struct.mtk_uart_apdma_desc** %3, align 8
  %70 = getelementptr inbounds %struct.mtk_uart_apdma_desc, %struct.mtk_uart_apdma_desc* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = call i32 @list_del(i32* %71)
  %73 = load %struct.mtk_uart_apdma_desc*, %struct.mtk_uart_apdma_desc** %3, align 8
  %74 = getelementptr inbounds %struct.mtk_uart_apdma_desc, %struct.mtk_uart_apdma_desc* %73, i32 0, i32 0
  %75 = call i32 @vchan_cookie_complete(%struct.TYPE_4__* %74)
  br label %76

76:                                               ; preds = %56, %19
  ret void
}

declare dso_local i32 @mtk_uart_apdma_write(%struct.mtk_chan*, i32, i32) #1

declare dso_local i32 @mtk_uart_apdma_read(%struct.mtk_chan*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @vchan_cookie_complete(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

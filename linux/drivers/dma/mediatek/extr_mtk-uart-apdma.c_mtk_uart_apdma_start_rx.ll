; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/mediatek/extr_mtk-uart-apdma.c_mtk_uart_apdma_start_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/mediatek/extr_mtk-uart-apdma.c_mtk_uart_apdma_start_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_chan = type { %struct.TYPE_7__, %struct.TYPE_5__, %struct.mtk_uart_apdma_desc* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.mtk_uart_apdma_desc = type { i32 }
%struct.mtk_uart_apdmadev = type { i64 }

@VFF_LEN = common dso_local global i32 0, align 4
@VFF_ADDR = common dso_local global i32 0, align 4
@VFF_THRE = common dso_local global i32 0, align 4
@VFF_RPT = common dso_local global i32 0, align 4
@VFF_INT_FLAG = common dso_local global i32 0, align 4
@VFF_RX_INT_CLR_B = common dso_local global i32 0, align 4
@VFF_4G_SUPPORT = common dso_local global i32 0, align 4
@VFF_4G_EN_B = common dso_local global i32 0, align 4
@VFF_INT_EN = common dso_local global i32 0, align 4
@VFF_RX_INT_EN_B = common dso_local global i32 0, align 4
@VFF_EN = common dso_local global i32 0, align 4
@VFF_EN_B = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Enable RX fail\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_chan*)* @mtk_uart_apdma_start_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_uart_apdma_start_rx(%struct.mtk_chan* %0) #0 {
  %2 = alloca %struct.mtk_chan*, align 8
  %3 = alloca %struct.mtk_uart_apdmadev*, align 8
  %4 = alloca %struct.mtk_uart_apdma_desc*, align 8
  %5 = alloca i32, align 4
  store %struct.mtk_chan* %0, %struct.mtk_chan** %2, align 8
  %6 = load %struct.mtk_chan*, %struct.mtk_chan** %2, align 8
  %7 = getelementptr inbounds %struct.mtk_chan, %struct.mtk_chan* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = call %struct.mtk_uart_apdmadev* @to_mtk_uart_apdma_dev(%struct.TYPE_8__* %10)
  store %struct.mtk_uart_apdmadev* %11, %struct.mtk_uart_apdmadev** %3, align 8
  %12 = load %struct.mtk_chan*, %struct.mtk_chan** %2, align 8
  %13 = getelementptr inbounds %struct.mtk_chan, %struct.mtk_chan* %12, i32 0, i32 2
  %14 = load %struct.mtk_uart_apdma_desc*, %struct.mtk_uart_apdma_desc** %13, align 8
  store %struct.mtk_uart_apdma_desc* %14, %struct.mtk_uart_apdma_desc** %4, align 8
  %15 = load %struct.mtk_chan*, %struct.mtk_chan** %2, align 8
  %16 = getelementptr inbounds %struct.mtk_chan, %struct.mtk_chan* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %5, align 4
  %19 = load %struct.mtk_chan*, %struct.mtk_chan** %2, align 8
  %20 = load i32, i32* @VFF_LEN, align 4
  %21 = call i32 @mtk_uart_apdma_read(%struct.mtk_chan* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %56, label %23

23:                                               ; preds = %1
  %24 = load %struct.mtk_chan*, %struct.mtk_chan** %2, align 8
  %25 = load i32, i32* @VFF_ADDR, align 4
  %26 = load %struct.mtk_uart_apdma_desc*, %struct.mtk_uart_apdma_desc** %4, align 8
  %27 = getelementptr inbounds %struct.mtk_uart_apdma_desc, %struct.mtk_uart_apdma_desc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @mtk_uart_apdma_write(%struct.mtk_chan* %24, i32 %25, i32 %28)
  %30 = load %struct.mtk_chan*, %struct.mtk_chan** %2, align 8
  %31 = load i32, i32* @VFF_LEN, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @mtk_uart_apdma_write(%struct.mtk_chan* %30, i32 %31, i32 %32)
  %34 = load %struct.mtk_chan*, %struct.mtk_chan** %2, align 8
  %35 = load i32, i32* @VFF_THRE, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @VFF_RX_THRE(i32 %36)
  %38 = call i32 @mtk_uart_apdma_write(%struct.mtk_chan* %34, i32 %35, i32 %37)
  %39 = load %struct.mtk_chan*, %struct.mtk_chan** %2, align 8
  %40 = load i32, i32* @VFF_RPT, align 4
  %41 = call i32 @mtk_uart_apdma_write(%struct.mtk_chan* %39, i32 %40, i32 0)
  %42 = load %struct.mtk_chan*, %struct.mtk_chan** %2, align 8
  %43 = load i32, i32* @VFF_INT_FLAG, align 4
  %44 = load i32, i32* @VFF_RX_INT_CLR_B, align 4
  %45 = call i32 @mtk_uart_apdma_write(%struct.mtk_chan* %42, i32 %43, i32 %44)
  %46 = load %struct.mtk_uart_apdmadev*, %struct.mtk_uart_apdmadev** %3, align 8
  %47 = getelementptr inbounds %struct.mtk_uart_apdmadev, %struct.mtk_uart_apdmadev* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %23
  %51 = load %struct.mtk_chan*, %struct.mtk_chan** %2, align 8
  %52 = load i32, i32* @VFF_4G_SUPPORT, align 4
  %53 = load i32, i32* @VFF_4G_EN_B, align 4
  %54 = call i32 @mtk_uart_apdma_write(%struct.mtk_chan* %51, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %50, %23
  br label %56

56:                                               ; preds = %55, %1
  %57 = load %struct.mtk_chan*, %struct.mtk_chan** %2, align 8
  %58 = load i32, i32* @VFF_INT_EN, align 4
  %59 = load i32, i32* @VFF_RX_INT_EN_B, align 4
  %60 = call i32 @mtk_uart_apdma_write(%struct.mtk_chan* %57, i32 %58, i32 %59)
  %61 = load %struct.mtk_chan*, %struct.mtk_chan** %2, align 8
  %62 = load i32, i32* @VFF_EN, align 4
  %63 = load i32, i32* @VFF_EN_B, align 4
  %64 = call i32 @mtk_uart_apdma_write(%struct.mtk_chan* %61, i32 %62, i32 %63)
  %65 = load %struct.mtk_chan*, %struct.mtk_chan** %2, align 8
  %66 = load i32, i32* @VFF_EN, align 4
  %67 = call i32 @mtk_uart_apdma_read(%struct.mtk_chan* %65, i32 %66)
  %68 = load i32, i32* @VFF_EN_B, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %56
  %71 = load %struct.mtk_chan*, %struct.mtk_chan** %2, align 8
  %72 = getelementptr inbounds %struct.mtk_chan, %struct.mtk_chan* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @dev_err(i32 %77, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %79

79:                                               ; preds = %70, %56
  ret void
}

declare dso_local %struct.mtk_uart_apdmadev* @to_mtk_uart_apdma_dev(%struct.TYPE_8__*) #1

declare dso_local i32 @mtk_uart_apdma_read(%struct.mtk_chan*, i32) #1

declare dso_local i32 @mtk_uart_apdma_write(%struct.mtk_chan*, i32, i32) #1

declare dso_local i32 @VFF_RX_THRE(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

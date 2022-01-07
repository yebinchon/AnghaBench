; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/mediatek/extr_mtk-uart-apdma.c_mtk_uart_apdma_start_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/mediatek/extr_mtk-uart-apdma.c_mtk_uart_apdma_start_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_chan = type { %struct.mtk_uart_apdma_desc*, %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.mtk_uart_apdma_desc = type { i32, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.mtk_uart_apdmadev = type { i64 }

@VFF_LEN = common dso_local global i32 0, align 4
@VFF_ADDR = common dso_local global i32 0, align 4
@VFF_THRE = common dso_local global i32 0, align 4
@VFF_WPT = common dso_local global i32 0, align 4
@VFF_INT_FLAG = common dso_local global i32 0, align 4
@VFF_TX_INT_CLR_B = common dso_local global i32 0, align 4
@VFF_4G_SUPPORT = common dso_local global i32 0, align 4
@VFF_4G_EN_B = common dso_local global i32 0, align 4
@VFF_EN = common dso_local global i32 0, align 4
@VFF_EN_B = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Enable TX fail\0A\00", align 1
@VFF_LEFT_SIZE = common dso_local global i32 0, align 4
@VFF_INT_EN = common dso_local global i32 0, align 4
@VFF_TX_INT_EN_B = common dso_local global i32 0, align 4
@VFF_RING_SIZE = common dso_local global i32 0, align 4
@VFF_RING_WRAP = common dso_local global i32 0, align 4
@VFF_FLUSH = common dso_local global i32 0, align 4
@VFF_FLUSH_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_chan*)* @mtk_uart_apdma_start_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_uart_apdma_start_tx(%struct.mtk_chan* %0) #0 {
  %2 = alloca %struct.mtk_chan*, align 8
  %3 = alloca %struct.mtk_uart_apdmadev*, align 8
  %4 = alloca %struct.mtk_uart_apdma_desc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mtk_chan* %0, %struct.mtk_chan** %2, align 8
  %7 = load %struct.mtk_chan*, %struct.mtk_chan** %2, align 8
  %8 = getelementptr inbounds %struct.mtk_chan, %struct.mtk_chan* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %12 = call %struct.mtk_uart_apdmadev* @to_mtk_uart_apdma_dev(%struct.TYPE_8__* %11)
  store %struct.mtk_uart_apdmadev* %12, %struct.mtk_uart_apdmadev** %3, align 8
  %13 = load %struct.mtk_chan*, %struct.mtk_chan** %2, align 8
  %14 = getelementptr inbounds %struct.mtk_chan, %struct.mtk_chan* %13, i32 0, i32 0
  %15 = load %struct.mtk_uart_apdma_desc*, %struct.mtk_uart_apdma_desc** %14, align 8
  store %struct.mtk_uart_apdma_desc* %15, %struct.mtk_uart_apdma_desc** %4, align 8
  %16 = load %struct.mtk_chan*, %struct.mtk_chan** %2, align 8
  %17 = getelementptr inbounds %struct.mtk_chan, %struct.mtk_chan* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %6, align 4
  %20 = load %struct.mtk_chan*, %struct.mtk_chan** %2, align 8
  %21 = load i32, i32* @VFF_LEN, align 4
  %22 = call i32 @mtk_uart_apdma_read(%struct.mtk_chan* %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %57, label %24

24:                                               ; preds = %1
  %25 = load %struct.mtk_chan*, %struct.mtk_chan** %2, align 8
  %26 = load i32, i32* @VFF_ADDR, align 4
  %27 = load %struct.mtk_uart_apdma_desc*, %struct.mtk_uart_apdma_desc** %4, align 8
  %28 = getelementptr inbounds %struct.mtk_uart_apdma_desc, %struct.mtk_uart_apdma_desc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @mtk_uart_apdma_write(%struct.mtk_chan* %25, i32 %26, i32 %29)
  %31 = load %struct.mtk_chan*, %struct.mtk_chan** %2, align 8
  %32 = load i32, i32* @VFF_LEN, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @mtk_uart_apdma_write(%struct.mtk_chan* %31, i32 %32, i32 %33)
  %35 = load %struct.mtk_chan*, %struct.mtk_chan** %2, align 8
  %36 = load i32, i32* @VFF_THRE, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @VFF_TX_THRE(i32 %37)
  %39 = call i32 @mtk_uart_apdma_write(%struct.mtk_chan* %35, i32 %36, i32 %38)
  %40 = load %struct.mtk_chan*, %struct.mtk_chan** %2, align 8
  %41 = load i32, i32* @VFF_WPT, align 4
  %42 = call i32 @mtk_uart_apdma_write(%struct.mtk_chan* %40, i32 %41, i32 0)
  %43 = load %struct.mtk_chan*, %struct.mtk_chan** %2, align 8
  %44 = load i32, i32* @VFF_INT_FLAG, align 4
  %45 = load i32, i32* @VFF_TX_INT_CLR_B, align 4
  %46 = call i32 @mtk_uart_apdma_write(%struct.mtk_chan* %43, i32 %44, i32 %45)
  %47 = load %struct.mtk_uart_apdmadev*, %struct.mtk_uart_apdmadev** %3, align 8
  %48 = getelementptr inbounds %struct.mtk_uart_apdmadev, %struct.mtk_uart_apdmadev* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %24
  %52 = load %struct.mtk_chan*, %struct.mtk_chan** %2, align 8
  %53 = load i32, i32* @VFF_4G_SUPPORT, align 4
  %54 = load i32, i32* @VFF_4G_EN_B, align 4
  %55 = call i32 @mtk_uart_apdma_write(%struct.mtk_chan* %52, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %51, %24
  br label %57

57:                                               ; preds = %56, %1
  %58 = load %struct.mtk_chan*, %struct.mtk_chan** %2, align 8
  %59 = load i32, i32* @VFF_EN, align 4
  %60 = load i32, i32* @VFF_EN_B, align 4
  %61 = call i32 @mtk_uart_apdma_write(%struct.mtk_chan* %58, i32 %59, i32 %60)
  %62 = load %struct.mtk_chan*, %struct.mtk_chan** %2, align 8
  %63 = load i32, i32* @VFF_EN, align 4
  %64 = call i32 @mtk_uart_apdma_read(%struct.mtk_chan* %62, i32 %63)
  %65 = load i32, i32* @VFF_EN_B, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %57
  %68 = load %struct.mtk_chan*, %struct.mtk_chan** %2, align 8
  %69 = getelementptr inbounds %struct.mtk_chan, %struct.mtk_chan* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @dev_err(i32 %74, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %76

76:                                               ; preds = %67, %57
  %77 = load %struct.mtk_chan*, %struct.mtk_chan** %2, align 8
  %78 = load i32, i32* @VFF_LEFT_SIZE, align 4
  %79 = call i32 @mtk_uart_apdma_read(%struct.mtk_chan* %77, i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %76
  %82 = load %struct.mtk_chan*, %struct.mtk_chan** %2, align 8
  %83 = load i32, i32* @VFF_INT_EN, align 4
  %84 = load i32, i32* @VFF_TX_INT_EN_B, align 4
  %85 = call i32 @mtk_uart_apdma_write(%struct.mtk_chan* %82, i32 %83, i32 %84)
  br label %128

86:                                               ; preds = %76
  %87 = load %struct.mtk_chan*, %struct.mtk_chan** %2, align 8
  %88 = load i32, i32* @VFF_WPT, align 4
  %89 = call i32 @mtk_uart_apdma_read(%struct.mtk_chan* %87, i32 %88)
  store i32 %89, i32* %5, align 4
  %90 = load %struct.mtk_chan*, %struct.mtk_chan** %2, align 8
  %91 = getelementptr inbounds %struct.mtk_chan, %struct.mtk_chan* %90, i32 0, i32 0
  %92 = load %struct.mtk_uart_apdma_desc*, %struct.mtk_uart_apdma_desc** %91, align 8
  %93 = getelementptr inbounds %struct.mtk_uart_apdma_desc, %struct.mtk_uart_apdma_desc* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* %5, align 4
  %96 = zext i32 %95 to i64
  %97 = add nsw i64 %96, %94
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %5, align 4
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* @VFF_RING_SIZE, align 4
  %101 = and i32 %99, %100
  %102 = load i32, i32* %6, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %86
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* @VFF_RING_WRAP, align 4
  %107 = and i32 %105, %106
  %108 = load i32, i32* @VFF_RING_WRAP, align 4
  %109 = xor i32 %107, %108
  store i32 %109, i32* %5, align 4
  br label %110

110:                                              ; preds = %104, %86
  %111 = load %struct.mtk_chan*, %struct.mtk_chan** %2, align 8
  %112 = load i32, i32* @VFF_WPT, align 4
  %113 = load i32, i32* %5, align 4
  %114 = call i32 @mtk_uart_apdma_write(%struct.mtk_chan* %111, i32 %112, i32 %113)
  %115 = load %struct.mtk_chan*, %struct.mtk_chan** %2, align 8
  %116 = load i32, i32* @VFF_INT_EN, align 4
  %117 = load i32, i32* @VFF_TX_INT_EN_B, align 4
  %118 = call i32 @mtk_uart_apdma_write(%struct.mtk_chan* %115, i32 %116, i32 %117)
  %119 = load %struct.mtk_chan*, %struct.mtk_chan** %2, align 8
  %120 = load i32, i32* @VFF_FLUSH, align 4
  %121 = call i32 @mtk_uart_apdma_read(%struct.mtk_chan* %119, i32 %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %128, label %123

123:                                              ; preds = %110
  %124 = load %struct.mtk_chan*, %struct.mtk_chan** %2, align 8
  %125 = load i32, i32* @VFF_FLUSH, align 4
  %126 = load i32, i32* @VFF_FLUSH_B, align 4
  %127 = call i32 @mtk_uart_apdma_write(%struct.mtk_chan* %124, i32 %125, i32 %126)
  br label %128

128:                                              ; preds = %81, %123, %110
  ret void
}

declare dso_local %struct.mtk_uart_apdmadev* @to_mtk_uart_apdma_dev(%struct.TYPE_8__*) #1

declare dso_local i32 @mtk_uart_apdma_read(%struct.mtk_chan*, i32) #1

declare dso_local i32 @mtk_uart_apdma_write(%struct.mtk_chan*, i32, i32) #1

declare dso_local i32 @VFF_TX_THRE(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

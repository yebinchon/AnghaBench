; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/mediatek/extr_mtk-hsdma.c_mtk_hsdma_free_pchan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/mediatek/extr_mtk-hsdma.c_mtk_hsdma_free_pchan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_hsdma_device = type { i32 }
%struct.mtk_hsdma_pchan = type { i32, %struct.mtk_hsdma_ring }
%struct.mtk_hsdma_ring = type { i32, i32, i32 }

@MTK_HSDMA_GLO = common dso_local global i32 0, align 4
@MTK_HSDMA_GLO_DMA = common dso_local global i32 0, align 4
@MTK_HSDMA_INT_ENABLE = common dso_local global i32 0, align 4
@MTK_HSDMA_INT_RXDONE = common dso_local global i32 0, align 4
@MTK_HSDMA_TX_BASE = common dso_local global i32 0, align 4
@MTK_HSDMA_TX_CNT = common dso_local global i32 0, align 4
@MTK_HSDMA_TX_CPU = common dso_local global i32 0, align 4
@MTK_HSDMA_RX_BASE = common dso_local global i32 0, align 4
@MTK_HSDMA_RX_CNT = common dso_local global i32 0, align 4
@MTK_HSDMA_RX_CPU = common dso_local global i32 0, align 4
@MTK_DMA_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_hsdma_device*, %struct.mtk_hsdma_pchan*)* @mtk_hsdma_free_pchan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_hsdma_free_pchan(%struct.mtk_hsdma_device* %0, %struct.mtk_hsdma_pchan* %1) #0 {
  %3 = alloca %struct.mtk_hsdma_device*, align 8
  %4 = alloca %struct.mtk_hsdma_pchan*, align 8
  %5 = alloca %struct.mtk_hsdma_ring*, align 8
  store %struct.mtk_hsdma_device* %0, %struct.mtk_hsdma_device** %3, align 8
  store %struct.mtk_hsdma_pchan* %1, %struct.mtk_hsdma_pchan** %4, align 8
  %6 = load %struct.mtk_hsdma_pchan*, %struct.mtk_hsdma_pchan** %4, align 8
  %7 = getelementptr inbounds %struct.mtk_hsdma_pchan, %struct.mtk_hsdma_pchan* %6, i32 0, i32 1
  store %struct.mtk_hsdma_ring* %7, %struct.mtk_hsdma_ring** %5, align 8
  %8 = load %struct.mtk_hsdma_device*, %struct.mtk_hsdma_device** %3, align 8
  %9 = load i32, i32* @MTK_HSDMA_GLO, align 4
  %10 = load i32, i32* @MTK_HSDMA_GLO_DMA, align 4
  %11 = call i32 @mtk_dma_clr(%struct.mtk_hsdma_device* %8, i32 %9, i32 %10)
  %12 = load %struct.mtk_hsdma_device*, %struct.mtk_hsdma_device** %3, align 8
  %13 = call i32 @mtk_hsdma_busy_wait(%struct.mtk_hsdma_device* %12)
  %14 = load %struct.mtk_hsdma_device*, %struct.mtk_hsdma_device** %3, align 8
  %15 = load i32, i32* @MTK_HSDMA_INT_ENABLE, align 4
  %16 = load i32, i32* @MTK_HSDMA_INT_RXDONE, align 4
  %17 = call i32 @mtk_dma_clr(%struct.mtk_hsdma_device* %14, i32 %15, i32 %16)
  %18 = load %struct.mtk_hsdma_device*, %struct.mtk_hsdma_device** %3, align 8
  %19 = load i32, i32* @MTK_HSDMA_TX_BASE, align 4
  %20 = call i32 @mtk_dma_write(%struct.mtk_hsdma_device* %18, i32 %19, i64 0)
  %21 = load %struct.mtk_hsdma_device*, %struct.mtk_hsdma_device** %3, align 8
  %22 = load i32, i32* @MTK_HSDMA_TX_CNT, align 4
  %23 = call i32 @mtk_dma_write(%struct.mtk_hsdma_device* %21, i32 %22, i64 0)
  %24 = load %struct.mtk_hsdma_device*, %struct.mtk_hsdma_device** %3, align 8
  %25 = load i32, i32* @MTK_HSDMA_TX_CPU, align 4
  %26 = call i32 @mtk_dma_write(%struct.mtk_hsdma_device* %24, i32 %25, i64 0)
  %27 = load %struct.mtk_hsdma_device*, %struct.mtk_hsdma_device** %3, align 8
  %28 = load i32, i32* @MTK_HSDMA_RX_BASE, align 4
  %29 = call i32 @mtk_dma_write(%struct.mtk_hsdma_device* %27, i32 %28, i64 0)
  %30 = load %struct.mtk_hsdma_device*, %struct.mtk_hsdma_device** %3, align 8
  %31 = load i32, i32* @MTK_HSDMA_RX_CNT, align 4
  %32 = call i32 @mtk_dma_write(%struct.mtk_hsdma_device* %30, i32 %31, i64 0)
  %33 = load %struct.mtk_hsdma_device*, %struct.mtk_hsdma_device** %3, align 8
  %34 = load i32, i32* @MTK_HSDMA_RX_CPU, align 4
  %35 = load i64, i64* @MTK_DMA_SIZE, align 8
  %36 = sub nsw i64 %35, 1
  %37 = call i32 @mtk_dma_write(%struct.mtk_hsdma_device* %33, i32 %34, i64 %36)
  %38 = load %struct.mtk_hsdma_ring*, %struct.mtk_hsdma_ring** %5, align 8
  %39 = getelementptr inbounds %struct.mtk_hsdma_ring, %struct.mtk_hsdma_ring* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @kfree(i32 %40)
  %42 = load %struct.mtk_hsdma_device*, %struct.mtk_hsdma_device** %3, align 8
  %43 = call i32 @hsdma2dev(%struct.mtk_hsdma_device* %42)
  %44 = load %struct.mtk_hsdma_pchan*, %struct.mtk_hsdma_pchan** %4, align 8
  %45 = getelementptr inbounds %struct.mtk_hsdma_pchan, %struct.mtk_hsdma_pchan* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.mtk_hsdma_ring*, %struct.mtk_hsdma_ring** %5, align 8
  %48 = getelementptr inbounds %struct.mtk_hsdma_ring, %struct.mtk_hsdma_ring* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.mtk_hsdma_ring*, %struct.mtk_hsdma_ring** %5, align 8
  %51 = getelementptr inbounds %struct.mtk_hsdma_ring, %struct.mtk_hsdma_ring* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dma_free_coherent(i32 %43, i32 %46, i32 %49, i32 %52)
  ret void
}

declare dso_local i32 @mtk_dma_clr(%struct.mtk_hsdma_device*, i32, i32) #1

declare dso_local i32 @mtk_hsdma_busy_wait(%struct.mtk_hsdma_device*) #1

declare dso_local i32 @mtk_dma_write(%struct.mtk_hsdma_device*, i32, i64) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32, i32) #1

declare dso_local i32 @hsdma2dev(%struct.mtk_hsdma_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

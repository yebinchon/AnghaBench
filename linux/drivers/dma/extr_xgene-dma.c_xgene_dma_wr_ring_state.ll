; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_xgene-dma.c_xgene_dma_wr_ring_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_xgene-dma.c_xgene_dma_wr_ring_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_dma_ring = type { %struct.TYPE_2__*, i32*, i32 }
%struct.TYPE_2__ = type { i64 }

@XGENE_DMA_RING_STATE = common dso_local global i64 0, align 8
@XGENE_DMA_RING_NUM_CONFIG = common dso_local global i32 0, align 4
@XGENE_DMA_RING_STATE_WR_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgene_dma_ring*)* @xgene_dma_wr_ring_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_dma_wr_ring_state(%struct.xgene_dma_ring* %0) #0 {
  %2 = alloca %struct.xgene_dma_ring*, align 8
  %3 = alloca i32, align 4
  store %struct.xgene_dma_ring* %0, %struct.xgene_dma_ring** %2, align 8
  %4 = load %struct.xgene_dma_ring*, %struct.xgene_dma_ring** %2, align 8
  %5 = getelementptr inbounds %struct.xgene_dma_ring, %struct.xgene_dma_ring* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.xgene_dma_ring*, %struct.xgene_dma_ring** %2, align 8
  %8 = getelementptr inbounds %struct.xgene_dma_ring, %struct.xgene_dma_ring* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @XGENE_DMA_RING_STATE, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @iowrite32(i32 %6, i64 %13)
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %39, %1
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @XGENE_DMA_RING_NUM_CONFIG, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %42

19:                                               ; preds = %15
  %20 = load %struct.xgene_dma_ring*, %struct.xgene_dma_ring** %2, align 8
  %21 = getelementptr inbounds %struct.xgene_dma_ring, %struct.xgene_dma_ring* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.xgene_dma_ring*, %struct.xgene_dma_ring** %2, align 8
  %28 = getelementptr inbounds %struct.xgene_dma_ring, %struct.xgene_dma_ring* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @XGENE_DMA_RING_STATE_WR_BASE, align 8
  %33 = add nsw i64 %31, %32
  %34 = load i32, i32* %3, align 4
  %35 = mul nsw i32 %34, 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %33, %36
  %38 = call i32 @iowrite32(i32 %26, i64 %37)
  br label %39

39:                                               ; preds = %19
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %15

42:                                               ; preds = %15
  ret void
}

declare dso_local i32 @iowrite32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

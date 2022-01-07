; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_xgene-dma.c_xgene_dma_clear_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_xgene-dma.c_xgene_dma_clear_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_dma_ring = type { i64, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@XGENE_DMA_RING_OWNER_CPU = common dso_local global i64 0, align 8
@XGENE_DMA_RING_NE_INT_MODE = common dso_local global i64 0, align 8
@XGENE_DMA_RING_ID = common dso_local global i64 0, align 8
@XGENE_DMA_RING_ID_BUF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgene_dma_ring*)* @xgene_dma_clear_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_dma_clear_ring(%struct.xgene_dma_ring* %0) #0 {
  %2 = alloca %struct.xgene_dma_ring*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.xgene_dma_ring* %0, %struct.xgene_dma_ring** %2, align 8
  %5 = load %struct.xgene_dma_ring*, %struct.xgene_dma_ring** %2, align 8
  %6 = getelementptr inbounds %struct.xgene_dma_ring, %struct.xgene_dma_ring* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @XGENE_DMA_RING_OWNER_CPU, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %33

10:                                               ; preds = %1
  %11 = load %struct.xgene_dma_ring*, %struct.xgene_dma_ring** %2, align 8
  %12 = getelementptr inbounds %struct.xgene_dma_ring, %struct.xgene_dma_ring* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @XGENE_DMA_RING_NE_INT_MODE, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @ioread32(i64 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.xgene_dma_ring*, %struct.xgene_dma_ring** %2, align 8
  %21 = getelementptr inbounds %struct.xgene_dma_ring, %struct.xgene_dma_ring* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @XGENE_DMA_RING_NE_INT_MODE_RESET(i32 %19, i32 %22)
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.xgene_dma_ring*, %struct.xgene_dma_ring** %2, align 8
  %26 = getelementptr inbounds %struct.xgene_dma_ring, %struct.xgene_dma_ring* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @XGENE_DMA_RING_NE_INT_MODE, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @iowrite32(i32 %24, i64 %31)
  br label %33

33:                                               ; preds = %10, %1
  %34 = load %struct.xgene_dma_ring*, %struct.xgene_dma_ring** %2, align 8
  %35 = getelementptr inbounds %struct.xgene_dma_ring, %struct.xgene_dma_ring* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @XGENE_DMA_RING_ID_SETUP(i32 %36)
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = load %struct.xgene_dma_ring*, %struct.xgene_dma_ring** %2, align 8
  %40 = getelementptr inbounds %struct.xgene_dma_ring, %struct.xgene_dma_ring* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @XGENE_DMA_RING_ID, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @iowrite32(i32 %38, i64 %45)
  %47 = load %struct.xgene_dma_ring*, %struct.xgene_dma_ring** %2, align 8
  %48 = getelementptr inbounds %struct.xgene_dma_ring, %struct.xgene_dma_ring* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @XGENE_DMA_RING_ID_BUF, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @iowrite32(i32 0, i64 %53)
  %55 = load %struct.xgene_dma_ring*, %struct.xgene_dma_ring** %2, align 8
  %56 = call i32 @xgene_dma_clr_ring_state(%struct.xgene_dma_ring* %55)
  ret void
}

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @XGENE_DMA_RING_NE_INT_MODE_RESET(i32, i32) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @XGENE_DMA_RING_ID_SETUP(i32) #1

declare dso_local i32 @xgene_dma_clr_ring_state(%struct.xgene_dma_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

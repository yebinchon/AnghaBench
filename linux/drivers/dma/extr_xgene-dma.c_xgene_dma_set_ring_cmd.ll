; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_xgene-dma.c_xgene_dma_set_ring_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_xgene-dma.c_xgene_dma_set_ring_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_dma_ring = type { i64, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@XGENE_DMA_RING_NUM = common dso_local global i64 0, align 8
@XGENE_DMA_RING_CMD_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgene_dma_ring*)* @xgene_dma_set_ring_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_dma_set_ring_cmd(%struct.xgene_dma_ring* %0) #0 {
  %2 = alloca %struct.xgene_dma_ring*, align 8
  store %struct.xgene_dma_ring* %0, %struct.xgene_dma_ring** %2, align 8
  %3 = load %struct.xgene_dma_ring*, %struct.xgene_dma_ring** %2, align 8
  %4 = getelementptr inbounds %struct.xgene_dma_ring, %struct.xgene_dma_ring* %3, i32 0, i32 3
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.xgene_dma_ring*, %struct.xgene_dma_ring** %2, align 8
  %9 = getelementptr inbounds %struct.xgene_dma_ring, %struct.xgene_dma_ring* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @XGENE_DMA_RING_NUM, align 8
  %12 = sub nsw i64 %10, %11
  %13 = call i64 @XGENE_DMA_RING_CMD_BASE_OFFSET(i64 %12)
  %14 = add nsw i64 %7, %13
  %15 = load %struct.xgene_dma_ring*, %struct.xgene_dma_ring** %2, align 8
  %16 = getelementptr inbounds %struct.xgene_dma_ring, %struct.xgene_dma_ring* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  %17 = load %struct.xgene_dma_ring*, %struct.xgene_dma_ring** %2, align 8
  %18 = getelementptr inbounds %struct.xgene_dma_ring, %struct.xgene_dma_ring* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @XGENE_DMA_RING_CMD_OFFSET, align 8
  %21 = add nsw i64 %19, %20
  %22 = load %struct.xgene_dma_ring*, %struct.xgene_dma_ring** %2, align 8
  %23 = getelementptr inbounds %struct.xgene_dma_ring, %struct.xgene_dma_ring* %22, i32 0, i32 1
  store i64 %21, i64* %23, align 8
  ret void
}

declare dso_local i64 @XGENE_DMA_RING_CMD_BASE_OFFSET(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

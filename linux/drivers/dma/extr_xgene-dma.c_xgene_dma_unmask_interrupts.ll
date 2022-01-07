; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_xgene-dma.c_xgene_dma_unmask_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_xgene-dma.c_xgene_dma_unmask_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_dma = type { i64 }

@XGENE_DMA_INT_ALL_UNMASK = common dso_local global i32 0, align 4
@XGENE_DMA_RING_INT0_MASK = common dso_local global i64 0, align 8
@XGENE_DMA_RING_INT1_MASK = common dso_local global i64 0, align 8
@XGENE_DMA_RING_INT2_MASK = common dso_local global i64 0, align 8
@XGENE_DMA_RING_INT3_MASK = common dso_local global i64 0, align 8
@XGENE_DMA_RING_INT4_MASK = common dso_local global i64 0, align 8
@XGENE_DMA_INT_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgene_dma*)* @xgene_dma_unmask_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_dma_unmask_interrupts(%struct.xgene_dma* %0) #0 {
  %2 = alloca %struct.xgene_dma*, align 8
  store %struct.xgene_dma* %0, %struct.xgene_dma** %2, align 8
  %3 = load i32, i32* @XGENE_DMA_INT_ALL_UNMASK, align 4
  %4 = load %struct.xgene_dma*, %struct.xgene_dma** %2, align 8
  %5 = getelementptr inbounds %struct.xgene_dma, %struct.xgene_dma* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @XGENE_DMA_RING_INT0_MASK, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @iowrite32(i32 %3, i64 %8)
  %10 = load i32, i32* @XGENE_DMA_INT_ALL_UNMASK, align 4
  %11 = load %struct.xgene_dma*, %struct.xgene_dma** %2, align 8
  %12 = getelementptr inbounds %struct.xgene_dma, %struct.xgene_dma* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @XGENE_DMA_RING_INT1_MASK, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @iowrite32(i32 %10, i64 %15)
  %17 = load i32, i32* @XGENE_DMA_INT_ALL_UNMASK, align 4
  %18 = load %struct.xgene_dma*, %struct.xgene_dma** %2, align 8
  %19 = getelementptr inbounds %struct.xgene_dma, %struct.xgene_dma* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @XGENE_DMA_RING_INT2_MASK, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @iowrite32(i32 %17, i64 %22)
  %24 = load i32, i32* @XGENE_DMA_INT_ALL_UNMASK, align 4
  %25 = load %struct.xgene_dma*, %struct.xgene_dma** %2, align 8
  %26 = getelementptr inbounds %struct.xgene_dma, %struct.xgene_dma* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @XGENE_DMA_RING_INT3_MASK, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @iowrite32(i32 %24, i64 %29)
  %31 = load i32, i32* @XGENE_DMA_INT_ALL_UNMASK, align 4
  %32 = load %struct.xgene_dma*, %struct.xgene_dma** %2, align 8
  %33 = getelementptr inbounds %struct.xgene_dma, %struct.xgene_dma* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @XGENE_DMA_RING_INT4_MASK, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @iowrite32(i32 %31, i64 %36)
  %38 = load i32, i32* @XGENE_DMA_INT_ALL_UNMASK, align 4
  %39 = load %struct.xgene_dma*, %struct.xgene_dma** %2, align 8
  %40 = getelementptr inbounds %struct.xgene_dma, %struct.xgene_dma* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @XGENE_DMA_INT_MASK, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @iowrite32(i32 %38, i64 %43)
  ret void
}

declare dso_local i32 @iowrite32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

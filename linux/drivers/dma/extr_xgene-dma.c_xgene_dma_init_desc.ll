; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_xgene-dma.c_xgene_dma_init_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_xgene-dma.c_xgene_dma_init_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_dma_desc_hw = type { i32, i32, i32 }

@XGENE_DMA_DESC_IN_BIT = common dso_local global i32 0, align 4
@XGENE_DMA_RING_OWNER_DMA = common dso_local global i64 0, align 8
@XGENE_DMA_DESC_RTYPE_POS = common dso_local global i32 0, align 4
@XGENE_DMA_DESC_C_BIT = common dso_local global i32 0, align 4
@XGENE_DMA_DESC_HOENQ_NUM_POS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgene_dma_desc_hw*, i64)* @xgene_dma_init_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_dma_init_desc(%struct.xgene_dma_desc_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.xgene_dma_desc_hw*, align 8
  %4 = alloca i64, align 8
  store %struct.xgene_dma_desc_hw* %0, %struct.xgene_dma_desc_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i32, i32* @XGENE_DMA_DESC_IN_BIT, align 4
  %6 = call i32 @cpu_to_le64(i32 %5)
  %7 = load %struct.xgene_dma_desc_hw*, %struct.xgene_dma_desc_hw** %3, align 8
  %8 = getelementptr inbounds %struct.xgene_dma_desc_hw, %struct.xgene_dma_desc_hw* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = or i32 %9, %6
  store i32 %10, i32* %8, align 4
  %11 = load i64, i64* @XGENE_DMA_RING_OWNER_DMA, align 8
  %12 = trunc i64 %11 to i32
  %13 = load i32, i32* @XGENE_DMA_DESC_RTYPE_POS, align 4
  %14 = shl i32 %12, %13
  %15 = call i32 @cpu_to_le64(i32 %14)
  %16 = load %struct.xgene_dma_desc_hw*, %struct.xgene_dma_desc_hw** %3, align 8
  %17 = getelementptr inbounds %struct.xgene_dma_desc_hw, %struct.xgene_dma_desc_hw* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 4
  %20 = load i32, i32* @XGENE_DMA_DESC_C_BIT, align 4
  %21 = call i32 @cpu_to_le64(i32 %20)
  %22 = load %struct.xgene_dma_desc_hw*, %struct.xgene_dma_desc_hw** %3, align 8
  %23 = getelementptr inbounds %struct.xgene_dma_desc_hw, %struct.xgene_dma_desc_hw* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load i64, i64* %4, align 8
  %27 = trunc i64 %26 to i32
  %28 = load i32, i32* @XGENE_DMA_DESC_HOENQ_NUM_POS, align 4
  %29 = shl i32 %27, %28
  %30 = call i32 @cpu_to_le64(i32 %29)
  %31 = load %struct.xgene_dma_desc_hw*, %struct.xgene_dma_desc_hw** %3, align 8
  %32 = getelementptr inbounds %struct.xgene_dma_desc_hw, %struct.xgene_dma_desc_hw* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  ret void
}

declare dso_local i32 @cpu_to_le64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

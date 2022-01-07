; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_sprd-dma.c_sprd_dma_get_src_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_sprd-dma.c_sprd_dma_get_src_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sprd_dma_chn = type { i64 }

@SPRD_DMA_CHN_SRC_ADDR = common dso_local global i64 0, align 8
@SPRD_DMA_CHN_WARP_PTR = common dso_local global i64 0, align 8
@SPRD_DMA_HIGH_ADDR_MASK = common dso_local global i64 0, align 8
@SPRD_DMA_HIGH_ADDR_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sprd_dma_chn*)* @sprd_dma_get_src_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sprd_dma_get_src_addr(%struct.sprd_dma_chn* %0) #0 {
  %2 = alloca %struct.sprd_dma_chn*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.sprd_dma_chn* %0, %struct.sprd_dma_chn** %2, align 8
  %5 = load %struct.sprd_dma_chn*, %struct.sprd_dma_chn** %2, align 8
  %6 = getelementptr inbounds %struct.sprd_dma_chn, %struct.sprd_dma_chn* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @SPRD_DMA_CHN_SRC_ADDR, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i64 @readl(i64 %9)
  store i64 %10, i64* %3, align 8
  %11 = load %struct.sprd_dma_chn*, %struct.sprd_dma_chn** %2, align 8
  %12 = getelementptr inbounds %struct.sprd_dma_chn, %struct.sprd_dma_chn* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SPRD_DMA_CHN_WARP_PTR, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i64 @readl(i64 %15)
  %17 = load i64, i64* @SPRD_DMA_HIGH_ADDR_MASK, align 8
  %18 = and i64 %16, %17
  store i64 %18, i64* %4, align 8
  %19 = load i64, i64* %3, align 8
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* @SPRD_DMA_HIGH_ADDR_OFFSET, align 8
  %22 = shl i64 %20, %21
  %23 = or i64 %19, %22
  ret i64 %23
}

declare dso_local i64 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

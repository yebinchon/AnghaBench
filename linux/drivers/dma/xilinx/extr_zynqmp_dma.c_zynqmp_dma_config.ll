; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/xilinx/extr_zynqmp_dma.c_zynqmp_dma_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/xilinx/extr_zynqmp_dma.c_zynqmp_dma_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zynqmp_dma_chan = type { i32, i32, i64 }

@ZYNQMP_DMA_CTRL0 = common dso_local global i64 0, align 8
@ZYNQMP_DMA_POINT_TYPE_SG = common dso_local global i32 0, align 4
@ZYNQMP_DMA_DATA_ATTR = common dso_local global i64 0, align 8
@ZYNQMP_DMA_ARLEN = common dso_local global i32 0, align 4
@ZYNQMP_DMA_ARLEN_OFST = common dso_local global i32 0, align 4
@ZYNQMP_DMA_AWLEN = common dso_local global i32 0, align 4
@ZYNQMP_DMA_AWLEN_OFST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zynqmp_dma_chan*)* @zynqmp_dma_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zynqmp_dma_config(%struct.zynqmp_dma_chan* %0) #0 {
  %2 = alloca %struct.zynqmp_dma_chan*, align 8
  %3 = alloca i32, align 4
  store %struct.zynqmp_dma_chan* %0, %struct.zynqmp_dma_chan** %2, align 8
  %4 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %2, align 8
  %5 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @ZYNQMP_DMA_CTRL0, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @readl(i64 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @ZYNQMP_DMA_POINT_TYPE_SG, align 4
  %11 = load i32, i32* %3, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %2, align 8
  %15 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ZYNQMP_DMA_CTRL0, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @writel(i32 %13, i64 %18)
  %20 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %2, align 8
  %21 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ZYNQMP_DMA_DATA_ATTR, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @readl(i64 %24)
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @ZYNQMP_DMA_ARLEN, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  %30 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %2, align 8
  %31 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @ZYNQMP_DMA_ARLEN_OFST, align 4
  %34 = shl i32 %32, %33
  %35 = or i32 %29, %34
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @ZYNQMP_DMA_AWLEN, align 4
  %38 = xor i32 %37, -1
  %39 = and i32 %36, %38
  %40 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %2, align 8
  %41 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @ZYNQMP_DMA_AWLEN_OFST, align 4
  %44 = shl i32 %42, %43
  %45 = or i32 %39, %44
  store i32 %45, i32* %3, align 4
  %46 = load i32, i32* %3, align 4
  %47 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %2, align 8
  %48 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @ZYNQMP_DMA_DATA_ATTR, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @writel(i32 %46, i64 %51)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/xilinx/extr_xilinx_dma.c_vdma_desc_write_64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/xilinx/extr_xilinx_dma.c_vdma_desc_write_64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xilinx_dma_chan = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xilinx_dma_chan*, i64, i64, i64)* @vdma_desc_write_64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdma_desc_write_64(%struct.xilinx_dma_chan* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.xilinx_dma_chan*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.xilinx_dma_chan* %0, %struct.xilinx_dma_chan** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i64, i64* %7, align 8
  %10 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %5, align 8
  %11 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %5, align 8
  %16 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %14, %17
  %19 = load i64, i64* %6, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @writel(i64 %9, i64 %20)
  %22 = load i64, i64* %8, align 8
  %23 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %5, align 8
  %24 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %5, align 8
  %29 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %27, %30
  %32 = load i64, i64* %6, align 8
  %33 = add nsw i64 %31, %32
  %34 = add nsw i64 %33, 4
  %35 = call i32 @writel(i64 %22, i64 %34)
  ret void
}

declare dso_local i32 @writel(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/xilinx/extr_zynqmp_dma.c_zynqmp_dma_desc_config_eod.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/xilinx/extr_zynqmp_dma.c_zynqmp_dma_desc_config_eod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zynqmp_dma_chan = type { i32 }
%struct.zynqmp_dma_desc_ll = type { i32 }

@ZYNQMP_DMA_DESC_CTRL_STOP = common dso_local global i32 0, align 4
@ZYNQMP_DMA_DESC_CTRL_COMP_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zynqmp_dma_chan*, i8*)* @zynqmp_dma_desc_config_eod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zynqmp_dma_desc_config_eod(%struct.zynqmp_dma_chan* %0, i8* %1) #0 {
  %3 = alloca %struct.zynqmp_dma_chan*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.zynqmp_dma_desc_ll*, align 8
  store %struct.zynqmp_dma_chan* %0, %struct.zynqmp_dma_chan** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.zynqmp_dma_desc_ll*
  store %struct.zynqmp_dma_desc_ll* %7, %struct.zynqmp_dma_desc_ll** %5, align 8
  %8 = load i32, i32* @ZYNQMP_DMA_DESC_CTRL_STOP, align 4
  %9 = load %struct.zynqmp_dma_desc_ll*, %struct.zynqmp_dma_desc_ll** %5, align 8
  %10 = getelementptr inbounds %struct.zynqmp_dma_desc_ll, %struct.zynqmp_dma_desc_ll* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = or i32 %11, %8
  store i32 %12, i32* %10, align 4
  %13 = load %struct.zynqmp_dma_desc_ll*, %struct.zynqmp_dma_desc_ll** %5, align 8
  %14 = getelementptr inbounds %struct.zynqmp_dma_desc_ll, %struct.zynqmp_dma_desc_ll* %13, i32 1
  store %struct.zynqmp_dma_desc_ll* %14, %struct.zynqmp_dma_desc_ll** %5, align 8
  %15 = load i32, i32* @ZYNQMP_DMA_DESC_CTRL_COMP_INT, align 4
  %16 = load i32, i32* @ZYNQMP_DMA_DESC_CTRL_STOP, align 4
  %17 = or i32 %15, %16
  %18 = load %struct.zynqmp_dma_desc_ll*, %struct.zynqmp_dma_desc_ll** %5, align 8
  %19 = getelementptr inbounds %struct.zynqmp_dma_desc_ll, %struct.zynqmp_dma_desc_ll* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

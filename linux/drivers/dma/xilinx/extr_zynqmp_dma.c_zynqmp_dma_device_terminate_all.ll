; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/xilinx/extr_zynqmp_dma.c_zynqmp_dma_device_terminate_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/xilinx/extr_zynqmp_dma.c_zynqmp_dma_device_terminate_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.zynqmp_dma_chan = type { i32, i64 }

@ZYNQMP_DMA_IDS_DEFAULT_MASK = common dso_local global i32 0, align 4
@ZYNQMP_DMA_IDS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @zynqmp_dma_device_terminate_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zynqmp_dma_device_terminate_all(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.zynqmp_dma_chan*, align 8
  %4 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %5 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %6 = call %struct.zynqmp_dma_chan* @to_chan(%struct.dma_chan* %5)
  store %struct.zynqmp_dma_chan* %6, %struct.zynqmp_dma_chan** %3, align 8
  %7 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %3, align 8
  %8 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %7, i32 0, i32 0
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load i32, i32* @ZYNQMP_DMA_IDS_DEFAULT_MASK, align 4
  %12 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %3, align 8
  %13 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ZYNQMP_DMA_IDS, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @writel(i32 %11, i64 %16)
  %18 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %3, align 8
  %19 = call i32 @zynqmp_dma_free_descriptors(%struct.zynqmp_dma_chan* %18)
  %20 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %3, align 8
  %21 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %20, i32 0, i32 0
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @spin_unlock_irqrestore(i32* %21, i64 %22)
  ret i32 0
}

declare dso_local %struct.zynqmp_dma_chan* @to_chan(%struct.dma_chan*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @zynqmp_dma_free_descriptors(%struct.zynqmp_dma_chan*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

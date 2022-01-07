; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/xilinx/extr_zynqmp_dma.c_of_zynqmp_dma_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/xilinx/extr_zynqmp_dma.c_of_zynqmp_dma_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.of_phandle_args = type { i32 }
%struct.of_dma = type { %struct.zynqmp_dma_device* }
%struct.zynqmp_dma_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_chan* (%struct.of_phandle_args*, %struct.of_dma*)* @of_zynqmp_dma_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_chan* @of_zynqmp_dma_xlate(%struct.of_phandle_args* %0, %struct.of_dma* %1) #0 {
  %3 = alloca %struct.of_phandle_args*, align 8
  %4 = alloca %struct.of_dma*, align 8
  %5 = alloca %struct.zynqmp_dma_device*, align 8
  store %struct.of_phandle_args* %0, %struct.of_phandle_args** %3, align 8
  store %struct.of_dma* %1, %struct.of_dma** %4, align 8
  %6 = load %struct.of_dma*, %struct.of_dma** %4, align 8
  %7 = getelementptr inbounds %struct.of_dma, %struct.of_dma* %6, i32 0, i32 0
  %8 = load %struct.zynqmp_dma_device*, %struct.zynqmp_dma_device** %7, align 8
  store %struct.zynqmp_dma_device* %8, %struct.zynqmp_dma_device** %5, align 8
  %9 = load %struct.zynqmp_dma_device*, %struct.zynqmp_dma_device** %5, align 8
  %10 = getelementptr inbounds %struct.zynqmp_dma_device, %struct.zynqmp_dma_device* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call %struct.dma_chan* @dma_get_slave_channel(i32* %12)
  ret %struct.dma_chan* %13
}

declare dso_local %struct.dma_chan* @dma_get_slave_channel(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

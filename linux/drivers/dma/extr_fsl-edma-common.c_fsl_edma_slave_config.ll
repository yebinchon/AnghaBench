; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_fsl-edma-common.c_fsl_edma_slave_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_fsl-edma-common.c_fsl_edma_slave_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.dma_slave_config = type { i32 }
%struct.fsl_edma_chan = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fsl_edma_slave_config(%struct.dma_chan* %0, %struct.dma_slave_config* %1) #0 {
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca %struct.dma_slave_config*, align 8
  %5 = alloca %struct.fsl_edma_chan*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %3, align 8
  store %struct.dma_slave_config* %1, %struct.dma_slave_config** %4, align 8
  %6 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %7 = call %struct.fsl_edma_chan* @to_fsl_edma_chan(%struct.dma_chan* %6)
  store %struct.fsl_edma_chan* %7, %struct.fsl_edma_chan** %5, align 8
  %8 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %5, align 8
  %9 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %8, i32 0, i32 0
  %10 = load %struct.dma_slave_config*, %struct.dma_slave_config** %4, align 8
  %11 = call i32 @memcpy(i32* %9, %struct.dma_slave_config* %10, i32 4)
  %12 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %5, align 8
  %13 = call i32 @fsl_edma_unprep_slave_dma(%struct.fsl_edma_chan* %12)
  ret i32 0
}

declare dso_local %struct.fsl_edma_chan* @to_fsl_edma_chan(%struct.dma_chan*) #1

declare dso_local i32 @memcpy(i32*, %struct.dma_slave_config*, i32) #1

declare dso_local i32 @fsl_edma_unprep_slave_dma(%struct.fsl_edma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

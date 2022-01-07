; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_fsl-edma-common.c_fsl_edma_unprep_slave_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_fsl-edma-common.c_fsl_edma_unprep_slave_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_edma_chan = type { i64, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@DMA_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_edma_chan*)* @fsl_edma_unprep_slave_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_edma_unprep_slave_dma(%struct.fsl_edma_chan* %0) #0 {
  %2 = alloca %struct.fsl_edma_chan*, align 8
  store %struct.fsl_edma_chan* %0, %struct.fsl_edma_chan** %2, align 8
  %3 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %2, align 8
  %4 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @DMA_NONE, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %26

8:                                                ; preds = %1
  %9 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %2, align 8
  %10 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %2, align 8
  %17 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %2, align 8
  %20 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %2, align 8
  %23 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @dma_unmap_resource(i32 %15, i32 %18, i32 %21, i64 %24, i32 0)
  br label %26

26:                                               ; preds = %8, %1
  %27 = load i64, i64* @DMA_NONE, align 8
  %28 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %2, align 8
  %29 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  ret void
}

declare dso_local i32 @dma_unmap_resource(i32, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

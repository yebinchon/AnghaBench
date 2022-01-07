; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_fsl-edma-common.c_fsl_edma_prep_slave_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_fsl-edma-common.c_fsl_edma_prep_slave_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_edma_chan = type { i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.device* }
%struct.device = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsl_edma_chan*, i32)* @fsl_edma_prep_slave_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_edma_prep_slave_dma(%struct.fsl_edma_chan* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fsl_edma_chan*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.fsl_edma_chan* %0, %struct.fsl_edma_chan** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %4, align 8
  %11 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.device*, %struct.device** %15, align 8
  store %struct.device* %16, %struct.device** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %38 [
    i32 128, label %18
    i32 129, label %28
  ]

18:                                               ; preds = %2
  %19 = load i32, i32* @DMA_FROM_DEVICE, align 4
  store i32 %19, i32* %7, align 4
  %20 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %4, align 8
  %21 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %8, align 4
  %24 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %4, align 8
  %25 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %9, align 4
  br label %40

28:                                               ; preds = %2
  %29 = load i32, i32* @DMA_TO_DEVICE, align 4
  store i32 %29, i32* %7, align 4
  %30 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %4, align 8
  %31 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %8, align 4
  %34 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %4, align 8
  %35 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %9, align 4
  br label %40

38:                                               ; preds = %2
  %39 = load i32, i32* @DMA_NONE, align 4
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %38, %28, %18
  %41 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %4, align 8
  %42 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i32 1, i32* %3, align 4
  br label %71

47:                                               ; preds = %40
  %48 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %4, align 8
  %49 = call i32 @fsl_edma_unprep_slave_dma(%struct.fsl_edma_chan* %48)
  %50 = load %struct.device*, %struct.device** %6, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @dma_map_resource(%struct.device* %50, i32 %51, i32 %52, i32 %53, i32 0)
  %55 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %4, align 8
  %56 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load %struct.device*, %struct.device** %6, align 8
  %58 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %4, align 8
  %59 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @dma_mapping_error(%struct.device* %57, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %71

64:                                               ; preds = %47
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %4, align 8
  %67 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %4, align 8
  %70 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  store i32 1, i32* %3, align 4
  br label %71

71:                                               ; preds = %64, %63, %46
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @fsl_edma_unprep_slave_dma(%struct.fsl_edma_chan*) #1

declare dso_local i32 @dma_map_resource(%struct.device*, i32, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_fsldma.c_set_ld_eol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_fsldma.c_set_ld_eol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsldma_chan = type { i32 }
%struct.fsl_desc_sw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@FSL_DMA_IP_MASK = common dso_local global i32 0, align 4
@FSL_DMA_IP_83XX = common dso_local global i32 0, align 4
@FSL_DMA_SNEN = common dso_local global i32 0, align 4
@FSL_DMA_EOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsldma_chan*, %struct.fsl_desc_sw*)* @set_ld_eol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_ld_eol(%struct.fsldma_chan* %0, %struct.fsl_desc_sw* %1) #0 {
  %3 = alloca %struct.fsldma_chan*, align 8
  %4 = alloca %struct.fsl_desc_sw*, align 8
  %5 = alloca i32, align 4
  store %struct.fsldma_chan* %0, %struct.fsldma_chan** %3, align 8
  store %struct.fsl_desc_sw* %1, %struct.fsl_desc_sw** %4, align 8
  %6 = load %struct.fsldma_chan*, %struct.fsldma_chan** %3, align 8
  %7 = getelementptr inbounds %struct.fsldma_chan, %struct.fsldma_chan* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @FSL_DMA_IP_MASK, align 4
  %10 = and i32 %8, %9
  %11 = load i32, i32* @FSL_DMA_IP_83XX, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @FSL_DMA_SNEN, align 4
  br label %16

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %15, %13
  %17 = phi i32 [ %14, %13 ], [ 0, %15 ]
  store i32 %17, i32* %5, align 4
  %18 = load %struct.fsldma_chan*, %struct.fsldma_chan** %3, align 8
  %19 = load %struct.fsldma_chan*, %struct.fsldma_chan** %3, align 8
  %20 = load %struct.fsl_desc_sw*, %struct.fsl_desc_sw** %4, align 8
  %21 = getelementptr inbounds %struct.fsl_desc_sw, %struct.fsl_desc_sw* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @DMA_TO_CPU(%struct.fsldma_chan* %19, i32 %23, i32 64)
  %25 = load i32, i32* @FSL_DMA_EOL, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* %5, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @CPU_TO_DMA(%struct.fsldma_chan* %18, i32 %28, i32 64)
  %30 = load %struct.fsl_desc_sw*, %struct.fsl_desc_sw** %4, align 8
  %31 = getelementptr inbounds %struct.fsl_desc_sw, %struct.fsl_desc_sw* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 4
  ret void
}

declare dso_local i32 @CPU_TO_DMA(%struct.fsldma_chan*, i32, i32) #1

declare dso_local i32 @DMA_TO_CPU(%struct.fsldma_chan*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

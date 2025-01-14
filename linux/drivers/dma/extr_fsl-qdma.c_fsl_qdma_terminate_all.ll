; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_fsl-qdma.c_fsl_qdma_terminate_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_fsl-qdma.c_fsl_qdma_terminate_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.fsl_qdma_chan = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@head = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @fsl_qdma_terminate_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_qdma_terminate_all(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.fsl_qdma_chan*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %5 = load i32, i32* @head, align 4
  %6 = call i32 @LIST_HEAD(i32 %5)
  %7 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %8 = call %struct.fsl_qdma_chan* @to_fsl_qdma_chan(%struct.dma_chan* %7)
  store %struct.fsl_qdma_chan* %8, %struct.fsl_qdma_chan** %4, align 8
  %9 = load %struct.fsl_qdma_chan*, %struct.fsl_qdma_chan** %4, align 8
  %10 = getelementptr inbounds %struct.fsl_qdma_chan, %struct.fsl_qdma_chan* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %3, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.fsl_qdma_chan*, %struct.fsl_qdma_chan** %4, align 8
  %15 = getelementptr inbounds %struct.fsl_qdma_chan, %struct.fsl_qdma_chan* %14, i32 0, i32 0
  %16 = call i32 @vchan_get_all_descriptors(%struct.TYPE_3__* %15, i32* @head)
  %17 = load %struct.fsl_qdma_chan*, %struct.fsl_qdma_chan** %4, align 8
  %18 = getelementptr inbounds %struct.fsl_qdma_chan, %struct.fsl_qdma_chan* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %3, align 8
  %21 = call i32 @spin_unlock_irqrestore(i32* %19, i64 %20)
  %22 = load %struct.fsl_qdma_chan*, %struct.fsl_qdma_chan** %4, align 8
  %23 = getelementptr inbounds %struct.fsl_qdma_chan, %struct.fsl_qdma_chan* %22, i32 0, i32 0
  %24 = call i32 @vchan_dma_desc_free_list(%struct.TYPE_3__* %23, i32* @head)
  ret i32 0
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local %struct.fsl_qdma_chan* @to_fsl_qdma_chan(%struct.dma_chan*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @vchan_get_all_descriptors(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @vchan_dma_desc_free_list(%struct.TYPE_3__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

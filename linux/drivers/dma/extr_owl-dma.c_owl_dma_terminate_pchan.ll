; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_owl-dma.c_owl_dma_terminate_pchan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_owl-dma.c_owl_dma_terminate_pchan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.owl_dma = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.owl_dma_pchan = type { i32, i32* }

@OWL_DMAX_START = common dso_local global i32 0, align 4
@OWL_DMAX_INT_STATUS = common dso_local global i32 0, align 4
@OWL_DMA_IRQ_EN0 = common dso_local global i32 0, align 4
@OWL_DMA_IRQ_PD0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"terminating pchan %d that still has pending irq\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.owl_dma*, %struct.owl_dma_pchan*)* @owl_dma_terminate_pchan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @owl_dma_terminate_pchan(%struct.owl_dma* %0, %struct.owl_dma_pchan* %1) #0 {
  %3 = alloca %struct.owl_dma*, align 8
  %4 = alloca %struct.owl_dma_pchan*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.owl_dma* %0, %struct.owl_dma** %3, align 8
  store %struct.owl_dma_pchan* %1, %struct.owl_dma_pchan** %4, align 8
  %7 = load %struct.owl_dma_pchan*, %struct.owl_dma_pchan** %4, align 8
  %8 = load i32, i32* @OWL_DMAX_START, align 4
  %9 = call i32 @pchan_writel(%struct.owl_dma_pchan* %7, i32 %8, i32 0)
  %10 = load %struct.owl_dma_pchan*, %struct.owl_dma_pchan** %4, align 8
  %11 = load i32, i32* @OWL_DMAX_INT_STATUS, align 4
  %12 = call i32 @pchan_update(%struct.owl_dma_pchan* %10, i32 %11, i32 255, i32 0)
  %13 = load %struct.owl_dma*, %struct.owl_dma** %3, align 8
  %14 = getelementptr inbounds %struct.owl_dma, %struct.owl_dma* %13, i32 0, i32 0
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.owl_dma*, %struct.owl_dma** %3, align 8
  %18 = load i32, i32* @OWL_DMA_IRQ_EN0, align 4
  %19 = load %struct.owl_dma_pchan*, %struct.owl_dma_pchan** %4, align 8
  %20 = getelementptr inbounds %struct.owl_dma_pchan, %struct.owl_dma_pchan* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = shl i32 1, %21
  %23 = call i32 @dma_update(%struct.owl_dma* %17, i32 %18, i32 %22, i32 0)
  %24 = load %struct.owl_dma*, %struct.owl_dma** %3, align 8
  %25 = load i32, i32* @OWL_DMA_IRQ_PD0, align 4
  %26 = call i32 @dma_readl(%struct.owl_dma* %24, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.owl_dma_pchan*, %struct.owl_dma_pchan** %4, align 8
  %29 = getelementptr inbounds %struct.owl_dma_pchan, %struct.owl_dma_pchan* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = shl i32 1, %30
  %32 = and i32 %27, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %2
  %35 = load %struct.owl_dma*, %struct.owl_dma** %3, align 8
  %36 = getelementptr inbounds %struct.owl_dma, %struct.owl_dma* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.owl_dma_pchan*, %struct.owl_dma_pchan** %4, align 8
  %40 = getelementptr inbounds %struct.owl_dma_pchan, %struct.owl_dma_pchan* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @dev_warn(i32 %38, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load %struct.owl_dma*, %struct.owl_dma** %3, align 8
  %44 = load i32, i32* @OWL_DMA_IRQ_PD0, align 4
  %45 = load %struct.owl_dma_pchan*, %struct.owl_dma_pchan** %4, align 8
  %46 = getelementptr inbounds %struct.owl_dma_pchan, %struct.owl_dma_pchan* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = shl i32 1, %47
  %49 = call i32 @dma_writel(%struct.owl_dma* %43, i32 %44, i32 %48)
  br label %50

50:                                               ; preds = %34, %2
  %51 = load %struct.owl_dma_pchan*, %struct.owl_dma_pchan** %4, align 8
  %52 = getelementptr inbounds %struct.owl_dma_pchan, %struct.owl_dma_pchan* %51, i32 0, i32 1
  store i32* null, i32** %52, align 8
  %53 = load %struct.owl_dma*, %struct.owl_dma** %3, align 8
  %54 = getelementptr inbounds %struct.owl_dma, %struct.owl_dma* %53, i32 0, i32 0
  %55 = load i64, i64* %5, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* %54, i64 %55)
  ret void
}

declare dso_local i32 @pchan_writel(%struct.owl_dma_pchan*, i32, i32) #1

declare dso_local i32 @pchan_update(%struct.owl_dma_pchan*, i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dma_update(%struct.owl_dma*, i32, i32, i32) #1

declare dso_local i32 @dma_readl(%struct.owl_dma*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @dma_writel(%struct.owl_dma*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

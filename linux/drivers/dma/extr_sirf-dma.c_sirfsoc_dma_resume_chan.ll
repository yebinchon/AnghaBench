; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_sirf-dma.c_sirfsoc_dma_resume_chan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_sirf-dma.c_sirfsoc_dma_resume_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.sirfsoc_dma_chan = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sirfsoc_dma = type { i32, i64 }

@SIRFSOC_DMA_CH_LOOP_CTRL_ATLAS7 = common dso_local global i64 0, align 8
@SIRFSOC_DMA_LOOP_CTRL_ATLAS7 = common dso_local global i64 0, align 8
@SIRFSOC_DMA_CH_LOOP_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @sirfsoc_dma_resume_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sirfsoc_dma_resume_chan(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.sirfsoc_dma_chan*, align 8
  %4 = alloca %struct.sirfsoc_dma*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %7 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %8 = call %struct.sirfsoc_dma_chan* @dma_chan_to_sirfsoc_dma_chan(%struct.dma_chan* %7)
  store %struct.sirfsoc_dma_chan* %8, %struct.sirfsoc_dma_chan** %3, align 8
  %9 = load %struct.sirfsoc_dma_chan*, %struct.sirfsoc_dma_chan** %3, align 8
  %10 = getelementptr inbounds %struct.sirfsoc_dma_chan, %struct.sirfsoc_dma_chan* %9, i32 0, i32 1
  %11 = call %struct.sirfsoc_dma* @dma_chan_to_sirfsoc_dma(%struct.TYPE_2__* %10)
  store %struct.sirfsoc_dma* %11, %struct.sirfsoc_dma** %4, align 8
  %12 = load %struct.sirfsoc_dma_chan*, %struct.sirfsoc_dma_chan** %3, align 8
  %13 = getelementptr inbounds %struct.sirfsoc_dma_chan, %struct.sirfsoc_dma_chan* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = load %struct.sirfsoc_dma_chan*, %struct.sirfsoc_dma_chan** %3, align 8
  %17 = getelementptr inbounds %struct.sirfsoc_dma_chan, %struct.sirfsoc_dma_chan* %16, i32 0, i32 0
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.sirfsoc_dma*, %struct.sirfsoc_dma** %4, align 8
  %21 = getelementptr inbounds %struct.sirfsoc_dma, %struct.sirfsoc_dma* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %63 [
    i32 129, label %23
    i32 128, label %36
    i32 130, label %43
  ]

23:                                               ; preds = %1
  %24 = load i32, i32* %5, align 4
  %25 = shl i32 1, %24
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 16
  %28 = shl i32 1, %27
  %29 = or i32 %25, %28
  %30 = load %struct.sirfsoc_dma*, %struct.sirfsoc_dma** %4, align 8
  %31 = getelementptr inbounds %struct.sirfsoc_dma, %struct.sirfsoc_dma* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SIRFSOC_DMA_CH_LOOP_CTRL_ATLAS7, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @writel_relaxed(i32 %29, i64 %34)
  br label %64

36:                                               ; preds = %1
  %37 = load %struct.sirfsoc_dma*, %struct.sirfsoc_dma** %4, align 8
  %38 = getelementptr inbounds %struct.sirfsoc_dma, %struct.sirfsoc_dma* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SIRFSOC_DMA_LOOP_CTRL_ATLAS7, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @writel_relaxed(i32 65537, i64 %41)
  br label %64

43:                                               ; preds = %1
  %44 = load %struct.sirfsoc_dma*, %struct.sirfsoc_dma** %4, align 8
  %45 = getelementptr inbounds %struct.sirfsoc_dma, %struct.sirfsoc_dma* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @SIRFSOC_DMA_CH_LOOP_CTRL, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @readl_relaxed(i64 %48)
  %50 = load i32, i32* %5, align 4
  %51 = shl i32 1, %50
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 16
  %54 = shl i32 1, %53
  %55 = or i32 %51, %54
  %56 = or i32 %49, %55
  %57 = load %struct.sirfsoc_dma*, %struct.sirfsoc_dma** %4, align 8
  %58 = getelementptr inbounds %struct.sirfsoc_dma, %struct.sirfsoc_dma* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @SIRFSOC_DMA_CH_LOOP_CTRL, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @writel_relaxed(i32 %56, i64 %61)
  br label %64

63:                                               ; preds = %1
  br label %64

64:                                               ; preds = %63, %43, %36, %23
  %65 = load %struct.sirfsoc_dma_chan*, %struct.sirfsoc_dma_chan** %3, align 8
  %66 = getelementptr inbounds %struct.sirfsoc_dma_chan, %struct.sirfsoc_dma_chan* %65, i32 0, i32 0
  %67 = load i64, i64* %6, align 8
  %68 = call i32 @spin_unlock_irqrestore(i32* %66, i64 %67)
  ret i32 0
}

declare dso_local %struct.sirfsoc_dma_chan* @dma_chan_to_sirfsoc_dma_chan(%struct.dma_chan*) #1

declare dso_local %struct.sirfsoc_dma* @dma_chan_to_sirfsoc_dma(%struct.TYPE_2__*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

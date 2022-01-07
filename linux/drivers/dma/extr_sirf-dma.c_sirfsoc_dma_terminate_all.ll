; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_sirf-dma.c_sirfsoc_dma_terminate_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_sirf-dma.c_sirfsoc_dma_terminate_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.sirfsoc_dma_chan = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sirfsoc_dma = type { i32, i64 }

@SIRFSOC_DMA_INT_EN_CLR = common dso_local global i64 0, align 8
@SIRFSOC_DMA_CH_INT = common dso_local global i64 0, align 8
@SIRFSOC_DMA_CH_LOOP_CTRL_CLR_ATLAS7 = common dso_local global i64 0, align 8
@SIRFSOC_DMA_CH_VALID = common dso_local global i64 0, align 8
@SIRFSOC_DMA_INT_EN_ATLAS7 = common dso_local global i64 0, align 8
@SIRFSOC_DMA_INT_ALL_ATLAS7 = common dso_local global i32 0, align 4
@SIRFSOC_DMA_INT_ATLAS7 = common dso_local global i64 0, align 8
@SIRFSOC_DMA_LOOP_CTRL_ATLAS7 = common dso_local global i64 0, align 8
@SIRFSOC_DMA_VALID_ATLAS7 = common dso_local global i64 0, align 8
@SIRFSOC_DMA_INT_EN = common dso_local global i64 0, align 8
@SIRFSOC_DMA_CH_LOOP_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @sirfsoc_dma_terminate_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sirfsoc_dma_terminate_all(%struct.dma_chan* %0) #0 {
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
  %10 = getelementptr inbounds %struct.sirfsoc_dma_chan, %struct.sirfsoc_dma_chan* %9, i32 0, i32 4
  %11 = call %struct.sirfsoc_dma* @dma_chan_to_sirfsoc_dma(%struct.TYPE_2__* %10)
  store %struct.sirfsoc_dma* %11, %struct.sirfsoc_dma** %4, align 8
  %12 = load %struct.sirfsoc_dma_chan*, %struct.sirfsoc_dma_chan** %3, align 8
  %13 = getelementptr inbounds %struct.sirfsoc_dma_chan, %struct.sirfsoc_dma_chan* %12, i32 0, i32 4
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
  switch i32 %22, label %131 [
    i32 129, label %23
    i32 128, label %60
    i32 130, label %86
  ]

23:                                               ; preds = %1
  %24 = load i32, i32* %5, align 4
  %25 = shl i32 1, %24
  %26 = load %struct.sirfsoc_dma*, %struct.sirfsoc_dma** %4, align 8
  %27 = getelementptr inbounds %struct.sirfsoc_dma, %struct.sirfsoc_dma* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SIRFSOC_DMA_INT_EN_CLR, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @writel_relaxed(i32 %25, i64 %30)
  %32 = load i32, i32* %5, align 4
  %33 = shl i32 1, %32
  %34 = load %struct.sirfsoc_dma*, %struct.sirfsoc_dma** %4, align 8
  %35 = getelementptr inbounds %struct.sirfsoc_dma, %struct.sirfsoc_dma* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @SIRFSOC_DMA_CH_INT, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @writel_relaxed(i32 %33, i64 %38)
  %40 = load i32, i32* %5, align 4
  %41 = shl i32 1, %40
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 16
  %44 = shl i32 1, %43
  %45 = or i32 %41, %44
  %46 = load %struct.sirfsoc_dma*, %struct.sirfsoc_dma** %4, align 8
  %47 = getelementptr inbounds %struct.sirfsoc_dma, %struct.sirfsoc_dma* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @SIRFSOC_DMA_CH_LOOP_CTRL_CLR_ATLAS7, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @writel_relaxed(i32 %45, i64 %50)
  %52 = load i32, i32* %5, align 4
  %53 = shl i32 1, %52
  %54 = load %struct.sirfsoc_dma*, %struct.sirfsoc_dma** %4, align 8
  %55 = getelementptr inbounds %struct.sirfsoc_dma, %struct.sirfsoc_dma* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @SIRFSOC_DMA_CH_VALID, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @writel_relaxed(i32 %53, i64 %58)
  br label %132

60:                                               ; preds = %1
  %61 = load %struct.sirfsoc_dma*, %struct.sirfsoc_dma** %4, align 8
  %62 = getelementptr inbounds %struct.sirfsoc_dma, %struct.sirfsoc_dma* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @SIRFSOC_DMA_INT_EN_ATLAS7, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @writel_relaxed(i32 0, i64 %65)
  %67 = load i32, i32* @SIRFSOC_DMA_INT_ALL_ATLAS7, align 4
  %68 = load %struct.sirfsoc_dma*, %struct.sirfsoc_dma** %4, align 8
  %69 = getelementptr inbounds %struct.sirfsoc_dma, %struct.sirfsoc_dma* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @SIRFSOC_DMA_INT_ATLAS7, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @writel_relaxed(i32 %67, i64 %72)
  %74 = load %struct.sirfsoc_dma*, %struct.sirfsoc_dma** %4, align 8
  %75 = getelementptr inbounds %struct.sirfsoc_dma, %struct.sirfsoc_dma* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @SIRFSOC_DMA_LOOP_CTRL_ATLAS7, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @writel_relaxed(i32 0, i64 %78)
  %80 = load %struct.sirfsoc_dma*, %struct.sirfsoc_dma** %4, align 8
  %81 = getelementptr inbounds %struct.sirfsoc_dma, %struct.sirfsoc_dma* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @SIRFSOC_DMA_VALID_ATLAS7, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i32 @writel_relaxed(i32 0, i64 %84)
  br label %132

86:                                               ; preds = %1
  %87 = load %struct.sirfsoc_dma*, %struct.sirfsoc_dma** %4, align 8
  %88 = getelementptr inbounds %struct.sirfsoc_dma, %struct.sirfsoc_dma* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @SIRFSOC_DMA_INT_EN, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 @readl_relaxed(i64 %91)
  %93 = load i32, i32* %5, align 4
  %94 = shl i32 1, %93
  %95 = xor i32 %94, -1
  %96 = and i32 %92, %95
  %97 = load %struct.sirfsoc_dma*, %struct.sirfsoc_dma** %4, align 8
  %98 = getelementptr inbounds %struct.sirfsoc_dma, %struct.sirfsoc_dma* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @SIRFSOC_DMA_INT_EN, align 8
  %101 = add nsw i64 %99, %100
  %102 = call i32 @writel_relaxed(i32 %96, i64 %101)
  %103 = load %struct.sirfsoc_dma*, %struct.sirfsoc_dma** %4, align 8
  %104 = getelementptr inbounds %struct.sirfsoc_dma, %struct.sirfsoc_dma* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @SIRFSOC_DMA_CH_LOOP_CTRL, align 8
  %107 = add nsw i64 %105, %106
  %108 = call i32 @readl_relaxed(i64 %107)
  %109 = load i32, i32* %5, align 4
  %110 = shl i32 1, %109
  %111 = load i32, i32* %5, align 4
  %112 = add nsw i32 %111, 16
  %113 = shl i32 1, %112
  %114 = or i32 %110, %113
  %115 = xor i32 %114, -1
  %116 = and i32 %108, %115
  %117 = load %struct.sirfsoc_dma*, %struct.sirfsoc_dma** %4, align 8
  %118 = getelementptr inbounds %struct.sirfsoc_dma, %struct.sirfsoc_dma* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @SIRFSOC_DMA_CH_LOOP_CTRL, align 8
  %121 = add nsw i64 %119, %120
  %122 = call i32 @writel_relaxed(i32 %116, i64 %121)
  %123 = load i32, i32* %5, align 4
  %124 = shl i32 1, %123
  %125 = load %struct.sirfsoc_dma*, %struct.sirfsoc_dma** %4, align 8
  %126 = getelementptr inbounds %struct.sirfsoc_dma, %struct.sirfsoc_dma* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @SIRFSOC_DMA_CH_VALID, align 8
  %129 = add nsw i64 %127, %128
  %130 = call i32 @writel_relaxed(i32 %124, i64 %129)
  br label %132

131:                                              ; preds = %1
  br label %132

132:                                              ; preds = %131, %86, %60, %23
  %133 = load %struct.sirfsoc_dma_chan*, %struct.sirfsoc_dma_chan** %3, align 8
  %134 = getelementptr inbounds %struct.sirfsoc_dma_chan, %struct.sirfsoc_dma_chan* %133, i32 0, i32 3
  %135 = load %struct.sirfsoc_dma_chan*, %struct.sirfsoc_dma_chan** %3, align 8
  %136 = getelementptr inbounds %struct.sirfsoc_dma_chan, %struct.sirfsoc_dma_chan* %135, i32 0, i32 1
  %137 = call i32 @list_splice_tail_init(i32* %134, i32* %136)
  %138 = load %struct.sirfsoc_dma_chan*, %struct.sirfsoc_dma_chan** %3, align 8
  %139 = getelementptr inbounds %struct.sirfsoc_dma_chan, %struct.sirfsoc_dma_chan* %138, i32 0, i32 2
  %140 = load %struct.sirfsoc_dma_chan*, %struct.sirfsoc_dma_chan** %3, align 8
  %141 = getelementptr inbounds %struct.sirfsoc_dma_chan, %struct.sirfsoc_dma_chan* %140, i32 0, i32 1
  %142 = call i32 @list_splice_tail_init(i32* %139, i32* %141)
  %143 = load %struct.sirfsoc_dma_chan*, %struct.sirfsoc_dma_chan** %3, align 8
  %144 = getelementptr inbounds %struct.sirfsoc_dma_chan, %struct.sirfsoc_dma_chan* %143, i32 0, i32 0
  %145 = load i64, i64* %6, align 8
  %146 = call i32 @spin_unlock_irqrestore(i32* %144, i64 %145)
  ret i32 0
}

declare dso_local %struct.sirfsoc_dma_chan* @dma_chan_to_sirfsoc_dma_chan(%struct.dma_chan*) #1

declare dso_local %struct.sirfsoc_dma* @dma_chan_to_sirfsoc_dma(%struct.TYPE_2__*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @list_splice_tail_init(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_fsl-edma.c_fsl_edma_tx_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_fsl-edma.c_fsl_edma_tx_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_edma_engine = type { i32, %struct.fsl_edma_chan*, %struct.edma_regs }
%struct.fsl_edma_chan = type { i32, %struct.TYPE_6__, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.edma_regs = type { i32, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@DMA_COMPLETE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @fsl_edma_tx_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_edma_tx_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.fsl_edma_engine*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.edma_regs*, align 8
  %10 = alloca %struct.fsl_edma_chan*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.fsl_edma_engine*
  store %struct.fsl_edma_engine* %12, %struct.fsl_edma_engine** %6, align 8
  %13 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %14 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %13, i32 0, i32 2
  store %struct.edma_regs* %14, %struct.edma_regs** %9, align 8
  %15 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %16 = load %struct.edma_regs*, %struct.edma_regs** %9, align 8
  %17 = getelementptr inbounds %struct.edma_regs, %struct.edma_regs* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @edma_readl(%struct.fsl_edma_engine* %15, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @IRQ_NONE, align 4
  store i32 %23, i32* %3, align 4
  br label %105

24:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %100, %24
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %28 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ult i32 %26, %29
  br i1 %30, label %31, label %103

31:                                               ; preds = %25
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = shl i32 1, %33
  %35 = and i32 %32, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %99

37:                                               ; preds = %31
  %38 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @EDMA_CINT_CINT(i32 %39)
  %41 = load %struct.edma_regs*, %struct.edma_regs** %9, align 8
  %42 = getelementptr inbounds %struct.edma_regs, %struct.edma_regs* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @edma_writeb(%struct.fsl_edma_engine* %38, i32 %40, i32 %43)
  %45 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %46 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %45, i32 0, i32 1
  %47 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %47, i64 %49
  store %struct.fsl_edma_chan* %50, %struct.fsl_edma_chan** %10, align 8
  %51 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %10, align 8
  %52 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = call i32 @spin_lock(i32* %53)
  %55 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %10, align 8
  %56 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %55, i32 0, i32 2
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %80, label %61

61:                                               ; preds = %37
  %62 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %10, align 8
  %63 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %62, i32 0, i32 2
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = call i32 @list_del(i32* %66)
  %68 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %10, align 8
  %69 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %68, i32 0, i32 2
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = call i32 @vchan_cookie_complete(%struct.TYPE_7__* %71)
  %73 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %10, align 8
  %74 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %73, i32 0, i32 2
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %74, align 8
  %75 = load i32, i32* @DMA_COMPLETE, align 4
  %76 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %10, align 8
  %77 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 8
  %78 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %10, align 8
  %79 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %78, i32 0, i32 0
  store i32 1, i32* %79, align 8
  br label %86

80:                                               ; preds = %37
  %81 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %10, align 8
  %82 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %81, i32 0, i32 2
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = call i32 @vchan_cyclic_callback(%struct.TYPE_7__* %84)
  br label %86

86:                                               ; preds = %80, %61
  %87 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %10, align 8
  %88 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %87, i32 0, i32 2
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = icmp ne %struct.TYPE_5__* %89, null
  br i1 %90, label %94, label %91

91:                                               ; preds = %86
  %92 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %10, align 8
  %93 = call i32 @fsl_edma_xfer_desc(%struct.fsl_edma_chan* %92)
  br label %94

94:                                               ; preds = %91, %86
  %95 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %10, align 8
  %96 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = call i32 @spin_unlock(i32* %97)
  br label %99

99:                                               ; preds = %94, %31
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %8, align 4
  %102 = add i32 %101, 1
  store i32 %102, i32* %8, align 4
  br label %25

103:                                              ; preds = %25
  %104 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %103, %22
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @edma_readl(%struct.fsl_edma_engine*, i32) #1

declare dso_local i32 @edma_writeb(%struct.fsl_edma_engine*, i32, i32) #1

declare dso_local i32 @EDMA_CINT_CINT(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @vchan_cookie_complete(%struct.TYPE_7__*) #1

declare dso_local i32 @vchan_cyclic_callback(%struct.TYPE_7__*) #1

declare dso_local i32 @fsl_edma_xfer_desc(%struct.fsl_edma_chan*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

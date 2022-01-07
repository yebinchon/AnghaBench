; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mcf-edma.c_mcf_edma_tx_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mcf-edma.c_mcf_edma_tx_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_edma_engine = type { i32, %struct.fsl_edma_chan*, %struct.edma_regs }
%struct.fsl_edma_chan = type { i32, %struct.TYPE_6__, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.edma_regs = type { i32, i32, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@DMA_COMPLETE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mcf_edma_tx_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcf_edma_tx_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.fsl_edma_engine*, align 8
  %7 = alloca %struct.edma_regs*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.fsl_edma_chan*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.fsl_edma_engine*
  store %struct.fsl_edma_engine* %12, %struct.fsl_edma_engine** %6, align 8
  %13 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %14 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %13, i32 0, i32 2
  store %struct.edma_regs* %14, %struct.edma_regs** %7, align 8
  %15 = load %struct.edma_regs*, %struct.edma_regs** %7, align 8
  %16 = getelementptr inbounds %struct.edma_regs, %struct.edma_regs* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ioread32(i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = shl i32 %19, 32
  store i32 %20, i32* %10, align 4
  %21 = load %struct.edma_regs*, %struct.edma_regs** %7, align 8
  %22 = getelementptr inbounds %struct.edma_regs, %struct.edma_regs* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ioread32(i32 %23)
  %25 = load i32, i32* %10, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* @IRQ_NONE, align 4
  store i32 %30, i32* %3, align 4
  br label %111

31:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %106, %31
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %35 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ult i32 %33, %36
  br i1 %37, label %38, label %109

38:                                               ; preds = %32
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @BIT(i32 %40)
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %105

44:                                               ; preds = %38
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @EDMA_MASK_CH(i32 %45)
  %47 = load %struct.edma_regs*, %struct.edma_regs** %7, align 8
  %48 = getelementptr inbounds %struct.edma_regs, %struct.edma_regs* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @iowrite8(i32 %46, i32 %49)
  %51 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %52 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %51, i32 0, i32 1
  %53 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %53, i64 %55
  store %struct.fsl_edma_chan* %56, %struct.fsl_edma_chan** %9, align 8
  %57 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %9, align 8
  %58 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = call i32 @spin_lock(i32* %59)
  %61 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %9, align 8
  %62 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %61, i32 0, i32 2
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %86, label %67

67:                                               ; preds = %44
  %68 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %9, align 8
  %69 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %68, i32 0, i32 2
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = call i32 @list_del(i32* %72)
  %74 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %9, align 8
  %75 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %74, i32 0, i32 2
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = call i32 @vchan_cookie_complete(%struct.TYPE_7__* %77)
  %79 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %9, align 8
  %80 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %79, i32 0, i32 2
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %80, align 8
  %81 = load i32, i32* @DMA_COMPLETE, align 4
  %82 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %9, align 8
  %83 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 8
  %84 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %9, align 8
  %85 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %84, i32 0, i32 0
  store i32 1, i32* %85, align 8
  br label %92

86:                                               ; preds = %44
  %87 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %9, align 8
  %88 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %87, i32 0, i32 2
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = call i32 @vchan_cyclic_callback(%struct.TYPE_7__* %90)
  br label %92

92:                                               ; preds = %86, %67
  %93 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %9, align 8
  %94 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %93, i32 0, i32 2
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = icmp ne %struct.TYPE_5__* %95, null
  br i1 %96, label %100, label %97

97:                                               ; preds = %92
  %98 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %9, align 8
  %99 = call i32 @fsl_edma_xfer_desc(%struct.fsl_edma_chan* %98)
  br label %100

100:                                              ; preds = %97, %92
  %101 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %9, align 8
  %102 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = call i32 @spin_unlock(i32* %103)
  br label %105

105:                                              ; preds = %100, %38
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %8, align 4
  %108 = add i32 %107, 1
  store i32 %108, i32* %8, align 4
  br label %32

109:                                              ; preds = %32
  %110 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %109, %29
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @ioread32(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @iowrite8(i32, i32) #1

declare dso_local i32 @EDMA_MASK_CH(i32) #1

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

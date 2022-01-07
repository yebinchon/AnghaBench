; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_fsl-edma.c_fsl_edma_err_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_fsl-edma.c_fsl_edma_err_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_edma_engine = type { i32, %struct.TYPE_2__*, %struct.edma_regs }
%struct.TYPE_2__ = type { i32, i32 }
%struct.edma_regs = type { i32, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@DMA_ERROR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @fsl_edma_err_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_edma_err_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.fsl_edma_engine*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.edma_regs*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.fsl_edma_engine*
  store %struct.fsl_edma_engine* %11, %struct.fsl_edma_engine** %6, align 8
  %12 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %13 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %12, i32 0, i32 2
  store %struct.edma_regs* %13, %struct.edma_regs** %9, align 8
  %14 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %15 = load %struct.edma_regs*, %struct.edma_regs** %9, align 8
  %16 = getelementptr inbounds %struct.edma_regs, %struct.edma_regs* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @edma_readl(%struct.fsl_edma_engine* %14, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @IRQ_NONE, align 4
  store i32 %22, i32* %3, align 4
  br label %72

23:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %67, %23
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %27 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ult i32 %25, %28
  br i1 %29, label %30, label %70

30:                                               ; preds = %24
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = shl i32 1, %32
  %34 = and i32 %31, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %66

36:                                               ; preds = %30
  %37 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %38 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = call i32 @fsl_edma_disable_request(%struct.TYPE_2__* %42)
  %44 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @EDMA_CERR_CERR(i32 %45)
  %47 = load %struct.edma_regs*, %struct.edma_regs** %9, align 8
  %48 = getelementptr inbounds %struct.edma_regs, %struct.edma_regs* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @edma_writeb(%struct.fsl_edma_engine* %44, i32 %46, i32 %49)
  %51 = load i32, i32* @DMA_ERROR, align 4
  %52 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %53 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  store i32 %51, i32* %58, align 4
  %59 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %60 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  store i32 1, i32* %65, align 4
  br label %66

66:                                               ; preds = %36, %30
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %8, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %8, align 4
  br label %24

70:                                               ; preds = %24
  %71 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %70, %21
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @edma_readl(%struct.fsl_edma_engine*, i32) #1

declare dso_local i32 @fsl_edma_disable_request(%struct.TYPE_2__*) #1

declare dso_local i32 @edma_writeb(%struct.fsl_edma_engine*, i32, i32) #1

declare dso_local i32 @EDMA_CERR_CERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

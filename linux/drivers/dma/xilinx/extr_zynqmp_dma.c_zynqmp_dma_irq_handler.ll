; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/xilinx/extr_zynqmp_dma.c_zynqmp_dma_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/xilinx/extr_zynqmp_dma.c_zynqmp_dma_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zynqmp_dma_chan = type { i32, i32, i32, i32, i64 }

@IRQ_NONE = common dso_local global i32 0, align 4
@ZYNQMP_DMA_ISR = common dso_local global i64 0, align 8
@ZYNQMP_DMA_IMR = common dso_local global i64 0, align 8
@ZYNQMP_DMA_INT_DONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@ZYNQMP_DMA_DONE = common dso_local global i32 0, align 4
@ZYNQMP_DMA_INT_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Channel %p has errors\0A\00", align 1
@ZYNQMP_DMA_INT_OVRFL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Channel %p overflow interrupt\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @zynqmp_dma_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zynqmp_dma_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.zynqmp_dma_chan*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.zynqmp_dma_chan*
  store %struct.zynqmp_dma_chan* %11, %struct.zynqmp_dma_chan** %5, align 8
  %12 = load i32, i32* @IRQ_NONE, align 4
  store i32 %12, i32* %9, align 4
  %13 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %5, align 8
  %14 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ZYNQMP_DMA_ISR, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @readl(i64 %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %5, align 8
  %20 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ZYNQMP_DMA_IMR, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @readl(i64 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %25, %27
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %5, align 8
  %31 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ZYNQMP_DMA_ISR, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @writel(i32 %29, i64 %34)
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @ZYNQMP_DMA_INT_DONE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %2
  %41 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %5, align 8
  %42 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %41, i32 0, i32 3
  %43 = call i32 @tasklet_schedule(i32* %42)
  %44 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %40, %2
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @ZYNQMP_DMA_DONE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %5, align 8
  %52 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  br label %53

53:                                               ; preds = %50, %45
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @ZYNQMP_DMA_INT_ERR, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %53
  %59 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %5, align 8
  %60 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %59, i32 0, i32 1
  store i32 1, i32* %60, align 4
  %61 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %5, align 8
  %62 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %61, i32 0, i32 3
  %63 = call i32 @tasklet_schedule(i32* %62)
  %64 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %5, align 8
  %65 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %5, align 8
  %68 = call i32 @dev_err(i32 %66, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.zynqmp_dma_chan* %67)
  %69 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %69, i32* %9, align 4
  br label %70

70:                                               ; preds = %58, %53
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @ZYNQMP_DMA_INT_OVRFL, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %70
  %76 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %5, align 8
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @zynqmp_dma_handle_ovfl_int(%struct.zynqmp_dma_chan* %76, i32 %77)
  %79 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %5, align 8
  %80 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %5, align 8
  %83 = call i32 @dev_dbg(i32 %81, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), %struct.zynqmp_dma_chan* %82)
  %84 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %84, i32* %9, align 4
  br label %85

85:                                               ; preds = %75, %70
  %86 = load i32, i32* %9, align 4
  ret i32 %86
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, %struct.zynqmp_dma_chan*) #1

declare dso_local i32 @zynqmp_dma_handle_ovfl_int(%struct.zynqmp_dma_chan*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, %struct.zynqmp_dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

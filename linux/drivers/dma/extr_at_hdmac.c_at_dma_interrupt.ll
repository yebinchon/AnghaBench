; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_at_hdmac.c_at_dma_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_at_hdmac.c_at_dma_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at_dma = type { %struct.at_dma_chan*, %struct.TYPE_2__ }
%struct.at_dma_chan = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@EBCIMR = common dso_local global i32 0, align 4
@EBCISR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"interrupt: status = 0x%08x, 0x%08x, 0x%08x\0A\00", align 1
@CHDR = common dso_local global i32 0, align 4
@ATC_IS_ERROR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @at_dma_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at_dma_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.at_dma*, align 8
  %6 = alloca %struct.at_dma_chan*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.at_dma*
  store %struct.at_dma* %13, %struct.at_dma** %5, align 8
  %14 = load i32, i32* @IRQ_NONE, align 4
  store i32 %14, i32* %11, align 4
  br label %15

15:                                               ; preds = %89, %2
  %16 = load %struct.at_dma*, %struct.at_dma** %5, align 8
  %17 = load i32, i32* @EBCIMR, align 4
  %18 = call i32 @dma_readl(%struct.at_dma* %16, i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load %struct.at_dma*, %struct.at_dma** %5, align 8
  %20 = load i32, i32* @EBCISR, align 4
  %21 = call i32 @dma_readl(%struct.at_dma* %19, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %10, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %15
  br label %92

28:                                               ; preds = %15
  %29 = load %struct.at_dma*, %struct.at_dma** %5, align 8
  %30 = getelementptr inbounds %struct.at_dma, %struct.at_dma* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @dev_vdbg(i32 %32, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34, i32 %35)
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %85, %28
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.at_dma*, %struct.at_dma** %5, align 8
  %40 = getelementptr inbounds %struct.at_dma, %struct.at_dma* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %38, %42
  br i1 %43, label %44, label %88

44:                                               ; preds = %37
  %45 = load %struct.at_dma*, %struct.at_dma** %5, align 8
  %46 = getelementptr inbounds %struct.at_dma, %struct.at_dma* %45, i32 0, i32 0
  %47 = load %struct.at_dma_chan*, %struct.at_dma_chan** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.at_dma_chan, %struct.at_dma_chan* %47, i64 %49
  store %struct.at_dma_chan* %50, %struct.at_dma_chan** %6, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @AT_DMA_BTC(i32 %52)
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @AT_DMA_ERR(i32 %54)
  %56 = or i32 %53, %55
  %57 = and i32 %51, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %84

59:                                               ; preds = %44
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @AT_DMA_ERR(i32 %61)
  %63 = and i32 %60, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %79

65:                                               ; preds = %59
  %66 = load %struct.at_dma*, %struct.at_dma** %5, align 8
  %67 = load i32, i32* @CHDR, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @AT_DMA_RES(i32 %68)
  %70 = load %struct.at_dma_chan*, %struct.at_dma_chan** %6, align 8
  %71 = getelementptr inbounds %struct.at_dma_chan, %struct.at_dma_chan* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %69, %72
  %74 = call i32 @dma_writel(%struct.at_dma* %66, i32 %67, i32 %73)
  %75 = load i32, i32* @ATC_IS_ERROR, align 4
  %76 = load %struct.at_dma_chan*, %struct.at_dma_chan** %6, align 8
  %77 = getelementptr inbounds %struct.at_dma_chan, %struct.at_dma_chan* %76, i32 0, i32 2
  %78 = call i32 @set_bit(i32 %75, i32* %77)
  br label %79

79:                                               ; preds = %65, %59
  %80 = load %struct.at_dma_chan*, %struct.at_dma_chan** %6, align 8
  %81 = getelementptr inbounds %struct.at_dma_chan, %struct.at_dma_chan* %80, i32 0, i32 1
  %82 = call i32 @tasklet_schedule(i32* %81)
  %83 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %83, i32* %11, align 4
  br label %84

84:                                               ; preds = %79, %44
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %7, align 4
  br label %37

88:                                               ; preds = %37
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %15, label %92

92:                                               ; preds = %89, %27
  %93 = load i32, i32* %11, align 4
  ret i32 %93
}

declare dso_local i32 @dma_readl(%struct.at_dma*, i32) #1

declare dso_local i32 @dev_vdbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @AT_DMA_BTC(i32) #1

declare dso_local i32 @AT_DMA_ERR(i32) #1

declare dso_local i32 @dma_writel(%struct.at_dma*, i32, i32) #1

declare dso_local i32 @AT_DMA_RES(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
